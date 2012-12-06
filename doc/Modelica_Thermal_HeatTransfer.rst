=============================
Modelica.Thermal.HeatTransfer
=============================

`Modelica.Thermal <Modelica_Thermal.html#Modelica.Thermal>`_.HeatTransfer
-------------------------------------------------------------------------

**Library of 1-dimensional heat transfer with lumped elements**

Information
~~~~~~~~~~~

::

This package contains components to model **1-dimensional heat
transfer** with lumped elements. This allows especially to model heat
transfer in machines provided the parameters of the lumped elements,
such as the heat capacity of a part, can be determined by measurements
(due to the complex geometries and many materials used in machines,
calculating the lumped element parameters from some basic analytic
formulas is usually not possible).

Example models how to use this library are given in subpackage
**Examples**.
 For a first simple example, see **Examples.TwoMasses** where two masses
with different initial temperatures are getting in contact to each other
and arriving after some time at a common temperature.
 **Examples.ControlledTemperature** shows how to hold a temperature
within desired limits by switching on and off an electric resistor.
 A more realistic example is provided in **Examples.Motor** where the
heating of an electrical motor is modelled, see the following screen
shot of this example:

.. figure:: ../Resources/Images/Thermal/HeatTransfer/driveWithHeatTransfer.png
   :align: center
   :alt: driveWithHeatTransfer

   driveWithHeatTransfer
The **filled** and **non-filled red squares** at the left and right side
of a component represent **thermal ports** (connector HeatPort). Drawing
a line between such squares means that they are thermally connected. The
variables of a HeatPort connector are the temperature **T** at the port
and the heat flow rate **Q\_flow** flowing into the component (if
Q\_flow is positive, the heat flows into the element, otherwise it flows
out of the element):

::

       Modelica.SIunits.Temperature  T  "absolute temperature at port in Kelvin";
       Modelica.SIunits.HeatFlowRate Q_flow  "flow rate at the port in Watt";

Note, that all temperatures of this package, including initial
conditions, are given in Kelvin. For convenience, in subpackages
**HeatTransfer.Celsius**, **HeatTransfer.Fahrenheit** and
**HeatTransfer.Rankine** components are provided such that source and
sensor information is available in degree Celsius, degree Fahrenheit, or
degree Rankine, respectively. Additionally, in package
**SIunits.Conversions** conversion functions between the units Kelvin
and Celsius, Fahrenheit, Rankine are provided. These functions may be
used in the following way:

::

      import SI=Modelica.SIunits;
      import Modelica.SIunits.Conversions.*;
         ...
      parameter SI.Temperature T = from_degC(25);  // convert 25 degree Celsius to Kelvin

There are several other components available, such as AxialConduction
(discretized PDE in axial direction), which have been temporarily
removed from this library. The reason is that these components reference
material properties, such as thermal conductivity, and currently the
Modelica design group is discussing a general scheme to describe
material properties.

For technical details in the design of this library, see the following
reference:
 **Michael Tiller (2001)**: `Introduction to Physical Modeling with
Modelica <http://www.amazon.de>`_. Kluwer Academic Publishers Boston.

**Acknowledgements:**
 Several helpful remarks from the following persons are acknowledged:
John Batteh, Ford Motors, Dearborn, U.S.A; `Anton
Haumer <http://www.haumer.at/>`_, Technical Consulting & Electrical
Engineering, Austria; Ludwig Marvan, VA TECH ELIN EBG Elektronik GmbH,
Wien, Austria; Hans Olsson, Dassault Systèmes AB, Sweden; Hubertus
Tummescheit, Lund Institute of Technology, Lund, Sweden.

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern, Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

**Copyright © 2001-2010, Modelica Association, Michael Tiller and DLR.**

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

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| Name                                                                                                                                                | Description                                                                        |
+=====================================================================================================================================================+====================================================================================+
| |image8| `Examples <Modelica_Thermal_HeatTransfer_Examples.html#Modelica.Thermal.HeatTransfer.Examples>`_                                           | Example models to demonstrate the usage of package Modelica.Thermal.HeatTransfer   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| |image9| `Components <Modelica_Thermal_HeatTransfer_Components.html#Modelica.Thermal.HeatTransfer.Components>`_                                     | Lumped thermal components                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| |image10| `Sensors <Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors>`_                                             | Thermal sensors                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| |image11| `Sources <Modelica_Thermal_HeatTransfer_Sources.html#Modelica.Thermal.HeatTransfer.Sources>`_                                             | Thermal sources                                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| |image12| `Celsius <Modelica_Thermal_HeatTransfer_Celsius.html#Modelica.Thermal.HeatTransfer.Celsius>`_                                             | Components with Celsius input and/or output                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| |image13| `Fahrenheit <Modelica_Thermal_HeatTransfer_Fahrenheit.html#Modelica.Thermal.HeatTransfer.Fahrenheit>`_                                    | Components with Fahrenheit input and/or output                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| |image14| `Rankine <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine>`_                                             | Components with Rankine input and/or output                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+
| |image15| `Interfaces <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces>`_                                    | Connectors and partial models                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:44
2010.

.. |Modelica.Thermal.HeatTransfer.Examples| image:: Modelica.Thermal.HeatTransfer.ExamplesS.png
.. |Modelica.Thermal.HeatTransfer.Components| image:: Modelica.Thermal.HeatTransfer.ComponentsS.png
.. |Modelica.Thermal.HeatTransfer.Sensors| image:: Modelica.Thermal.HeatTransfer.SensorsS.png
.. |Modelica.Thermal.HeatTransfer.Sources| image:: Modelica.Thermal.HeatTransfer.SourcesS.png
.. |Modelica.Thermal.HeatTransfer.Celsius| image:: Modelica.Thermal.HeatTransfer.CelsiusS.png
.. |Modelica.Thermal.HeatTransfer.Fahrenheit| image:: Modelica.Thermal.HeatTransfer.CelsiusS.png
.. |Modelica.Thermal.HeatTransfer.Rankine| image:: Modelica.Thermal.HeatTransfer.CelsiusS.png
.. |Modelica.Thermal.HeatTransfer.Interfaces| image:: Modelica.Thermal.HeatTransfer.InterfacesS.png
.. |image8| image:: Modelica.Thermal.HeatTransfer.ExamplesS.png
.. |image9| image:: Modelica.Thermal.HeatTransfer.ComponentsS.png
.. |image10| image:: Modelica.Thermal.HeatTransfer.SensorsS.png
.. |image11| image:: Modelica.Thermal.HeatTransfer.SourcesS.png
.. |image12| image:: Modelica.Thermal.HeatTransfer.CelsiusS.png
.. |image13| image:: Modelica.Thermal.HeatTransfer.CelsiusS.png
.. |image14| image:: Modelica.Thermal.HeatTransfer.CelsiusS.png
.. |image15| image:: Modelica.Thermal.HeatTransfer.InterfacesS.png
