===========================
Modelica.Electrical.Digital
===========================

`Modelica.Electrical <Modelica_Electrical.html#Modelica.Electrical>`_.Digital
-----------------------------------------------------------------------------

**Library for digital electrical components based on the VHDL standard
with 9-valued logic and conversion to 2-,3-,4-valued logic**

Information
~~~~~~~~~~~

::

This library contains packages for digital electrical components. Both,
type system and models are based on the VHDL standard (IEEE Std
1076-1987 VHDL, IEEE Std 1076-1993 VHDL, IEEE Std 1164 Multivalue Logic
System):

-  Interfaces: Definition of signals and interfaces
-  Tables: All truth tables needed
-  Delay: Transport and inertial delay
-  Basic: Basic logic without delay
-  Gates: Basic gates composed by basic components and inertial delay
-  Tristate: (not yet available)
-  FlipFlops: D-Flip-Flops
-  Latches: D-Latches
-  TransferGates: (not yet available)
-  Multiplexers (not yet available)
-  Memory: Ram, Rom, (not yet available)
-  Sources: Time-dependend signal sources
-  Converters
-  Examples

The logic values are coded by integer values. The following code table
is necessary for both setting of input and interpreting the output
values.

**Code Table:**

+-------------------+--------------------+-------------------+
| **Logic value**   | **Integer code**   | **Meaning**       |
+-------------------+--------------------+-------------------+
| 'U'               | 1                  | Uninitialized     |
+-------------------+--------------------+-------------------+
| 'X'               | 2                  | Forcing Unknown   |
+-------------------+--------------------+-------------------+
| '0'               | 3                  | Forcing 0         |
+-------------------+--------------------+-------------------+
| '1'               | 4                  | Forcing 1         |
+-------------------+--------------------+-------------------+
| 'Z'               | 5                  | High Impedance    |
+-------------------+--------------------+-------------------+
| 'W'               | 6                  | Weak Unknown      |
+-------------------+--------------------+-------------------+
| 'L'               | 7                  | Weak 0            |
+-------------------+--------------------+-------------------+
| 'H'               | 8                  | Weak 1            |
+-------------------+--------------------+-------------------+
| '-'               | 9                  | Don't care        |
+-------------------+--------------------+-------------------+

The library will be developed in two main steps. The first step contains
the basic components and the gates. In the next step the more
complicated devices will be added. Currently the first step of the
library is implemented and released for public use.

Copyright © 1998-2010, Modelica Association and Fraunhofer-Gesellschaft.

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

+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Name                                                                                                                                          | Description                                                                |
+===============================================================================================================================================+============================================================================+
| |image11| `UsersGuide <Modelica_Electrical_Digital_UsersGuide.html#Modelica.Electrical.Digital.UsersGuide>`_                                  | User's Guide                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image12| `Examples <Modelica_Electrical_Digital_Examples.html#Modelica.Electrical.Digital.Examples>`_                                        | Examples that demonstrate the usage of the Digital electrical components   |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image13| `Interfaces <Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces>`_                                  | Basic definitions                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image14| `Tables <Modelica_Electrical_Digital_Tables.html#Modelica.Electrical.Digital.Tables>`_                                              | Truth tables for all components of package Digital                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image15| `Delay <Modelica_Electrical_Digital_Delay.html#Modelica.Electrical.Digital.Delay>`_                                                 | Delay blocks                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image16| `Basic <Modelica_Electrical_Digital_Basic.html#Modelica.Electrical.Digital.Basic>`_                                                 | Basic logic blocks without delays                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image17| `Gates <Modelica_Electrical_Digital_Gates.html#Modelica.Electrical.Digital.Gates>`_                                                 | Logic gates including delays                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image18| `Sources <Modelica_Electrical_Digital_Sources.html#Modelica.Electrical.Digital.Sources>`_                                           | Time-dependend digital signal sources                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image19| `Converters <Modelica_Electrical_Digital_Converters.html#Modelica.Electrical.Digital.Converters>`_                                  | Converters between 2-,3-,4- and 9-valued logic                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image20| `Registers <Modelica_Electrical_Digital_Registers.html#Modelica.Electrical.Digital.Registers>`_                                     | Registers with N-bit input data and output data                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image21| `Tristates <Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates>`_                                     | Transfergates, Buffers, Inverters, and WiredX                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:19
2010.

.. |Modelica.Electrical.Digital.UsersGuide| image:: Modelica.Electrical.Digital.UsersGuideS.png
.. |Modelica.Electrical.Digital.Examples| image:: Modelica.Electrical.Digital.ExamplesS.png
.. |Modelica.Electrical.Digital.Interfaces| image:: Modelica.Electrical.Digital.InterfacesS.png
.. |Modelica.Electrical.Digital.Tables| image:: Modelica.Electrical.Digital.TablesS.png
.. |Modelica.Electrical.Digital.Delay| image:: Modelica.Electrical.Digital.TablesS.png
.. |Modelica.Electrical.Digital.Basic| image:: Modelica.Electrical.Digital.TablesS.png
.. |Modelica.Electrical.Digital.Gates| image:: Modelica.Electrical.Digital.TablesS.png
.. |Modelica.Electrical.Digital.Sources| image:: Modelica.Electrical.Digital.SourcesS.png
.. |Modelica.Electrical.Digital.Converters| image:: Modelica.Electrical.Digital.ConvertersS.png
.. |Modelica.Electrical.Digital.Registers| image:: Modelica.Electrical.Digital.ConvertersS.png
.. |Modelica.Electrical.Digital.Tristates| image:: Modelica.Electrical.Digital.ConvertersS.png
.. |image11| image:: Modelica.Electrical.Digital.UsersGuideS.png
.. |image12| image:: Modelica.Electrical.Digital.ExamplesS.png
.. |image13| image:: Modelica.Electrical.Digital.InterfacesS.png
.. |image14| image:: Modelica.Electrical.Digital.TablesS.png
.. |image15| image:: Modelica.Electrical.Digital.TablesS.png
.. |image16| image:: Modelica.Electrical.Digital.TablesS.png
.. |image17| image:: Modelica.Electrical.Digital.TablesS.png
.. |image18| image:: Modelica.Electrical.Digital.SourcesS.png
.. |image19| image:: Modelica.Electrical.Digital.ConvertersS.png
.. |image20| image:: Modelica.Electrical.Digital.ConvertersS.png
.. |image21| image:: Modelica.Electrical.Digital.ConvertersS.png
