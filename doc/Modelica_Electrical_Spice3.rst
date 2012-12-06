==========================
Modelica.Electrical.Spice3
==========================

`Modelica.Electrical <Modelica_Electrical.html#Modelica.Electrical>`_.Spice3
----------------------------------------------------------------------------

**Library for components of the Berkeley SPICE3 simulator**

Information
~~~~~~~~~~~

::

This package contains models of the Berkeley SPICE3 simulator (R, C, L,
controlled and independent sources, semiconductor device models). The
semiconductor models are transferred from the SPICE3 code, up to now

-  MOSFET Level 1
-  Bipolar junction transistor,
-  Diode
-  Semiconductor resistor

For the usage of this package, especially for detailed explanation of
parameters, it is useful to know the `SPICE3 user's
manual <http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.130.9471&rep=rep1&type=pdf>`_
which modelling relied on.

**Open issues**:

-  devices from SPICE3 that are not modelled yet:
-  

   -  MESFETs
   -  JFETs
   -  MOSFET Level 2,3,6, BSIM
   -  Line models
   -  Semiconductor C

-  unit check (at the moment many parameters of type Real)
-  tests
-  not supported analyse types (AC, DCTransfer, ...)

 **Main Authors:**
    Christoph Clauß
    <`Christoph.Clauss@eas.iis.fraunhofer.de <mailto:Christoph.Clauss@eas.iis.fraunhofer.de>`_>
     Kristin Majetta
    <`Kristin.Majetta@eas.iis.fraunhofer.de <mailto:Kristin.Majetta@eas.iis.fraunhofer.de>`_>
     Sandra Boehme
    <`Sandra.Boehme@eas.iis.fraunhofer.de <mailto:Sandra.Boehme@eas.iis.fraunhofer.de>`_>
     Fraunhofer Institute for Integrated Circuits
     Design Automation Department
     Zeunerstraße 38
     D-01069 Dresden
     Germany

**Copyright:**

Copyright © 1998-2010, Modelica Association and Fraunhofer-Gesellschaft.

*The Modelica package is **free** software; it can be redistributed
and/or modified under the terms of the **Modelica license**, see the
license conditions and the accompanying **disclaimer** in the
documentation of package Modelica in file "Modelica/package.mo".*

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| Name                                                                                                                                                       | Description                                                               |
+============================================================================================================================================================+===========================================================================+
| |image8| `UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_                                                  | User's Guide                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image9| `Examples <Modelica_Electrical_Spice3_Examples.html#Modelica.Electrical.Spice3.Examples>`_                                                        | Example circuits                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image10| `Basic <Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic>`_                                                                | Basic electronical components                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image11| `Semiconductors <Modelica_Electrical_Spice3_Semiconductors.html#Modelica.Electrical.Spice3.Semiconductors>`_                                     | Semiconductor devices and model cards                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image12| `Sources <Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources>`_                                                          | Time dependent SPICE3 voltage and current sources                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image13| `Additionals <Modelica_Electrical_Spice3_Additionals.html#Modelica.Electrical.Spice3.Additionals>`_                                              | Some useful additional models, e.g., from SPICE2 the polynomial sources   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image14| `Interfaces <Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces>`_                                                 | Connectors, Interfaces, and partial models                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+
| |image15| `Internal <Modelica_Electrical_Spice3_Internal.html#Modelica.Electrical.Spice3.Internal>`_                                                       | Collection of functions and records derived from the C++ Spice library    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:44
2010.

.. |Modelica.Electrical.Spice3.UsersGuide| image:: Modelica.Electrical.Spice3.UsersGuideS.png
.. |Modelica.Electrical.Spice3.Examples| image:: Modelica.Electrical.Spice3.ExamplesS.png
.. |Modelica.Electrical.Spice3.Basic| image:: Modelica.Electrical.Spice3.BasicS.png
.. |Modelica.Electrical.Spice3.Semiconductors| image:: Modelica.Electrical.Spice3.BasicS.png
.. |Modelica.Electrical.Spice3.Sources| image:: Modelica.Electrical.Spice3.SourcesS.png
.. |Modelica.Electrical.Spice3.Additionals| image:: Modelica.Electrical.Spice3.AdditionalsS.png
.. |Modelica.Electrical.Spice3.Interfaces| image:: Modelica.Electrical.Spice3.InterfacesS.png
.. |Modelica.Electrical.Spice3.Internal| image:: Modelica.Electrical.Spice3.InternalS.png
.. |image8| image:: Modelica.Electrical.Spice3.UsersGuideS.png
.. |image9| image:: Modelica.Electrical.Spice3.ExamplesS.png
.. |image10| image:: Modelica.Electrical.Spice3.BasicS.png
.. |image11| image:: Modelica.Electrical.Spice3.BasicS.png
.. |image12| image:: Modelica.Electrical.Spice3.SourcesS.png
.. |image13| image:: Modelica.Electrical.Spice3.AdditionalsS.png
.. |image14| image:: Modelica.Electrical.Spice3.InterfacesS.png
.. |image15| image:: Modelica.Electrical.Spice3.InternalS.png
