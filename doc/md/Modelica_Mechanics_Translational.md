% Modelica.Mechanics.Translational:
  [Modelica.Mechanics](Modelica_Mechanics.html#Modelica.Mechanics).Translational
% 
% 

**Library to model 1-dimensional, translational mechanical systems**

Information
===========

::

This package contains components to model *1-dimensional translational
mechanical* systems.

The *filled* and *non-filled green squares* at the left and right side
of a component represent *mechanical flanges*. Drawing a line between
such squares means that the corresponding flanges are *rigidly attached*
to each other. The components of this library can be usually connected
together in an arbitrary way. E.g. it is possible to connect two springs
or two sliding masses with inertia directly together.

The only *connection restriction* is that the Coulomb friction elements
(e.g., MassWithStopAndFriction) should be only connected together
provided a compliant element, such as a spring, is in between. The
reason is that otherwise the frictional force is not uniquely defined if
the elements are stuck at the same time instant (i.e., there does not
exist a unique solution) and some simulation systems may not be able to
handle this situation, since this leads to a singularity during
simulation. It can only be resolved in a "clean way" by combining the
two connected friction elements into one component and resolving the
ambiguity of the frictional force in the stuck mode.

Another restriction arises if the hard stops in model
MassWithStopAndFriction are used, i. e. the movement of the mass is
limited by a stop at smax or smin. **This requires the states Stop.s and
Stop.v** . If these states are eliminated during the index reduction the
model will not work. To avoid this any inertias should be connected via
springs to the Stop element, other sliding masses, dampers or hydraulic
chambers must be avoided.

In the *icon* of every component an *arrow* is displayed in grey color.
This arrow characterizes the coordinate system in which the vectors of
the component are resolved. It is directed into the positive
translational direction (in the mathematical sense). In the flanges of a
component, a coordinate system is rigidly attached to the flange. It is
called *flange frame* and is directed in parallel to the component
coordinate system. As a result, e.g., the positive cut-force of a "left"
flange (flange\_a) is directed into the flange, whereas the positive
cut-force of a "right" flange (flange\_b) is directed out of the flange.
A flange is described by a Modelica connector containing the following
variables:

    Modelica.SIunits.Position s    "Absolute position of flange";
    flow Modelica.SIunits.Force f  "Cut-force in the flange";

This library is designed in a fully object oriented way in order that
components can be connected together in every meaningful combination
(e.g., direct connection of two springs or two shafts with inertia). As
a consequence, most models lead to a system of differential-algebraic
equations of *index 3* (= constraint equations have to be differentiated
twice in order to arrive at a state space representation) and the
Modelica translator or the simulator has to cope with this system
representation. According to our present knowledge, this requires that
the Modelica translator is able to symbolically differentiate equations
(otherwise it is e.g., not possible to provide consistent initial
conditions; even if consistent initial conditions are present, most
numerical DAE integrators can cope at most with index 2 DAEs).

In version 3.2 of the Modelica Standard Library, all **dissipative**
components of the Translational library got an optional **heatPort**
connector to which the dissipated energy is transported in form of heat.
This connector is enabled via parameter "useHeatPort". If the heatPort
connector is enabled, it must be connected, and if it is not enabled, it
must not be connected. Independently, whether the heatPort is enabled or
not, the dissipated power is available from the new variable
"**lossPower**" (which is positive if heat is flowing out of the
heatPort). For an example, see
[Examples.HeatLosses](Modelica_Mechanics_Translational_Examples.html#Modelica.Mechanics.Translational.Examples.HeatLosses).

**Library Officer**

[Martin Otter](http://www.robotic.dlr.de/Martin.Otter/)
  ~ Deutsches Zentrum für Luft und Raumfahrt e.V. (DLR) Institut für
    Robotik und Mechatronik (DLR-RM) Abteilung Systemdynamik und
    Regelungstechnik Postfach 1116 D-82230 Wessling Germany email:
    [[Martin.Otter@dlr.de](mailto:Martin.Otter@dlr.de)](mailto:Martin.Otter@dlr.de)

**Contributors to this library:**

-   Main author until 2006:
      ~ Peter Beater Universität Paderborn, Abteilung Soest Fachbereich
        Maschinenbau/Automatisierungstechnik Lübecker Ring 2 D 59494
        Soest Germany email:
        [[info@beater.de](mailto:info@beater.de)](mailto:info@beater.de)

-   [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern, Austria email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

-   [Martin Otter](http://www.robotic.dlr.de/Martin.Otter/) (DLR-RM)

Copyright © 1998-2010, Modelica Association, Anton Haumer and
Universität Paderborn, FB 12.

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
  Name                                                Description
  --------------------------------------------------- --------------------
  ![image5](Modelica.Mechanics.Translational.Examples DeMonstration
  S.png)                                              examples of the
  [Examples](Modelica_Mechanics_Translational_Example components of this
  s.html#Modelica.Mechanics.Translational.Examples)   package

  ![image6](Modelica.Mechanics.Translational.Componen Components for 1D
  tsS.png)                                            translational
  [Components](Modelica_Mechanics_Translational_Compo mechanical drive
  nents.html#Modelica.Mechanics.Translational.Compone trains
  nts)                                                

  ![image7](Modelica.Mechanics.Translational.SensorsS Sensors for 1-dim.
  .png)                                               translational
  [Sensors](Modelica_Mechanics_Translational_Sensors. mechanical
  html#Modelica.Mechanics.Translational.Sensors)      quantities

  ![image8](Modelica.Mechanics.Translational.SourcesS Sources to drive 1D
  .png)                                               translational
  [Sources](Modelica_Mechanics_Translational_Sources. mechanical
  html#Modelica.Mechanics.Translational.Sources)      components

  ![image9](Modelica.Mechanics.Translational.Interfac Interfaces for
  esS.png)                                            1-dim. translational
  [Interfaces](Modelica_Mechanics_Translational_Inter mechanical
  faces.html#Modelica.Mechanics.Translational.Interfa components
  ces)                                                
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:47 2010.
