=======================================
Modelica.Mechanics.MultiBody.UsersGuide
=======================================

|Modelica.Mechanics.MultiBody.UsersGuide| `Modelica.Mechanics.MultiBody <Modelica_Mechanics_MultiBody.html#Modelica.Mechanics.MultiBody>`_.UsersGuide
-----------------------------------------------------------------------------------------------------------------------------------------------------

::

Library **MultiBody** is a **free** Modelica package providing
3-dimensional mechanical components to model in a convenient way
**mechanical systems**, such as robots, mechanisms, vehicles. This
package contains the User's Guide for the MultiBody library.

#. `Tutorial <Modelica_Mechanics_MultiBody_UsersGuide_Tutorial.html#Modelica.Mechanics.MultiBody.UsersGuide.Tutorial>`_
   gives an introduction into the most important aspects of the library.
#. `Upgrade <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide.Upgrade>`_
   describes how to upgrade from former versions, especially from the
   "old" ModelicaAdditions.MultiBody library.
#. `Literature <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide.Literature>`_
   provides references that have been used to design and implement this
   library.
#. `Contact <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide.Contact>`_
   provides information about the author of the library as well as
   acknowledgments.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------+
| Name                                                                                                                                                                      | Description                    |
+===========================================================================================================================================================================+================================+
| |image5| `Tutorial <Modelica_Mechanics_MultiBody_UsersGuide_Tutorial.html#Modelica.Mechanics.MultiBody.UsersGuide.Tutorial>`_                                             | Tutorial                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------+
| |image6| `Upgrade <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide.Upgrade>`_                                                        | Upgrade from Former Versions   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------+
| |image7| `Literature <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide.Literature>`_                                                  | Literature                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------+
| |image8| `Contact <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide.Contact>`_                                                        | Contact                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------+

--------------

|image9| `Modelica.Mechanics.MultiBody.UsersGuide <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide>`_.Upgrade
--------------------------------------------------------------------------------------------------------------------------------------------------

::

If different versions of the MultiBody library are not compatible to
each other, corresponding conversion scripts are provided. As a result,
models build with an older version of the MultiBody library are
automatically converted to the new version when the model is loaded. The
user is prompted whether automatic conversion shall take place or not.
Problems are not to be expected. Still one should first make a copy of
such a model as backup before the conversion is performed.

**Upgrade from ModelicaAdditions.MultiBody**

There is now also a conversion script from the "old"
**ModelicaAdditions.MultiBody** library to the "new"
Modelica.Mechanics.MultiBody library. This script is also automatically
invoked. Since the differences between the "old" and the "new" MultiBody
library are so large, not everything is converted and it might be that
some pieces have to be adapted manually. Still, this script is useful,
since many class names, parameters and modifiers are automatically
converted.

Components from the following sublibraries are automatically converted
to the Modelica.Mechanics.MultiBody library:

-  ModelicaAdditions.MultiBody.Parts
-  ModelicaAdditions.MultiBody.Joints
-  ModelicaAdditions.MultiBody.Forces
-  Part of ModelicaAdditions.MultiBody.Interfaces

Models using the ModelicaAdditions.MultiBody library that are programmed
with **equations** are only partly converted: The Frame connectors will
be converted to the "new" Frame connectors of the MultiBody library, but
the equations that reference variables of the Frame connectors will
**not** be converted. For a manual conversion, the following table might
be helpful showing how the **variables** of the "old" and the "new"
**Frame connectors** are related to each other (resolve2 and
angularVelocity2 are functions from library
Modelica.Mechanics.MultiBody.Frames):

+----------------------------------+-----------------------------------------------------------+
| **ModelicaAdditions.MultiBody.   | **MultiBody.Interfaces.Frame\_a**                         |
|  Interfaces.Frame\_a**           |                                                           |
+==================================+===========================================================+
| frame\_a.**r0**                  | = frame\_a.r\_0 (is converted)                            |
+----------------------------------+-----------------------------------------------------------+
| frame\_a.**S**                   | = transpose(frame\_a.R)                                   |
+----------------------------------+-----------------------------------------------------------+
| frame\_a.**v**                   | = resolve2(frame\_a.R, **der**(frame\_a.r\_0))            |
+----------------------------------+-----------------------------------------------------------+
| frame\_a.**w**                   | = angularVelocity2(frame\_a.R)                            |
+----------------------------------+-----------------------------------------------------------+
| frame\_a.**a**                   | = resolve2(frame\_a.R, **der**(v\_0)); v\_0 = der(r\_0)   |
+----------------------------------+-----------------------------------------------------------+
| frame\_a.**z**                   | = **der**(w); w = angulaVelocity2(frame\_a.R)             |
+----------------------------------+-----------------------------------------------------------+
| frame\_a.**f**                   | = frame\_a.f (no conversion needed)                       |
+----------------------------------+-----------------------------------------------------------+
| frame\_a.**t**                   | = frame\_a.t (no conversion needed)                       |
+----------------------------------+-----------------------------------------------------------+

**Upgrade from MultiBody 0.99 (and earlier) to 1.0 (and later)**

The conversion from MultiBody 0.99 to 1.0 does not work in some rare
cases, where own components are implemented using functions of the
MultiBody.Frames package. In this case, the conversion has to be
performed manually. The changes in 1.0 with regards to 0.99 are:

The definition of the Modelica.Mechanics.MultiBody.Frames.Orientation
object has changed. In 0.99 this was just an alias type for a
transformation matrix (now
Modelica.Mechanics.MultiBody.Frames.TransformationMatrices.Orientation).
In 1.0 the orientation object is a record holding the transformation
matrix from frame 1 to frame 2 and the angular velocity of the
transformation matrix resolved in frame 2. The reason is that this
allows to compute the angular velocity in many cases by standard
recursive formulas and not by differentiation of the transformation
matrix. This is usually much more efficient. As a consequence, the
following calls in 0.99 should be changed:

::

       Frames.angularVelocity1(T,der(T)) -> Frames.angularVelocity1(T)
       Frames.angularVelocity2(T,der(T)) -> Frames.angularVelocity2(T)
       Frames.from_T(T)                  -> Frames.from_T2(T,der(T))

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image10| `Modelica.Mechanics.MultiBody.UsersGuide <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide>`_.Literature
------------------------------------------------------------------------------------------------------------------------------------------------------

::

-  Technical details of this library are described in the 20 page paper:

   Otter M., Elmqvist H., and Mattsson S.E.:
       **The New Modelica MultiBody Library**. Modelica 2003 Conference,
       Linköping, Sweden, pp. 311-330, Nov. 3-4, 2003. Download from:
       `http://www.modelica.org/Conference2003/papers/h37\_Otter\_multibody.pdf <http://www.modelica.org/Conference2003/papers/h37_Otter_multibody.pdf>`_

-  The method how to describe drive trains with 1-dimensional mechanics
   and to mount them on 3-dimensional components without neglecting
   dynamical effects is described in:

   Schweiger C., and Otter M.:
       **Modelling 3-dim. Mechanical Effects of 1-dim. Powertrains**.
       Modelica 2003 Conference, Linköping, Sweden, pp. 149-158, Nov.
       3-4, 2003. Download from:
       `http://www.modelica.org/Conference2003/papers/h06\_Schweiger\_powertrains\_v5.pdf <http://www.modelica.org/Conference2003/papers/h06_Schweiger_powertrains_v5.pdf>`_

-  The method to solve a certain class of kinematic loops analytically
   is based on:

   Woernle C.:
       **Ein systematisches Verfahren zur Aufstellung der geometrischen
       Schliessbedingungen in kinematischen Schleifen mit Anwendung bei
       der Rückwärtstransformation für Industrieroboter.**
        Fortschritt-Berichte VDI, Reihe 18, Nr. 59, Duesseldorf:
       VDI-Verlag 1988, ISBN 3-18-145918-6.
   Hiller M., and Woernle C.:
       **A Systematic Approach for Solving the Inverse Kinematic Problem
       of Robot Manipulators**.
        Proceedings 7th World Congress Th. Mach. Mech., Sevilla 1987.

::

Extends from
`Modelica.Icons.References <Modelica_Icons.html#Modelica.Icons.References>`_
(Icon for external references).

--------------

|image11| `Modelica.Mechanics.MultiBody.UsersGuide <Modelica_Mechanics_MultiBody_UsersGuide.html#Modelica.Mechanics.MultiBody.UsersGuide>`_.Contact
---------------------------------------------------------------------------------------------------------------------------------------------------

::

**Library Officer:**

`Martin Otter <http://www.robotic.dlr.de/Martin.Otter/>`_
 Deutsches Zentrum für Luft und Raumfahrt e.V. (DLR)
 Institut für Robotik und Mechatronik
 Abteilung für Entwurfsorientierte Regelungstechnik
 Postfach 1116
 D-82230 Wessling
 Germany
 email: `Martin.Otter@dlr.de <mailto:Martin.Otter@dlr.de>`_

**Acknowledgements:**

-  The central idea to handle a certain class of overdetermined,
   consistent set of differential algebraic equations (i.e., there are
   more equations than unknowns) with symbolic transformation algorithms
   was developed together with Hilding Elmqvist and Sven Erik Mattsson
   from Dassault Systèmes AB, Lund, Sweden. The MultiBody library is
   heavily relying on this feature which is a prerequiste for a truely
   "object-oriented" multi-body systems library, where components can be
   connected together in any meaningful way.
-  The Examples.Loops.EngineV6 demo of a six cylinder V6 engine with 6
   planar loops and 1 degree of freedom is from Hilding Elmqvist and
   Sven Erik Mattsson.
-  Modelica.Mechanics.MultiBody.Forces.LineForceWithMass is based on
   model "RelativeDistance" from the Modelica VehicleDynamics library of
   Johan Andreasson from Royal Institute of Technology, Stockholm,
   Sweden.
-  The 1-dim. components (Parts.Rotor1D, Parts.BevelGear1D, Mounting1D)
   and Joints.GearConstraints are from Christian Schweiger.
-  The design of this library is based on work carried out in the EU
   RealSim project (Real-time Simulation for Design of Multi-physics
   Systems) funded by the European Commission within the Information
   Societies Technology (IST) programme under contract number IST
   1999-11979.

::

Extends from
`Modelica.Icons.Contact <Modelica_Icons.html#Modelica.Icons.Contact>`_
(Icon for contact information).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:03
2010.

.. |Modelica.Mechanics.MultiBody.UsersGuide| image:: Modelica.Mechanics.MultiBody.UsersGuideI.png
.. |Modelica.Mechanics.MultiBody.UsersGuide.Tutorial| image:: Modelica.Mechanics.MultiBody.UsersGuide.TutorialS.png
.. |Modelica.Mechanics.MultiBody.UsersGuide.Upgrade| image:: Modelica.Mechanics.MultiBody.UsersGuide.TutorialS.png
.. |Modelica.Mechanics.MultiBody.UsersGuide.Literature| image:: Modelica.Mechanics.MultiBody.UsersGuide.LiteratureS.png
.. |Modelica.Mechanics.MultiBody.UsersGuide.Contact| image:: Modelica.Mechanics.MultiBody.UsersGuide.ContactS.png
.. |image5| image:: Modelica.Mechanics.MultiBody.UsersGuide.TutorialS.png
.. |image6| image:: Modelica.Mechanics.MultiBody.UsersGuide.TutorialS.png
.. |image7| image:: Modelica.Mechanics.MultiBody.UsersGuide.LiteratureS.png
.. |image8| image:: Modelica.Mechanics.MultiBody.UsersGuide.ContactS.png
.. |image9| image:: Modelica.Mechanics.MultiBody.UsersGuideI.png
.. |image10| image:: Modelica.Mechanics.MultiBody.UsersGuide.LiteratureI.png
.. |image11| image:: Modelica.Mechanics.MultiBody.UsersGuide.ContactI.png
