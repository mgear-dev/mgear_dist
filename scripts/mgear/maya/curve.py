"""NurbsCurve creation functions"""

#############################################
# GLOBAL
#############################################
import pymel.core as pm
from pymel.core import datatypes
import json

import maya.OpenMaya as om

from mgear.maya import applyop

#############################################
# CURVE
#############################################


def addCnsCurve(parent, name, centers, degree=1):
    """Create a curve attached to given centers. One point per center

    Arguments:
        parent (dagNode): Parent object.
        name (str): Name
        centers (list of dagNode): Object that will drive the curve.
        degree (int): 1 for linear curve, 3 for Cubic.

    Returns:
        dagNode: The newly created curve.
    """
    # rebuild list to avoid input list modification
    centers = centers[:]
    if degree == 3:
        if len(centers) == 2:
            centers.insert(0, centers[0])
            centers.append(centers[-1])
        elif len(centers) == 3:
            centers.append(centers[-1])

    points = [datatypes.Vector() for center in centers]

    node = addCurve(parent, name, points, False, degree)

    applyop.gear_curvecns_op(node, centers)

    return node


def addCurve(parent,
             name,
             points,
             close=False,
             degree=3,
             m=datatypes.Matrix()):
    """Create a NurbsCurve with a single subcurve.

    Arguments:
        parent (dagNode): Parent object.
        name (str): Name
        positions (list of float): points of the curve in a one dimension array
            [point0X, point0Y, point0Z, 1, point1X, point1Y, point1Z, 1, ...].
        close (bool): True to close the curve.
        degree (bool): 1 for linear curve, 3 for Cubic.
        m (matrix): Global transform.

    Returns:
        dagNode: The newly created curve.
    """
    if close:
        points.extend(points[:degree])
        knots = range(len(points) + degree - 1)
        node = pm.curve(n=name, d=degree, p=points, per=close, k=knots)
    else:
        node = pm.curve(n=name, d=degree, p=points)

    if m is not None:
        node.setTransformation(m)

    if parent is not None:
        parent.addChild(node)

    return node


def createCurveFromOrderedEdges(edgeLoop,
                                startVertex,
                                name,
                                parent=None,
                                degree=3):
    """Create a curve for a edgeloop ordering the list from starting vertex

    Arguments:
        edgeLoop (list ): List of edges
        startVertex (vertex): Starting vertex
        name (str): Name of the new curve.
        parent (dagNode): Parent of the new curve.
        degree (int): Degree of the new curve.

    Returns:
        dagNode: The newly created curve.
    """
    orderedEdges = []
    for e in edgeLoop:
        if startVertex in e.connectedVertices():
            orderedEdges.append(e)
            next = e
            break
    count = 0
    while True:
        for e in edgeLoop:
            if e in next.connectedEdges() and e not in orderedEdges:
                orderedEdges.append(e)
                next = e
                pass
        if len(orderedEdges) == len(edgeLoop):
            break
        count += 1
        if count > 100:
            break

    # return orderedEdges
    orderedVertex = [startVertex]
    orderedVertexPos = [startVertex.getPosition(space='world')]
    for e in orderedEdges:

        for v in e.connectedVertices():
            if v not in orderedVertex:
                orderedVertex.append(v)
                orderedVertexPos.append(v.getPosition(space='world'))

    crv = addCurve(parent, name, orderedVertexPos, degree=degree)
    return crv


def createCuveFromEdges(edgeList,
                        name,
                        parent=None,
                        degree=3,
                        sortingAxis="x"):
    """Create curve from a edge list.

    Arguments:
        edgeList (list): List of edges.
        name (str): Name of the new curve.
        parent (dagNode): Parent of the new curve.
        degree (int): Degree of the new curve.
        sortingAxis (str): Sorting axis x, y or z

    Returns:
        dagNode: The newly created curve.

    """
    if sortingAxis == "x":
        axis = 0
    elif sortingAxis == "y":
        axis = 1
    else:
        axis = 2

    vList = pm.polyListComponentConversion(edgeList, fe=True, tv=True)

    centers = []
    centersOrdered = []
    xOrder = []
    xReOrder = []
    for x in vList:
        vtx = pm.PyNode(x)
        for v in vtx:
            centers.append(v.getPosition(space='world'))
            # we use index [0] to order in X axis
            xOrder.append(v.getPosition(space='world')[axis])
            xReOrder.append(v.getPosition(space='world')[axis])
    for x in sorted(xReOrder):
        i = xOrder.index(x)
        centersOrdered.append(centers[i])

    crv = addCurve(parent, name, centersOrdered, degree=degree)
    return crv


def createCurveFromCurve(srcCrv, name, nbPoints, parent=None):
    """Create a curve from a curve

    Arguments:
        srcCrv (curve): The source curve.
        name (str): The new curve name.
        nbPoints (int): Number of control points for the new curve.
        parent (dagNode): Parent of the new curve.

    Returns:
        dagNode: The newly created curve.
    """
    if isinstance(srcCrv, str) or isinstance(srcCrv, unicode):
        srcCrv = pm.PyNode(srcCrv)
    length = srcCrv.length()
    parL = srcCrv.findParamFromLength(length)
    param = []
    increment = parL / (nbPoints - 1)
    p = 0.0
    for x in range(nbPoints):
        # we need to check that the param value never exceed the parL
        if p > parL:
            p = parL
        pos = srcCrv.getPointAtParam(p, space='world')
        param.append(pos)
        p += increment
    crv = addCurve(parent, name, param, close=False, degree=3)
    return crv


def getCurveParamAtPosition(crv, position):
    """Get curve parameter from a position

    Arguments:
        position (list of float): Represents the position in worldSpace
            exp: [1.4, 3.55, 42.6]
        crv (curve): The  source curve to get the parameter.

    Returns:
        list: paramenter and curve length
    """
    point = om.MPoint(position[0], position[1], position[2])

    dag = om.MDagPath()
    obj = om.MObject()
    oList = om.MSelectionList()
    oList.add(crv.name())
    oList.getDagPath(0, dag, obj)

    curveFn = om.MFnNurbsCurve(dag)
    length = curveFn.length()
    crv.findParamFromLength(length)

    paramUtill = om.MScriptUtil()
    paramPtr = paramUtill.asDoublePtr()

    point = curveFn.closestPoint(point, paramPtr, 0.001, om.MSpace.kObject)
    curveFn.getParamAtPoint(point, paramPtr, 0.001, om.MSpace.kObject)

    param = paramUtill.getDouble(paramPtr)

    return param, length


def findLenghtFromParam(crv, param):
    """
    Find lengtht from a curve parameter

    Arguments:
        param (float): The parameter to get the legth
        crv (curve): The source curve.

    Returns:
        float: Curve uLength

    Example:
        .. code-block:: python

            oParam, oLength = cur.getCurveParamAtPosition(upRope, cv)
            uLength = cur.findLenghtFromParam(upRope, oParam)
            u = uLength / oLength

    """
    node = pm.createNode("arcLengthDimension")
    pm.connectAttr(crv.getShape().attr("worldSpace[0]"),
                   node.attr("nurbsGeometry"))
    node.attr("uParamValue").set(param)
    uLength = node.attr("arcLength").get()
    pm.delete(node.getParent())
    return uLength


# ========================================

def get_color(node):

    shp = node.getShape()
    if shp:
        if shp.overrideRGBColors.get():
            color = shp.overrideColorRGB.get()
        else:
            color = shp.overrideColor.get()

    return color


def set_color(node, color):
    """Set the color in the Icons.

    Arguments:
        node(dagNode): The object
        color (int or list of float): The color in index base or RGB.


    """
    # TODO: configure this funcion to work with RGB or Index color base
    # on Maya version.
    # version = mgear.maya.getMayaver()

    if isinstance(color, int):

        for shp in node.listRelatives(shapes=True):
            shp.setAttr("overrideEnabled", True)
            shp.setAttr("overrideColor", color)
    else:
        for shp in node.listRelatives(shapes=True):
            shp.overrideEnabled.set(1)
            shp.overrideRGBColors.set(1)
            shp.overrideColorRGB.set(color[0], color[1], color[2])


# ========================================
# Curves IO ==============================
# ========================================


def collect_curve_data(objs=None):
    """Generate a dictionary descriving the curve data

    Suport multiple objects
    TODO: store color information

    Args:
        objs (dagNode, optional): Curve object to store

    Returns:
        dict: Curves data
    """

    if not objs:
        objs = pm.selected()
    if not isinstance(objs, list):
        objs = [objs]

    curves_dict = {}
    curves_dict["curves_names"] = []

    for x in objs:
        curves_dict["curves_names"].append(x.name())
        if x.getParent():
            crv_parent = x.getParent().name()
        else:
            crv_parent = None
        m = x.getMatrix(worldSpace=True)
        crv_transform = m.get()

        curveDict = {"shapes_names": [],
                     "crv_parent": crv_parent,
                     "crv_transform": crv_transform}
        shapesDict = {}
        for shape in x.getShapes():
            curveDict["shapes_names"].append(shape.name())
            c_form = shape.form()
            degree = shape.degree()
            form = c_form.key
            form_id = c_form.index
            pnts = [[cv.x, cv.y, cv.z] for cv in shape.getCVs(space="object")]
            shapesDict[shape.name()] = {"points": pnts,
                                        "degree": degree,
                                        "form": form,
                                        "form_id": form_id}

        curveDict["shapes"] = shapesDict
        curves_dict[x.name()] = curveDict

    return curves_dict


def create_curve_from_data(data):
    # Create the curves instead fo updating the existing ones.
    return


def update_curve_from_data(data):
    """Build the curves from a given curve data dict

    Hierarchy rebuild after all curves are build to avoid lost parents

    Args:
        data (TYPE): Description
        replaceShape (bool, optional): Description
        rebuildHierarchy (bool, optional): Description
    """

    for crv in data["curves_names"]:
        crv_dict = data[crv]

        # crv_transform = crv_dict["crv_transform"]
        shp_dict = crv_dict["shapes"]
        # if replaceShape:
        first_shape = pm.ls(crv)
        if not first_shape:
            pm.displayWarning("Couldn't find: {}. Shape will be "
                              "skipped, since there is nothing to "
                              "replace".format(crv))
            continue
        # else:
        #     first_shape = None

        if first_shape:
            first_shape = first_shape[0]
            # clean old shapes
            pm.delete(first_shape.listRelatives(shapes=True))

        for sh in crv_dict["shapes_names"]:
            points = shp_dict[sh]["points"]
            form = shp_dict[sh]["form"]
            degree = shp_dict[sh]["degree"]
            knots = range(len(points) + degree - 1)
            if form != "open":
                close = True
                # points = points[:-degree]
            else:
                close = False
            # we dont use replace in order to support multiple shapes
            obj = pm.curve(replace=False,
                           point=points,
                           periodic=close,
                           degree=degree,
                           knot=knots)

            # obj = addCurve(None,
            #                crv,
            #                points,
            #                close=close,
            #                degree=degree,
            #                m=datatypes.Matrix(crv_transform))

            # handle multiple shapes in the same transform
            # if not first_shape:
            #     first_shape = obj
            # else:
            for extra_shp in obj.listRelatives(shapes=True):
                first_shape.addChild(extra_shp, add=True, shape=True)
                pm.delete(obj)
    # parenting
    # if rebuildHierarchy:
    #     for crv in data["curves_names"]:
    #         crv_dict = data[crv]
    #         crv_parent = crv_dict["crv_parent"]
    #         if crv_parent:
    #             pm.parent(crv, crv_parent)


def export_curve(filePath=None, objs=None):
    """Export the curve data to a json file

    Args:
        filePath (None, optional): Description
        objs (None, optional): Description

    Returns:
        TYPE: Description
    """

    if not filePath:
        startDir = pm.workspace(q=True, rootDirectory=True)
        filePath = pm.fileDialog2(
            dialogStyle=2,
            fileMode=0,
            startingDirectory=startDir,
            fileFilter='NURBS Curves .crv (*%s)' % ".crv")
        if not filePath:
            pm.displayWarning("Invalid file path")
            return
        if not isinstance(filePath, basestring):
            filePath = filePath[0]

    data = collect_curve_data(objs)
    data_string = json.dumps(data, indent=4, sort_keys=True)
    f = open(filePath, 'w')
    f.write(data_string)
    f.close()


def update_curve_from_file(filePath=None, replaceShape=True):
    return


def import_curve(filePath=None, replaceShape=True):
    # import a curve data from json file
    # replaceShape == True. If the node exist will replace the shapes
    if not filePath:
        startDir = pm.workspace(q=True, rootDirectory=True)
        filePath = pm.fileDialog2(
            dialogStyle=2,
            fileMode=1,
            startingDirectory=startDir,
            fileFilter='NURBS Curves .crv (*%s)' % ".crv")

    if not filePath:
        pm.displayWarning("Invalid file path")
        return
    if not isinstance(filePath, basestring):
        filePath = filePath[0]
    configDict = json.load(open(filePath))
    update_curve_from_data(configDict, replaceShape)
