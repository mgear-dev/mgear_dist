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
Functions to work with vectors.
"""

#############################################
# GLOBAL
#############################################
import math

import maya.OpenMaya as om

import pymel.core.datatypes as dt
import pymel.core as pm

#############################################
# VECTOR OPERATIONS
#############################################
def getDistance(v0, v1):
    """
    Get the distance between 2 vectors

    Args:
        v0 (vector): vector A.
        v1 (vector): vector B.

    Returns:
        float: Distance length.
    """
    v = v1 - v0

    return v.length()


def getDistance2(obj0, obj1):
    """
    Get the distance between 2 objects.

    Args:
        obj0 (dagNode): Object A
        obj1 (dagNode): Object B

    Returns:  
        float: Distance length
    """
    v0 = obj0.getTranslation(space="world")
    v1 = obj1.getTranslation(space="world")

    v = v1 - v0

    return v.length()


def linearlyInterpolate(v0, v1, blend=.5):
    """
    Get the vector interpolated between 2 vectors.

    Args:
        v0 (vector): vector A.
        v1 (vector): vector B.
        blend (float): Blending value.

    Returns:
        vector: The interpolated vector.

    """

    vector = v1 - v0
    vector *= blend
    vector += v0

    return vector


def getPlaneNormal(v0, v1, v2):
    """
    Get the normal vector of a plane (Defined by 3 positions).

    Args:
        v0 (vector): First position on the plane.
        v1 (vector): Second position on the plane.
        v2 (vector): Third position on the plane.

    Returns:
        vector: The normal.

    """

    vector0 = v1 - v0
    vector1 = v2 - v0
    vector0.normalize()
    vector1.normalize()

    normal = vector1 ^ vector0
    normal.normalize()

    return normal


def getPlaneBiNormal(v0, v1, v2):
    """
    Get the binormal vector of a plane (Defined by 3 positions).

    Args:
        v0 (vector): First position on the plane.
        v1 (vector): Second position on the plane.
        v2 (vector): Third position on the plane.

    Returns:
        vector: The binormal.

    """

    normal = getPlaneNormal(v0, v1, v2)

    vector0 = v1 - v0

    binormal = normal ^ vector0
    binormal.normalize()

    return binormal


def getTransposedVector(v, position0, position1, inverse=False):
    """
    Get the transposed vector.

    Args:
        v (vector): Input Vector.
        position0 (vector): Position A.
        position1 (vector): Position B.
        inverse (bool): Invert the rotation.

    Returns:
        vector: The transposed vector.

    Khan Academy:
        `Transposed Vector <https://www.khanacademy.org/math/linear-algebra/matrix-transformations/matrix-transpose/v/linear-algebra-transpose-of-a-vector>`_


    >>> normal = vec.getTransposedVector(self.normal, [self.guide.apos[0], self.guide.apos[1]], [self.guide.apos[-2], self.guide.apos[-1]])

    """

    v0 = position0[1] - position0[0]
    v0.normalize()

    v1 = position1[1] - position1[0]
    v1.normalize()

    ra = v0.angle(v1)

    if inverse:
        ra = -ra

    axis = v0 ^ v1

    vector = rotateAlongAxis(v, axis, ra)

    # Check if the rotation has been set in the right order
    # ra2 = (math.pi *.5 ) - v1.angle(vector)
    # vector = rotateAlongAxis(v, axis, -ra2)

    return vector


def rotateAlongAxis(v, axis, a):
    """
    Rotate a vector around a given axis defined by other vector.

    Args:
        v (vector): The vector to rotate.
        axis (vector): The axis to rotate around.
        a (float): The rotation angle in radians.
    """
    sa = math.sin(a / 2.0)
    ca = math.cos(a / 2.0)

    q1 = om.MQuaternion(v.x, v.y, v.z, 0)
    q2 = om.MQuaternion(axis.x * sa, axis.y * sa, axis.z * sa, ca)
    q2n = om.MQuaternion(-axis.x * sa, -axis.y * sa, -axis.z * sa, ca)
    q = q2 * q1
    q *= q2n

    out = om.MVector(q.x, q.y, q.z)

    return out



##########################################################
# CLASS
##########################################################
# ========================================================
class Blade(object):
    """
    The Blade object for shifter guides.
    """

    def __init__(self, t=dt.Matrix()):

        self.transform = t

        d = [t.data[j][i] for j in range(len(t.data)) for i in range(len(t.data[0])) ]

        m = om.MMatrix()
        om.MScriptUtil.createMatrixFromList(d, m)
        m = om.MTransformationMatrix(m)

        x = om.MVector(1,0,0).rotateBy(m.rotation())
        y = om.MVector(0,1,0).rotateBy(m.rotation())
        z = om.MVector(0,0,1).rotateBy(m.rotation())

        self.x = dt.Vector(x.x, x.y, x.z)
        self.y = dt.Vector(y.x, y.y, y.z)
        self.z = dt.Vector(z.x, z.y, z.z)

