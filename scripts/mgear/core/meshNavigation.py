"""Functions to help navigate the mesh topology"""

#############################################
# GLOBAL
#############################################
import pymel.core as pm
import pymel.core.datatypes as datatypes
from maya import OpenMaya


#############################################
# Vertex
#############################################

def getExtremeVertexFromLoop(edgeList=None, sideRange=False):
    """Get extreme vertex X and  Y

    min and max positions from edge loop

    Arguments:
        edgeList (list): Edge list
        sideRange (bool): If True will calculate the extreme position
            of Z instead of X
    Returns:
        list: upPos, lowPos, inPos, outPos, edgeList, vertexList

    """
    if not edgeList:
        edgeList = [x for x in pm.selected(fl=1)]
    vertexList = []
    for x in edgeList:
        cv = x.connectedVertices()
        for v in cv:
            if v not in vertexList:
                vertexList.append(v)
    maxX = None
    maxY = None

    minX = None
    minY = None

    upPos = None
    lowPos = None
    inPos = None
    outPos = None
    # index for X or Z
    if sideRange:
        axisIndex = 2
    else:
        axisIndex = 0
    for x in vertexList:
        pos = x.getPosition(space='world')
        if maxX is None or pos[axisIndex] > maxX:
            maxX = pos[axisIndex]
            outPos = x
        if maxY is None or pos[1] > maxY:
            maxY = pos[1]
            upPos = x
        if minX is None or pos[axisIndex] < minX:
            minX = pos[axisIndex]
            inPos = x
        if minY is None or pos[1] < minY:
            minY = pos[1]
            lowPos = x
    if sideRange:
        return upPos, lowPos, outPos, inPos, edgeList, vertexList
    else:
        return upPos, lowPos, inPos, outPos, edgeList, vertexList


def getConcentricVertexLoop(loop, nbLoops):
    """Get concentric vertex loops

    Arguments:
        loop (list): Vertex loop list
        nbLoops (int): Number of loops to search

    Returns:
        list: the loop list

    """
    loopList = []
    allLoops = []
    for x in loop:
        allLoops.append(x)
    loopList.append(loop)

    for x in range(nbLoops):
        tempLoopList = []
        for v in loop:
            connected = v.connectedVertices()
            for cv in connected:
                if cv not in loop:
                    if cv not in allLoops:
                        allLoops.append(cv)
                        tempLoopList.append(cv)
        loop = []
        for c in tempLoopList:
            loop.append(c)

        loopList.append(tempLoopList)

    return loopList


def getVertexRowsFromLoops(loopList):
    """Get vertex rows from edge loops

    Arguments:
        loopList (list): Edge loop list

    Returns:
        list: vertex rows

    """
    rows = []
    for x in loopList[0]:
        rows.append([x])

    loopListLength = len(loopList) - 1

    for i in range(loopListLength):
        for e, r in enumerate(rows):
            cvs = r[-1].connectedVertices()
            # little trick to force the expansion in 2 directions
            cvs2 = False
            if len(r) > 2:
                cvs2 = r[-2].connectedVertices()

            if cvs2:
                for cv in cvs2:
                    if cv in loopList[i + 1]:
                        rows[e].append(cv)
                        continue
            for cv in cvs:
                if cv in loopList[i + 1]:
                    rows[e].append(cv)
                    continue
    return rows


#################################################
# EDGE LOOPS and ROWS
#################################################

def edgeRangeInLoopFromMid(edgeList, midPos, endA, endB):
    """Return a range of edges in the same loop from a mid position

    Arguments:
        edgeList (list): selection edge loop
        midPos (vertex): mid vertex
        endA (vertex): endA vertex
        endB (vertex): endB vertex

    Returns:
        list: loop range

    """
    extremeEdges = []

    scanPoint = [midPos]

    scannedPoints = []
    indexcheck = []
    midEdges = []
    count = 0
    stop = False
    while True:
        oldScanPoint = []
        for sp in scanPoint:
            ce = sp.connectedEdges()
            oldScanPoint.append(sp)
            scannedPoints.append(sp)
            for e in ce:
                if e in edgeList:
                    if e not in midEdges:
                        midEdges.append(e)
                    cv = e.connectedVertices()
                    for v in cv:
                        if (v.index() in [endA.index(), endB.index()]
                                and e not in extremeEdges):
                            # extra check to ensure that the 2 edges
                            # selected are not attach to the same vertex
                            if v.index() not in indexcheck:
                                extremeEdges.append(e)
                                indexcheck.append(v.index())
                                if len(extremeEdges) == 2:
                                    stop = True
        # regenerate the new list for recursive scan
        scanPoint = []
        for sp in oldScanPoint:
            ce = sp.connectedEdges()
            for e in ce:
                if e in edgeList:
                    cv = e.connectedVertices()
                    for v in cv:
                        if v not in scanPoint and v not in scannedPoints:
                            if v.index() not in [endA.index(), endB.index()]:
                                scanPoint.append(v)

        if stop:
            break
        count += 1
        if count > 50:
            break
    loopRange = set(midEdges + extremeEdges)
    return loopRange


#################################################
# Bounding box info
#################################################

def bboxCenter(obj, radius=False):
    """Get bounding box center of mesh object

    Arguments:
        obj (dagNode): mesh object
        radius (bool): If True return a list the center + the radius

    Returns:
        list of float: the bounding box center in world space

    >>> center = mnav.bboxCenter(source, radius=False)

    """
    bbx = obj.getBoundingBox(invisible=True, space='world')
    center = [(bbx[0][x] + bbx[1][x]) / 2.0 for x in range(3)]
    if radius:
        r = abs((bbx[0][0] - bbx[1][0]) / 2)
        return center, r
    return center


def bBoxData(obj=None, yZero=False, *args):
    """Get bounding box data of a mesh object

    Arguments:
        obj (dagNode): Mesh object
        yZero (bool): If True, sets the Y axis value to 0 in world space
        args:

    Returns:
        list: center, radio, bounding box full data

    """
    volCenter = False

    if not obj:
        obj = pm.selected()[0]
    shapes = pm.listRelatives(obj, ad=True, s=True)
    if shapes:
        bb = pm.polyEvaluate(shapes, b=True)
        volCenter = [(axis[0] + axis[1]) / 2 for axis in bb]
        if yZero:
            volCenter[1] = bb[1][0]
        radio = max([bb[0][1] - bb[0][0], bb[2][1] - bb[2][0]]) / 1.7

    return volCenter, radio, bb


#################################################
# CLOSEST LOCATIONS
#################################################

def getClosestPolygonFromTransform(geo, loc):
    """Get closest polygon from transform

    Arguments:
        geo (dagNode): Mesh object
        loc (matrix): location transform

    Returns:
        Closest Polygon

    """
    if isinstance(loc, pm.nodetypes.Transform):
        pos = loc.getTranslation(space='world')
    else:
        pos = datatypes.Vector(loc[0], loc[1], loc[2])

    nodeDagPath = OpenMaya.MObject()
    try:
        selectionList = OpenMaya.MSelectionList()
        selectionList.add(geo.name())
        nodeDagPath = OpenMaya.MDagPath()
        selectionList.getDagPath(0, nodeDagPath)
    except Exception as e:
        raise RuntimeError("OpenMaya.MDagPath() failed "
                           "on {}. \n {}".format(geo.name(), e))

    mfnMesh = OpenMaya.MFnMesh(nodeDagPath)

    pointA = OpenMaya.MPoint(pos.x, pos.y, pos.z)
    pointB = OpenMaya.MPoint()
    space = OpenMaya.MSpace.kWorld

    util = OpenMaya.MScriptUtil()
    util.createFromInt(0)
    idPointer = util.asIntPtr()

    mfnMesh.getClosestPoint(pointA, pointB, space, idPointer)
    idx = OpenMaya.MScriptUtil(idPointer).asInt()

    return geo.f[idx], pos


def getClosestVertexFromTransform(geo, loc):
    """Get closest vertex from transform

    Arguments:
        geo (dagNode): Mesh object
        loc (matrix): location transform

    Returns:
        Closest Vertex

    >>> v = mn.getClosestVertexFromTransform(geometry, joint)

    """
    polygon, pos = getClosestPolygonFromTransform(geo, loc)

    faceVerts = [geo.vtx[i] for i in polygon.getVertices()]
    closestVert = None
    minLength = None
    for v in faceVerts:
        thisLength = (pos - v.getPosition(space='world')).length()
        if minLength is None or thisLength < minLength:
            minLength = thisLength
            closestVert = v
    return closestVert
