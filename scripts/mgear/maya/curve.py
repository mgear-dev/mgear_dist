# MGEAR is under the terms of the MIT License

# Copyright (c) 2016 Jeremie Passerin, Miquel Campos

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

# Author:     Jeremie Passerin      geerem@hotmail.com  www.jeremiepasserin.com
# Author:     Miquel Campos         hello@miquel-campos.com  www.miquel-campos.com
# Date:       2016 / 10 / 10

"""
NurbsCurve creation functions
"""

#############################################
# GLOBAL
#############################################
import pymel.core as pm
import pymel.core.datatypes as dt

import maya.OpenMaya as om

import mgear.maya.applyop as aop

#############################################
# CURVE
#############################################

def addCnsCurve(parent, name, centers, degree=1):
    """
    Create a curve attached to given centers. One point per center

    Args:
        parent (dagNode): Parent object.
        name (str): Name
        centers (list of dagNode): Object that will drive the curve.
        degree (int): 1 for linear curve, 3 for Cubic.
    
    Returns:
        dagNode: The newly created curve.
    """
    if degree == 3:
        if len(centers) == 2:
            centers.insert(0, centers[0])
            centers.append(centers[-1])
        elif len(centers) == 3:
            centers.append(centers[-1])

    points = [dt.Vector() for center in centers ]

    node = addCurve(parent, name, points, False, degree)

    op = aop.gear_curvecns_op(node, centers)

    return node


def addCurve(parent, name, points, close=False, degree=3, m=dt.Matrix()):
    """
    Create a NurbsCurve with a single subcurve.

    Args:
        parent (dagNode): Parent object.
        name (str): Name
        positions (list of float): points of the curve in a one dimension array [point0X, point0Y, point0Z, 1, point1X, point1Y, point1Z, 1, ...].
        close (bool): True to close the curve.
        degree (bool): 1 for linear curve, 3 for Cubic.
        m (matrix): Global transform.
    
    Returns:
        dagNode: The newly created curve.
    """
    if close:
        points.extend(points[:degree])
        knots = range(len(points)+degree-1)
        node = pm.curve(n=name, d=degree, p=points, per=close, k=knots)
    else:
        node = pm.curve(n=name, d=degree, p=points)

    if m is not None:
        node.setTransformation(m)

    if parent is not None:
        parent.addChild(node)

    return node


def createCuveFromEdges(edgeList, name, parent=None, degree=3, sortingAxis="x"):
    """
    Create curve from a edge list.

    Args:
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
    """
    Create a curve from a curve

    Args:
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
    increment = parL / (nbPoints-1)
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
    """
    Get curve parameter from a position

    Args:
        position (list of float): Represents the position in worldSpace exp: [1.4, 3.55, 42.6]
        crv (curve): The  source curve to get the parameter.
    
    Returns:
        list: paramenter and curve length
    """
    point = om.MPoint(position[0],position[1],position[2])

    dag = om.MDagPath()
    obj = om.MObject()
    oList = om.MSelectionList()
    oList.add(crv.name())
    oList.getDagPath(0, dag, obj)

    curveFn = om.MFnNurbsCurve(dag)
    length = curveFn.length()
    crv.findParamFromLength(length)

    paramUtill=om.MScriptUtil()
    paramPtr=paramUtill.asDoublePtr()

    point = curveFn.closestPoint(point,paramPtr,0.001,om.MSpace.kObject)
    curveFn.getParamAtPoint(point , paramPtr,0.001,om.MSpace.kObject)

    param = paramUtill.getDouble(paramPtr)

    return param, length


def findLenghtFromParam(crv, param):
    """
    Find lengtht from a curve parameter

    Args:
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
    pm.connectAttr(crv.getShape().attr("worldSpace[0]"), node.attr("nurbsGeometry"))
    node.attr("uParamValue").set(param)
    uLength = node.attr("arcLength").get()
    pm.delete(node.getParent())
    return uLength