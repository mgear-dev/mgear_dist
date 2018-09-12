Custom Solvers/Nodes
==========================

mGear custom C++ Solvers/Nodes Documentation

*	`mgear_add10Scalar`_
*	`mgear_curveCns`_
*	`mgear_ikfk2Bone`_









mgear_add10Scalar
-----------------

.. image:: images/solvers/mgear_add10Scalar_node.png
    :align: center
    :scale: 95%

Add 10 scalar values. This node is deprecated. Only keeped for backwards compativility reasons.

.. image:: images/solvers/mgear_add10Scalar_attr.png
    :align: center
    :scale: 95%

mgear_curveCns
-----------------

.. image:: images/solvers/mgear_curveCns_node.png
    :align: center
    :scale: 95%

Generate a curve based on the input positions.
This is used in the Shifer guides to create the visual connections with the guide locations.


mgear_ikfk2Bone
-----------------

.. image:: images/solvers/mgear_ikfk2Bone_node.png
    :align: center
    :scale: 95%

IK FK 2 bones chain solver.

Mainly used for legs and arms. The solver encapsulate many functions that will be very complex and expensive to evaluate using vanilla Maya nodes and other techniques like expressions.

Some of the features are, soft IK, reverse IK, squash, stretch, independen bone length, slide and roll.

.. image:: images/solvers/mgear_ikfk2Bone_attr.png
    :align: center
    :scale: 95%


* **Blend:** IK fk blend
* **lenghtA:** Rest lenght of the bone A (Arm)
* **lenghtB:** Rest lenght of the bone B (Forearm)
