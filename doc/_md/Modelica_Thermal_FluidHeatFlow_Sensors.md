% Modelica.Thermal.FluidHeatFlow.Sensors
% 
% 

[Modelica.Thermal.FluidHeatFlow](Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow).Sensors
============================================================================================================

**Ideal sensors to measure port properties**

Information
-----------

::

This package contains sensors:

-   pSensor: absolute pressure
-   TSensor: absolute temperature (Kelvin)
-   dpSensor: pressure drop between flowPort\_a and flowPort\_b
-   dTSensor: temperature difference between flowPort\_a and flowPort\_b
-   m\_flowSensor: measures mass flow rate
-   V\_flowSensor: measures volume flow rate
-   H\_flowSensor: measures enthalpy flow rate

Some of the sensors do not need access to medium properties for
measuring, but it is necessary to define the medium in the connector
(check of connections). Thermodynamic equations are defined in partial
models (package Interfaces.Partials). All sensors are considered
massless, they do not change mass flow or enthalpy flow.

**Main Authors:**
  ~ [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern, Austria email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

    Dr. Christian Kral
      ~ [Austrian Institute of Technology, AIT](http://www.ait.ac.at/)
        Giefinggasse 2 A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                          Descriptio
                                                                n
  ------------------------------------------------------------- ----------
  ![image7](Modelica.Thermal.FluidHeatFlow.Sensors.PressureSens Absolute
  orS.png)                                                      pressure
  [PressureSensor](Modelica_Thermal_FluidHeatFlow_Sensors.html# sensor
  Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensor)        

  ![image8](Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureS Absolute
  ensorS.png)                                                   temperatur
  [TemperatureSensor](Modelica_Thermal_FluidHeatFlow_Sensors.ht e
  ml#Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensor)  sensor

  ![image9](Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureS Pressure
  ensorS.png)                                                   difference
  [RelPressureSensor](Modelica_Thermal_FluidHeatFlow_Sensors.ht sensor
  ml#Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensor)  

  ![image10](Modelica.Thermal.FluidHeatFlow.Sensors.RelPressure Temperatur
  SensorS.png)                                                  e
  [RelTemperatureSensor](Modelica_Thermal_FluidHeatFlow_Sensors difference
  .html#Modelica.Thermal.FluidHeatFlow.Sensors.RelTemperatureSe sensor
  nsor)                                                         

  ![image11](Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSen Mass flow
  sorS.png)                                                     sensor
  [MassFlowSensor](Modelica_Thermal_FluidHeatFlow_Sensors.html# 
  Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensor)        

  ![image12](Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowS Volume
  ensorS.png)                                                   flow
  [VolumeFlowSensor](Modelica_Thermal_FluidHeatFlow_Sensors.htm sensor
  l#Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensor)    

  ![image13](Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlo Enthapy
  wSensorS.png)                                                 flow
  [EnthalpyFlowSensor](Modelica_Thermal_FluidHeatFlow_Sensors.h sensor
  tml#Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensor 
  )                                                             
  ------------------------------------------------------------------------

* * * * *

![image14](Modelica.Thermal.FluidHeatFlow.Sensors.PressureSensorI.png) [Modelica.Thermal.FluidHeatFlow.Sensors](Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors).PressureSensor
==================================================================================================================================================================================================================

**Absolute pressure sensor**

Information
-----------

::

pSensor measures the absolute pressure.
  ~ Thermodynamic equations are defined by Partials.AbsoluteSensor.

::

Extends from
[Interfaces.Partials.AbsoluteSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.AbsoluteSensor)
(Partial model of absolute sensor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name Default        Descript
                                                                   ion
  -------------------------------------------- ---- -------------- --------
  [Medium](Modelica_Thermal_FluidHeatFlow_Medi medi FluidHeatFlow. Sensor's
  a.html#Modelica.Thermal.FluidHeatFlow.Media. um   Media.Medium() medium
  Medium)                                                          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces.ht flowPo 
  ml#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a)   rt     

  output                                                     y      
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc        
  ks.Interfaces.RealOutput)                                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PressureSensor "Absolute pressure sensor"

      extends Interfaces.Partials.AbsoluteSensor;
    equation 
      y = flowPort.p;
    end PressureSensor;

* * * * *

![image15](Modelica.Thermal.FluidHeatFlow.Sensors.TemperatureSensorI.png) [Modelica.Thermal.FluidHeatFlow.Sensors](Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors).TemperatureSensor
========================================================================================================================================================================================================================

**Absolute temperature sensor**

Information
-----------

::

TSensor measures the absolute temperature (Kelvin).
  ~ Thermodynamic equations are defined by Partials.AbsoluteSensor.

::

Extends from
[Interfaces.Partials.AbsoluteSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.AbsoluteSensor)
(Partial model of absolute sensor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name Default        Descript
                                                                   ion
  -------------------------------------------- ---- -------------- --------
  [Medium](Modelica_Thermal_FluidHeatFlow_Medi medi FluidHeatFlow. Sensor's
  a.html#Modelica.Thermal.FluidHeatFlow.Media. um   Media.Medium() medium
  Medium)                                                          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces.ht flowPo 
  ml#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_a)   rt     

  output                                                     y      
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc        
  ks.Interfaces.RealOutput)                                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model TemperatureSensor "Absolute temperature sensor"

      extends Interfaces.Partials.AbsoluteSensor;
    equation 
      medium.cp*y = flowPort.h;
    end TemperatureSensor;

* * * * *

![image16](Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorI.png) [Modelica.Thermal.FluidHeatFlow.Sensors](Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors).RelPressureSensor
========================================================================================================================================================================================================================

**Pressure difference sensor**

Information
-----------

::

dpSensor measures the pressure drop between flowPort\_a and flowPort\_b.
  ~ Thermodynamic equations are defined by Partials.RelativeSensor.

::

Extends from
[Interfaces.Partials.RelativeSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.RelativeSensor)
(Partial model of relative sensor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name Default        Descript
                                                                   ion
  -------------------------------------------- ---- -------------- --------
  [Medium](Modelica_Thermal_FluidHeatFlow_Medi medi FluidHeatFlow. Sensor's
  a.html#Modelica.Thermal.FluidHeatFlow.Media. um   Media.Medium() medium
  Medium)                                                          
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               

  output                                                   y       
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl         
  ocks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelPressureSensor "Pressure difference sensor"

      extends Interfaces.Partials.RelativeSensor;
    equation 
      y = flowPort_a.p - flowPort_b.p;
    end RelPressureSensor;

* * * * *

![image17](Modelica.Thermal.FluidHeatFlow.Sensors.RelPressureSensorI.png) [Modelica.Thermal.FluidHeatFlow.Sensors](Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors).RelTemperatureSensor
===========================================================================================================================================================================================================================

**Temperature difference sensor**

Information
-----------

::

dTSensor measures the temperature difference between flowPort\_a and
flowPort\_b. Thermodynamic equations are defined by
Partials.RelativeSensor. **Note:** Connected flowPorts have the same
temperature (mixing temperature)! Since mixing my occur, the outlet
temperature of a component may be different from the connector's
temperature. Outlet temperature is defined by variable T of the
corresponding component.

::

Extends from
[Interfaces.Partials.RelativeSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.RelativeSensor)
(Partial model of relative sensor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                         Name Default        Descript
                                                                   ion
  -------------------------------------------- ---- -------------- --------
  [Medium](Modelica_Thermal_FluidHeatFlow_Medi medi FluidHeatFlow. Sensor's
  a.html#Modelica.Thermal.FluidHeatFlow.Media. um   Media.Medium() medium
  Medium)                                                          
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               

  output                                                   y       
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl         
  ocks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelTemperatureSensor "Temperature difference sensor"

      extends Interfaces.Partials.RelativeSensor;
    equation 
      medium.cp*y = flowPort_a.h - flowPort_b.h;
    end RelTemperatureSensor;

* * * * *

![image18](Modelica.Thermal.FluidHeatFlow.Sensors.MassFlowSensorI.png) [Modelica.Thermal.FluidHeatFlow.Sensors](Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors).MassFlowSensor
==================================================================================================================================================================================================================

**Mass flow sensor**

Information
-----------

::

m\_flowSensor measures the mass flow rate.
  ~ Thermodynamic equations are defined by Partials.FlowSensor.

::

Extends from
[Interfaces.Partials.FlowSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.FlowSensor)
(Partial model of flow sensor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Medium in
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium the
  dia.Medium)                                     ()            component
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               

  output                                                   y       
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl         
  ocks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MassFlowSensor "Mass flow sensor"

      extends Interfaces.Partials.FlowSensor;
    equation 
      y = V_flow*medium.rho;
    end MassFlowSensor;

* * * * *

![image19](Modelica.Thermal.FluidHeatFlow.Sensors.VolumeFlowSensorI.png) [Modelica.Thermal.FluidHeatFlow.Sensors](Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors).VolumeFlowSensor
======================================================================================================================================================================================================================

**Volume flow sensor**

Information
-----------

::

V\_flowSensor measures the volume flow rate.
  ~ Thermodynamic equations are defined by Partials.FlowSensor.

::

Extends from
[Interfaces.Partials.FlowSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.FlowSensor)
(Partial model of flow sensor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Medium in
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium the
  dia.Medium)                                     ()            component
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               

  output                                                   y       
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl         
  ocks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VolumeFlowSensor "Volume flow sensor"

      extends Interfaces.Partials.FlowSensor;
    equation 
      y = V_flow;
    end VolumeFlowSensor;

* * * * *

![image20](Modelica.Thermal.FluidHeatFlow.Sensors.EnthalpyFlowSensorI.png) [Modelica.Thermal.FluidHeatFlow.Sensors](Modelica_Thermal_FluidHeatFlow_Sensors.html#Modelica.Thermal.FluidHeatFlow.Sensors).EnthalpyFlowSensor
==========================================================================================================================================================================================================================

**Enthapy flow sensor**

Information
-----------

::

H\_flowSensor measures the enthalpy flow rate.
  ~ Thermodynamic equations are defined by Partials.FlowSensor.

::

Extends from
[Interfaces.Partials.FlowSensor](Modelica_Thermal_FluidHeatFlow_Interfaces_Partials.html#Modelica.Thermal.FluidHeatFlow.Interfaces.Partials.FlowSensor)
(Partial model of flow sensor).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Medium in
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium the
  dia.Medium)                                     ()            component
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                     Name    Descrip
                                                                   tion
  -------------------------------------------------------- ------- -------
  [FlowPort\_a](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_a    
  a)                                                               

  [FlowPort\_b](Modelica_Thermal_FluidHeatFlow_Interfaces. flowPor 
  html#Modelica.Thermal.FluidHeatFlow.Interfaces.FlowPort_ t\_b    
  b)                                                               

  output                                                   y       
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bl         
  ocks.Interfaces.RealOutput)                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model EnthalpyFlowSensor "Enthapy flow sensor"

      extends Interfaces.Partials.FlowSensor;
    equation 
      y = flowPort_a.H_flow;
    end EnthalpyFlowSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:44 2010.
