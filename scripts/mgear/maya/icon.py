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
Predefined nurbsCurve shapes to be use as a rigging control Icons
"""

#############################################
# GLOBAL
#############################################
import pymel.core as pm
import pymel.util as pmu
import pymel.core.datatypes as dt

import maya.OpenMaya as om

import mgear
import mgear.maya.curve as cur
import mgear.maya.attribute as att

#############################################
# ICON
#############################################

def create(parent=None, name="icon", m=dt.Matrix(), color=[0,0,0], icon="cube", **kwargs):
    """
    **Create icon master function.**
    This function centralize all the icons creation

    Args:
        parent (dagNode): The parent for the new icon
        name (str): Name of the Icon.
        m (matrix): Transformation matrix of the icon
        color (int or list of float): The color in index base or RGB.
        icon (str): Icon type. Options: "cube", "pyramid", "square", "flower", "circle", "cylinder", "compas", "diamond",
                    "cubewithpeak", "sphere", "arrow", "crossarrow", "cross", "null"
        kwargs: The keyword arguments can vary depending of the icon type.
                    Please refear to the specific icon method for more info.

    Returns:
        dagNode: The newly created icon.
    """
    if "w" not in kwargs.keys(): kwargs["w"] = 1
    if "h" not in kwargs.keys(): kwargs["h"] = 1
    if "d" not in kwargs.keys(): kwargs["d"] = 1
    if "po" not in kwargs.keys(): kwargs["po"] = None
    if "ro" not in kwargs.keys(): kwargs["ro"] = None

    if icon == "cube": ctl = cube(parent, name, kwargs["w"], kwargs["h"], kwargs["d"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "pyramid": ctl = pyramid(parent, name, kwargs["w"], kwargs["h"], kwargs["d"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "square": ctl = square(parent, name, kwargs["w"], kwargs["d"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "flower": ctl = flower(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "circle": ctl = circle(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "cylinder": ctl = cylinder(parent, name, kwargs["w"], kwargs["h"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "compas": ctl = compas(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "diamond": ctl = diamond(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "cubewithpeak": ctl = cubewithpeak(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "sphere": ctl = sphere(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "arrow": ctl = arrow(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "crossarrow": ctl = crossarrow(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "cross": ctl = cross(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])
    elif icon == "null": ctl = null(parent, name, kwargs["w"], color, m, kwargs["po"], kwargs["ro"])

    else:
        mgear.log("invalid type of ico", mgear.sev_error)
        return

    return ctl


def cube(parent=None, name="cube", width=1, height=1, depth=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a CUBE shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        height (float): Height of the shape.
        depth (float): Depth of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """
    lenX = width * 0.5
    lenY = height * 0.5
    lenZ = depth * 0.5

    # p is positive, N is negative
    ppp = dt.Vector(lenX,lenY,lenZ)
    ppN = dt.Vector(lenX,lenY,lenZ*-1)
    pNp = dt.Vector(lenX,lenY*-1,lenZ)
    Npp = dt.Vector(lenX*-1,lenY,lenZ)
    pNN = dt.Vector(lenX,lenY*-1,lenZ*-1)
    NNp = dt.Vector(lenX*-1,lenY*-1,lenZ)
    NpN = dt.Vector(lenX*-1,lenY,lenZ*-1)
    NNN = dt.Vector(lenX*-1,lenY*-1,lenZ*-1)

    points = getPointArrayWithOffset([ppp, ppN, NpN, NNN, NNp, Npp, NpN, Npp, ppp, pNp, NNp, pNp, pNN, ppN, pNN, NNN], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, False, 1, m)

    setcolor(node, color)

    return node


def pyramid(parent=None, name="pyramid", width=1, height=1, depth=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a PYRAMIDE shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        height (float): Height of the shape.
        depth (float): Depth of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """
    lenX = width * 0.5
    lenY = height
    lenZ = depth * 0.5

    # p is positive, N is negative
    top = dt.Vector(0,lenY,0)
    pp = dt.Vector(lenX, 0, lenZ)
    pN = dt.Vector(lenX,0,lenZ*-1)
    Np = dt.Vector(lenX*-1,0,lenZ)
    NN = dt.Vector(lenX*-1,0,lenZ*-1)

    points = getPointArrayWithOffset([pp, top, pN, pp, Np, top, NN, Np, NN, pN], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, False, 1, m)

    setcolor(node, color)

    return node


def square(parent=None, name="square", width=1, depth=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a SQUARE shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        depth (float): Depth of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """
    lenX = width * 0.5
    lenZ = depth * 0.5

    v0 = dt.Vector(lenX , 0, lenZ)
    v1 = dt.Vector(lenX , 0, lenZ*-1)
    v2 = dt.Vector(lenX*-1, 0, lenZ*-1)
    v3 = dt.Vector(lenX*-1, 0, lenZ)

    points = getPointArrayWithOffset([v0, v1, v2, v3], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, True, 1, m)

    setcolor(node, color)

    return node


def flower(parent=None, name="flower", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a FLOWER shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width

    v0 = dt.Vector(0, -dlen, 0)
    v1 = dt.Vector(-dlen * .4, dlen * .4, 0)
    v2 = dt.Vector(dlen, 0, 0)
    v3 = dt.Vector(-dlen * .4, -dlen * .4, 0)
    v4 = dt.Vector(0, dlen, 0)
    v5 = dt.Vector(dlen * .4, -dlen * .4, 0)
    v6 = dt.Vector(-dlen, 0, 0)
    v7 = dt.Vector(dlen * .4, dlen * .4, 0)

    points = getPointArrayWithOffset([v0, v1, v2, v3, v4, v5, v6, v7], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, True, 3, m)

    setcolor(node, color)

    return node


def circle(parent=None, name="circle", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a CIRCLE shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """
    dlen = width * 0.5

    v0 = dt.Vector(0, 0, -dlen * 1.108)
    v1 = dt.Vector(dlen * .78 , 0, -dlen * .78)
    v2 = dt.Vector(dlen * 1.108, 0, 0)
    v3 = dt.Vector(dlen * .78 , 0, dlen * .78)
    v4 = dt.Vector(0, 0, dlen * 1.108)
    v5 = dt.Vector(-dlen * .78 , 0, dlen * .78)
    v6 = dt.Vector(-dlen * 1.108, 0, 0)
    v7 = dt.Vector(-dlen * .78 , 0, -dlen * .78)

    points = getPointArrayWithOffset([v0, v1, v2, v3, v4, v5, v6, v7], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, True, 3, m)

    setcolor(node, color)

    return node


def cylinder(parent=None, name="cylinder", width=1, heigth=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a CYLINDER shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        height (float): Height of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * .5
    dhei = heigth * .5

    # upper circle
    v0 = dt.Vector(0, dhei, -dlen * 1.108)
    v1 = dt.Vector(dlen * .78 , dhei, -dlen * .78)
    v2 = dt.Vector(dlen * 1.108, dhei, 0)
    v3 = dt.Vector(dlen * .78 , dhei, dlen * .78)
    v4 = dt.Vector(0, dhei, dlen * 1.108)
    v5 = dt.Vector(-dlen * .78 , dhei, dlen * .78)
    v6 = dt.Vector(-dlen * 1.108, dhei, 0)
    v7 = dt.Vector(-dlen * .78 , dhei, -dlen * .78)

    # lower circle
    v8 = dt.Vector(0, -dhei, -dlen * 1.108)
    v9 = dt.Vector(dlen * .78 , -dhei, -dlen * .78)
    v10 = dt.Vector(dlen * 1.108, -dhei, 0)
    v11 = dt.Vector(dlen * .78 , -dhei, dlen * .78)
    v12 = dt.Vector(0, -dhei, dlen * 1.108)
    v13 = dt.Vector(-dlen * .78 , -dhei, dlen * .78)
    v14 = dt.Vector(-dlen * 1.108, -dhei, 0)
    v15 = dt.Vector(-dlen * .78 , -dhei, -dlen * .78)

    # curves
    v16 = dt.Vector(0, dhei, -dlen)
    v17 = dt.Vector(0, -dhei, -dlen)
    v18 = dt.Vector(0, -dhei, dlen)
    v19 = dt.Vector(0, dhei, dlen)

    v20 = dt.Vector(dlen, dhei, 0)
    v21 = dt.Vector(dlen, -dhei, 0)
    v22 = dt.Vector(-dlen, -dhei, 0)
    v23 = dt.Vector(-dlen, dhei, 0)

    points = getPointArrayWithOffset([v0, v1, v2, v3, v4, v5, v6, v7], pos_offset, rot_offset)
    node = cur.addCurve(parent, name, points, True, 3, m)

    points = getPointArrayWithOffset([v8, v9, v10, v11, v12, v13, v14, v15], pos_offset, rot_offset)
    crv_0 = cur.addCurve(parent, node+"_0crv", points, True, 3, m)

    points = getPointArrayWithOffset([v16, v17], pos_offset, rot_offset)
    crv_1 = cur.addCurve(parent, node+"_1crv", points, True, 1, m)

    points = getPointArrayWithOffset([v18, v19], pos_offset, rot_offset)
    crv_2 = cur.addCurve(parent, node+"_2crv", points, True, 1, m)

    points = getPointArrayWithOffset([v20, v21], pos_offset, rot_offset)
    crv_3 = cur.addCurve(parent, node+"_3crv", points, True, 1, m)

    points = getPointArrayWithOffset([v22, v23], pos_offset, rot_offset)
    crv_4 = cur.addCurve(parent, node+"_4crv", points, True, 1, m)

    for crv in [crv_0, crv_1, crv_2, crv_3, crv_4]:
        for shp in crv.listRelatives(shapes=True):
            node.addChild(shp, add=True, shape=True)
        pm.delete(crv)

    setcolor(node, color)

    return node


def compas(parent=None, name="compas", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a COMPAS shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * 0.5

    division = 24

    point_pos = []
    v = dt.Vector(0, 0, dlen)

    for i in range(division):
        if i == division/2:
            w = dt.Vector(v.x, v.y, v.z-dlen*.4)
        else:
            w = dt.Vector(v.x, v.y, v.z)
        point_pos.append(w)
        v = v.rotateBy((0,(2*pmu.math.pi)/(division+0.0),0))

    points = getPointArrayWithOffset(point_pos, pos_offset, rot_offset)
    node = cur.addCurve(parent, name, points, True, 3, m)

    setcolor(node, color)

    return node


def diamond(parent=None, name="diamond", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a DIAMOND shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        height (float): Height of the shape.
        depth (float): Depth of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * 0.5

    top = dt.Vector(0,dlen,0)
    pp = dt.Vector(dlen,0,dlen)
    pN = dt.Vector(dlen,0,dlen*-1)
    Np = dt.Vector(dlen*-1,0,dlen)
    NN = dt.Vector(dlen*-1,0,dlen*-1)
    bottom = (0,-dlen,0)

    points = getPointArrayWithOffset([pp,top,pN,pp,Np,top,NN,Np,NN,pN,bottom,NN,bottom,Np,bottom,pp], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, False, 1, m)

    setcolor(node, color)

    return node


def cubewithpeak(parent=None, name="cubewithpeak", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a CUBE WITH PEAK shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * 0.5

    peak = dt.Vector(0,width,0)
    ppp = dt.Vector(dlen,dlen,dlen)
    ppN = dt.Vector(dlen,dlen,dlen*-1)
    pNp = dt.Vector(dlen,0,dlen)
    Npp = dt.Vector(dlen*-1,dlen,dlen)
    pNN = dt.Vector(dlen,0,dlen*-1)
    NNp = dt.Vector(dlen*-1,0,dlen)
    NpN = dt.Vector(dlen*-1,dlen,dlen*-1)
    NNN = dt.Vector(dlen*-1,0,dlen*-1)

    points = getPointArrayWithOffset([peak,ppp,ppN,peak,NpN,ppN,NpN,peak,Npp,NpN,NNN,NNp,Npp,NpN,Npp,ppp,pNp,NNp,pNp,pNN,ppN,pNN,NNN], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, False, 1, m)

    setcolor(node, color)

    return node


def sphere(parent=None, name="sphere", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a SPHERE shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width

    v0 = dt.Vector(0.75*dlen, 0, 0)
    v1 = dt.Vector(0, -.75*dlen, 0)
    v2 = dt.Vector(-.75*dlen, 0, 0)
    v3 = dt.Vector(0, 0.75*dlen, 0)
    v4 = dt.Vector(0.75*dlen, 0, 0)
    v5 = dt.Vector(0, 0, -.75*dlen)
    v6 = dt.Vector(-.75*dlen, 0, 0)
    v7 = dt.Vector(0, 0, 0.75*dlen)
    v8 = dt.Vector(0, 0, 0.75*dlen)
    v9 = dt.Vector(0, -.75*dlen, 0)
    v10 = dt.Vector(0, 0, -.75*dlen)
    v11 = dt.Vector(0, 0.75*dlen, 0)

    points = getPointArrayWithOffset([v0, v1, v2, v3], pos_offset, rot_offset)
    node = cur.addCurve(parent, name, points, True, 3, m)

    points = getPointArrayWithOffset([v4, v5, v6, v7], pos_offset, rot_offset)
    crv_0 = cur.addCurve(parent, node+"_0crv", points, True, 3, m)

    points = getPointArrayWithOffset([v8, v9, v10, v11], pos_offset, rot_offset)
    crv_1 = cur.addCurve(parent, node+"_1crv", points, True, 3, m)

    for crv in [crv_0, crv_1]:
        for shp in crv.listRelatives(shapes=True):
            node.addChild(shp, add=True, shape=True)
        pm.delete(crv)

    setcolor(node, color)

    return node


def arrow(parent=None, name="arrow", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a ARROW shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * 0.5

    v0 = dt.Vector(0, 0.3*dlen, -dlen)
    v1 = dt.Vector(0, 0.3*dlen, 0.3*dlen)
    v2 = dt.Vector(0, 0.6*dlen, 0.3*dlen)
    v3 = dt.Vector(0, 0, dlen)
    v4 = dt.Vector(0, -0.6*dlen, 0.3*dlen)
    v5 = dt.Vector(0, -0.3*dlen, 0.3*dlen)
    v6 = dt.Vector(0, -0.3*dlen, -dlen)

    points = getPointArrayWithOffset([v0, v1, v2, v3, v4, v5, v6], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, True, 1, m)

    setcolor(node, color)

    return node


def crossarrow(parent=None, name="crossArrow", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a CROSS ARROW shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * 0.5

    v0 = dt.Vector(0.2*dlen, 0, 0.2*dlen)
    v1 = dt.Vector(0.2*dlen, 0, 0.6*dlen)
    v2 = dt.Vector(0.4*dlen, 0, 0.6*dlen)
    v3 = dt.Vector(0, 0, dlen)
    v4 = dt.Vector(-0.4*dlen, 0, 0.6*dlen)
    v5 = dt.Vector(-0.2*dlen, 0, 0.6*dlen)
    v6 = dt.Vector(-0.2*dlen, 0, 0.2*dlen)
    v7 = dt.Vector(-0.6*dlen, 0, 0.2*dlen)
    v8 = dt.Vector(-0.6*dlen, 0, 0.4*dlen)
    v9 = dt.Vector(-dlen, 0, 0)
    v10 = dt.Vector(-0.6*dlen, 0, -0.4*dlen)
    v11 = dt.Vector(-0.6*dlen, 0, -0.2*dlen)
    v12 = dt.Vector(-0.2*dlen, 0, -0.2*dlen)
    v13 = dt.Vector(-0.2*dlen, 0, -0.6*dlen)
    v14 = dt.Vector(-0.4*dlen, 0, -0.6*dlen)
    v15 = dt.Vector(0, 0, -dlen)
    v16 = dt.Vector(0.4*dlen, 0, -0.6*dlen)
    v17 = dt.Vector(0.2*dlen, 0, -0.6*dlen)
    v18 = dt.Vector(0.2*dlen, 0, -0.2*dlen)
    v19 = dt.Vector(0.6*dlen, 0, -0.2*dlen)
    v20 = dt.Vector(0.6*dlen, 0, -0.4*dlen)
    v21 = dt.Vector(dlen, 0, 0)
    v22 = dt.Vector(0.6*dlen, 0, 0.4*dlen)
    v23 = dt.Vector(0.6*dlen, 0, 0.2*dlen)

    points = getPointArrayWithOffset([v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, True, 1, m)

    setcolor(node, color)

    return node


def cross(parent=None, name="cross", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a CROSS shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    width = width * 0.35
    offset1 = width * .5
    offset2 = width * 1.5

    v0 = dt.Vector(width,offset2,0)
    v1 = dt.Vector(offset2,width,0)
    v2 = dt.Vector(offset1,0,0)

    v3 = dt.Vector(offset2,-width,0)
    v4 = dt.Vector(width,-offset2,0)
    v5 = dt.Vector(0,-offset1,0)

    v6 = dt.Vector(-width,-offset2,0)
    v7 = dt.Vector(-offset2,-width,0)
    v8 = dt.Vector(-offset1,0,0)

    v9 = dt.Vector(-offset2,width,0)
    v10 = dt.Vector(-width,offset2,0)
    v11 = dt.Vector(0,offset1,0)

    points = getPointArrayWithOffset([v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11], pos_offset, rot_offset)

    node = cur.addCurve(parent, name, points, True, 1, m)

    setcolor(node, color)

    return node


def null(parent=None, name="null", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a NULL shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * .5

    v0 = dt.Vector(dlen, 0, 0)
    v1 = dt.Vector(-dlen, 0, 0)
    v2 = dt.Vector(0,dlen, 0)
    v3 = dt.Vector(0, -dlen, 0)
    v4 = dt.Vector(0, 0, dlen)
    v5 = dt.Vector(0, 0, -dlen)

    points = getPointArrayWithOffset([v0, v1], pos_offset, rot_offset)
    node = cur.addCurve(parent, name, points, False, 1, m)

    points = getPointArrayWithOffset([v2, v3], pos_offset, rot_offset)
    crv_0 = cur.addCurve(parent, name, points, False, 1, m)

    points = getPointArrayWithOffset([v4, v5], pos_offset, rot_offset)
    crv_1 = cur.addCurve(parent, name, points, False, 1, m)

    for crv in [crv_0, crv_1]:
        for shp in crv.listRelatives(shapes=True):
            node.addChild(shp, add=True, shape=True)
        pm.delete(crv)

    setcolor(node, color)

    return node


def axis(parent=None, name="axis", width=1, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a AXIS shape.

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    dlen = width * .5

    v0 = dt.Vector(0, 0, 0)
    v1 = dt.Vector(dlen, 0, 0)
    v2 = dt.Vector(0,dlen, 0)
    v3 = dt.Vector(0, 0, dlen)


    points = getPointArrayWithOffset([v0, v1], pos_offset, rot_offset)
    node = cur.addCurve(parent, name, points, False, 1, m)
    setcolor(node, 4)

    points = getPointArrayWithOffset([v0, v2], pos_offset, rot_offset)
    crv_0 = cur.addCurve(parent, name, points, False, 1, m)
    setcolor(crv_0, 14)

    points = getPointArrayWithOffset([v0, v3], pos_offset, rot_offset)
    crv_1 = cur.addCurve(parent, name, points, False, 1, m)
    setcolor(crv_1, 6)

    for crv in [crv_0, crv_1]:
        for shp in crv.listRelatives(shapes=True):
            node.addChild(shp, add=True, shape=True)
        pm.delete(crv)

    return node


##########################################################
# Guide Icons
##########################################################

def guideRootIcon(parent=None, name="root", width=.5,  color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a ROOT GUIDE shape.

    Note:
        This icon is specially design for **Shifter** root guides

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    rootIco = null(parent, name, width, color, m, pos_offset, rot_offset)
    cubeWidth = width/2.0
    cubeIco = cube(parent, name, cubeWidth, cubeWidth, cubeWidth, color, m, pos_offset, rot_offset)

    for shp in cubeIco.listRelatives(shapes=True):
        rootIco.addChild(shp, add=True, shape=True)
    pm.delete(cubeIco)

    att.setNotKeyableAttributes(rootIco)
    rootIco.addAttr("isGearGuide", at="bool", dv=True)
    # Set the control shapes isHistoricallyInteresting
    for oShape in rootIco.getShapes():
        oShape.isHistoricallyInteresting.set(False)

    return rootIco


def guideLocatorIcon(parent=None, name="locator", width=.5, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a LOCATOR GUIDE shape.

    Note:
        This icon is specially design for **Shifter** locator guides

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        width (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """
    rootIco = null(parent, name, width, color, m, pos_offset, rot_offset)
    spheWidth = width/2.0
    sphereIco = sphere(parent, name, spheWidth, color, m, pos_offset, rot_offset)

    for shp in sphereIco.listRelatives(shapes=True):
        rootIco.addChild(shp, add=True, shape=True)
    pm.delete(sphereIco)

    att.setNotKeyableAttributes(rootIco)
    rootIco.addAttr("isGearGuide", at="bool", dv=True)
    # Set the control shapes isHistoricallyInteresting
    for oShape in rootIco.getShapes():
        oShape.isHistoricallyInteresting.set(False)

    return rootIco


def guideBladeIcon(parent=None, name="blade",lenX=1.0, color=[0,0,0], m=dt.Matrix(), pos_offset=None, rot_offset=None):
    """
    Create a curve with a BLADE GUIDE shape.

    Note:
        This icon is specially design for **Shifter** blade guides

    Args:
        parent (dagNode): The parent object of the newly created curve.
        name (str): Name of the curve.
        lenX (float): Width of the shape.
        color (int or list of float): The color in index base or RGB.
        m (matrix): The global transformation of the curve.
        pos_offset (vector): The xyz position offset of the curve from its center.
        rot_offset (vector): The xyz rotation offset of the curve from its center. xyz in radians

    Returns:
        dagNode: The newly created icon.
    """

    v0 = dt.Vector(0 , 0, 0)
    v1 = dt.Vector(lenX , 0, 0)
    v2 = dt.Vector(0, lenX/3, 0)


    points = getPointArrayWithOffset([v0, v1, v2 ], pos_offset, rot_offset)

    bladeIco = cur.addCurve(parent, name, points, True, 1, m)

    setcolor(bladeIco, color)

    att.setNotKeyableAttributes(bladeIco)
    # Set the control shapes isHistoricallyInteresting
    for oShape in bladeIco.getShapes():
        oShape.isHistoricallyInteresting.set(False)

    return bladeIco

##########################################################
# MISC
##########################################################
# ========================================================

def getPointArrayWithOffset(point_pos, pos_offset=None, rot_offset=None):
    """
    Convert a list of vector to a List of float and add the position and rotation offset.

    Args:
        point_pos (list of vector): Point positions.
        pos_offset (vector):  The position offset of the curve from its center.
        rot_offset (vector): The rotation offset of the curve from its center. In radians.

    Returns:
        list of vector: the new point positions

    """

    points = []
    for v in point_pos:
        if rot_offset:
            mv = om.MVector(v.x,v.y,v.z)
            mv = mv.rotateBy(om.MEulerRotation(rot_offset.x, rot_offset.y, rot_offset.z, om.MEulerRotation.kXYZ))
            v = dt.Vector(mv.x,mv.y,mv.z)
        if pos_offset:
            v = v + pos_offset

        points.append(v)

    return points


def setcolor(node, color):
    """
    Set the color in the Icons.

    Args:
        node(dagNode): The object
        color (int or list of float): The color in index base or RGB.


    """

    #TODO: configure this funcion to work with RGB or Index color base on Maya version.
    # version = mgear.maya.getMayaver()

    if isinstance(color, int):

        for shp in node.listRelatives(shapes=True):
            shp.setAttr("overrideEnabled", True)
            shp.setAttr("overrideColor", color)
    else:
        for shp in node.listRelatives(shapes=True):
            shp.overrideEnabled.set(1)
            shp.overrideRGBColors.set(1)
            shp.overrideColorRGB.set(color[0],color[1],color[2])
