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

##########################################################
# Utility funcsions
##########################################################
def getWalkTag(node):

    # check first mGear tag. So it is prioritary on pick walk trigger.
    tag = node.listConnections(t="mgear_walkTag", et=True)
    # security check, delete tags without controlObject plug
    for t in tag:
        if not t.controlObject.connections():
            pm.displayWarning("The controller tag: %s have not controller object input. Auto Deleted!"%t.name())
            pm.delete(t)
    if not tag:
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
        print t.controllerObject.connections()
        if not t.controllerObject.connections():
            pm.displayWarning("The controller tag: %s have not controller object input. Auto Deleted!"%t.name())
            pm.delete(t)
            reorderControllerChildrenTags(t)
        else:
            validTags.append(t)
    return validTags

##########################################################
# mgear tagging
##########################################################
#TODO: Create the tagging commands and UI


##########################################################
#PICK WALK
##########################################################

# =====================================================
# mgear tag walkers

def _gearWalk():
    return

def gearWalkUp():
    return

def gearWalkDown():
    return

def gearWalkLeft():
    return

def gearWalkRight():
    return

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
    oParent = []
    if not isinstance(node,list):
        node = [node]
    for n in  node:
        tag = getWalkTag(n)
        cnx = tag.parent.connections()
        if cnx:
            oParent.append(cnx[0])
    if oParent:
        pm.select(_getControllerWalkNodes(oParent), add=add)
    else:
        pm.displayWarning("No parent to walk Up.")

def controllerWalkDown(node, add=False, multi=False):
    oChild = []
    if not isinstance(node,list):
        node = [node]
    for n in  node:
        tag = getWalkTag(n)
        cnx = cleanOrphaneControllerTags(tag.children.connections())
        if cnx:
            if multi:
                oChild = oChild + cnx
            else:
                oChild.append(cnx[0])
    if oChild:
        pm.select(_getControllerWalkNodes(oChild), add=add)
    else:
        pm.displayWarning("No parent to walk Up.")

def controllerWalkLeft(node, add=False, multi=False):
    # TODO: if the control doen't have any sibling and is L or R
    # try to find the mirror control using string.convertRLName()
    return

def controllerWalkRight(node, add=False, multi=False):
    return

# =====================================================
# transform walkers
def transformWalkUp(node, add=False):
    oParent = []
    if not isinstance(node, list):
        node = [node]
    for n in node:
        oParent.append(n.listRelatives(p=True))

    if oParent:
        pm.select(oParent, add=add)
    else:
        pm.displayWarning("No parent to walk Up.")


def transformWalkDown(node, add=False, multi=False):
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
    print oChild
    if oChild:
        pm.select(oChild, add=add)
    else:
        pm.displayWarning("No child to walk Down.")


def _getTransformWalkDir(node, direction="right", multi=False):
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
        #TODO: if only one children and L or R in the name. Try to find the mirror object
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
    sib = _getTransformWalkDir(node, "left", multi)
    pm.select(sib, add=add)

def transformWalkRight(node, add=False, multi=False):
    sib = _getTransformWalkDir(node, "right", multi)
    pm.select(sib, add=add)


# =====================================================
# Main walkers
def _walk(node, direction, add=False, multi=False):
    tag = getWalkTag(node)
    if "mgear_walkTag" == tag.type():
        if direction == "up":
            pass
        elif direction == "down":
            pass
        elif direction == "left":
            pass
        elif direction == "right":
            pass

    elif "controller" == tag.type():
        if direction == "up":
            pass
        elif direction == "down":
            pass
        elif direction == "left":
            pass
        elif direction == "right":
            pass

    else: # there is no tag. We pick walk only transforms.
        if direction == "up":
            transformWalkUp(node, add)
        elif direction == "down":
            transformWalkDown(node, add, multi)
        elif direction == "left":
            transformWalkLeft(node, add, multi)
        elif direction == "right":
            transformWalkRight(node, add, multi)


def walkUp(node, add=False, multi=False):
    _walk(node, "up", add, multi)

def walkDown(node, add=False, multi=False):
    _walk(node, "down", add, multi)

def walkLeft(node, add=False, multi=False):
    _walk(node, "left", add, multi)

def walkRight(node, add=False, multi=False):
    _walk(node, "right", add, multi)
