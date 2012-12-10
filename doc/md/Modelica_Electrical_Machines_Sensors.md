% Modelica.Electrical.Machines.Sensors
% 
% 

[Modelica.Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines).Sensors
======================================================================================================

**Sensors for machine modelling**

Information
-----------

::

This package contains sensors that are usefull when modelling machines.

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image5](Modelica.Electrical.Machines.Sensors.VoltageQuasi Length of
  RMSSensorS.png)                                             space phasor
  [VoltageQuasiRMSSensor](Modelica_Electrical_Machines_Sensor -\> RMS
  s.html#Modelica.Electrical.Machines.Sensors.VoltageQuasiRMS voltage
  Sensor)                                                     

  ![image6](Modelica.Electrical.Machines.Sensors.VoltageQuasi Length of
  RMSSensorS.png)                                             space phasor
  [CurrentQuasiRMSSensor](Modelica_Electrical_Machines_Sensor -\> RMS
  s.html#Modelica.Electrical.Machines.Sensors.CurrentQuasiRMS current
  Sensor)                                                     

  ![image7](Modelica.Electrical.Machines.Sensors.ElectricalPo Instantaneou
  werSensorS.png)                                             s
  [ElectricalPowerSensor](Modelica_Electrical_Machines_Sensor power from
  s.html#Modelica.Electrical.Machines.Sensors.ElectricalPower space
  Sensor)                                                     phasors

  ![image8](Modelica.Electrical.Machines.Sensors.MechanicalPo Mechanical
  werSensorS.png)                                             power =
  [MechanicalPowerSensor](Modelica_Electrical_Machines_Sensor torque x
  s.html#Modelica.Electrical.Machines.Sensors.MechanicalPower speed
  Sensor)                                                     

  ![image9](Modelica.Electrical.Machines.Sensors.RotorDisplac Rotor
  ementAngleS.png)                                            lagging
  [RotorDisplacementAngle](Modelica_Electrical_Machines_Senso angle
  rs.html#Modelica.Electrical.Machines.Sensors.RotorDisplacem 
  entAngle)                                                   
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Electrical.Machines.Sensors.VoltageQuasiRMSSensorI.png) [Modelica.Electrical.Machines.Sensors](Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors).VoltageQuasiRMSSensor
========================================================================================================================================================================================================================

**Length of space phasor -\> RMS voltage**

Information
-----------

::

Measured 3-phase instantaneous voltages are transformed to the
corresponding space phasor; output is length of the space phasor divided
by sqrt(2), thus giving in sinusoidal stationary state RMS voltage.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  output                                                     V     
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc       
  ks.Interfaces.RealOutput)                                        

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model VoltageQuasiRMSSensor 
      "Length of space phasor -> RMS voltage"
      constant Integer m(final min=1) = 3 "Number of phases";
      Modelica.Blocks.Interfaces.RealOutput V;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.MultiPhase.Sensors.VoltageSensor VoltageSensor1(final m=m);
      Modelica.Blocks.Math.Gain Gain1(final k=1/sqrt(2));
      Machines.SpacePhasors.Blocks.ToSpacePhasor ToSpacePhasor1;
      Machines.SpacePhasors.Blocks.ToPolar ToPolar1;
    equation 
      connect(plug_p, VoltageSensor1.plug_p);
      connect(VoltageSensor1.plug_n, plug_n);
      connect(VoltageSensor1.v, ToSpacePhasor1.u);
      connect(ToSpacePhasor1.y, ToPolar1.u);
      connect(ToPolar1.y[1], Gain1.u);
      connect(Gain1.y, V);
    end VoltageQuasiRMSSensor;

* * * * *

![image11](Modelica.Electrical.Machines.Sensors.CurrentQuasiRMSSensorI.png) [Modelica.Electrical.Machines.Sensors](Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors).CurrentQuasiRMSSensor
========================================================================================================================================================================================================================

**Length of space phasor -\> RMS current**

Information
-----------

::

Measured 3-phase instantaneous currents are transformed to the
corresponding space phasor; output is length of the space phasor divided
by sqrt(2), thus giving in sinusoidal stationary state RMS current.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  output                                                     I     
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc       
  ks.Interfaces.RealOutput)                                        

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentQuasiRMSSensor 
      "Length of space phasor -> RMS current"
      constant Integer m(final min=1) = 3 "Number of phases";
      Modelica.Blocks.Interfaces.RealOutput I;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.MultiPhase.Sensors.CurrentSensor CurrentSensor1(final m=m);
      Modelica.Blocks.Math.Gain Gain1(final k=1/sqrt(2));
      Machines.SpacePhasors.Blocks.ToSpacePhasor ToSpacePhasor1;
      Machines.SpacePhasors.Blocks.ToPolar ToPolar1;
    equation 
      connect(plug_p, CurrentSensor1.plug_p);
      connect(CurrentSensor1.plug_n, plug_n);
      connect(CurrentSensor1.i, ToSpacePhasor1.u);
      connect(ToSpacePhasor1.y, ToPolar1.u);
      connect(ToPolar1.y[1], Gain1.u);
      connect(Gain1.y,I);
    end CurrentQuasiRMSSensor;

* * * * *

![image12](Modelica.Electrical.Machines.Sensors.ElectricalPowerSensorI.png) [Modelica.Electrical.Machines.Sensors](Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors).ElectricalPowerSensor
========================================================================================================================================================================================================================

**Instantaneous power from space phasors**

Information
-----------

::

3-phase instantaneous voltages (plug\_p - plug\_nv) and currents
(plug\_p - plug\_ni) are transformed to the corresponding space phasors,
which are used to calculate power quantities: P = instantaneous power,
thus giving in stationary state active power. Q = giving in stationary
state reactive power.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                       Name   Descrip
                                                                    tion
  ---------------------------------------------------------- ------ -------
  output                                                     P      
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc        
  ks.Interfaces.RealOutput)                                         

  output                                                     Q      
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Bloc        
  ks.Interfaces.RealOutput)                                         

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p      
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug ni     
  )                                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\_ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug nv     
  )                                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ElectricalPowerSensor "Instantaneous power from space phasors"
      constant Integer m(final min=1) = 3 "Number of phases";
      Modelica.Blocks.Interfaces.RealOutput P;
      Modelica.Blocks.Interfaces.RealOutput Q;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_ni(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_nv(final m=m);

    protected 
      Modelica.SIunits.Voltage v_[2];
      Modelica.SIunits.Current i_[2];
    equation 
      plug_p.pin.v = plug_ni.pin.v;
      plug_p.pin.i + plug_ni.pin.i = zeros(m);
      plug_nv.pin.i = zeros(m);
      v_ = Machines.SpacePhasors.Functions.ToSpacePhasor(plug_p.pin.v - plug_nv.pin.v);
      i_ = Machines.SpacePhasors.Functions.ToSpacePhasor(plug_p.pin.i);
      2/3*P = +v_[1]*i_[1]+v_[2]*i_[2];
      2/3*Q = -v_[1]*i_[2]+v_[2]*i_[1];
    end ElectricalPowerSensor;

* * * * *

![image13](Modelica.Electrical.Machines.Sensors.MechanicalPowerSensorI.png) [Modelica.Electrical.Machines.Sensors](Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors).MechanicalPowerSensor
========================================================================================================================================================================================================================

**Mechanical power = torque x speed**

Information
-----------

::

Calculates (mechanical) power from torque times angular speed.

::

Extends from
[Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges)
(Partial model for a component with two rotational 1-dim. shaft
flanges).

Parameters
----------

  Type         Name            Default      Description
  ------------ --------------- ------------ ---------------------------------
  Boolean      useSupport      false        Use support or fixed housing

Connectors
----------

  -------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- --------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inte flang Flange of left shaft
  rfaces.html#Modelica.Mechanics.Rotational.Inte e\_a  
  rfaces.Flange_a)                                     

  [Flange\_b](Modelica_Mechanics_Rotational_Inte flang Flange of right
  rfaces.html#Modelica.Mechanics.Rotational.Inte e\_b  shaft
  rfaces.Flange_b)                                     

  output                                         P     
  [RealOutput](Modelica_Blocks_Interfaces.html#M       
  odelica.Blocks.Interfaces.RealOutput)                

  [Flange\_a](Modelica_Mechanics_Rotational_Inte suppo Support at which the
  rfaces.html#Modelica.Mechanics.Rotational.Inte rt    reaction torque is
  rfaces.Flange_a)                                     acting
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model MechanicalPowerSensor "Mechanical power = torque x speed"
      extends Modelica.Mechanics.Rotational.Interfaces.PartialTwoFlanges;
      parameter Boolean useSupport=false "Use support or fixed housing";
      Modelica.Blocks.Interfaces.RealOutput P;
      Modelica.Mechanics.Rotational.Sensors.TorqueSensor torqueSensor;
      Modelica.Blocks.Math.Product product;
      Modelica.Mechanics.Rotational.Sensors.RelSpeedSensor relSpeedSensor;
      Modelica.Mechanics.Rotational.Components.Fixed fixed if 
                                                            (not useSupport);
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if          useSupport 
        "Support at which the reaction torque is acting";
    equation 
      connect(flange_a, torqueSensor.flange_a);
      connect(torqueSensor.flange_b, flange_b);
      connect(product.y, P);
      connect(torqueSensor.tau, product.u2);
      connect(flange_a, relSpeedSensor.flange_b);
      connect(relSpeedSensor.w_rel, product.u1);
      connect(relSpeedSensor.flange_a, fixed.flange);
      connect(relSpeedSensor.flange_a, support);
    end MechanicalPowerSensor;

* * * * *

![image14](Modelica.Electrical.Machines.Sensors.RotorDisplacementAngleI.png) [Modelica.Electrical.Machines.Sensors](Modelica_Electrical_Machines_Sensors.html#Modelica.Electrical.Machines.Sensors).RotorDisplacementAngle
==========================================================================================================================================================================================================================

**Rotor lagging angle**

Information
-----------

::

Calculates rotor lagging angle by measuring the stator phase voltages,
transforming them to the correspondig space phasor in stator-fixed
coordinate system, rotating the space phasor to the rotor-fixed
coordinate system and calculating the angle of this space phasor.

The sensor's housing can be implicitely fixed (useSupport=false).
  ~ If the machine's stator also implicitely fixed (useSupport=false),
    the

angle at the flange is equal to the angle of the machine's rotor against
the stator. Otherwise, the sensor's support has to be connected to the
machine's support.

::

Parameters
----------

  Type         Name            Default      Description
  ------------ --------------- ------------ ---------------------------------
  Integer      p                            Number of pole pairs
  Boolean      useSupport      false        Use support or fixed housing

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name      Description
  -------------------------------------------- --------- ------------------
  output                                       rotorDisp 
  [RealOutput](Modelica_Blocks_Interfaces.html lacementA 
  #Modelica.Blocks.Interfaces.RealOutput)      ngle      

  [PositivePlug](Modelica_Electrical_MultiPhas plug\_p   
  e_Interfaces.html#Modelica.Electrical.MultiP           
  hase.Interfaces.PositivePlug)                          

  [NegativePlug](Modelica_Electrical_MultiPhas plug\_n   
  e_Interfaces.html#Modelica.Electrical.MultiP           
  hase.Interfaces.NegativePlug)                          

  [Flange\_a](Modelica_Mechanics_Rotational_In flange    
  terfaces.html#Modelica.Mechanics.Rotational.           
  Interfaces.Flange_a)                                   

  [Flange\_a](Modelica_Mechanics_Rotational_In support   support at which
  terfaces.html#Modelica.Mechanics.Rotational.           the reaction
  Interfaces.Flange_a)                                   torque is acting
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model RotorDisplacementAngle "Rotor lagging angle"
      constant Integer m=3 "Number of phases";
      parameter Integer p(min=1) "Number of pole pairs";
      parameter Boolean useSupport=false "Use support or fixed housing";
      Modelica.Blocks.Interfaces.RealOutput rotorDisplacementAngle;
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m);
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Electrical.MultiPhase.Sensors.VoltageSensor VoltageSensor1(final m=m);
      Machines.SpacePhasors.Blocks.ToSpacePhasor ToSpacePhasorVS;
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange;
      Modelica.Mechanics.Rotational.Sensors.RelAngleSensor relativeAngleSensor;
      Modelica.Blocks.Sources.Constant constant_(final k=Modelica.Constants.pi/2);
      Modelica.Blocks.Math.Add add(final k2=1, final k1=p);
      Machines.SpacePhasors.Blocks.Rotator rotatorVS2R;
      Machines.SpacePhasors.Blocks.ToPolar ToPolarVSR;
      Modelica.Blocks.Routing.DeMultiplex2 deMultiplex2(final n1=1,
           final n2=1);
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if useSupport 
        "support at which the reaction torque is acting";
      Modelica.Mechanics.Rotational.Components.Fixed fixed if 
                                                   (not useSupport);
    equation 
      connect(constant_.y, add.u2);
      connect(add.y, rotatorVS2R.angle);
      connect(ToSpacePhasorVS.y, rotatorVS2R.u);
      connect(rotatorVS2R.y, ToPolarVSR.u);
      connect(ToPolarVSR.y, deMultiplex2.u);
      connect(plug_p, VoltageSensor1.plug_p);
      connect(plug_n, VoltageSensor1.plug_n);
      connect(VoltageSensor1.v, ToSpacePhasorVS.u);
      connect(deMultiplex2.y2[1], rotorDisplacementAngle);
      connect(relativeAngleSensor.phi_rel, add.u1);
      connect(relativeAngleSensor.flange_b, flange);
      connect(relativeAngleSensor.flange_a, support);
      connect(relativeAngleSensor.flange_a, fixed.flange);
    end RotorDisplacementAngle;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:03 2010.
