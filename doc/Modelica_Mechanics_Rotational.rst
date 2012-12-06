=============================
Modelica.Mechanics.Rotational
=============================

`Modelica.Mechanics <Modelica_Mechanics.html#Modelica.Mechanics>`_.Rotational
-----------------------------------------------------------------------------

**Library to model 1-dimensional, rotational mechanical systems**

Information
~~~~~~~~~~~

::

Library **Rotational** is a **free** Modelica package providing
1-dimensional, rotational mechanical components to model in a convenient
way drive trains with frictional losses. A typical, simple example is
shown in the next figure:

.. figure:: ../Resources/Images/Rotational/driveExample.png
   :align: center
   :alt: 

For an introduction, have especially a look at:

-  `Rotational.UsersGuide <Modelica_Mechanics_Rotational_UsersGuide.html#Modelica.Mechanics.Rotational.UsersGuide>`_
   discusses the most important aspects how to use this library.
-  `Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_
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
`Examples.HeatLosses <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.HeatLosses>`_.

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Name                                                                                                                                                | Description                                                             |
+=====================================================================================================================================================+=========================================================================+
| |image7| `UsersGuide <Modelica_Mechanics_Rotational_UsersGuide.html#Modelica.Mechanics.Rotational.UsersGuide>`_                                     | User's Guide of Rotational Library                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image8| `Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_                                           | Demonstration examples of the components of this package                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image9| `Components <Modelica_Mechanics_Rotational_Components.html#Modelica.Mechanics.Rotational.Components>`_                                     | Components for 1D rotational mechanical drive trains                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image10| `Sensors <Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors>`_                                             | Sensors to measure variables in 1D rotational mechanical components     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image11| `Sources <Modelica_Mechanics_Rotational_Sources.html#Modelica.Mechanics.Rotational.Sources>`_                                             | Sources to drive 1D rotational mechanical components                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image12| `Interfaces <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces>`_                                    | Connectors and partial models for 1D rotational mechanical components   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image13| `Icons <Modelica_Mechanics_Rotational_Icons.html#Modelica.Mechanics.Rotational.Icons>`_                                                   | Icons for Rotational package                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:41
2010.

.. |Modelica.Mechanics.Rotational.UsersGuide| image:: Modelica.Mechanics.Rotational.UsersGuideS.png
.. |Modelica.Mechanics.Rotational.Examples| image:: Modelica.Mechanics.Rotational.ExamplesS.png
.. |Modelica.Mechanics.Rotational.Components| image:: Modelica.Mechanics.Rotational.ComponentsS.png
.. |Modelica.Mechanics.Rotational.Sensors| image:: Modelica.Mechanics.Rotational.SensorsS.png
.. |Modelica.Mechanics.Rotational.Sources| image:: Modelica.Mechanics.Rotational.SourcesS.png
.. |Modelica.Mechanics.Rotational.Interfaces| image:: Modelica.Mechanics.Rotational.InterfacesS.png
.. |Modelica.Mechanics.Rotational.Icons| image:: Modelica.Mechanics.Rotational.IconsS.png
.. |image7| image:: Modelica.Mechanics.Rotational.UsersGuideS.png
.. |image8| image:: Modelica.Mechanics.Rotational.ExamplesS.png
.. |image9| image:: Modelica.Mechanics.Rotational.ComponentsS.png
.. |image10| image:: Modelica.Mechanics.Rotational.SensorsS.png
.. |image11| image:: Modelica.Mechanics.Rotational.SourcesS.png
.. |image12| image:: Modelica.Mechanics.Rotational.InterfacesS.png
.. |image13| image:: Modelica.Mechanics.Rotational.IconsS.png
