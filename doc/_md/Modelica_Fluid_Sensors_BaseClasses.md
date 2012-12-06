% Modelica.Fluid.Sensors.BaseClasses
% 
% 

[Modelica.Fluid.Sensors](Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors).BaseClasses
========================================================================================

**Base classes used in the Sensors package (only of interest to build
new component models)**

Information
-----------

Extends from
[Modelica.Icons.BasesPackage](Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage)
(Icon for packages containing base classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                Description
  --------------------------------------------------- --------------------
  ![image2](Modelica.Fluid.Sensors.BaseClasses.Partia Partial component to
  lAbsoluteSensorS.png)                               model a sensor that
  [PartialAbsoluteSensor](Modelica_Fluid_Sensors_Base measures a potential
  Classes.html#Modelica.Fluid.Sensors.BaseClasses.Par variable
  tialAbsoluteSensor)                                 

  ![image3](Modelica.Fluid.Sensors.BaseClasses.Partia Partial component to
  lFlowSensorS.png)                                   model sensors that
  [PartialFlowSensor](Modelica_Fluid_Sensors_BaseClas measure flow
  ses.html#Modelica.Fluid.Sensors.BaseClasses.Partial properties
  FlowSensor)                                         
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Fluid.Sensors.BaseClasses.PartialAbsoluteSensorI.png) [Modelica.Fluid.Sensors.BaseClasses](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses).PartialAbsoluteSensor
===============================================================================================================================================================================================================

**Partial component to model a sensor that measures a potential
variable**

Information
-----------

::

Partial component to model an **absolute sensor**. Can be used for
pressure sensor models. Use for other properties such as temperature or
density is discouraged, because the enthalpy at the connector can have
different meanings, depending on the connection topology. Use
`PartialFlowSensor` instead. as signal.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name  Descripti
                                                                 on
  -------------------------------------------------------- ----- ---------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica.F port  
  luid.Interfaces.FluidPort_a)                                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image5](Modelica.Fluid.Sensors.BaseClasses.PartialFlowSensorI.png) [Modelica.Fluid.Sensors.BaseClasses](Modelica_Fluid_Sensors_BaseClasses.html#Modelica.Fluid.Sensors.BaseClasses).PartialFlowSensor
=======================================================================================================================================================================================================

**Partial component to model sensors that measure flow properties**

Information
-----------

::

Partial component to model a **sensor** that measures any intensive
properties of a flow, e.g., to get temperature or density in the flow
between fluid connectors. The model includes zero-volume balance
equations. Sensor models inheriting from this partial class should add a
medium instance to calculate the measured property.

::

Extends from
[Modelica.Fluid.Interfaces.PartialTwoPort](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPort)
(Partial component with two ports).

Parameters
----------

  -------------------------------------------------------------------------
  Type     Name                          Default  Description
  -------- ----------------------------- -------- -------------------------
  replacea [PartialMedium](Modelica_Medi Medium   
  ble      a_Interfaces_PartialMedium.ht in the   
  package  ml#Modelica.Media.Interfaces. componen 
  Medium   PartialMedium)                t        

  **Assump                                        
  tions**                                         

  Boolean  allowFlowReversal             system.a = true to allow flow
                                         llowFlow reversal, false restricts
                                         Reversal to design direction
                                                  (port\_a -\> port\_b)
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Inter port Fluid connector a (positive
  faces.html#Modelica.Fluid.Interface \_a  design flow direction is from
  s.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inter port Fluid connector b (positive
  faces.html#Modelica.Fluid.Interface \_b  design flow direction is from
  s.FluidPort_b)                           port\_a to port\_b)
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:19 2010.
