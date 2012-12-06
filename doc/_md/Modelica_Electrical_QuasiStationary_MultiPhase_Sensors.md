% Modelica.Electrical.QuasiStationary.MultiPhase.Sensors
% 
% 

[Modelica.Electrical.QuasiStationary.MultiPhase](Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase).Sensors
============================================================================================================================================================

**AC multiphase sensors**

Information
-----------

::

This package hosts sensors for quasi stationary multiphase circuits.
Quasi stationary theory can be found in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[SinglePhase.Sensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors)

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                              Descri
                                                                    ption
  ----------------------------------------------------------------- ------
  ![image5](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors. Freque
  FrequencySensorS.png)                                             ncy
  [FrequencySensor](Modelica_Electrical_QuasiStationary_MultiPhase_ sensor
  Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Senso 
  rs.FrequencySensor)                                               

  ![image6](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors. Potent
  PotentialSensorS.png)                                             ial
  [PotentialSensor](Modelica_Electrical_QuasiStationary_MultiPhase_ sensor
  Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Senso 
  rs.PotentialSensor)                                               

  ![image7](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors. Voltag
  VoltageSensorS.png)                                               e
  [VoltageSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Se sensor
  nsors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors 
  .VoltageSensor)                                                   

  ![image8](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors. Curren
  CurrentSensorS.png)                                               t
  [CurrentSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Se Sensor
  nsors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors 
  .CurrentSensor)                                                   

  ![image9](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors. Power
  PowerSensorS.png)                                                 sensor
  [PowerSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sens 
  ors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.P 
  owerSensor)                                                       
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.FrequencySensorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sensors](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors).FrequencySensor
====================================================================================================================================================================================================================================================================================

**Frequency sensor**

Information
-----------

::

This sensor can be used to measure the frequency of the reference
system, using *1* [single phase
FrequencySensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor).

### See also

[SinglePhase.FrequencySensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensor),
[PotentialSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor)

::

Extends from
[Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor)
(Partial potential sensor).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  output                                                        y    
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.      
  Interfaces.RealOutput)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FrequencySensor "Frequency sensor"
      extends Interfaces.AbsoluteSensor;
      SinglePhase.Sensors.FrequencySensor potentialSensor;
      Basic.PlugToPin_p plugToPins_p( final m=m, final k=1);
      Blocks.Interfaces.RealOutput y;
    equation 

      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_p.pin_p, potentialSensor.pin);
      connect(potentialSensor.y, y);
    end FrequencySensor;

* * * * *

![image11](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sensors](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors).PotentialSensor
====================================================================================================================================================================================================================================================================================

**Potential sensor**

Information
-----------

::

This sensor can be used to measure *m* complex potentials, using *m*
[single phase
PotentialSensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor).

### See also

[SinglePhase.PotentialSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor),
[VoltageSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor)

::

Extends from
[Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor)
(Partial potential sensor).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  output                                                        y[m] 
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modeli      
  ca.ComplexBlocks.Interfaces.ComplexOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PotentialSensor "Potential sensor"
      extends Interfaces.AbsoluteSensor;
      QuasiStationary.SinglePhase.Sensors.PotentialSensor potentialSensor[
                                                          m];
      Basic.PlugToPins_p plugToPins_p(final m=m);
      ComplexBlocks.Interfaces.ComplexOutput y[         m];
    equation 

      connect(potentialSensor.y, y);
      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_p.pin_p, potentialSensor.pin);
    end PotentialSensor;

* * * * *

![image12](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sensors](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors).VoltageSensor
================================================================================================================================================================================================================================================================================

**Voltage sensor**

Information
-----------

::

This sensor can be used to measure *m* complex voltages, using *m*
[single phase
VoltageSensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor).

### See also

[SinglePhase.VoltageSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor),
[PotentialSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor)

::

Extends from
[Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor)
(Partial voltage / current sensor).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  output                                                        y[m] 
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modeli      
  ca.ComplexBlocks.Interfaces.ComplexOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VoltageSensor "Voltage sensor"
      extends Interfaces.RelativeSensor;
      QuasiStationary.SinglePhase.Sensors.VoltageSensor voltageSensor[
                                                      m];
    equation 
      connect(plugToPins_p.pin_p, voltageSensor.pin_p);
      connect(voltageSensor.pin_n, plugToPins_n.pin_n);
      connect(voltageSensor.y, y);
    end VoltageSensor;

* * * * *

![image13](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sensors](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors).CurrentSensor
================================================================================================================================================================================================================================================================================

**Current Sensor**

Information
-----------

::

This sensor can be used to measure *m* complex currents, using *m*
[single phase
CurrentSensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor).

### See also

[SinglePhase.CurrentSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor),
[PotentialSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor),
[VoltageSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensor)

::

Extends from
[Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor)
(Partial voltage / current sensor).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  output                                                        y[m] 
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modeli      
  ca.ComplexBlocks.Interfaces.ComplexOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentSensor "Current Sensor"
      extends Interfaces.RelativeSensor;
      QuasiStationary.SinglePhase.Sensors.CurrentSensor currentSensor[
                                                      m];
    equation 
      connect(plugToPins_p.pin_p,currentSensor. pin_p);
      connect(currentSensor.pin_n, plugToPins_n.pin_n);
      connect(currentSensor.y, y);
    end CurrentSensor;

* * * * *

![image14](Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PowerSensorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Sensors](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors).PowerSensor
============================================================================================================================================================================================================================================================================

**Power sensor**

Information
-----------

::

This sensor can be used to measure *m* complex apparent power values,
using *m* [single phase
PowerSensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor).

### See also

[SinglePhase.PowerSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor),
[PotentialSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.PotentialSensor),
[VoltageSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.CurrentSensor)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhas curre 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiP ntP   
  hase.Interfaces.PositivePlug)                                      

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhas curre 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiP ntN   
  hase.Interfaces.NegativePlug)                                      

  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhas volta 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiP geP   
  hase.Interfaces.PositivePlug)                                      

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhas volta 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiP geN   
  hase.Interfaces.NegativePlug)                                      

  output                                                       y     
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Model       
  ica.ComplexBlocks.Interfaces.ComplexOutput)                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PowerSensor "Power sensor"
      parameter Integer m(min=1) = 3 "number of phases";
      Modelica.SIunits.AngularVelocity omega = der(currentP.reference.gamma);
      Interfaces.PositivePlug currentP;
      Interfaces.NegativePlug currentN;
      Interfaces.PositivePlug voltageP;
      Interfaces.NegativePlug voltageN;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y;
      Basic.PlugToPins_p plugToPinsCurrentP(final m=m);
      Basic.PlugToPins_p plugToPinsVoltageP(final m=m);
      Basic.PlugToPins_n plugToPinsCurrentN(final m=m);
      Basic.PlugToPins_n plugToPinsVoltageN(final m=m);
      QuasiStationary.SinglePhase.Sensors.PowerSensor powerSensor[
                                                  m];
      Modelica.ComplexBlocks.ComplexMath.Sum sum(final nin=m);
    equation 
      connect(plugToPinsCurrentP.plug_p, currentP);
      connect(currentN, plugToPinsCurrentN.plug_n);
      connect(voltageP, plugToPinsVoltageP.plug_p);
      connect(plugToPinsVoltageN.plug_n, voltageN);
      connect(plugToPinsCurrentP.pin_p, powerSensor.currentP);
      connect(powerSensor.currentN, plugToPinsCurrentN.pin_n);
      connect(powerSensor.voltageP, plugToPinsVoltageP.pin_p);
      connect(powerSensor.voltageN, plugToPinsVoltageN.pin_n);
      connect(powerSensor.y, sum.u);
      connect(sum.y, y);
      connect(currentP, currentP);
    end PowerSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:43 2010.
