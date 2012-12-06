% Modelica.Mechanics.Rotational:
  [Modelica.Mechanics](Modelica_Mechanics.html#Modelica.Mechanics).Rotational
% 
% 

**Library to model 1-dimensional, rotational mechanical systems**

Information
===========

::

Library **Rotational** is a **free** Modelica package providing
1-dimensional, rotational mechanical components to model in a convenient
way drive trains with frictional losses. A typical, simple example is
shown in the next figure:

For an introduction, have especially a look at:

-   [Rotational.UsersGuide](Modelica_Mechanics_Rotational_UsersGuide.html#Modelica.Mechanics.Rotational.UsersGuide)
    discusses the most important aspects how to use this library.
-   [Rotational.Examples](Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples)
    contains examples that demonstrate the usage of this library.

In version 3.0 of the Modelica Standard Library, the basic design of the
library has changed: Previously, bearing connectors could or could not
be connected. In 3.0, the bearing connector is renamed to "**support**"
and this connector is enabled via parameter "useSupport". If the support
connector is enabled, it must be connected, and if it is not enabled, it
must not be connected.

In version 3.2 of the Modelica Standard Library, all **dissipative**
components of the Rotational library got an optional **heatPort**
connector to which the dissipated energy is transported in form of heat.
This connector is enabled via parameter "useHeatPort". If the heatPort
connector is enabled, it must be connected, and if it is not enabled, it
must not be connected. Independently, whether the heatPort is enabled or
not, the dissipated power is available from the new variable
"**lossPower**" (which is positive if heat is flowing out of the
heatPort). For an example, see
[Examples.HeatLosses](Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.HeatLosses).

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image7](Modelica.Mechanics.Rotational.UsersGui User's Guide of
  deS.png)                                         Rotational Library
  [UsersGuide](Modelica_Mechanics_Rotational_Users 
  Guide.html#Modelica.Mechanics.Rotational.UsersGu 
  ide)                                             

  ![image8](Modelica.Mechanics.Rotational.Examples Demonstration examples
  S.png)                                           of the components of
  [Examples](Modelica_Mechanics_Rotational_Example this package
  s.html#Modelica.Mechanics.Rotational.Examples)   

  ![image9](Modelica.Mechanics.Rotational.Componen Components for 1D
  tsS.png)                                         rotational mechanical
  [Components](Modelica_Mechanics_Rotational_Compo drive trains
  nents.html#Modelica.Mechanics.Rotational.Compone 
  nts)                                             

  ![image10](Modelica.Mechanics.Rotational.Sensors Sensors to measure
  S.png)                                           variables in 1D
  [Sensors](Modelica_Mechanics_Rotational_Sensors. rotational mechanical
  html#Modelica.Mechanics.Rotational.Sensors)      components

  ![image11](Modelica.Mechanics.Rotational.Sources Sources to drive 1D
  S.png)                                           rotational mechanical
  [Sources](Modelica_Mechanics_Rotational_Sources. components
  html#Modelica.Mechanics.Rotational.Sources)      

  ![image12](Modelica.Mechanics.Rotational.Interfa Connectors and partial
  cesS.png)                                        models for 1D
  [Interfaces](Modelica_Mechanics_Rotational_Inter rotational mechanical
  faces.html#Modelica.Mechanics.Rotational.Interfa components
  ces)                                             

  ![image13](Modelica.Mechanics.Rotational.IconsS. Icons for Rotational
  png)                                             package
  [Icons](Modelica_Mechanics_Rotational_Icons.html 
  #Modelica.Mechanics.Rotational.Icons)            
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:41 2010.
