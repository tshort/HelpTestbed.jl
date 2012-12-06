=========================================
Modelica.Thermal.FluidHeatFlow.Interfaces
=========================================

`Modelica.Thermal.FluidHeatFlow <Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow>`_.Interfaces
-----------------------------------------------------------------------------------------------------------------

**Connectors and partial models**

Information
~~~~~~~~~~~

::

This package contains connectors and partial models:

-  FlowPort: basic definition of the connector.
-  FlowPort\_a & FlowPort\_b: same as FlowPort with different icons to
   differentiate direction of flow
-  package Partials (defining basic thermodynamic equations)

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern, Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

    Dr. Christian Kral
     `Austrian Institute of Technology, AIT <http://www.ait.ac.at/>`_
     Giefinggasse 2
     A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| Name                                                                                                                                                                            | Description                          |
+=================================================================================================================================================================================+======================================+
| |image4| `FlowPort <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort>`_                                                        | Connector flow port                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image5| `FlowPort\_a <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a>`_                                                   | Filled flow port (used upstream)     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image6| `FlowPort\_b <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_b>`_                                                   | Hollow flow port (used downstream)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image7| `Partials <Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials>`_                                               | Partial models                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+

--------------

`Modelica.Thermal.FluidHeatFlow.Interfaces <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces>`_.FlowPort
------------------------------------------------------------------------------------------------------------------------------------------------

**Connector flow port**

Information
~~~~~~~~~~~

::

Basic definition of the connector.
 **Variables:**

-  Pressure p
-  flow MassFlowRate m\_flow
-  Specific Enthalpy h
-  flow EnthaplyFlowRate H\_flow

If ports with different media are connected, the simulation is asserted
due to the check of parameter.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+-----------+---------------------------+
| Type                                                                                                | Name     | Default   | Description               |
+=====================================================================================================+==========+===========+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   |           | Medium in the connector   |
+-----------------------------------------------------------------------------------------------------+----------+-----------+---------------------------+

Contents
~~~~~~~~

+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| Type                                                                                                | Name      | Description               |
+=====================================================================================================+===========+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium    | Medium in the connector   |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | p         | [Pa]                      |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| flow `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                          | m\_flow   | [kg/s]                    |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                       | h         | [J/kg]                    |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| flow `EnthalpyFlowRate <Modelica_SIunits.html#Modelica.SIunits.EnthalpyFlowRate>`_                  | H\_flow   | [W]                       |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FlowPort "Connector flow port"

      parameter FluidHeatFlow.Media.Medium medium "Medium in the connector";
      Modelica.SIunits.Pressure p;
      flow Modelica.SIunits.MassFlowRate m_flow;
      Modelica.SIunits.SpecificEnthalpy h;
      flow Modelica.SIunits.EnthalpyFlowRate H_flow;
    end FlowPort;

--------------

|image8| `Modelica.Thermal.FluidHeatFlow.Interfaces <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces>`_.FlowPort\_a
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Filled flow port (used upstream)**

.. figure:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_aD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort\_a

   Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort\_a

Information
~~~~~~~~~~~

::

Same as FlowPort, but icon allows to differentiate direction of flow.

::

Extends from
`FlowPort <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort>`_
(Connector flow port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+-----------+---------------------------+
| Type                                                                                                | Name     | Default   | Description               |
+=====================================================================================================+==========+===========+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   |           | Medium in the connector   |
+-----------------------------------------------------------------------------------------------------+----------+-----------+---------------------------+

Contents
~~~~~~~~

+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| Type                                                                                                | Name      | Description               |
+=====================================================================================================+===========+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium    | Medium in the connector   |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | p         | [Pa]                      |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| flow `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                          | m\_flow   | [kg/s]                    |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                       | h         | [J/kg]                    |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| flow `EnthalpyFlowRate <Modelica_SIunits.html#Modelica.SIunits.EnthalpyFlowRate>`_                  | H\_flow   | [W]                       |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FlowPort_a "Filled flow port (used upstream)"

      extends FlowPort;
    end FlowPort_a;

--------------

|image9| `Modelica.Thermal.FluidHeatFlow.Interfaces <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces>`_.FlowPort\_b
------------------------------------------------------------------------------------------------------------------------------------------------------------

**Hollow flow port (used downstream)**

.. figure:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_bD.png
   :align: center
   :alt: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort\_b

   Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort\_b

Information
~~~~~~~~~~~

::

Same as FlowPort, but icon allows to differentiate direction of flow.

::

Extends from
`FlowPort <Modelica_Thermal_FluidHeatFlow_Interfaces.html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort>`_
(Connector flow port).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------+----------+-----------+---------------------------+
| Type                                                                                                | Name     | Default   | Description               |
+=====================================================================================================+==========+===========+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium   |           | Medium in the connector   |
+-----------------------------------------------------------------------------------------------------+----------+-----------+---------------------------+

Contents
~~~~~~~~

+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| Type                                                                                                | Name      | Description               |
+=====================================================================================================+===========+===========================+
| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_   | medium    | Medium in the connector   |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                       | p         | [Pa]                      |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| flow `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                          | m\_flow   | [kg/s]                    |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                       | h         | [J/kg]                    |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+
| flow `EnthalpyFlowRate <Modelica_SIunits.html#Modelica.SIunits.EnthalpyFlowRate>`_                  | H\_flow   | [W]                       |
+-----------------------------------------------------------------------------------------------------+-----------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FlowPort_b "Hollow flow port (used downstream)"

      extends FlowPort;
    end FlowPort_b;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:44
2010.

.. |Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPortS.png
.. |Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort\_a| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_aS.png
.. |Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort\_b| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_bS.png
.. |Modelica.Thermal.FluidHeatFlow.Interfaces.Partials| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.PartialsS.png
.. |image4| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPortS.png
.. |image5| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_aS.png
.. |image6| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_bS.png
.. |image7| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.PartialsS.png
.. |image8| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_aI.png
.. |image9| image:: Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_bI.png
