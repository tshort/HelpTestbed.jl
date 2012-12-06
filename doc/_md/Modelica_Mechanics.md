% Modelica.Mechanics: [Modelica](Modelica.html#Modelica).Mechanics
% 
% 

**Library of 1-dim. and 3-dim. mechanical components (multi-body,
rotational, translational)**

Information
===========

::

This package contains components to model the movement of 1-dim.
rotational, 1-dim. translational, and 3-dim. **mechanical systems**.

Note, all **dissipative** components of the Modelica.Mechanics library
have an optional **heatPort** connector to which the dissipated energy
is transported in form of heat. This connector is enabled via parameter
"useHeatPort". If the heatPort connector is enabled, it must be
connected, and if it is not enabled, it must not be connected.
Independently, whether the heatPort is enabled or not, the dissipated
power is available from variable "**lossPower**" (which is positive if
heat is flowing out of the heatPort).

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image3](Modelica.Mechanics.MultiBodyS.png)   Library to model
  [MultiBody](Modelica_Mechanics_MultiBody.html# 3-dimensional mechanical
  Modelica.Mechanics.MultiBody)                  systems

  ![image4](Modelica.Mechanics.RotationalS.png)  Library to model
  [Rotational](Modelica_Mechanics_Rotational.htm 1-dimensional, rotational
  l#Modelica.Mechanics.Rotational)               mechanical systems

  ![image5](Modelica.Mechanics.TranslationalS.pn Library to model
  g)                                             1-dimensional,
  [Translational](Modelica_Mechanics_Translation translational mechanical
  al.html#Modelica.Mechanics.Translational)      systems
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:03 2010.
