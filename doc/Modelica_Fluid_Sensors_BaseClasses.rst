==================================
Modelica.Fluid.Sensors.BaseClasses
==================================

`Modelica.Fluid.Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_.BaseClasses
------------------------------------------------------------------------------------------

**Base classes used in the Sensors package (only of interest to build
new component models)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.BasesPackage <Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage>`_
(Icon for packages containing base classes).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------+
| Name                                                                                                                                                                                     | Description                                                              |
+==========================================================================================================================================================================================+==========================================================================+
| |image2| `PartialAbsoluteSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor>`_                                                     | Partial component to model a sensor that measures a potential variable   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------+
| |image3| `PartialFlowSensor <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor>`_                                                             | Partial component to model sensors that measure flow properties          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------+

--------------

|image4| `Modelica.Fluid.Sensors.BaseClasses <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses>`_.PartialAbsoluteSensor
-------------------------------------------------------------------------------------------------------------------------------------------------

**Partial component to model a sensor that measures a potential
variable**

.. figure:: Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensorD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor

   Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor

Information
~~~~~~~~~~~

::

Partial component to model an **absolute sensor**. Can be used for
pressure sensor models. Use for other properties such as temperature or
density is discouraged, because the enthalpy at the connector can have
different meanings, depending on the connection topology. Use
``PartialFlowSensor`` instead. as signal.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                     | Name   | Description   |
+==========================================================================================+========+===============+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port   |               |
+------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialAbsoluteSensor 
      "Partial component to model a sensor that measures a potential variable"

      replaceable package Medium=Modelica.Media.Interfaces.PartialMedium 
        "Medium in the sensor";

      Modelica.Fluid.Interfaces.FluidPort_a port(redeclare package Medium=Medium, m_flow(min=0));

    equation 
      port.m_flow = 0;
      port.h_outflow = 0;
      port.Xi_outflow = zeros(Medium.nXi);
      port.C_outflow = zeros(Medium.nC);
    end PartialAbsoluteSensor;

--------------

|image5| `Modelica.Fluid.Sensors.BaseClasses <Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses>`_.PartialFlowSensor
---------------------------------------------------------------------------------------------------------------------------------------------

**Partial component to model sensors that measure flow properties**

.. figure:: Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensorD.png
   :align: center
   :alt: Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor

   Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor

Information
~~~~~~~~~~~

::

Partial component to model a **sensor** that measures any intensive
properties of a flow, e.g., to get temperature or density in the flow
between fluid connectors.
 The model includes zero-volume balance equations. Sensor models
inheriting from this partial class should add a medium instance to
calculate the measured property.

::

Extends from
`Modelica.Fluid.Interfaces.PartialTwoPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPort>`_
(Partial component with two ports).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type                         | Name                                                                                                      | Default                    | Description                                                                               |
+==============================+===========================================================================================================+============================+===========================================================================================+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**              |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                      | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                     | Name      | Description                                                                     |
+==========================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialFlowSensor 
      "Partial component to model sensors that measure flow properties"
      extends Modelica.Fluid.Interfaces.PartialTwoPort;

    equation 
      // mass balance
      0 = port_a.m_flow + port_b.m_flow;

      // momentum equation (no pressure loss)
      port_a.p = port_b.p;

      // isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

      port_a.Xi_outflow = inStream(port_b.Xi_outflow);
      port_b.Xi_outflow = inStream(port_a.Xi_outflow);

      port_a.C_outflow = inStream(port_b.C_outflow);
      port_b.C_outflow = inStream(port_a.C_outflow);
    end PartialFlowSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:19
2010.

.. |Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensor| image:: Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensorS.png
.. |Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensor| image:: Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensorS.png
.. |image2| image:: Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensorS.png
.. |image3| image:: Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensorS.png
.. |image4| image:: Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensorI.png
.. |image5| image:: Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensorI.png
