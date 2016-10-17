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
Functions to create and connect nodes.
"""

#############################################
# GLOBAL
#############################################
import pymel.core as pm
import pymel.core.datatypes as dt


#############################################
# CREATE SIMPLE NODES
#############################################

def createMultMatrixNode(mA, mB, target=False, transform='srt'):
    """
    Create Maya multiply Matrix node.

    Note:
        This node have same functionality as the default Maya matrix multiplication.

    Args:
        mA (matrix): input matrix A.
        mB (matrix): input matrix B.
        target (dagNode): object target to apply the transformation
        transform (str): if target is True. out transform  to SRT valid value s r t

    Returns:
        pyNode: Newly created mGear_multMatrix node
    """
    node = pm.createNode("multMatrix")
    for m, mi in zip([mA, mB], ['matrixIn[0]', 'matrixIn[1]']):
        if isinstance(m, dt.Matrix):
            pm.setAttr(node.attr(mi), m)
        else:
            pm.connectAttr(m, node.attr(mi))
    if target:
        dm_node = pm.createNode("decomposeMatrix")
        pm.connectAttr(node+".matrixSum", dm_node+".inputMatrix")
        if 't' in transform:
            pm.connectAttr(dm_node+".outputTranslate", target.attr("translate"), f=True)
        if 'r' in transform:
            pm.connectAttr(dm_node+".outputRotate", target.attr("rotate"), f=True)
        if 's' in transform:
            pm.connectAttr(dm_node+".outputScale", target.attr("scale"), f=True)

    return node

def createDecomposeMatrixNode(m):
    """
    Create and connect a decomposeMatrix node.

    Args:
        m(str or attr): The matrix attribute name.

    Returns:
        pyNode: the newly created node.

    >>> dm_node = nod.createDecomposeMatrixNode(mulmat_node+".output")
    """
    node = pm.createNode("decomposeMatrix")

    pm.connectAttr(m, node+".inputMatrix")

    return node


def createDistNode(objA, objB, output=None):
    """
    Create and connect a distance node.

    Args:
        objA (dagNode): The dagNode A.
        objB (dagNode): The dagNode B.
        output (attr): Output attribute.

    Returns:
        pyNode: the newly created node.

    >>> distA_node = nod.createDistNode(self.tws0_loc, self.tws1_loc)
    """

    node = pm.createNode("distanceBetween")

    dm_nodeA = pm.createNode("decomposeMatrix")
    dm_nodeB = pm.createNode("decomposeMatrix")

    pm.connectAttr(objA+".worldMatrix", dm_nodeA+".inputMatrix")
    pm.connectAttr(objB+".worldMatrix", dm_nodeB+".inputMatrix")

    pm.connectAttr(dm_nodeA+".outputTranslate", node+".point1")
    pm.connectAttr(dm_nodeB+".outputTranslate", node+".point2")

    if output:
        pm.connectAttr(node+".distance", destination)

    return node


def createConditionNode(firstTerm=False, secondTerm=False, operator=0, ifTrue=False, ifFalse=False):
    """
    Create and connect a condition node.

    ========    ======
    operator    index
    ========    ======
    ==          0
    !=          1
    >           2
    >=          3
    <           4
    <=          5
    ========    ======

    Args:
        firstTerm (attr): The attribute string name for the first conditions.
        secondTerm (attr): The attribute string for the second conditions.
        operator (int): The operator to make the condition.
        ifTrue (bool or attr): If an attribute is provided will connect ifTrue output.
        ifFalse (bool or attr): If an attribute is provided will connect ifFalse output.

    Returns:
        pyNode: the newly created node.

    >>> cond1_node = nod.createConditionNode(self.soft_attr, 0, 2,subtract3_node+".output1D", plusTotalLength_node+".output1D")
    """

    node = pm.createNode("condition")
    pm.setAttr(node+".operation", operator)
    if firstTerm:
        pm.connectAttr(firstTerm, node+".firstTerm")
    if secondTerm:
        pm.connectAttr(secondTerm, node+".secondTerm")
    if ifTrue:
        pm.connectAttr(ifTrue, node+".colorIfTrueR")
    if ifFalse:
        pm.connectAttr(ifFalse, node+".colorIfFalseR")

    return node


def createBlendNode(inputA, inputB, blender=.5):
    """
    Create and connect a createBlendNode node.

    Args:
        inputA (attr or list of 3 attr): The attribute input A
        inputB (attr or list of 3 attr): The attribute input B
        blender (float or attr): Float in 0 to 1 range or attribute string name.


    Returns:
        pyNode: the newly created node.

    >>> blend_node = nod.createBlendNode([dm_node+".outputRotate%s"%s for s in "XYZ"], [cns+".rotate%s"%s for s in "XYZ"], self.lock_ori_att)
    """

    node = pm.createNode("blendColors")

    if not isinstance(inputA, list):
        inputA = [inputA]

    if not isinstance(inputB, list):
        inputB = [inputB]

    for item, s in zip(inputA, "RGB"):
        if isinstance(item, str) or isinstance(item, unicode) or isinstance(item, pm.Attribute):
            pm.connectAttr(item, node+".color1"+s)
        else:
            pm.setAttr(node+".color1"+s, item)

    for item, s in zip(inputB, "RGB"):
        if isinstance(item, str) or isinstance(item, unicode) or isinstance(item, pm.Attribute):
            pm.connectAttr(item, node+".color2"+s)
        else:
            pm.setAttr(node+".color2"+s, item)

    if isinstance(blender, str) or isinstance(blender, unicode) or isinstance(blender, pm.Attribute):
        pm.connectAttr(blender, node+".blender")
    else:
        pm.setAttr(node+".blender", blender)

    return node


def createPairBlend(inputA=None, inputB=None, blender=.5, rotInterpolation=0, output=None):
    """
    Create and connect a PairBlend node.

    Args:
        inputA (dagNode): The transfomr input 1
        inputB (dagNode): The transfomr input 2
        blender (float or attr): Float in 0 to 1 range or attribute string name.
        rotInterpolation (int): Rotation interpolation option. 0=Euler. 1=Quaternion.
        output (dagNode): The output node with the blend transfomr applied. 

    Returns:
        pyNode: the newly created node.

    Example:
        .. code-block:: python

            blend_node = nod.createPairBlend(self.legBonesFK[i], self.legBonesIK[i], self.blend_att, 1)
            pm.connectAttr(blend_node + ".outRotate", x+".rotate")
            pm.connectAttr(blend_node + ".outTranslate", x+".translate")
    """

    node = pm.createNode("pairBlend")
    node.attr("rotInterpolation").set(rotInterpolation)
    
    if inputA:
        pm.connectAttr(inputA+".translate", node+".inTranslate1")
        pm.connectAttr(inputA+".rotate", node+".inRotate1")

    if inputB:
        pm.connectAttr(inputB+".translate", node+".inTranslate2")
        pm.connectAttr(inputB+".rotate", node+".inRotate2")

    if isinstance(blender, str) or isinstance(blender, unicode) or isinstance(blender, pm.Attribute):
        pm.connectAttr(blender, node+".weight")
    else:
        pm.setAttr(node+".weight", blender)
    
    if output:
        pm.connectAttr(node+".outRotate", output+".rotate")
        pm.connectAttr(node+".outTranslate", output+".translate")

    return node


def createReverseNode(input, output=None):
    """
    Create and connect a reverse node.

    Args:
        input (attr or list of 3 attr): The attribute input.
        output (attr or list of 3 attr): The attribute to connect the output.

    Returns:
        pyNode: the newly created node.

    >>> fkvis_node = nod.createReverseNode(self.blend_att)
    """

    node = pm.createNode("reverse")

    if not isinstance(input, list):
        input = [input]

    for item, s in zip(input, "XYZ"):
        if isinstance(item, str) or isinstance(item, unicode) or isinstance(item, pm.Attribute):
            pm.connectAttr(item, node+".input"+s)
        else:
            pm.setAttr(node+".input"+s, item)

    if output:
        if not isinstance(output, list):
            output = [output]
        for out, s in zip(output, "XYZ"):
            pm.connectAttr(node+".output"+s, out, f=True)


    return node


def createCurveInfoNode(crv):
    """
    Create and connect a curveInfo node.

    Args:
        crv (dagNode): The curve.

    Returns:
        pyNode: the newly created node.

    >>> crv_node = nod.createCurveInfoNode(self.slv_crv)
    """

    node = pm.createNode("curveInfo")

    shape = pm.listRelatives(crv, shapes=True)[0]

    pm.connectAttr(shape+".local", node+".inputCurve")

    return node


# TODO: update using plusMinusAverage node
def createAddNode(inputA, inputB):
    """
    Create and connect a addition node.

    Args:
        inputA (attr or float): The attribute input A
        inputB (attr or float): The attribute input B

    Returns:
        pyNode: the newly created node.

    >>> add_node = nod.createAddNode(self.roundness_att, .001)
    """

    node = pm.createNode("addDoubleLinear")

    if isinstance(inputA, str) or isinstance(inputA, unicode) or isinstance(inputA, pm.Attribute):
        pm.connectAttr(inputA, node+".input1")
    else:
        pm.setAttr(node+".input1", inputA)

    if isinstance(inputB, str) or isinstance(inputB, unicode) or isinstance(inputB, pm.Attribute):
        pm.connectAttr(inputB, node+".input2")
    else:
        pm.setAttr(node+".input2", inputB)

    return node


# TODO: update using plusMinusAverage node
def createSubNode(inputA, inputB):
    """
    Create and connect a subtraction node.

    Args:
        inputA (attr or float): The attribute input A
        inputB (attr or float): The attribute input B

    Returns:
        pyNode: the newly created node.

    >>> sub_nod = nod.createSubNode(self.roll_att, angle_outputs[i-1])
    """

    node = pm.createNode("addDoubleLinear")

    if isinstance(inputA, str) or isinstance(inputA, unicode) or isinstance(inputA, pm.Attribute):
        pm.connectAttr(inputA, node+".input1")
    else:
        pm.setAttr(node+".input1", inputA)

    if isinstance(inputB, str) or isinstance(inputB, unicode) or isinstance(inputB, pm.Attribute):
        neg_node = pm.createNode("multiplyDivide")
        pm.connectAttr(inputB, neg_node+".input1X")
        pm.setAttr(neg_node+".input2X", -1)
        pm.connectAttr(neg_node+".outputX", node+".input2")
    else:
        pm.setAttr(node+".input2", -inputB)

    return node

def createPowNode(inputA, inputB, output=None):
    """
    Create and connect a power node.

    Args:
        inputA (attr, float or list of float): The attribute input A
        inputB (attr, float or list of float): The attribute input B
        output (attr or list of attr): The attribute to connect the output.

    Returns:
        pyNode: the newly created node.

    """
    return createMulDivNode(inputA, inputB, 3, output)


def createMulNode(inputA, inputB, output=None):
    """
    Create and connect a Multiply node.

    Args:
        inputA (attr, float or list of float): The attribute input A
        inputB (attr, float or list of float): The attribute input B
        output (attr or list of attr): The attribute to connect the output.

    Returns:
        pyNode: the newly created node.

    """
    return createMulDivNode(inputA, inputB, 1, output)


def createDivNode(inputA, inputB, output=None):
    """
    Create and connect a Divide node.

    Args:
        inputA (attr, float or list of float): The attribute input A
        inputB (attr, float or list of float): The attribute input B
        output (attr or list of attr): The attribute to connect the output.

    Returns:
        pyNode: the newly created node.

    Example:
        .. code-block:: python

            # Classic Maya style creation and connection = 4 lines
            div1_node = pm.createNode("multiplyDivide")
            div1_node.setAttr("operation", 2)
            div1_node.setAttr("input1X", 1)
            pm.connectAttr(self.rig.global_ctl+".sx", div1_node+".input2X")

            # mGear style = 1 line
            div1_node = nod.createDivNode(1.0, self.rig.global_ctl+".sx")

    """
    return createMulDivNode(inputA, inputB, 2, output)


def createMulDivNode(inputA, inputB, operation=1, output=None):
    """
    Create and connect a Multiply or Divide node.

    Args:
        inputA (attr, float or list of float): The attribute input A
        inputB (attr, float or list of float): The attribute input B
        output (attr or list of attr): The attribute to connect the output.

    Returns:
        pyNode: the newly created node.

    """
    node = pm.createNode("multiplyDivide")
    pm.setAttr(node+".operation", operation)

    if not isinstance(inputA, list):
        inputA = [inputA]

    if not isinstance(inputB, list):
        inputB = [inputB]

    for item, s in zip(inputA, "XYZ"):
        if isinstance(item, str) or isinstance(item, unicode) or isinstance(item, pm.Attribute):
            pm.connectAttr(item, node+".input1"+s, f=True)
        else:
            pm.setAttr(node+".input1"+s, item)

    for item, s in zip(inputB, "XYZ"):
        if isinstance(item, str) or isinstance(item, unicode) or isinstance(item, pm.Attribute):
            pm.connectAttr(item, node+".input2"+s, f=True)
        else:
            pm.setAttr(node+".input2"+s, item)

    if output:
        if not isinstance(output, list):
            output = [output]

        for item, s in zip(output, "XYZ"):
            pm.connectAttr(node+".output"+s, item, f=True)

    return node


def createClampNode(input, in_min, in_max):
    """
    Create and connect a clamp node

    Args:
        input (attr, float or list): The input value to clamp
        in_min (float): The minimun value to clamp
        in_max (float): The maximun value to clamp

    Returns:
        pyNode: the newly created node.

    >>> clamp_node = nod.createClampNode([self.roll_att, self.bank_att, self.bank_att], [0, -180, 0], [180,0,180])
    
    """
    node = pm.createNode("clamp")

    if not isinstance(input, list):
        input = [input]
    if not isinstance(in_min, list):
        in_min = [in_min]
    if not isinstance(in_max, list):
        in_max = [in_max]

    for in_item, min_item, max_item, s in zip(input, in_min, in_max, "RGB"):

        if isinstance(in_item, str) or isinstance(in_item, unicode) or isinstance(in_item, pm.Attribute):
            pm.connectAttr(in_item, node+".input"+s)
        else:
            pm.setAttr(node+".input"+s, in_item)

        if isinstance(min_item, str) or isinstance(min_item, unicode) or isinstance(min_item, pm.Attribute):
            pm.connectAttr(min_item, node+".min"+s)
        else:
            pm.setAttr(node+".min"+s, min_item)

        if isinstance(max_item, str) or isinstance(max_item, unicode) or isinstance(max_item, pm.Attribute):
            pm.connectAttr(max_item, node+".max"+s)
        else:
            pm.setAttr(node+".max"+s, max_item)

    return node


def createPlusMinusAverage1D(input, operation=1, output=None):
    """
    Create a multiple average node 1D. 
    Args:
        input (attr, float or list): The input values.
        operation (int): Node operation. 0=None, 1=sum, 2=subtract, 3=average
        output (attr): The attribute to connect the result.

    Returns:
        pyNode: the newly created node.

    """
    if not isinstance(input, list):
        input = [input]

    node = pm.createNode("plusMinusAverage")
    node.attr("operation").set(operation)

    for i, x in enumerate(input):
        pm.connectAttr(x, node+".input1D[%s]"%str(i))

    if output:
        pm.connectAttr(node+".output1D", output)


    return node


#############################################
# CREATE MULTI NODES
#############################################

def createNegateNodeMulti(name, inputs=[]):
    """
    Create and connect multiple negate nodes

    Args:
        name (str): The name for the new node.
        inputs (list of attr): The list of attributes to negate

    Returns:
        list: The output attributes list.
    """

    s = "XYZ"
    count=0
    i=0
    outputs = []
    for input in inputs:
        if count==0:
            real_name = name+"_"+str(i)
            node_name = pm.createNode("multiplyDivide", n=real_name)
            i+=1

        pm.connectAttr(input, node_name+".input1"+s[count], f=True)
        pm.setAttr(node_name+".input2"+s[count], -1)

        outputs.append(node_name+".output"+s[count])
        count = (count+1)%3

    return outputs


def createAddNodeMulti(inputs=[]):
    """
    Create and connect multiple add nodes

    Args:
        inputs (list of attr): The list of attributes to add

    Returns:
        list: The output attributes list.

    >>> angle_outputs = nod.createAddNodeMulti(self.angles_att)
    """

    outputs = [inputs[0]]

    for i, input in enumerate(inputs[1:]):
        node_name = pm.createNode("addDoubleLinear")

        if isinstance(outputs[-1], str) or isinstance(outputs[-1], unicode) or isinstance(outputs[-1], pm.Attribute):
            pm.connectAttr(outputs[-1], node_name+".input1", f=True)
        else:
            pm.setAttr(node_name+".input1", outputs[-1])

        if isinstance(input, str) or isinstance(input, unicode) or isinstance(input, pm.Attribute):
            pm.connectAttr(input, node_name+".input2", f=True)
        else:
            pm.setAttr(node_name+".input2", input)

        outputs.append(node_name+".output")

    return outputs


def createMulNodeMulti(name, inputs=[]):
    """
    Create and connect multiple multiply nodes

    Args:
        name (str): The name for the new node.
        inputs (list of attr): The list of attributes to multiply

    Returns:
        list: The output attributes list.
    """

    outputs = [inputs[0]]

    for i, input in enumerate(inputs[1:]):
        real_name = name+"_"+str(i)
        node_name = pm.createNode("multiplyDivide", n=real_name)
        pm.setAttr(node_name+".operation", 1)

        if isinstance(outputs[-1], str) or isinstance(outputs[-1], unicode) or isinstance(outputs[-1], pm.Attribute):
            pm.connectAttr(outputs[-1], node_name+".input1X", f=True)
        else:
            pm.setAttr(node_name+".input1X", outputs[-1])

        if isinstance(input, str) or isinstance(input, unicode) or isinstance(input, pm.Attribute):
            pm.connectAttr(input, node_name+".input2X", f=True)
        else:
            pm.setAttr(node_name+".input2X", input)

        outputs.append(node_name+".output")

    return outputs


def createDivNodeMulti(name, inputs1=[], inputs2=[]):
    """
    Create and connect multiple divide nodes

    Args:
        name (str): The name for the new node.
        inputs1 (list of attr): The list of attributes
        inputs2 (list of attr): The list of attributes

    Returns:
        list: The output attributes list.
    """

    for i, input in enumerate(pm.inputs[1:]):
        real_name = name+"_"+str(i)
        node_name = pm.createNode("multiplyDivide", n=real_name)
        pm.setAttr(node_name+".operation", 2)

        if isinstance(pm.outputs[-1], str) or isinstance(pm.outputs[-1], unicode) or isinstance(pm.outputs[-1], pm.Attribute):
            pm.connectAttr(pm.outputs[-1], node_name+".input1X", f=True)
        else:
            pm.setAttr(node_name+".input1X", pm.outputs[-1])

        if isinstance(input, str) or isinstance(input, unicode) or isinstance(input, pm.Attribute):
            pm.connectAttr(input, node_name+".input2X", f=True)
        else:
            pm.setAttr(node_name+".input2X", input)

        pm.outputs.append(node_name+".output")

    return pm.outputs


def createClampNodeMulti(name, inputs=[], in_min=[], in_max=[]):
    """
    Create and connect multiple clamp nodes

    Args:
        name (str): The name for the new node.
        inputs (list of attr): The list of attributes 
        in_min (list of attr): The list of attributes
        in_max (list of attr): The list of attributes

    Returns:
        list: The output attributes list.
    """

    s = "RGB"
    count=0
    i=0
    outputs = []
    for input, min, max in zip(inputs, in_min, in_max):
        if count==0:
            real_name = name+"_"+str(i)
            node_name = pm.createNode("clamp", n=real_name)
            i+=1

        pm.connectAttr(input, node_name+".input"+s[count], f=True)

        if isinstance(min, str) or isinstance(min, unicode) or isinstance(min, pm.Attribute):
            pm.connectAttr(min, node_name+".min"+s[count], f=True)
        else:
            pm.setAttr(node_name+".min"+s[count], min)

        if isinstance(max, str) or isinstance(max, unicode) or isinstance(max, pm.Attribute):
            pm.connectAttr(max, node_name+".max"+s[count], f=True)
        else:
            pm.setAttr(node_name+".max"+s[count], max)

        outputs.append(node_name+".output"+s[count])
        count = (count+1)%3

    return outputs



