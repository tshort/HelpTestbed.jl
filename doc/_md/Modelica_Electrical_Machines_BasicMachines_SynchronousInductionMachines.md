% Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines
% 
% 

[Modelica.Electrical.Machines.BasicMachines](Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines).SynchronousInductionMachines
=====================================================================================================================================================================

**Models of synchronous induction machines**

Information
-----------

::

This package contains models of synchronous induction machines, based on
space phasor theory:

-   SM\_PermanentMagnet: synchronous induction machine with permanent
    magnet excitation, with damper cage
-   SM\_ElectricalExcited: synchronous induction machine with electrical
    excitation and damper cage
-   SM\_ReluctanceRotor: induction machine with reluctance rotor and
    damper cage i.e., a squirrel cage rotor with magnetic poles due to
    different airgap width

These models use package SpacePhasors. **Please keep in mind:**

-   We keep the same reference system as for motors, i.e.:
      ~ Positive RotorDisplacementAngle means acting as motor, with
        positive electric power consumption and positive mechanical

    power output.
-   ElectricalAngle = p \* MechanicalAngle
-   real axis = d-axis
      ~ imaginary= q-axis

-   Voltage induced by the magnet wheel (d-axis) is located in the
    q-axis.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image3](Modelica.Electrical.Machines.BasicMachines.Sync Permanent
  hronousInductionMachines.SM_PermanentMagnetS.png)         magnet
  [SM\_PermanentMagnet](Modelica_Electrical_Machines_BasicM synchronous
  achines_SynchronousInductionMachines.html#Modelica.Electr induction
  ical.Machines.BasicMachines.SynchronousInductionMachines. machine
  SM_PermanentMagnet)                                       

  ![image4](Modelica.Electrical.Machines.BasicMachines.Sync Electrical
  hronousInductionMachines.SM_ElectricalExcitedS.png)       excited
  [SM\_ElectricalExcited](Modelica_Electrical_Machines_Basi synchronous
  cMachines_SynchronousInductionMachines.html#Modelica.Elec induction
  trical.Machines.BasicMachines.SynchronousInductionMachine machine with
  s.SM_ElectricalExcited)                                   damper cage

  ![image5](Modelica.Electrical.Machines.BasicMachines.Sync Synchronous
  hronousInductionMachines.SM_ReluctanceRotorS.png)         induction
  [SM\_ReluctanceRotor](Modelica_Electrical_Machines_BasicM machine with
  achines_SynchronousInductionMachines.html#Modelica.Electr reluctance
  ical.Machines.BasicMachines.SynchronousInductionMachines. rotor and
  SM_ReluctanceRotor)                                       damper cage
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnetI.png) [Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines](Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines).SM\_PermanentMagnet
==============================================================================================================================================================================================================================================================================================================================================================

**Permanent magnet synchronous induction machine**

Information
-----------

::

**Model of a three phase permanent magnet synchronous induction
machine.**
  ~ Resistance and stray inductance of stator is modeled directly in
    stator

phases, then using space phasor transformation and a rotor-fixed
*AirGap* model. Resistance and stray inductance of rotor's squirrel cage
is modeled in two axis of the rotor-fixed ccordinate system. Permanent
magnet excitation is modelled by a constant equivalent excitation
current feeding the d-axis. The machine models take the following loss
effects into account:

-   heat losses in the temperature dependent stator winding resistances
-   optional, when enabled: heat losses in the temperature dependent
    damper cage resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

Whether a damper cage is present or not, can be selected with Boolean
parameter useDamperCage (default = true). **Default values for machine's
parameters (a realistic example) are:**

  ---------------------------- ------------------- ------------------------
  number of pole pairs p       2                   

  stator's moment of inertia   0.29                kg.m2

  rotor's moment of inertia    0.29                kg.m2

  nominal frequency fNominal   50                  Hz

  nominal voltage per phase    100                 V RMS

  no-load voltage per phase    112.3               V RMS @ nominal speed

  nominal current per phase    100                 A RMS

  nominal torque               181.4               Nm

  nominal speed                1500                rpm

  nominal mechanical output    28.5                kW

  nominal rotor angle          20.75               degree

  efficiency                   95.0                %

  power factor                 0.98                

  stator resistance            0.03                Ohm per phase at
                                                   reference temperature

  reference temperature TsRef  20                  °C

  temperature coefficient      0                   1/K
  alpha20s                                         

  stator reactance Xd          0.4                 Ohm per phase in d-axis

  stator reactance Xq          0.4                 Ohm per phase in q-axis

  stator stray reactance Xss   0.1                 Ohm per phase

  damper resistance in d-axis  0.04                Ohm at reference
                                                   temperature

  damper resistance in q-axis  same as d-axis      

  reference temperature TrRef  20                  °C

  temperature coefficient      0                   1/K
  alpha20r                                         

  damper stray reactance in    0.05                Ohm
  d-axis XDds                                      

  damper stray reactance in    same as d-axis      
  q-axis XDqs                                      

  stator operational           20                  °C
  temperature TsOperational                        

  damper operational           20                  °C
  temperature TrOperational                        

  These values give the                            
  following inductances:                           

  main field inductance in     (Xd -               
  d-axis                       Xss)/(2\*pi\*fNomin 
                               al)                 

  main field inductance in     (Xq -               
  q-axis                       Xss)/(2\*pi\*fNomin 
                               al)                 

  stator stray inductance per  Xss/(2\*pi\*fNomina 
  phase                        l)                  

  damper stray inductance in   XDds/(2\*pi\*fNomin 
  d-axis                       al)                 

  damper stray inductance in   XDqs/(2\*pi\*fNomin 
  q-axis                       al)                 
  ---------------------------- ------------------- ------------------------

::

Extends from
[Machines.Interfaces.PartialBasicInductionMachine](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name   Default   Description
  -------------------------------------- ------ --------- ------------------
  Integer                                p                Number of pole
                                                          pairs (Integer)

  [Frequency](Modelica_SIunits.html#Mode fsNomi           Nominal frequency
  lica.SIunits.Frequency)                nal              [Hz]

  [Inertia](Modelica_SIunits.html#Modeli Jr     Jr(start= Rotor's moment of
  ca.SIunits.Inertia)                           0.29)     inertia [kg.m2]

  Boolean                                useSup false     Enable / disable
                                         port             (=fixed stator)
                                                          support

  [Inertia](Modelica_SIunits.html#Modeli Js               Stator's moment of
  ca.SIunits.Inertia)                                     inertia [kg.m2]

  Boolean                                useThe false     Enable / disable
                                         rmalPo           (=fixed
                                         rt               temperatures)
                                                          thermal port

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapR.i Stator space
  ca.SIunits.Current)                    s[2]   \_ss      phasor current /
                                                          stator fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapR.i Stator space
  ca.SIunits.Current)                    r[2]   \_sr      phasor current /
                                                          rotor fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapR.i Rotor space phasor
  ca.SIunits.Current)                    s[2]   \_rs      current / stator
                                                          fixed frame [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapR.i Rotor space phasor
  ca.SIunits.Current)                    r[2]   \_rr      current / rotor
                                                          fixed frame [A]

  [Voltage](Modelica_SIunits.html#Modeli VsOpen           Open circuit RMS
  ca.SIunits.Voltage)                    Circui           voltage per phase
                                         t                @ fsNominal [V]

  Operational temperatures                                

  [Temperature](Modelica_SIunits.html#Mo TsOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                stator resistance
                                                          [K]

  [Temperature](Modelica_SIunits.html#Mo TrOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                (optional) damper
                                                          cage [K]

  **Nominal resistances and                               
  inductances**                                           

  [Resistance](Modelica_SIunits.html#Mod Rs               Stator resistance
  elica.SIunits.Resistance)                               per phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TsRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          stator resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0s               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  stator resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mod Lszero Lssigma   Stator zero
  elica.SIunits.Inductance)                               sequence
                                                          inductance [H]

  [Inductance](Modelica_SIunits.html#Mod Lssigm 0.1/(2\*p Stator stray
  elica.SIunits.Inductance)              a.star i\*fsNomi inductance per
                                         t      nal)      phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lmd              Main field
  elica.SIunits.Inductance)                               inductance in
                                                          d-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lmq              Main field
  elica.SIunits.Inductance)                               inductance in
                                                          q-axis [H]

  DamperCage                                              

  Boolean                                useDam           Enable / disable
                                         perCag           damper cage
                                         e                

  [Inductance](Modelica_SIunits.html#Mod Lrsigm           Damper stray
  elica.SIunits.Inductance)              ad               inductance in
                                                          d-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsigm Lrsigmad  Damper stray
  elica.SIunits.Inductance)              aq               inductance in
                                                          q-axis [H]

  [Resistance](Modelica_SIunits.html#Mod Rrd              Damper resistance
  elica.SIunits.Resistance)                               in d-axis at TRef
                                                          [Ohm]

  [Resistance](Modelica_SIunits.html#Mod Rrq    Rrd       Damper resistance
  elica.SIunits.Resistance)                               in q-axis at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TrRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          damper resistances
                                                          in d- and q-axis
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0r               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  damper resistances
  nearTemperatureCoefficient20)                           in d- and q-axis
                                                          [1/K]

  **Losses**                                              

  [FrictionParameters](Modelica_Electric fricti frictionP Friction losses
  al_Machines_Losses.html#Modelica.Elect onPara arameters 
  rical.Machines.Losses.FrictionParamete meters (wRef(sta 
  rs)                                           r...      

  [CoreParameters](Modelica_Electrical_M stator           Stator core losses
  achines_Losses.html#Modelica.Electrica CorePa           
  l.Machines.Losses.CoreParameters)      ramete           
                                         rs               

  [StrayLoadParameters](Modelica_Electri strayL           Stray load losses
  cal_Machines_Losses.html#Modelica.Elec oadPar           
  trical.Machines.Losses.StrayLoadParame ameter           
  ters)                                  s                
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inter flan Shaft
  faces.html#Modelica.Mechanics.Rotational.Interf ge   
  aces.Flange_a)                                       

  [Flange\_a](Modelica_Mechanics_Rotational_Inter supp Support at which
  faces.html#Modelica.Mechanics.Rotational.Interf ort  the reaction torque
  aces.Flange_a)                                       is acting

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive stator
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sp plug
  nterfaces.PositivePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative stator
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sn plug
  nterfaces.NegativePlug)                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SM_PermanentMagnet 
      "Permanent magnet synchronous induction machine"
      extends Machines.Interfaces.PartialBasicInductionMachine(
          Lssigma(start=0.1/(2*pi*fsNominal)),
          final idq_ss = airGapR.i_ss,
          final idq_sr = airGapR.i_sr,
          final idq_rs = airGapR.i_rs,
          final idq_rr = airGapR.i_rr,
        redeclare final Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPM
          thermalAmbient(final useDamperCage = useDamperCage, final Tr=TrOperational,
          final Tpm=TpmOperational),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMPM
          thermalPort(final useDamperCage = useDamperCage),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMPM
          internalThermalPort(final useDamperCage = useDamperCage),
        redeclare final Machines.Interfaces.InductionMachines.PowerBalanceSMPM
          powerBalance(final lossPowerRotorWinding = heatFlowSensorDamperCage.Q_flow,
                       final lossPowerRotorCore = 0,
                       final lossPowerPermanentMagnet = 0),
        statorCore(final w=statorCoreParameters.wRef));
      Machines.BasicMachines.Components.AirGapR airGapR(
        final p=p,
        final Lmd=Lmd,
        final Lmq=Lmq,
        final m=m);
      final parameter Modelica.SIunits.Temperature TpmOperational=293.15 
        "Operational temperature of permanent magnet";
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of (optional) damper cage";
      parameter Modelica.SIunits.Voltage VsOpenCircuit(start=112.3) 
        "Open circuit RMS voltage per phase @ fsNominal";
      parameter Modelica.SIunits.Inductance Lmd(start=0.3/(2*pi*fsNominal)) 
        "Main field inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lmq(start=0.3/(2*pi*fsNominal)) 
        "Main field inductance in q-axis";
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";
      parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal)) 
        "Damper stray inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad 
        "Damper stray inductance in q-axis";
      parameter Modelica.SIunits.Resistance Rrd(start=0.04) 
        "Damper resistance in d-axis at TRef";
      parameter Modelica.SIunits.Resistance Rrq=Rrd 
        "Damper resistance in q-axis at TRef";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of damper resistances in d- and q-axis";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20r(
        start=0) "Temperature coefficient of damper resistances in d- and q-axis";
      output Modelica.SIunits.Current idq_dr[2](each stateSelect=StateSelect.prefer)=
        damperCage.spacePhasor_r.i_ if useDamperCage 
        "Damper space phasor current / rotor fixed frame";
    protected 
      final parameter Modelica.SIunits.Current Ie=sqrt(2)*VsOpenCircuit/(Lmd*2*pi*fsNominal) 
        "Equivalent excitation current";
    public 
      Machines.BasicMachines.Components.PermanentMagnet permanentMagnet(final Ie=Ie);
      Machines.BasicMachines.Components.DamperCage damperCage(
        final Lrsigmad=Lrsigmad,
        final Lrsigmaq=Lrsigmaq,
        final Rrd=Rrd,
        final Rrq=Rrq,
        final T_ref=TrRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20r, TrRef),
        final T=TrRef,
        final useHeatPort=true) if useDamperCage;
      Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor
                                                      heatFlowSensorDamperCage(final useFixedTemperature=
                              not useDamperCage);
    equation 
      connect(airGapR.spacePhasor_r, damperCage.spacePhasor_r);
      connect(airGapR.spacePhasor_r, permanentMagnet.spacePhasor_r);
      connect(airGapR.support, internalSupport);

      connect(airGapR.flange, inertiaRotor.flange_a);
      connect(lssigma.spacePhasor_b, airGapR.spacePhasor_s);
      connect(damperCage.heatPort, heatFlowSensorDamperCage.port_a);
      connect(heatFlowSensorDamperCage.port_b, internalThermalPort.heatPortRotorWinding);
    end SM_PermanentMagnet;

* * * * *

![image7](Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcitedI.png) [Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines](Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines).SM\_ElectricalExcited
==================================================================================================================================================================================================================================================================================================================================================================

**Electrical excited synchronous induction machine with damper cage**

Information
-----------

::

**Model of a three phase electrical excited synchronous induction
machine with damper cage.**
  ~ Resistance and stray inductance of stator is modeled directly in
    stator

phases, then using space phasor transformation and a rotor-fixed
*AirGap* model. Resistance and stray inductance of rotor's squirrel cage
is modeled in two axis of the rotor-fixed ccordinate system. Electrical
excitation is modelled by converting excitation current and voltage to
d-axis space phasors. The machine models take the following loss effects
into account:

-   heat losses in the temperature dependent stator winding resistances
-   heat losses in the temperature dependent excitation winding
    resistance
-   optional, when enabled: heat losses in the temperature dependent
    damper cage resistances
-   brush losses in the excitation circuit
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

Whether a damper cage is present or not, can be selected with Boolean
parameter useDamperCage (default = true). **Default values for machine's
parameters (a realistic example) are:**

  ----------------------------- ------------------ ------------------------
  number of pole pairs p        2                  

  stator's moment of inertia    0.29               kg.m2

  rotor's moment of inertia     0.29               kg.m2

  nominal frequency fNominal    50                 Hz

  nominal voltage per phase     100                V RMS

  no-load excitation current    10                 A DC
    ~ @ nominal voltage and                        
      frequency                                    
                                                   
                                                   

  warm excitation resistance    2.5                Ohm

  nominal current per phase     100                A RMS

  nominal apparent power        -30000             VA

  power factor                  -1.0               ind./cap.

  nominal excitation current    19                 A

  efficiency w/o excitation     97.1               %

  nominal torque                -196.7             Nm

  nominal speed                 1500               rpm

  nominal rotor angle           -57.23             degree

  stator resistance             0.03               Ohm per phase at
                                                   reference temperature

  reference temperature TsRef   20                 °C

  temperature coefficient       0                  1/K
  alpha20s                                         

  stator reactance Xd           1.6                Ohm per phase in d-axis

  giving Kc                     0.625              

  stator reactance Xq           1.6                Ohm per phase in q-axis

  stator stray reactance Xss    0.1                Ohm per phase

  damper resistance in d-axis   0.04               Ohm at reference
                                                   temperature

  damper resistance in q-axis   same as d-axis     

  reference temperature TrRef   20                 °C

  temperature coefficient       0                  1/K
  alpha20r                                         

  damper stray reactance in     0.05               Ohm
  d-axis XDds                                      

  damper stray reactance in     same as d-axis     
  q-axis XDqs                                      

  excitation resistance         2.5                Ohm at reference
                                                   temperature

  reference temperature TeRef   20                 °C

  temperature coefficient       0                  1/K
  alpha20e                                         

  excitation stray inductance   2.5                % of total excitation
                                                   inductance

  stator operational            20                 °C
  temperature TsOperational                        

  damper operational            20                 °C
  temperature TrOperational                        

  excitation operational        20                 °C
  temperature TeOperational                        

  These values give the                            
  following inductances:                           

  main field inductance in      (Xd -              
  d-axis                        Xss)/(2\*pi\*fNomi 
                                nal)               

  main field inductance in      (Xq -              
  q-axis                        Xss)/(2\*pi\*fNomi 
                                nal)               

  stator stray inductance per   Xss/(2\*pi\*fNomin 
  phase                         al)                

  damper stray inductance in    XDds/(2\*pi\*fNomi 
  d-axis                        nal)               

  damper stray inductance in    XDqs/(2\*pi\*fNomi 
  q-axis                        nal)               
  ----------------------------- ------------------ ------------------------

::

Extends from
[Machines.Interfaces.PartialBasicInductionMachine](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name   Default   Description
  -------------------------------------- ------ --------- ------------------
  Integer                                p                Number of pole
                                                          pairs (Integer)

  [Frequency](Modelica_SIunits.html#Mode fsNomi           Nominal frequency
  lica.SIunits.Frequency)                nal              [Hz]

  [Inertia](Modelica_SIunits.html#Modeli Jr     Jr(start= Rotor's moment of
  ca.SIunits.Inertia)                           0.29)     inertia [kg.m2]

  Boolean                                useSup false     Enable / disable
                                         port             (=fixed stator)
                                                          support

  [Inertia](Modelica_SIunits.html#Modeli Js               Stator's moment of
  ca.SIunits.Inertia)                                     inertia [kg.m2]

  Boolean                                useThe false     Enable / disable
                                         rmalPo           (=fixed
                                         rt               temperatures)
                                                          thermal port

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapR.i Stator space
  ca.SIunits.Current)                    s[2]   \_ss      phasor current /
                                                          stator fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapR.i Stator space
  ca.SIunits.Current)                    r[2]   \_sr      phasor current /
                                                          rotor fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapR.i Rotor space phasor
  ca.SIunits.Current)                    s[2]   \_rs      current / stator
                                                          fixed frame [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapR.i Rotor space phasor
  ca.SIunits.Current)                    r[2]   \_rr      current / rotor
                                                          fixed frame [A]

  Operational temperatures                                

  [Temperature](Modelica_SIunits.html#Mo TsOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                stator resistance
                                                          [K]

  [Temperature](Modelica_SIunits.html#Mo TrOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                (optional) damper
                                                          cage [K]

  [Temperature](Modelica_SIunits.html#Mo TeOper           Operational
  delica.SIunits.Temperature)            ationa           excitation
                                         l                temperature [K]

  **Nominal resistances and                               
  inductances**                                           

  [Resistance](Modelica_SIunits.html#Mod Rs               Stator resistance
  elica.SIunits.Resistance)                               per phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TsRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          stator resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0s               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  stator resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mod Lszero Lssigma   Stator zero
  elica.SIunits.Inductance)                               sequence
                                                          inductance [H]

  [Inductance](Modelica_SIunits.html#Mod Lssigm 0.1/(2\*p Stator stray
  elica.SIunits.Inductance)              a.star i\*fsNomi inductance per
                                         t      nal)      phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lmd              Main field
  elica.SIunits.Inductance)                               inductance in
                                                          d-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lmq              Main field
  elica.SIunits.Inductance)                               inductance in
                                                          q-axis [H]

  DamperCage                                              

  Boolean                                useDam           Enable / disable
                                         perCag           damper cage
                                         e                

  [Inductance](Modelica_SIunits.html#Mod Lrsigm           Damper stray
  elica.SIunits.Inductance)              ad               inductance in
                                                          d-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsigm Lrsigmad  Damper stray
  elica.SIunits.Inductance)              aq               inductance in
                                                          q-axis [H]

  [Resistance](Modelica_SIunits.html#Mod Rrd              Damper resistance
  elica.SIunits.Resistance)                               in d-axis at TRef
                                                          [Ohm]

  [Resistance](Modelica_SIunits.html#Mod Rrq    Rrd       Damper resistance
  elica.SIunits.Resistance)                               in q-axis at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TrRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          damper resistances
                                                          in d- and q-axis
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0r               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  damper resistances
  nearTemperatureCoefficient20)                           in d- and q-axis
                                                          [1/K]

  **Losses**                                              

  [FrictionParameters](Modelica_Electric fricti frictionP Friction losses
  al_Machines_Losses.html#Modelica.Elect onPara arameters 
  rical.Machines.Losses.FrictionParamete meters (wRef(sta 
  rs)                                           r...      

  [CoreParameters](Modelica_Electrical_M stator           Stator core losses
  achines_Losses.html#Modelica.Electrica CorePa           
  l.Machines.Losses.CoreParameters)      ramete           
                                         rs               

  [StrayLoadParameters](Modelica_Electri strayL           Stray load losses
  cal_Machines_Losses.html#Modelica.Elec oadPar           
  trical.Machines.Losses.StrayLoadParame ameter           
  ters)                                  s                

  [BrushParameters](Modelica_Electrical_ brushP           Brush losses
  Machines_Losses.html#Modelica.Electric aramet           
  al.Machines.Losses.BrushParameters)    ers              

  **Excitation**                                          

  [Voltage](Modelica_SIunits.html#Modeli VsNomi           Nominal stator RMS
  ca.SIunits.Voltage)                    nal              voltage per phase
                                                          [V]

  [Current](Modelica_SIunits.html#Modeli IeOpen           Open circuit
  ca.SIunits.Current)                    Circui           excitation current
                                         t                @ nominal voltage
                                                          and frequency [A]

  [Resistance](Modelica_SIunits.html#Mod Re               Excitation
  elica.SIunits.Resistance)                               resistance at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TeRef            Reference
  delica.SIunits.Temperature)                             temperture of
                                                          excitation
                                                          resistance [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0e               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  excitation
  nearTemperatureCoefficient20)                           resistance [1/K]

  Real                                   sigmae           Stray fraction of
                                                          total excitation
                                                          inductance
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inter flan Shaft
  faces.html#Modelica.Mechanics.Rotational.Interf ge   
  aces.Flange_a)                                       

  [Flange\_a](Modelica_Mechanics_Rotational_Inter supp Support at which
  faces.html#Modelica.Mechanics.Rotational.Interf ort  the reaction torque
  aces.Flange_a)                                       is acting

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive stator
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sp plug
  nterfaces.PositivePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative stator
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sn plug
  nterfaces.NegativePlug)                              

  [PositivePin](Modelica_Electrical_Analog_Interf pin\ Positive excitation
  aces.html#Modelica.Electrical.Analog.Interfaces _ep  pin
  .PositivePin)                                        

  [NegativePin](Modelica_Electrical_Analog_Interf pin\ Negative excitation
  aces.html#Modelica.Electrical.Analog.Interfaces _en  pin
  .NegativePin)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SM_ElectricalExcited 
      "Electrical excited synchronous induction machine with damper cage"
      extends Machines.Interfaces.PartialBasicInductionMachine(
          Lssigma(start=0.1/(2*pi*fsNominal)),
          final idq_ss = airGapR.i_ss,
          final idq_sr = airGapR.i_sr,
          final idq_rs = airGapR.i_rs,
          final idq_rr = airGapR.i_rr,
        redeclare final Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEE
          thermalAmbient(final useDamperCage = useDamperCage, final Te=TeOperational, final Tr=TrOperational),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMEE
          thermalPort(final useDamperCage = useDamperCage),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMEE
          internalThermalPort(final useDamperCage = useDamperCage),
        redeclare final Machines.Interfaces.InductionMachines.PowerBalanceSMEE
          powerBalance(final lossPowerRotorWinding = heatFlowSensorDamperCage.Q_flow,
                       final powerExcitation = ve*ie,
                       final lossPowerExcitation = -re.heatPort.Q_flow,
                       final lossPowerBrush = -brush.heatPort.Q_flow,
                       final lossPowerRotorCore = 0),
        statorCore(final w=statorCoreParameters.wRef));
      Machines.BasicMachines.Components.AirGapR airGapR(
        final p=p,
        final Lmd=Lmd,
        final Lmq=Lmq,
        final m=m);
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of (optional) damper cage";
      parameter Modelica.SIunits.Inductance Lmd(start=1.5/(2*pi*fsNominal)) 
        "Main field inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lmq(start=1.5/(2*pi*fsNominal)) 
        "Main field inductance in q-axis";
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";
      parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal)) 
        "Damper stray inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad 
        "Damper stray inductance in q-axis";
      parameter Modelica.SIunits.Resistance Rrd(start=0.04) 
        "Damper resistance in d-axis at TRef";
      parameter Modelica.SIunits.Resistance Rrq=Rrd 
        "Damper resistance in q-axis at TRef";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of damper resistances in d- and q-axis";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20r(
        start=0) "Temperature coefficient of damper resistances in d- and q-axis";
      parameter Modelica.SIunits.Voltage VsNominal(start=100) 
        "Nominal stator RMS voltage per phase";
      parameter Modelica.SIunits.Current IeOpenCircuit(start=10) 
        "Open circuit excitation current @ nominal voltage and frequency";
      parameter Modelica.SIunits.Resistance Re(start=2.5) 
        "Excitation resistance at TRef";
      parameter Modelica.SIunits.Temperature TeRef(start=293.15) 
        "Reference temperture of excitation resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20e(
        start=0) "Temperature coefficient of excitation resistance";
      parameter Real sigmae(min=0, max=0.99, start=0.025) 
        "Stray fraction of total excitation inductance";
      parameter Modelica.SIunits.Temperature TeOperational(start=293.15) 
        "Operational excitation temperature";
      parameter Machines.Losses.BrushParameters brushParameters "Brush losses";
      output Modelica.SIunits.Current idq_dr[2](each stateSelect=StateSelect.prefer)=
        damperCage.spacePhasor_r.i_ if useDamperCage 
        "Damper space phasor current / rotor fixed frame";
      output Modelica.SIunits.Voltage ve = pin_ep.v-pin_en.v "Excitation voltage";
      output Modelica.SIunits.Current ie = pin_ep.i "Excitation current";
    protected 
      final parameter Real turnsRatio = sqrt(2)*VsNominal/(2*pi*fsNominal*Lmd*IeOpenCircuit) 
        "Stator current / excitation current";
      final parameter Modelica.SIunits.Inductance Lesigma = Lmd*turnsRatio^2*3/2 * sigmae/(1-sigmae);
    public 
      Machines.BasicMachines.Components.DamperCage damperCage(
        final Lrsigmad=Lrsigmad,
        final Lrsigmaq=Lrsigmaq,
        final Rrd=Rrd,
        final Rrq=Rrq,
        final T_ref=TrRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20r, TrRef),
        final T=TrRef,
        final useHeatPort=true) if useDamperCage;
      Machines.BasicMachines.Components.ElectricalExcitation electricalExcitation(final turnsRatio=turnsRatio);
      Modelica.Electrical.Analog.Basic.Resistor re(
        final R=Re,
        final T_ref=TeRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20e, TeRef),
        final useHeatPort=true,
        final T=TeRef);
      Modelica.Electrical.Analog.Basic.Inductor lesigma(final L=Lesigma);
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep 
        "Positive excitation pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en 
        "Negative excitation pin";
      Machines.Losses.DCMachines.Brush brush(final brushParameters=brushParameters);
      Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor
                                                      heatFlowSensorDamperCage(final useFixedTemperature=
                              not useDamperCage);
    equation 
      connect(airGapR.spacePhasor_r, damperCage.spacePhasor_r);
      connect(airGapR.spacePhasor_r, electricalExcitation.spacePhasor_r);
      connect(airGapR.support, internalSupport);
      connect(airGapR.flange, inertiaRotor.flange_a);
      connect(electricalExcitation.pin_en, pin_en);
      connect(pin_ep, brush.p);
      connect(brush.n, re.p);
      connect(re.n, lesigma.p);
      connect(lesigma.n, electricalExcitation.pin_ep);

      connect(lssigma.spacePhasor_b, airGapR.spacePhasor_s);
      connect(brush.heatPort, internalThermalPort.heatPortBrush);
      connect(re.heatPort, internalThermalPort.heatPortExcitation);
      connect(damperCage.heatPort, heatFlowSensorDamperCage.port_a);
      connect(heatFlowSensorDamperCage.port_b, internalThermalPort.heatPortRotorWinding);
    end SM_ElectricalExcited;

* * * * *

![image8](Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotorI.png) [Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines](Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines).SM\_ReluctanceRotor
==============================================================================================================================================================================================================================================================================================================================================================

**Synchronous induction machine with reluctance rotor and damper cage**

Information
-----------

::

**Model of a three phase synchronous induction machine with reluctance
rotor and damper cage.**
  ~ Resistance and stray inductance of stator is modeled directly in
    stator

phases, then using space phasor transformation. Resistance and stray
inductance of rotor's squirrel cage is modeled in two axis of the
rotor-fixed ccordinate system. Both together connected via a rotor-fixed
*AirGap* model. The machine models take the following loss effects into
account:

-   heat losses in the temperature dependent stator winding resistances
-   optional, when enabled: heat losses in the temperature dependent
    damper cage resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

Whether a damper cage is present or not, can be selected with Boolean
parameter useDamperCage (default = true). **Default values for machine's
parameters (a realistic example) are:**

  ---------------------------- ------------------ ------------------------
  number of pole pairs p       2                  

  stator's moment of inertia   0.29               kg.m2

  rotor's moment of inertia    0.29               kg.m2

  nominal frequency fNominal   50                 Hz

  nominal voltage per phase    100                V RMS

  nominal current per phase    50                 A RMS

  nominal torque               46                 Nm

  nominal speed                1500               rpm

  nominal mechanical output    7.23               kW

  efficiency                   96.98              %

  power factor                 0.497              

  stator resistance            0.03               Ohm per phase at
                                                  reference temperature

  reference temperature TsRef  20                 °C

  temperature coefficient      0                  1/K
  alpha20s                                        

  rotor resistance in d-axis   0.04               Ohm at reference
                                                  temperature

  rotor resistance in q-axis   same as d-axis     

  reference temperature TrRef  20                 °C

  temperature coefficient      0                  1/K
  alpha20r                                        

  stator reactance Xsd in      3                  Ohm per phase
  d-axis                                          

  stator reactance Xsq in      1                  Ohm
  q-axis                                          

  stator stray reactance Xss   0.1                Ohm per phase

  rotor stray reactance in     0.05               Ohm per phase
  d-axis Xrds                                     

  rotor stray reactance in     same as d-axis     
  q-axis Xrqs                                     

  stator operational           20                 °C
  temperature TsOperational                       

  damper operational           20                 °C
  temperature TrOperational                       

  These values give the                           
  following inductances:                          

  stator stray inductance per  Xss/(2\*pi\*fNomin 
  phase                        al)                

  rotor stray inductance in    Xrds/(2\*pi\*fNomi 
  d-axis                       nal)               

  rotor stray inductance in    Xrqs/(2\*pi\*fNomi 
  q-axis                       nal)               

  main field inductance per    (Xsd-Xss)/(2\*pi\* 
  phase in d-axis              fNominal)          

  main field inductance per    (Xsq-Xss)/(2\*pi\* 
  phase in q-axis              fNominal)          
  ---------------------------- ------------------ ------------------------

::

Extends from
[Machines.Interfaces.PartialBasicInductionMachine](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name   Default   Description
  -------------------------------------- ------ --------- ------------------
  Integer                                p                Number of pole
                                                          pairs (Integer)

  [Frequency](Modelica_SIunits.html#Mode fsNomi           Nominal frequency
  lica.SIunits.Frequency)                nal              [Hz]

  [Inertia](Modelica_SIunits.html#Modeli Jr     Jr(start= Rotor's moment of
  ca.SIunits.Inertia)                           0.29)     inertia [kg.m2]

  Boolean                                useSup false     Enable / disable
                                         port             (=fixed stator)
                                                          support

  [Inertia](Modelica_SIunits.html#Modeli Js               Stator's moment of
  ca.SIunits.Inertia)                                     inertia [kg.m2]

  Boolean                                useThe false     Enable / disable
                                         rmalPo           (=fixed
                                         rt               temperatures)
                                                          thermal port

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapR.i Stator space
  ca.SIunits.Current)                    s[2]   \_ss      phasor current /
                                                          stator fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapR.i Stator space
  ca.SIunits.Current)                    r[2]   \_sr      phasor current /
                                                          rotor fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapR.i Rotor space phasor
  ca.SIunits.Current)                    s[2]   \_rs      current / stator
                                                          fixed frame [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapR.i Rotor space phasor
  ca.SIunits.Current)                    r[2]   \_rr      current / rotor
                                                          fixed frame [A]

  Operational temperatures                                

  [Temperature](Modelica_SIunits.html#Mo TsOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                stator resistance
                                                          [K]

  [Temperature](Modelica_SIunits.html#Mo TrOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                (optional) damper
                                                          cage [K]

  **Nominal resistances and                               
  inductances**                                           

  [Resistance](Modelica_SIunits.html#Mod Rs               Stator resistance
  elica.SIunits.Resistance)                               per phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TsRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          stator resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0s               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  stator resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mod Lszero Lssigma   Stator zero
  elica.SIunits.Inductance)                               sequence
                                                          inductance [H]

  [Inductance](Modelica_SIunits.html#Mod Lssigm 0.1/(2\*p Stator stray
  elica.SIunits.Inductance)              a.star i\*fsNomi inductance per
                                         t      nal)      phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lmd              Main field
  elica.SIunits.Inductance)                               inductance in
                                                          d-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lmq              Main field
  elica.SIunits.Inductance)                               inductance in
                                                          q-axis [H]

  DamperCage                                              

  Boolean                                useDam           Enable / disable
                                         perCag           damper cage
                                         e                

  [Inductance](Modelica_SIunits.html#Mod Lrsigm           Damper stray
  elica.SIunits.Inductance)              ad               inductance in
                                                          d-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsigm Lrsigmad  Damper stray
  elica.SIunits.Inductance)              aq               inductance in
                                                          q-axis [H]

  [Resistance](Modelica_SIunits.html#Mod Rrd              Damper resistance
  elica.SIunits.Resistance)                               in d-axis at TRef
                                                          [Ohm]

  [Resistance](Modelica_SIunits.html#Mod Rrq    Rrd       Damper resistance
  elica.SIunits.Resistance)                               in q-axis at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TrRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          damper resistances
                                                          in d- and q-axis
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0r               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  damper resistances
  nearTemperatureCoefficient20)                           in d- and q-axis
                                                          [1/K]

  **Losses**                                              

  [FrictionParameters](Modelica_Electric fricti frictionP Friction losses
  al_Machines_Losses.html#Modelica.Elect onPara arameters 
  rical.Machines.Losses.FrictionParamete meters (wRef(sta 
  rs)                                           r...      

  [CoreParameters](Modelica_Electrical_M stator           Stator core losses
  achines_Losses.html#Modelica.Electrica CorePa           
  l.Machines.Losses.CoreParameters)      ramete           
                                         rs               

  [StrayLoadParameters](Modelica_Electri strayL           Stray load losses
  cal_Machines_Losses.html#Modelica.Elec oadPar           
  trical.Machines.Losses.StrayLoadParame ameter           
  ters)                                  s                
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Inter flan Shaft
  faces.html#Modelica.Mechanics.Rotational.Interf ge   
  aces.Flange_a)                                       

  [Flange\_a](Modelica_Mechanics_Rotational_Inter supp Support at which
  faces.html#Modelica.Mechanics.Rotational.Interf ort  the reaction torque
  aces.Flange_a)                                       is acting

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive stator
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sp plug
  nterfaces.PositivePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative stator
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sn plug
  nterfaces.NegativePlug)                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SM_ReluctanceRotor 
      "Synchronous induction machine with reluctance rotor and damper cage"
      extends Machines.Interfaces.PartialBasicInductionMachine(
          Lssigma(start=0.1/(2*pi*fsNominal)),
          final idq_ss = airGapR.i_ss,
          final idq_sr = airGapR.i_sr,
          final idq_rs = airGapR.i_rs,
          final idq_rr = airGapR.i_rr,
        redeclare final Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMR
          thermalAmbient(final useDamperCage = useDamperCage, final Tr=TrOperational),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMR
          thermalPort(final useDamperCage = useDamperCage),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMR
          internalThermalPort(final useDamperCage = useDamperCage),
        redeclare final Machines.Interfaces.InductionMachines.PowerBalanceSMR
          powerBalance(final lossPowerRotorWinding = heatFlowSensorDamperCage.Q_flow,
                       final lossPowerRotorCore = 0),
        statorCore(final w=statorCoreParameters.wRef));
      Machines.BasicMachines.Components.AirGapR airGapR(
        final p=p,
        final Lmd=Lmd,
        final Lmq=Lmq,
        final m=m);
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of (optional) damper cage";
      parameter Modelica.SIunits.Inductance Lmd(start=2.9/(2*pi*fsNominal)) 
        "Main field inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lmq(start=0.9/(2*pi*fsNominal)) 
        "Main field inductance in q-axis";
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";
      parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal)) 
        "Damper stray inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad 
        "Damper stray inductance in q-axis";
      parameter Modelica.SIunits.Resistance Rrd(start=0.04) 
        "Damper resistance in d-axis at TRef";
      parameter Modelica.SIunits.Resistance Rrq=Rrd 
        "Damper resistance in q-axis at TRef";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of damper resistances in d- and q-axis";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20r(
        start=0) "Temperature coefficient of damper resistances in d- and q-axis";
      Machines.BasicMachines.Components.DamperCage damperCage(
        final Lrsigmad=Lrsigmad,
        final Lrsigmaq=Lrsigmaq,
        final Rrd=Rrd,
        final Rrq=Rrq,
        final T_ref=TrRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20r, TrRef),
        final T=TrRef,
        final useHeatPort=true) if useDamperCage;
      Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor
                                                      heatFlowSensorDamperCage(final useFixedTemperature=
                              not useDamperCage);
    equation 
      connect(airGapR.spacePhasor_r, damperCage.spacePhasor_r);
      connect(airGapR.support, internalSupport);

      connect(airGapR.flange, inertiaRotor.flange_a);
      connect(lssigma.spacePhasor_b, airGapR.spacePhasor_s);
      connect(damperCage.heatPort, heatFlowSensorDamperCage.port_a);
      connect(heatFlowSensorDamperCage.port_b, internalThermalPort.heatPortRotorWinding);
    end SM_ReluctanceRotor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:44 2010.
