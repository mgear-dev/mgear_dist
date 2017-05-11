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
import pymel.core.datatypes as dt

import mgear.maya.node as nod
import mgear.maya.skin as ski
import mgear.maya.icon as ico


import mgear.maya.rigbits as rigbits
import mgear.maya.rigbits.rivet as rvt
import mgear.maya.rigbits.blendShapes as bshp

def inverseTranslateParent(obj):

    if not isinstance(obj, list):
        obj = [obj]
    for x in obj:
        nod.createMulNode([x.attr("tx"), x.attr("ty"), x.attr("tz")], [-1, -1, -1],
                             [x.getParent().attr("tx"), x.getParent().attr("ty"), x.getParent().attr("tz")])




def initCycleTweakBase(outMesh, baseMesh, rotMesh, transMesh, staticJnt=None):
    bshp.connectWithBlendshape(rotMesh, baseMesh )
    bshp.connectWithBlendshape(transMesh, rotMesh)
    bshp.connectWithBlendshape(outMesh, transMesh)

    #Init skinClusters
    pm.skinCluster(staticJnt, rotMesh, tsb=True, nw=2, n='%s_skinCluster'%rotMesh.name())
    pm.skinCluster(staticJnt, transMesh, tsb=True, nw=2, n='%s_skinCluster'%transMesh.name())

def cycleTweak(edgePair, baseMesh, rotMesh, transMesh, setupParent, ctlParent, name, invertAxis=False,
                iconType="square", size=.8, color=13, ro=dt.Vector(0,0,1.5708)):

    # rotation sctructure
    rRivet = rvt.rivet()
    rBase = rRivet.create(baseMesh, edgePair[0], edgePair[1], setupParent)

    # translation structure
    tRivet = rvt.rivet()
    tBase = tRivet.create(transMesh, edgePair[0], edgePair[1], ctlParent)

    #create the controls
    pos = tBase.getTranslation(space="world")
    tweakBase = pm.createNode("transform", n=name+"_tweakBase", p=ctlParent)
    tweakNpo = pm.createNode("transform", n=name+"_tweakNpo", p=tweakBase)
    # tweakBase.setTranslation(pos, space="world")
    tweakCtl = ico.create(tweakNpo, name+"_tweak_ctl", tweakNpo.getMatrix(worldSpace=True), color, iconType, w=size, ro=ro)

    #create the structure and connections

    #create joints

    # add to rotation skin
    # TODO: add checker to see if joint is in the skincluster.
    # rSK = ski.getSkinCluster(mesh)
    # pm.skinCluster(rSK, e=True,  ai=joint, lw=True, wt=0)

    # add to transform skin
    # TODO: add checker to see if joint is in the skincluster.
    # tSK = ski.getSkinCluster(mesh)
    # pm.skinCluster(tSK, e=True,  ai=joint, lw=True, wt=0)

    # return control, jointsList


def lips(edgePairList, baseMesh, rotMesh, transMesh, setupParent, ctlParent):
    return