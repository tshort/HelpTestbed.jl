==============
Modelica.Media
==============

`Modelica <Modelica.html#Modelica>`_.Media
------------------------------------------

**Library of media property models**

Information
~~~~~~~~~~~

::

This library contains
`interface <Modelica_Media_Interfaces.html#Modelica.Media.Interfaces>`_
definitions for media and the following **property** models for single
and multiple substance fluids with one and multiple phases:

-  `Ideal
   gases: <Modelica_Media_IdealGases.html#Modelica.Media.IdealGases>`_
    1241 high precision gas models based on the NASA Glenn coefficients,
   plus ideal gas mixture models based on the same data.
-  `Water models: <Modelica_Media_Water.html#Modelica.Media.Water>`_
    ConstantPropertyLiquidWater, WaterIF97 (high precision water model
   according to the IAPWS/IF97 standard)
-  `Air models: <Modelica_Media_Air.html#Modelica.Media.Air>`_
    SimpleAir, DryAirNasa, and MoistAir
-  `Incompressible
   media: <Modelica_Media_Incompressible.html#Modelica.Media.Incompressible>`_
    TableBased incompressible fluid models (properties are defined by
   tables rho(T), HeatCapacity\_cp(T), etc.)
-  `Compressible
   liquids: <Modelica_Media_CompressibleLiquids.html#Modelica.Media.CompressibleLiquids>`_
    Simple liquid models with linear compressibility

The following parts are useful, when newly starting with this library:

-  `Modelica.Media.UsersGuide <Modelica_Media_UsersGuide.html#Modelica.Media.UsersGuide>`_.
-  `Modelica.Media.UsersGuide.MediumUsage <Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage>`_
   describes how to use a medium model in a component model.
-  `Modelica.Media.UsersGuide.MediumDefinition <Modelica_Media_UsersGuide_MediumDefinition.html#Modelica.Media.UsersGuide.MediumDefinition>`_
   describes how a new fluid medium model has to be implemented.
-  `Modelica.Media.UsersGuide.ReleaseNotes <Modelica_Media_UsersGuide.html#Modelica.Media.UsersGuide.ReleaseNotes>`_
   summarizes the changes of the library releases.
-  `Modelica.Media.Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_
   contains examples that demonstrate the usage of this library.

Copyright © 1998-2010, Modelica Association.

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

+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| Name                                                                                                                                       | Description                                                                            |
+============================================================================================================================================+========================================================================================+
| |image9| `UsersGuide <Modelica_Media_UsersGuide.html#Modelica.Media.UsersGuide>`_                                                          | User's Guide of Media Library                                                          |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image10| `Examples <Modelica_Media_Examples.html#Modelica.Media.Examples>`_                                                               | Demonstrate usage of property models (currently: simple tests)                         |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image11| `Interfaces <Modelica_Media_Interfaces.html#Modelica.Media.Interfaces>`_                                                         | Interfaces for media models                                                            |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image12| `Common <Modelica_Media_Common.html#Modelica.Media.Common>`_                                                                     | data structures and fundamental functions for fluid properties                         |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image13| `Air <Modelica_Media_Air.html#Modelica.Media.Air>`_                                                                              | Medium models for air                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image14| `CompressibleLiquids <Modelica_Media_CompressibleLiquids.html#Modelica.Media.CompressibleLiquids>`_                              | compressible liquid models                                                             |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image15| `IdealGases <Modelica_Media_IdealGases.html#Modelica.Media.IdealGases>`_                                                         | Data and models of ideal gases (single, fixed and dynamic mixtures) from NASA source   |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image16| `Incompressible <Modelica_Media_Incompressible.html#Modelica.Media.Incompressible>`_                                             | Medium model for T-dependent properties, defined by tables or polynomials              |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+
| |image17| `Water <Modelica_Media_Water.html#Modelica.Media.Water>`_                                                                        | Medium models for water                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:25
2010.

.. |Modelica.Media.UsersGuide| image:: Modelica.Media.UsersGuideS.png
.. |Modelica.Media.Examples| image:: Modelica.Media.ExamplesS.png
.. |Modelica.Media.Interfaces| image:: Modelica.Media.InterfacesS.png
.. |Modelica.Media.Common| image:: Modelica.Media.CommonS.png
.. |Modelica.Media.Air| image:: Modelica.Media.AirS.png
.. |Modelica.Media.CompressibleLiquids| image:: Modelica.Media.AirS.png
.. |Modelica.Media.IdealGases| image:: Modelica.Media.AirS.png
.. |Modelica.Media.Incompressible| image:: Modelica.Media.AirS.png
.. |Modelica.Media.Water| image:: Modelica.Media.AirS.png
.. |image9| image:: Modelica.Media.UsersGuideS.png
.. |image10| image:: Modelica.Media.ExamplesS.png
.. |image11| image:: Modelica.Media.InterfacesS.png
.. |image12| image:: Modelica.Media.CommonS.png
.. |image13| image:: Modelica.Media.AirS.png
.. |image14| image:: Modelica.Media.AirS.png
.. |image15| image:: Modelica.Media.AirS.png
.. |image16| image:: Modelica.Media.AirS.png
.. |image17| image:: Modelica.Media.AirS.png
