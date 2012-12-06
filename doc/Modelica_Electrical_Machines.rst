============================
Modelica.Electrical.Machines
============================

`Modelica.Electrical <Modelica_Electrical.html#Modelica.Electrical>`_.Machines
------------------------------------------------------------------------------

**Library for electric machines**

Information
~~~~~~~~~~~

::

This package contains electric machine models and components for
modeling these machines.

**Limitations and assumptions:**

-  number of phases (of induction machines) is limited to 3, therefore
   definition as a constant m=3
-  phase symmetric windings as well as symmetry of the whole machine
   structure
-  all values are used in physical units, no scaling to p.u. is done
-  only basic harmonics (in space) are taken into account
-  waveform (with respect to time) of voltages and currents is not
   restricted
-  constant parameters, i.e., no saturation, no skin effect

You may have a look at a short summary of space phasor theory at
`http://www.haumer.at/refimg/SpacePhasors.pdf <http://www.haumer.at/refimg/SpacePhasors.pdf>`_

**Further development:**

-  generalizing space phasor theory to m phases with arbitrary spatial
   angle of the coils
-  generalizing space phasor theory to arbitrary number of windings and
   winding factor of the coils
-  MachineModels: other machine types
-  effects: saturation, skin-effect, ...

**In memoriam Prof. Hans Kleinrath (1928-03-07 - 2010-04-05)**

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern
    Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

    Dr.Christian Kral
     Austrian Institute of Technology `AIT <http://www.ait.ac.at/>`_
     Giefinggasse 2
     A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and AIT.

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

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| Name                                                                                                                                                         | Description                                         |
+==============================================================================================================================================================+=====================================================+
| |image9| `Examples <Modelica_Electrical_Machines_Examples.html#Modelica.Electrical.Machines.Examples>`_                                                      | Test examples                                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image10| `BasicMachines <Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines>`_                                      | Basic machine models                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image11| `Sensors <Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors>`_                                                        | Sensors for machine modelling                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image12| `SpacePhasors <Modelica_Electrical_Machines_SpacePhasors.html#Modelica.Electrical.Machines.SpacePhasors>`_                                         | Library with space phasor-models                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image13| `Losses <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_                                                           | Loss models for electric machines                   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image14| `Thermal <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal>`_                                                        | Library with models for connecting thermal models   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image15| `Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_                                               | SpacePhasor connector and PartialMachines           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image16| `Icons <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons>`_                                                              | Icons for electrical machines                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image17| `Utilities <Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities>`_                                                  | Library with auxiliary models for testing           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:33
2010.

.. |Modelica.Electrical.Machines.Examples| image:: Modelica.Electrical.Machines.ExamplesS.png
.. |Modelica.Electrical.Machines.BasicMachines| image:: Modelica.Electrical.Machines.BasicMachinesS.png
.. |Modelica.Electrical.Machines.Sensors| image:: Modelica.Electrical.Machines.SensorsS.png
.. |Modelica.Electrical.Machines.SpacePhasors| image:: Modelica.Electrical.Machines.SpacePhasorsS.png
.. |Modelica.Electrical.Machines.Losses| image:: Modelica.Electrical.Machines.SpacePhasorsS.png
.. |Modelica.Electrical.Machines.Thermal| image:: Modelica.Electrical.Machines.ThermalS.png
.. |Modelica.Electrical.Machines.Interfaces| image:: Modelica.Electrical.Machines.InterfacesS.png
.. |Modelica.Electrical.Machines.Icons| image:: Modelica.Electrical.Machines.IconsS.png
.. |Modelica.Electrical.Machines.Utilities| image:: Modelica.Electrical.Machines.IconsS.png
.. |image9| image:: Modelica.Electrical.Machines.ExamplesS.png
.. |image10| image:: Modelica.Electrical.Machines.BasicMachinesS.png
.. |image11| image:: Modelica.Electrical.Machines.SensorsS.png
.. |image12| image:: Modelica.Electrical.Machines.SpacePhasorsS.png
.. |image13| image:: Modelica.Electrical.Machines.SpacePhasorsS.png
.. |image14| image:: Modelica.Electrical.Machines.ThermalS.png
.. |image15| image:: Modelica.Electrical.Machines.InterfacesS.png
.. |image16| image:: Modelica.Electrical.Machines.IconsS.png
.. |image17| image:: Modelica.Electrical.Machines.IconsS.png
