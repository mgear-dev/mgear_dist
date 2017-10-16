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
Navigate the DAG hierarchy.
"""
#############################################
# GLOBAL
#############################################
import maya.cmds as cmds
import pymel.core as pm

#############################################
# DAG
#############################################
def getTopParent(node):
    """
    Returns the first parent of the hierarchy. (usually the 'Model' in Softimage)

    Args:
        node (dagNode): The input node to search.

    Returns:
        dagNode: The top parent of the input node

    """
    return node.getParent(generations=-1)

# ===========================================
def getShapes(node):
    """
    Returns the shape of the dagNode

    Args:
        node (dagNode): The input node to search the shape

    Returns:
        list: The shapes of the node

    """
    return node.listRelatives(shapes=True)

# ===========================================
def findChild(node, name):
    """
    Returns the first child of input node, with a matching name.

    Args:
        node (dagNode): The input node to search
        name (str): The name to search

    Returns:
        dagNode: The first child

    >>>  parent = dag.findChild(self.model, mgear.string.convertRLName(comp_guide.root.name()))

    """
    return __findChildren2(node, name, True)

def findChildren(node, name):
    """
    Returns all the children  of input node, with a matching name.

    Args:
        node (dagNode): The input node to search
        name (str): The name to search

    Returns:
        dagNode list: The children dagNodes

    """
    return __findChildren2(node, name, False)

def findChildrenPartial(node, name):
    """
    Returns the children of input node, with a partial matching name.

    Args:
        node (dagNode): The input node to search
        name (str): The name to search

    Returns:
        dagNode list: The children dagNodes

    """
    return __findChildren2(node, name, False, True)

def __findChildren(node, name, firstOnly=False, partialName=False):

    if partialName:
        children = [item for item in node.listRelatives(ad=True, type="transform") if item.name().split("|")[-1].split("_")[-1] == name]
    else:
        children = [item for item in node.listRelatives(ad=True, type="transform") if item.name().split("|")[-1] == name]
    if not children:
        return False
    if firstOnly:
        return children[0]

    return children

def __findChildren2(node, name, firstOnly=False, partialName=False):
    """This function is using Maya cmds instead of PyMel

    Args:
        node (TYPE): Description
        name (TYPE): Description
        firstOnly (bool, optional): Description
        partialName (bool, optional): Description

    Returns:
        TYPE: Description
    """
    oName = node.name()
    if partialName:
        children = [item for item in cmds.listRelatives(oName, ad=True, type="transform") if item.split("|")[-1].split("_")[-1] == name]
    else:
        children = [item for item in cmds.listRelatives(oName, ad=True, type="transform") if item.split("|")[-1] == name]
    if not children:
        return False
    if firstOnly:
        return pm.PyNode(children[0])

    return [pm.PyNode(x) for x in children]

def findComponentChildren(node, name, sideIndex):
    """
    Returns the component children of input component root.

    Note:
        This method is specific to work with shifter guides naming conventions

    Args:
        node (dagNode): The input node to search
        name (str): The name to search
        sideIndex (str): the side

    Returns:
        dagNode list: The children dagNodes

    >>> objList =  dag.findComponentChildren(self.parent, oldName, oldSideIndex)

    """

    children = []
    for item in node.listRelatives(ad=True, type="transform"):
        checkName = item.name().split("|")[-1].split("_")
        if checkName[0] == name and checkName[1] == sideIndex:
            children.append(item)

    return children


def findComponentChildren2(node, name, sideIndex):
    """
    Returns the component children of input component root.
    This function is using Maya cmds instead of PyMel

    Note:
        This method is specific to work with shifter guides naming conventions

    Args:
        node (dagNode): The input node to search
        name (str): The name to search
        sideIndex (str): the side

    Returns:
        dagNode list: The children dagNodes

    >>> objList =  dag.findComponentChildren(self.parent, oldName, oldSideIndex)

    """

    children = []
    for item in cmds.listRelatives(node.name(), ad=True, type="transform"):
        checkName = item.split("|")[-1].split("_")
        if checkName[0] == name and checkName[1] == sideIndex:
            children.append(item)

    return [pm.PyNode(x) for x in children]
