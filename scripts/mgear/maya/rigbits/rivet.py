
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



# Thanks to http://jinglezzz.tumblr.com for the tutorial :)
class rivet():     

    def create(self, mesh, edge1, edge2, parent):   
        self.sources = {
            'oMesh' : mesh,
            'edgeIndex1' : edge1,
            'edgeIndex2' : edge2
        }        
         
        self.createNodes()
        self.createConnections()
        self.setAttributes()
        if parent:
            pm.parent( self.node['locator'].getParent(), parent)
        return self.node['locator'].getParent()

 
 
                                 
    def createNodes(self, *args):
        self.node = {
            'meshEdgeNode1'     : pm.createNode('curveFromMeshEdge'),
            'meshEdgeNode2'     : pm.createNode('curveFromMeshEdge'),
            'ptOnSurfaceIn'     : pm.createNode('pointOnSurfaceInfo'),
            'matrixNode'        : pm.createNode('fourByFourMatrix'),
            'decomposeMatrix'   : pm.createNode('decomposeMatrix'),
            'loftNode'          : pm.createNode('loft'),
            'locator'           : pm.createNode('locator')
        }
 
 
    def createConnections(self, *args):
        self.sources['oMesh'].worldMesh.connect(self.node['meshEdgeNode1'].inputMesh)
        self.sources['oMesh'].worldMesh.connect(self.node['meshEdgeNode2'].inputMesh)   
        self.node['meshEdgeNode1'].outputCurve.connect(self.node['loftNode'].inputCurve[0])
        self.node['meshEdgeNode2'].outputCurve.connect(self.node['loftNode'].inputCurve[1])
        self.node['loftNode'].outputSurface.connect(self.node['ptOnSurfaceIn'].inputSurface)
        self.node['ptOnSurfaceIn'].normalizedNormalX.connect(self.node['matrixNode'].in00)
        self.node['ptOnSurfaceIn'].normalizedNormalY.connect(self.node['matrixNode'].in01)
        self.node['ptOnSurfaceIn'].normalizedNormalZ.connect(self.node['matrixNode'].in02)
        self.node['ptOnSurfaceIn'].normalizedTangentUX.connect(self.node['matrixNode'].in10)
        self.node['ptOnSurfaceIn'].normalizedTangentUY.connect(self.node['matrixNode'].in11)
        self.node['ptOnSurfaceIn'].normalizedTangentUZ.connect(self.node['matrixNode'].in12)
        self.node['ptOnSurfaceIn'].normalizedTangentVX.connect(self.node['matrixNode'].in20)
        self.node['ptOnSurfaceIn'].normalizedTangentVY.connect(self.node['matrixNode'].in21)
        self.node['ptOnSurfaceIn'].normalizedTangentVZ.connect(self.node['matrixNode'].in22)
        self.node['ptOnSurfaceIn'].positionX.connect(self.node['matrixNode'].in30)
        self.node['ptOnSurfaceIn'].positionY.connect(self.node['matrixNode'].in31)
        self.node['ptOnSurfaceIn'].positionZ.connect(self.node['matrixNode'].in32)
        self.node['matrixNode'].output.connect(self.node['decomposeMatrix'].inputMatrix)
        self.node['decomposeMatrix'].outputTranslate.connect(self.node['locator'].getParent().translate)
        self.node['decomposeMatrix'].outputRotate.connect(self.node['locator'].getParent().rotate) 
        self.node['locator'].attr("visibility").set(False) 

    def setAttributes(self):
        self.node['meshEdgeNode1'].isHistoricallyInteresting.set(1)
        self.node['meshEdgeNode2'].isHistoricallyInteresting.set(1)
        self.node['meshEdgeNode1'].edgeIndex[0].set(self.main['edgeIndex1'])
        self.node['meshEdgeNode2'].edgeIndex[0].set(self.main['edgeIndex2'])
         
        self.node['loftNode'].reverseSurfaceNormals.set(1)
        self.node['loftNode'].inputCurve.set(size=2)
        self.node['loftNode'].uniform.set(True)
        self.node['loftNode'].sectionSpans.set(3)        
        self.node['loftNode'].caching.set(True) 
             
        self.node['ptOnSurfaceIn'].turnOnPercentage.set(True)
        self.node['ptOnSurfaceIn'].parameterU.set(0.5)
        self.node['ptOnSurfaceIn'].parameterV.set(0.5)
        self.node['ptOnSurfaceIn'].caching.set(True)