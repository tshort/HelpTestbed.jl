% Modelica.Electrical.MultiPhase.Sensors
% 
% 

[Modelica.Electrical.MultiPhase](Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase).Sensors
============================================================================================================

**Multiphase potential, voltage and current Sensors**

Information
-----------

::

This package contains multiphase potential, voltage, and current
sensors.

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image4](Modelica.Electrical.MultiPhase.Sensors.Potential Multiphase
  SensorS.png)                                               potential
  [PotentialSensor](Modelica_Electrical_MultiPhase_Sensors.h sensor
  tml#Modelica.Electrical.MultiPhase.Sensors.PotentialSensor 
  )                                                          

  ![image5](Modelica.Electrical.MultiPhase.Sensors.VoltageSe Multiphase
  nsorS.png)                                                 voltage
  [VoltageSensor](Modelica_Electrical_MultiPhase_Sensors.htm sensor
  l#Modelica.Electrical.MultiPhase.Sensors.VoltageSensor)    

  ![image6](Modelica.Electrical.MultiPhase.Sensors.CurrentSe Multiphase
  nsorS.png)                                                 current
  [CurrentSensor](Modelica_Electrical_MultiPhase_Sensors.htm sensor
  l#Modelica.Electrical.MultiPhase.Sensors.CurrentSensor)    

  ![image7](Modelica.Electrical.MultiPhase.Sensors.PowerSens Multiphase
  orS.png)                                                   instantaneous
  [PowerSensor](Modelica_Electrical_MultiPhase_Sensors.html# power sensor
  Modelica.Electrical.MultiPhase.Sensors.PowerSensor)        
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Electrical.MultiPhase.Sensors.PotentialSensorI.png) [Modelica.Electrical.MultiPhase.Sensors](Modelica_Electrical_MultiPhase_Sensors.html#Modelica.Electrical.MultiPhase.Sensors).PotentialSensor
===================================================================================================================================================================================================================

**Multiphase potential sensor**

Information
-----------

::

Contains m potential sensors
(Modelica.Electrical.Analog.Sensors.PotentialSensor), thus measuring the
m potentials *phi[m]* of the m pins of plug\_p.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  [PositivePlug](Modelica_Electrical_MultiPhase_In plug 
  terfaces.html#Modelica.Electrical.MultiPhase.Int \_p  
  erfaces.PositivePlug)                                 

  output                                           phi[ Absolute voltage
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod m]   potential as
  elica.Blocks.Interfaces.RealOutput)                   output signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PotentialSensor "Multiphase potential sensor"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Blocks.Interfaces.RealOutput phi[m] 
        "Absolute voltage potential as output signal";
      Modelica.Electrical.Analog.Sensors.PotentialSensor potentialSensor[m];
    equation 
      connect(potentialSensor.p, plug_p.pin);
      connect(potentialSensor.phi, phi);
    end PotentialSensor;

* * * * *

![image9](Modelica.Electrical.MultiPhase.Sensors.VoltageSensorI.png) [Modelica.Electrical.MultiPhase.Sensors](Modelica_Electrical_MultiPhase_Sensors.html#Modelica.Electrical.MultiPhase.Sensors).VoltageSensor
===============================================================================================================================================================================================================

**Multiphase voltage sensor**

Information
-----------

::

Contains m voltage sensors
(Modelica.Electrical.Analog.Sensors.VoltageSensor), thus measuring the m
potential differences *v[m]* between the m pins of plug\_p and plug\_n.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                         Name Description
  -------------------------------------------- ---- ----------------------
  [PositivePlug](Modelica_Electrical_MultiPhas plug 
  e_Interfaces.html#Modelica.Electrical.MultiP \_p  
  hase.Interfaces.PositivePlug)                     

  [NegativePlug](Modelica_Electrical_MultiPhas plug 
  e_Interfaces.html#Modelica.Electrical.MultiP \_n  
  hase.Interfaces.NegativePlug)                     

  output                                       v[m] Voltage between pin p
  [RealOutput](Modelica_Blocks_Interfaces.html      and n (= p.v - n.v) as
  #Modelica.Blocks.Interfaces.RealOutput)           output signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VoltageSensor "Multiphase voltage sensor"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Blocks.Interfaces.RealOutput v[m] 
        "Voltage between pin p and n (= p.v - n.v) as output signal";
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor[m];
    equation 
      connect(voltageSensor.n, plug_n.pin);
      connect(voltageSensor.p, plug_p.pin);
      connect(voltageSensor.v, v);
    end VoltageSensor;

* * * * *

![image10](Modelica.Electrical.MultiPhase.Sensors.CurrentSensorI.png) [Modelica.Electrical.MultiPhase.Sensors](Modelica_Electrical_MultiPhase_Sensors.html#Modelica.Electrical.MultiPhase.Sensors).CurrentSensor
================================================================================================================================================================================================================

**Multiphase current sensor**

Information
-----------

::

Contains m current sensors
(Modelica.Electrical.Analog.Sensors.CurrentSensor), thus measuring the m
currents *i[m]* flowing from the m pins of plug\_p to the m pins of
plug\_n.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- --------------------
  [PositivePlug](Modelica_Electrical_MultiPhase_ plug 
  Interfaces.html#Modelica.Electrical.MultiPhase \_p  
  .Interfaces.PositivePlug)                           

  [NegativePlug](Modelica_Electrical_MultiPhase_ plug 
  Interfaces.html#Modelica.Electrical.MultiPhase \_n  
  .Interfaces.NegativePlug)                           

  output                                         i[m] current in the
  [RealOutput](Modelica_Blocks_Interfaces.html#M      branch from p to n
  odelica.Blocks.Interfaces.RealOutput)               as output signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentSensor "Multiphase current sensor"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer m(final min=1) = 3 "Number of phases";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Blocks.Interfaces.RealOutput i[m] 
        "current in the branch from p to n as output signal";
      Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor[m];
    equation 
      connect(plug_p.pin, currentSensor.p);
      connect(currentSensor.n, plug_n.pin);
      connect(currentSensor.i, i);
    end CurrentSensor;

* * * * *

![image11](Modelica.Electrical.MultiPhase.Sensors.PowerSensorI.png) [Modelica.Electrical.MultiPhase.Sensors](Modelica_Electrical_MultiPhase_Sensors.html#Modelica.Electrical.MultiPhase.Sensors).PowerSensor
============================================================================================================================================================================================================

**Multiphase instantaneous power sensor**

Information
-----------

::

This power sensor measures instantaneous electrical power of a
multiphase system and has a separated voltage and current path. The
plugs of the voltage path are `pv` and `nv`, the plugs of the current
path are `pc` and `nc`. The internal resistance of each current path is
zero, the internal resistance of each voltage path is infinite.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfa pc   Positive
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Po      plug, current
  sitivePlug)                                                path

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfa nc   Negative
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Ne      plug, current
  gativePlug)                                                path

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfa pv   Positive
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Po      plug, voltage
  sitivePlug)                                                path

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfa nv   Negative
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Ne      plug, voltage
  gativePlug)                                                path

  output                                                powe 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica r    
  .Blocks.Interfaces.RealOutput)                             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PowerSensor "Multiphase instantaneous power sensor"
      parameter Integer m(min=1) = 3 "Number of phases";
      MultiPhase.Interfaces.PositivePlug pc(final m=m) 
        "Positive plug, current path";
      MultiPhase.Interfaces.NegativePlug nc(final m=m) 
        "Negative plug, current path";
      MultiPhase.Interfaces.PositivePlug pv(final m=m) 
        "Positive plug, voltage path";
      MultiPhase.Interfaces.NegativePlug nv(final m=m) 
        "Negative plug, voltage path";
      Modelica.Blocks.Interfaces.RealOutput power;
      MultiPhase.Sensors.VoltageSensor voltageSensor(final m=m);
      MultiPhase.Sensors.CurrentSensor currentSensor(final m=m);
      Modelica.Blocks.Math.Product product[m];
      Modelica.Blocks.Math.Sum sum(final nin=m, final k=ones(m));
    equation 
      connect(pc, currentSensor.plug_p);
      connect(currentSensor.plug_n, nc);
      connect(voltageSensor.plug_p, pv);
      connect(voltageSensor.plug_n, nv);
      connect(currentSensor.i, product.u2);
      connect(product.u1, voltageSensor.v);
      connect(product.y, sum.u);
      connect(sum.y, power);
    end PowerSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:21 2010.
