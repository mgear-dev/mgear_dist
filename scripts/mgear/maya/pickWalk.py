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
Custom Pick walk.
"""
#############################################
# GLOBAL
#############################################
import pymel.core as pm

import mgear.string as stri

##########################################################
# Utility funcsions
##########################################################
def getWalkTag(node):
    """Get Controller tag

    Args:
        node (dagNode): Controller object with tag

    Returns:
        tag: Controller tag
    """
    tag = node.listConnections(t="controller", et=True)
    if tag:
        return tag[0]


def reorderControllerChildrenTags(tag):
    """Clean the order on the children connection.
    This is important for the Left and right pick walk.
    Becasue is using the index of the connection.

    Args:
        tag (controller tag): The tag to clean the children order
    """
    ch = tag.children.connections()
    for i,  c in enumerate(ch):
        d = c.children.connections(c.parent,  p=True)[0]
        pm.disconnectAttr(c.parent, d)
        pm.connectAttr(c.parent, tag.attr("children[%s]"%str(i)))


def cleanOrphaneControllerTags(tag):
    """security check, delete tags without controlObject plug

    Args:
        tag (controllers tag list): The tags to check

    Returns:
        list: The valid tags with controller object plugged
    """
    if not isinstance(tag, list):
        tag = [tag]
    validTags = []
    for t in tag:
        if not t.controllerObject.connections():
            pm.displayWarning("The controller tag: %s have not controller object input. Auto Deleted!"%t.name())
            pm.delete(t)
            reorderControllerChildrenTags(t)
        else:
            validTags.append(t)
    return validTags


##########################################################
#PICK WALK
##########################################################

# =====================================================
# controllers walkers

def _getControllerWalkNodes(tag):
    """Get the node conneted to a controllers tag as
    a controller object

    Args:
        tag (controller list): Maya's controller tag

    Returns:
        dagNode: The list of controller objects
    """
    nodes = []
    if not isinstance(tag, list):
        tag = [tag]
    for t in tag:
        cnx = t.controllerObject.connections()
        if cnx:
            nodes.append(cnx[0])
    return nodes

def controllerWalkUp(node, add=False):
    """ Walk up in the hierachy using the controller tag

    Args:
        node (dagNode or list of dagNode): Node with controller tag
        add (bool, optional): If true add to selection
    """
    oParent = []
    if not isinstance(node,list):
        node = [node]
    for n in  node:
        tag = getWalkTag(n)
        if tag:
            cnx = tag.parent.connections()
            if cnx:
                oParent.append(cnx[0])
        else:
            pm.displayWarning("The selected object: %s without Controller tag will be skipped"%n.name())
    if oParent:
        pm.select(_getControllerWalkNodes(oParent), add=add)
    else:
        pm.displayWarning("No parent to walk Up.")

def controllerWalkDown(node, add=False, multi=False):
    """ Walk down in the hierachy using the controller tag

    Args:
        node (dagNode or list of dagNode): Node with controller tag
        add (bool, optional): If true add to selection
    """
    oChild = []
    if not isinstance(node,list):
        node = [node]
    for n in  node:
        tag = getWalkTag(n)
        if tag:
            cnx = cleanOrphaneControllerTags(tag.children.connections())
        else:
            pm.displayWarning("The selected object: %s without Controller tag will be skipped"%n.name())
        if cnx:
            if multi:
                oChild = oChild + cnx
            else:
                oChild.append(cnx[0])
    if oChild:
        pm.select(_getControllerWalkNodes(oChild), add=add)
    else:
        pm.displayWarning("No parent to walk Up.")


def _getControllerWalkSiblings(node, direction="right", multi=False):
    """ Get the sibling tag of the controller tag

    Args:
        node (dagNode or list of dagNode): Node with the controller tag
        direction (str, optional): Direction of the walk. Values "right" and "left"
        multi (bool, optional): If true, selects all the siblings

    Returns:
        TYPE: Description
    """
    if direction == "right":
        d = 1
    else:
        d = -1

    if not isinstance(node, list):
        node = [node]

    siblingsTags =[]

    for n in node:
        tag = getWalkTag(n)
        if tag:
            pTag = tag.parent.connections()
            if pTag:
                siblings = cleanOrphaneControllerTags(pTag[0].children.connections())

                if multi:
                    siblingsTags =  siblingsTags + siblings
                else:
                    i = siblings.index(tag)
                    if i <= len(siblings)-2:
                        siblingsTags.append(siblings[i+d])
                    else:
                        siblingsTags.append(siblings[0])
            else:
                pm.displayWarning("The tag: %s doesn't have parent tag"%tag.name())
        else:
            pm.displayWarning("The selected object: %s without Controller tag will be skipped"%n.name())


    siblingsNode = []
    for t in siblingsTags:
        siblingsNode.append(t.controllerObject.connections()[0])


    return siblingsNode


def controllerWalkLeft(node, add=False, multi=False):
    """ Pick walks the next sibling to the left using controller tag

    Args:
        node (TYPE): Description
        add (bool, optional): If true add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    nodes = _getControllerWalkSiblings(pm.selected(), "left",  multi)
    pm.select(nodes, add=add)

def controllerWalkRight(node, add=False, multi=False):
    """ Pick walks the next sibling to the right using controller tag

    Args:
        node (TYPE): Description
        add (bool, optional): If true add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    nodes = _getControllerWalkSiblings(pm.selected(), "right",  multi)
    pm.select(nodes, add=add)

# =====================================================
# transform walkers
def transformWalkUp(node, add=False):
    """ Walks to the parent transform dagNode on the hierarcy

    Args:
        node (dagNode or list of dagNode): dagNode to walk
        add (bool, optional): if True, will add to the selection
    """
    oParent = []
    if not isinstance(node, list):
        node = [node]
    for n in node:
        p = n.listRelatives(p=True)
        if p:
            oParent.append(p)

    if oParent:
        pm.select(oParent, add=add)
    else:
        pm.displayWarning("No parent to walk Up.")


def transformWalkDown(node, add=False, multi=False):
    """Walks to the child transform dagNode on the hierarcy

    Args:
        node (dagNode or list of dagNode): dagNode to walk
        add (bool, optional): if True, will add to the selection
        multi (bool, optional): if True will select all the childrens
    """
    oChild = []
    if not isinstance(node, list):
        node = [node]
    for n in node:
        relatives = n.listRelatives(typ='transform')
        if relatives:
            if multi:
                oChild = oChild + relatives
            else:
                oChild.append(relatives[0])
    if oChild:
        pm.select(oChild, add=add)
    else:
        pm.displayWarning("No child to walk Down.")


def _getTransformWalkSiblings(node, direction="right", multi=False):
    """ Get the sibling transforms on the hierarchy

    Args:
        node (dagNode or list of dagNode): dagNode to walk the siblings
        direction (str, optional): Direction of the walk. Values "right" and "left"
        multi (bool, optional): If true, selects all the siblings

    Returns:
        dagNode: list of dagNode
    """
    if direction == "right":
        d = 1
    else:
        d = -1

    if not isinstance(node, list):
        node = [node]
    siblings =[]
    for n in node:
        p = n.getParent()
        sib = p.getChildren()
        tSib = [t for t in sib if t.type()=="transform"]
        if multi:
            siblings = siblings + tSib
        else:
            i = tSib.index(n)
            if i <= len(tSib)-2:
                siblings.append(tSib[i+d])
            else:
                siblings.append(tSib[0])

    return siblings

def transformWalkLeft(node, add=False, multi=False):
    """ Pick walks to the left the next sibling transform on the hierarchy

    Args:
        node (dagNode or list of dagNode): dagNode transform to navegate the hierarchy
        add (bool, optional): If true add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    sib = _getTransformWalkSiblings(node, "left", multi)
    pm.select(sib, add=add)

def transformWalkRight(node, add=False, multi=False):
    """ Pick walks to the right the next sibling transform on the hierarchy

    Args:
        node (dagNode or list of dagNode): dagNode transform to navegate the hierarchy
        add (bool, optional): If true add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    sib = _getTransformWalkSiblings(node, "right", multi)
    pm.select(sib, add=add)


# =====================================================
#Walk mirror
def getMirror(node):
    """Get the mirrored node usin _L and _R replacement

    Args:
        node (dagNode or list of dagNodes): The dagNode to look for a mirror

    Returns:
        dagNode or list of dagNodes: The dagNode contrapart on the other side _L or _R
    """
    if not isinstance(node, list):
        node = [node]
    mirrorNodes = []
    for n in node:
        try:
            mirrorNodes.append(pm.PyNode(stri.convertRLName(n.name())))
        except:
            pm.displayInfo("The object: %s doesn't have mirror _L or _R contrapart. Skipped!"%n.name())
            mirrorNodes.append(n)

    return mirrorNodes

def walkMirror(node, add=False):
    """Select the mirror dagNode

    Args:
        node (dagNode or list of dagNode): The dagNode to look for a mirror
        add (bool, optional): If true add to selection
    """
    mN = getMirror(node)
    pm.select(mN, add=add)


# =====================================================
# Main walkers
def _walk(node, direction, add=False, multi=False):
    """Walk main function.
    This function will check if the first object on the selection have Controller tag or not.

    NOTE: The pick walk function on the following selected node will be decided by the firs in the selection
    i.e: if the secon element on the selection doesn't controller tag. This element will be discarted.

    Args:
        node (dagNode or list of dagNode): the starting object for the pickwalk
        direction (string): the direction of the navigation : "up", "down", "left" and "right"
        add (bool, optional): If True add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    if not isinstance(node, list):
        node = [node]
    tag = getWalkTag(node[0])
    if tag:
        pm.displayInfo("Controller Tag PickWalk")
        if direction == "up":
            controllerWalkUp(node, add)
        elif direction == "down":
            controllerWalkDown(node, add, multi)
        elif direction == "left":
            controllerWalkLeft(node, add, multi)
        elif direction == "right":
            controllerWalkRight(node, add, multi)

    else: # there is no tag. We pick walk only transforms.
        pm.displayInfo("Transform PickWalk")
        if direction == "up":
            transformWalkUp(node, add)
        elif direction == "down":
            transformWalkDown(node, add, multi)
        elif direction == "left":
            transformWalkLeft(node, add, multi)
        elif direction == "right":
            transformWalkRight(node, add, multi)


def walkUp(node, add=False, multi=False):
    """Walk up

    Args:
        node (dagNode or list of dagNode): the starting object for the pickwalk
        add (bool, optional): If True add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    _walk(node, "up", add, multi)

def walkDown(node, add=False, multi=False):
    """Walk Down

    Args:
        node (dagNode or list of dagNode): the starting object for the pickwalk
        add (bool, optional): If True add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    _walk(node, "down", add, multi)

def walkLeft(node, add=False, multi=False):
    """Walk left

    Args:
        node (dagNode or list of dagNode): the starting object for the pickwalk
        add (bool, optional): If True add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    _walk(node, "left", add, multi)

def walkRight(node, add=False, multi=False):
    """Walk right

    Args:
        node (dagNode or list of dagNode): the starting object for the pickwalk
        add (bool, optional): If True add to selection
        multi (bool, optional): If true, selects all the siblings
    """
    _walk(node, "right", add, multi)


if __name__ == "__main__":
    walkUp(pm.selected())
