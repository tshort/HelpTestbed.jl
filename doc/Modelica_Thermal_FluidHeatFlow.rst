==============================
Modelica.Thermal.FluidHeatFlow
==============================

`Modelica.Thermal <Modelica_Thermal.html#Modelica.Thermal>`_.FluidHeatFlow
--------------------------------------------------------------------------

**Simple components for 1-dimensional incompressible thermo-fluid flow
models**

Information
~~~~~~~~~~~

::

This package contains very simple-to-use components to model coolant
flows as needed to simulate cooling e.g., of electric machines:

-  Components: components like different types of pipe models
-  Examples: some test examples
-  Interfaces: definition of connectors and partial models (containing
   the core thermodynamic equations)
-  Media: definition of media properties
-  Sensors: various sensors for pressure, temperature, volume and
   enthalpy flow
-  Sources: various flow sources

**Variables used in connectors:**

-  Pressure p
-  flow MassFlowRate m\_flow
-  SpecificEnthalpy h
-  flow EnthalpyFlowRate H\_flow

EnthalpyFlowRate means the Enthalpy = cp\ :sub:`constant`\  \* m \* T
that is carried by the medium's flow.
 **Limitations and assumptions:**

-  Splitting and mixing of coolant flows (media with the same cp) is
   possible.
-  Reversing the direction of flow is possible.
-  The medium is considered to be incompressible.
-  No mixtures of media is taken into consideration.
-  The medium may not change its phase.
-  Medium properties are kept constant.
-  Pressure changes are only due to pressure drop and geodetic height
   differnence rho\*g\*h (if h > 0).
-  A user-defined part (0..1) of the friction losses (V\_flow\*dp) are
   fed to the medium.
-  **Note:** Connected flowPorts have the same temperature (mixing
   temperature)!
    Since mixing may occur, the outlet temperature may be different from
   the connector's temperature.
    Outlet temperature is defined by variable T of the corresponding
   component.

**Further development:**

-  Additional components like tanks (if needed)

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern, Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

    Dr. Christian Kral
     `Austrian Institute of Technology, AIT <http://www.ait.ac.at/>`_
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

+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| Name                                                                                                                                                   | Description                                                           |
+========================================================================================================================================================+=======================================================================+
| |image6| `Examples <Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples>`_                                            | Examples that demonstrate the usage of the FluidHeatFlow components   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image7| `Components <Modelica_Thermal_FluidHeatFlow_Components.html#Modelica.Thermal.FluidHeatFlow.Components>`_                                      | Basic components (pipes, valves)                                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image8| `Media <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media>`_                                                     | Medium properties                                                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image9| `Sensors <Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors>`_                                               | Ideal sensors to measure port properties                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image10| `Sources <Modelica_Thermal_FluidHeatFlow_Sources.html#Modelica.Thermal.FluidHeatFlow.Sources>`_                                              | Ideal fluid sources, e.g., ambient, volume flow                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image11| `Interfaces <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces>`_                                     | Connectors and partial models                                         |
+--------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:41
2010.

.. |Modelica.Thermal.FluidHeatFlow.Examples| image:: Modelica.Thermal.FluidHeatFlow.ExamplesS.png
.. |Modelica.Thermal.FluidHeatFlow.Components| image:: Modelica.Thermal.FluidHeatFlow.ComponentsS.png
.. |Modelica.Thermal.FluidHeatFlow.Media| image:: Modelica.Thermal.FluidHeatFlow.MediaS.png
.. |Modelica.Thermal.FluidHeatFlow.Sensors| image:: Modelica.Thermal.FluidHeatFlow.SensorsS.png
.. |Modelica.Thermal.FluidHeatFlow.Sources| image:: Modelica.Thermal.FluidHeatFlow.SourcesS.png
.. |Modelica.Thermal.FluidHeatFlow.Interfaces| image:: Modelica.Thermal.FluidHeatFlow.InterfacesS.png
.. |image6| image:: Modelica.Thermal.FluidHeatFlow.ExamplesS.png
.. |image7| image:: Modelica.Thermal.FluidHeatFlow.ComponentsS.png
.. |image8| image:: Modelica.Thermal.FluidHeatFlow.MediaS.png
.. |image9| image:: Modelica.Thermal.FluidHeatFlow.SensorsS.png
.. |image10| image:: Modelica.Thermal.FluidHeatFlow.SourcesS.png
.. |image11| image:: Modelica.Thermal.FluidHeatFlow.InterfacesS.png
