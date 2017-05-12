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






import pymel.core as pm



def getBlendShape(obj):

    if  isinstance(obj, basestring):
        obj = pm.PyNode(obj)

    try:
        if pm.nodeType(obj.getShape()) in ["mesh", "nurbsSurface", "nurbsCurve"]:
            blendShape = pm.listHistory(obj.getShape(), type="blendShape")[0]
    except:
        blendShape = None

    return blendShape


def connectWithBlendshape(mesh, bst):

    if isinstance(mesh, basestring):
            mesh = pm.PyNode(mesh)
    if isinstance(bst, basestring):
            bst = pm.PyNode(bst)
    bsnode = getBlendShape(mesh)
    if bsnode:
        wc = pm.blendShape( bsnode, q=True, wc=True )
        # print wc
        pm.blendShape( bsnode, edit=True, t=(mesh, wc, bst, 1.0) )
        bsnode.attr(bst.name()).set(1.0)
        bs = bsnode
    else:
        bs = pm.blendShape(bst, mesh, name="_".join([mesh.name(), "blendShape"]), foc=True, w=[(0, 1.0)])

    return bs
