% Modelica.Thermal.HeatTransfer.Sensors
% 
% 

[Modelica.Thermal.HeatTransfer](Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer).Sensors
=========================================================================================================

**Thermal sensors**

Information
-----------

::

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image4](Modelica.Thermal.HeatTransfer.Sensors.Temperatur Absolute
  eSensorS.png)                                              temperature
  [TemperatureSensor](Modelica_Thermal_HeatTransfer_Sensors. sensor in
  html#Modelica.Thermal.HeatTransfer.Sensors.TemperatureSens Kelvin
  or)                                                        

  ![image5](Modelica.Thermal.HeatTransfer.Sensors.RelTempera Relative
  tureSensorS.png)                                           Temperature
  [RelTemperatureSensor](Modelica_Thermal_HeatTransfer_Senso sensor
  rs.html#Modelica.Thermal.HeatTransfer.Sensors.RelTemperatu 
  reSensor)                                                  

  ![image6](Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSe Heat flow
  nsorS.png)                                                 rate sensor
  [HeatFlowSensor](Modelica_Thermal_HeatTransfer_Sensors.htm 
  l#Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor)    

  ![image7](Modelica.Thermal.HeatTransfer.Sensors.Conditiona HeatFlowSenso
  lFixedHeatFlowSensorS.png)                                 r,
  [ConditionalFixedHeatFlowSensor](Modelica_Thermal_HeatTran conditional
  sfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors.Co fixed
  nditionalFixedHeatFlowSensor)                              Temperature
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensorI.png) [Modelica.Thermal.HeatTransfer.Sensors](Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors).TemperatureSensor
===================================================================================================================================================================================================================

**Absolute temperature sensor in Kelvin**

Information
-----------

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Kelvin as an output signal. The
sensor itself has no thermal interaction with whatever it is connected
to. Furthermore, no thermocouple-like lags are associated with this
sensor model.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  output                                                      T    
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Block      
  s.Interfaces.RealOutput)                                         

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.html port 
  #Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model TemperatureSensor "Absolute temperature sensor in Kelvin"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = port.T;
      port.Q_flow = 0;
    end TemperatureSensor;

* * * * *

![image9](Modelica.Thermal.HeatTransfer.Sensors.RelTemperatureSensorI.png) [Modelica.Thermal.HeatTransfer.Sensors](Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors).RelTemperatureSensor
=========================================================================================================================================================================================================================

**Relative Temperature sensor**

Information
-----------

::

The relative temperature "port\_a.T - port\_b.T" is determined between
the two ports of this component and is provided as output signal in
Kelvin.

::

Extends from
[Modelica.Icons.TranslationalSensor](Modelica_Icons.html#Modelica.Icons.TranslationalSensor)
(Icon representing a linear measurement device).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)     _a    

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)     _b    

  output                                                     T\_re 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc l     
  ks.Interfaces.RealOutput)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelTemperatureSensor "Relative Temperature sensor"
      extends Modelica.Icons.TranslationalSensor;
      Interfaces.HeatPort_a port_a;
      Interfaces.HeatPort_b port_b;
      Modelica.Blocks.Interfaces.RealOutput T_rel;
    equation 
      T_rel = port_a.T - port_b.T;
      0 = port_a.Q_flow;
      0 = port_b.Q_flow;
    end RelTemperatureSensor;

* * * * *

![image10](Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensorI.png) [Modelica.Thermal.HeatTransfer.Sensors](Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors).HeatFlowSensor
==============================================================================================================================================================================================================

**Heat flow rate sensor**

Information
-----------

::

This model is capable of monitoring the heat flow rate flowing through
this component. The sensed value of heat flow rate is the amount that
passes through this sensor while keeping the temperature drop across the
sensor zero. This is an ideal model so it does not absorb any energy and
it has no direct effect on the thermal response of a system it is
included in. The output signal is positive, if the heat flows from
port\_a to port\_b.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Name  Description
  -------------------------------------------------- ----- ----------------
  output                                             Q\_fl Heat flow from
  [RealOutput](Modelica_Blocks_Interfaces.html#Model ow    port\_a to
  ica.Blocks.Interfaces.RealOutput)                        port\_b

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interf port\ 
  aces.html#Modelica.Thermal.HeatTransfer.Interfaces _a    
  .HeatPort_a)                                             

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interf port\ 
  aces.html#Modelica.Thermal.HeatTransfer.Interfaces _b    
  .HeatPort_b)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model HeatFlowSensor "Heat flow rate sensor"
      extends Modelica.Icons.RotationalSensor;
      Modelica.Blocks.Interfaces.RealOutput Q_flow 
        "Heat flow from port_a to port_b";
      Interfaces.HeatPort_a port_a;
      Interfaces.HeatPort_b port_b;
    equation 
      port_a.T = port_b.T;
      port_a.Q_flow + port_b.Q_flow = 0;
      Q_flow = port_a.Q_flow;
    end HeatFlowSensor;

* * * * *

![image11](Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensorI.png) [Modelica.Thermal.HeatTransfer.Sensors](Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors).ConditionalFixedHeatFlowSensor
==============================================================================================================================================================================================================================================

**HeatFlowSensor, conditional fixed Temperature**

Information
-----------

::

If useFixedTemperature = false, this sensor acts just as a normal
[HeatFlowSensor](Modelica_Thermal_HeatTransfer_Sensors.html#Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor).

If useFixedTemperature = true, it is assumed that the connections to
both heatPorts of this sensor are conditionally removed; in this case,
the measured Q\_flow is reported = 0 automatically. To avoid a singular
equation system, the temperature of the sensor is set to 293.15 K.

::

Parameters
----------

  Type        Name                   Default     Description
  ----------- ---------------------- ----------- ---------------------------
  Boolean     useFixedTemperature                Fixed Temperature if true

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)     _a    

  [HeatPort\_b](Modelica_Thermal_HeatTransfer_Interfaces.htm port\ 
  l#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b)     _b    

  output                                                     Q\_fl 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc ow    
  ks.Interfaces.RealOutput)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ConditionalFixedHeatFlowSensor 
      "HeatFlowSensor, conditional fixed Temperature"
      parameter Boolean useFixedTemperature(start=false) 
        "Fixed Temperature if true";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a port_a;
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b port_b;
      Modelica.Thermal.HeatTransfer.Sensors.HeatFlowSensor heatFlowSensor;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(final T(
            displayUnit="K") = 293.15) if                                                       useFixedTemperature;
      Blocks.Interfaces.RealOutput Q_flow;
    equation 
      connect(heatFlowSensor.port_b, port_b);
      connect(port_a, heatFlowSensor.port_a);
      connect(fixedTemperature.port, heatFlowSensor.port_a);
      connect(heatFlowSensor.Q_flow, Q_flow);
    end ConditionalFixedHeatFlowSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:46 2010.
