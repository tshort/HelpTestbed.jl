% Modelica.Electrical.QuasiStationary.SinglePhase.Sensors
% 
% 

[Modelica.Electrical.QuasiStationary.SinglePhase](Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase).Sensors
===============================================================================================================================================================

**AC singlephase sensors**

Information
-----------

::

This package hosts sensors for quasi stationary single phase circuits.
Quasi stationary theory for single phase circuits can be found in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[MultiPhase.Sensors](Modelica_Electrical_QuasiStationary_MultiPhase_Sensors.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sensors)

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                               Descr
                                                                     iptio
                                                                     n
  ------------------------------------------------------------------ -----
  ![image5](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors. Frequ
  FrequencySensorS.png)                                              ency
  [FrequencySensor](Modelica_Electrical_QuasiStationary_SinglePhase_ senso
  Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Senso r
  rs.FrequencySensor)                                                

  ![image6](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors. Poten
  PotentialSensorS.png)                                              tial
  [PotentialSensor](Modelica_Electrical_QuasiStationary_SinglePhase_ senso
  Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Senso r
  rs.PotentialSensor)                                                

  ![image7](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors. Volta
  VoltageSensorS.png)                                                ge
  [VoltageSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Se senso
  nsors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors r
  .VoltageSensor)                                                    

  ![image8](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors. Curre
  CurrentSensorS.png)                                                nt
  [CurrentSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Se senso
  nsors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors r
  .CurrentSensor)                                                    

  ![image9](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors. Power
  PowerSensorS.png)                                                  senso
  [PowerSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sens r
  ors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.P 
  owerSensor)                                                        
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.FrequencySensorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors).FrequencySensor
========================================================================================================================================================================================================================================================================================

**Frequency sensor**

Information
-----------

::

This sensor can be used to measure the frequency of the reference
system.

### See also

[PotentialSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor),
[VoltageSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor)

::

Extends from
[Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor)
(Partial potential sensor).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                           Nam Descri
                                                                 e   ption
  -------------------------------------------------------------- --- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_ pin Pin
  Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhas     
  e.Interfaces.PositivePin)                                          

  output                                                         y   
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Blocks.I     
  nterfaces.RealOutput)                                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FrequencySensor "Frequency sensor"
      extends Interfaces.AbsoluteSensor;
      import Modelica.Constants.pi;
      Blocks.Interfaces.RealOutput y;
    equation 
      2*pi*y = omega;
    end FrequencySensor;

* * * * *

![image11](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors).PotentialSensor
========================================================================================================================================================================================================================================================================================

**Potential sensor**

Information
-----------

::

This sensor can be used to measure the complex potential.

### See also

[VoltageSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor)

::

Extends from
[Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor)
(Partial potential sensor).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                           Nam Descri
                                                                 e   ption
  -------------------------------------------------------------- --- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_ pin Pin
  Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhas     
  e.Interfaces.PositivePin)                                          

  output                                                         y   
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modelic     
  a.ComplexBlocks.Interfaces.ComplexOutput)                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PotentialSensor "Potential sensor"
      extends Interfaces.AbsoluteSensor;
      ComplexBlocks.Interfaces.ComplexOutput y;
    equation 
      y = pin.v;
    end PotentialSensor;

* * * * *

![image12](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors).VoltageSensor
====================================================================================================================================================================================================================================================================================

**Voltage sensor**

Information
-----------

::

This sensor can be used to measure the complex voltage.

### See also

[PotentialSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor)

::

Extends from
[Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor)
(Partial voltage / current sensor).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin

  output                                                        y    
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modeli      
  ca.ComplexBlocks.Interfaces.ComplexOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VoltageSensor "Voltage sensor"
      extends Interfaces.RelativeSensor;
    equation 
      i = Complex(0);
      y = v;
    end VoltageSensor;

* * * * *

![image13](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors).CurrentSensor
====================================================================================================================================================================================================================================================================================

**Current sensor**

Information
-----------

::

This sensor can be used to measure the complex current.

### See also

[PotentialSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor),
[VoltageSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor)

::

Extends from
[Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor)
(Partial voltage / current sensor).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin

  output                                                        y    
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modeli      
  ca.ComplexBlocks.Interfaces.ComplexOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentSensor "Current sensor"
      extends Interfaces.RelativeSensor;
    equation 
      v = Complex(0);
      y = i;
    end CurrentSensor;

* * * * *

![image14](Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Sensors](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors).PowerSensor
================================================================================================================================================================================================================================================================================

**Power sensor**

Information
-----------

::

This sensor can be used to measure the complex apparent power.

### See also

[PotentialSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor),
[VoltageSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor),

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name  Descri
                                                                     ption
  ------------------------------------------------------------ ----- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhas curre 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single ntP   
  Phase.Interfaces.PositivePin)                                      

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhas curre 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single ntN   
  Phase.Interfaces.NegativePin)                                      

  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhas volta 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single geP   
  Phase.Interfaces.PositivePin)                                      

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhas volta 
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.Single geN   
  Phase.Interfaces.NegativePin)                                      

  output                                                       y     
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Model       
  ica.ComplexBlocks.Interfaces.ComplexOutput)                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PowerSensor "Power sensor"
      import Modelica.ComplexMath.conj;
      Interfaces.PositivePin currentP;
      Interfaces.NegativePin currentN;
      Interfaces.PositivePin voltageP;
      Interfaces.NegativePin voltageN;
      output Modelica.SIunits.ComplexCurrent  i;
      output Modelica.SIunits.ComplexVoltage  v;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y;
    equation 
      Connections.branch(currentP.reference, currentN.reference);
      currentP.reference.gamma = currentN.reference.gamma;
      Connections.branch(voltageP.reference, voltageN.reference);
      voltageP.reference.gamma = voltageN.reference.gamma;
      Connections.branch(currentP.reference, voltageP.reference);
      currentP.reference.gamma = voltageP.reference.gamma;
      currentP.i + currentN.i = Complex(0);
      currentP.v - currentN.v = Complex(0);
      i = currentP.i;
      voltageP.i + voltageN.i = Complex(0);
      voltageP.i = Complex(0);
      v = voltageP.v - voltageN.v;
    //P + j*Q = v * conj(i);
      y = v*conj(i);
    end PowerSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:24 2010.
