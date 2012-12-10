% Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines
% 
% 

[Modelica.Electrical.Machines.BasicMachines](Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines).AsynchronousInductionMachines
======================================================================================================================================================================

**Models of asynchronous induction machines**

Information
-----------

::

This package contains models of asynchronous induction machines, based
on space phasor theory:

-   AIM\_SquirrelCage: asynchronous induction machine with squirrel cage
-   AIM\_SlipRing: asynchronous induction machine with wound rotor

These models use package SpacePhasors.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image2](Modelica.Electrical.Machines.BasicMachines.Asynch Asynchronous
  ronousInductionMachines.AIM_SquirrelCageS.png)              induction
  [AIM\_SquirrelCage](Modelica_Electrical_Machines_BasicMachi machine with
  nes_AsynchronousInductionMachines.html#Modelica.Electrical. squirrel
  Machines.BasicMachines.AsynchronousInductionMachines.AIM_Sq cage rotor
  uirrelCage)                                                 

  ![image3](Modelica.Electrical.Machines.BasicMachines.Asynch Asynchronous
  ronousInductionMachines.AIM_SlipRingS.png)                  induction
  [AIM\_SlipRing](Modelica_Electrical_Machines_BasicMachines_ machine with
  AsynchronousInductionMachines.html#Modelica.Electrical.Mach slipring
  ines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRi rotor
  ng)                                                         
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageI.png) [Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines](Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines).AIM\_SquirrelCage
==============================================================================================================================================================================================================================================================================================================================================================

**Asynchronous induction machine with squirrel cage rotor**

Information
-----------

::

**Model of a three phase asynchronous induction machine with squirrel
cage.**
  ~ Resistance and stray inductance of stator is modeled directly in
    stator

phases, then using space phasor transformation. Resistance and stray
inductance of rotor's squirrel cage is modeled in two axis of the
rotor-fixed ccordinate system. Both together connected via a
stator-fixed *AirGap* model. The machine models take the following loss
effects into account:

-   heat losses in the temperature dependent stator winding resistances
-   heat losses in the temperature dependent cage resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

**Default values for machine's parameters (a realistic example) are:**

  ------------------------- ------------------------ ----------------------
  number of pole pairs p    2                        

  stator's moment of        0.29                     kg.m2
  inertia                                            

  rotor's moment of inertia 0.29                     kg.m2

  nominal frequency         50                       Hz
  fNominal                                           

  nominal voltage per phase 100                      V RMS

  nominal current per phase 100                      A RMS

  nominal torque            161.4                    Nm

  nominal speed             1440.45                  rpm

  nominal mechanical output 24.346                   kW

  efficiency                92.7                     %

  power factor              0.875                    

  stator resistance         0.03                     Ohm per phase at
                                                     reference temperature

  reference temperature     20                       °C
  TsRef                                              

  temperature coefficient   0                        1/K
  alpha20s                                           

  rotor resistance          0.04                     Ohm at reference
                                                     temperature

  reference temperature     20                       °C
  TrRef                                              

  temperature coefficient   0                        1/K
  alpha20r                                           

  stator reactance Xs       3                        Ohm per phase

  rotor reactance Xr        3                        Ohm

  total stray coefficient   0.0667                   
  sigma                                              

  stator operational        20                       °C
  temperature TsOperational                          

  rotor operational         20                       °C
  temperature TrOperational                          

  These values give the                              
  following inductances:                             

  stator stray inductance   Xs \* (1 -               
  per phase                 sqrt(1-sigma))/(2\*pi\*f 
                            Nominal)                 

  rotor stray inductance    Xr \* (1 -               
                            sqrt(1-sigma))/(2\*pi\*f 
                            Nominal)                 

  main field inductance per sqrt(Xs\*Xr \*           
  phase                     (1-sigma))/(2\*pi\*fNomi 
                            nal)                     
  ------------------------- ------------------------ ----------------------

::

Extends from
[Machines.Interfaces.PartialBasicInductionMachine](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name   Default   Description
  -------------------------------------- ------ --------- -----------------
  Integer                                p                Number of pole
                                                          pairs (Integer)

  [Frequency](Modelica_SIunits.html#Mode fsNomi           Nominal frequency
  lica.SIunits.Frequency)                nal              [Hz]

  [Inertia](Modelica_SIunits.html#Modeli Jr     Jr(start= Rotor's moment of
  ca.SIunits.Inertia)                           0.29)     inertia [kg.m2]

  Boolean                                useSup false     Enable / disable
                                         port             (=fixed stator)
                                                          support

  [Inertia](Modelica_SIunits.html#Modeli Js               Stator's moment
  ca.SIunits.Inertia)                                     of inertia
                                                          [kg.m2]

  Boolean                                useThe false     Enable / disable
                                         rmalPo           (=fixed
                                         rt               temperatures)
                                                          thermal port

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapS.i Stator space
  ca.SIunits.Current)                    s[2]   \_ss      phasor current /
                                                          stator fixed
                                                          frame [A]

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapS.i Stator space
  ca.SIunits.Current)                    r[2]   \_sr      phasor current /
                                                          rotor fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapS.i Rotor space
  ca.SIunits.Current)                    s[2]   \_rs      phasor current /
                                                          stator fixed
                                                          frame [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapS.i Rotor space
  ca.SIunits.Current)                    r[2]   \_rr      phasor current /
                                                          rotor fixed frame
                                                          [A]

  Operational temperatures                                

  [Temperature](Modelica_SIunits.html#Mo TsOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                stator resistance
                                                          [K]

  [Temperature](Modelica_SIunits.html#Mo TrOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                rotor resistance
                                                          [K]

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

  [Inductance](Modelica_SIunits.html#Mod Lssigm           Stator stray
  elica.SIunits.Inductance)              a                inductance per
                                                          phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lm               Main field
  elica.SIunits.Inductance)                               inductance [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsigm           Rotor stray
  elica.SIunits.Inductance)              a                inductance
                                                          (equivalent three
                                                          phase winding)
                                                          [H]

  [Resistance](Modelica_SIunits.html#Mod Rr               Rotor resistance
  elica.SIunits.Resistance)                               (equivalent three
                                                          phase winding) at
                                                          TRef [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TrRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          rotor resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0r               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  rotor resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

  **Losses**                                              

  [FrictionParameters](Modelica_Electric fricti frictionP Friction losses
  al_Machines_Losses.html#Modelica.Elect onPara arameters 
  rical.Machines.Losses.FrictionParamete meters (wRef(sta 
  rs)                                           r...      

  [CoreParameters](Modelica_Electrical_M stator           Stator core
  achines_Losses.html#Modelica.Electrica CorePa           losses
  l.Machines.Losses.CoreParameters)      ramete           
                                         rs               

  [StrayLoadParameters](Modelica_Electri strayL           Stray load losses
  cal_Machines_Losses.html#Modelica.Elec oadPar           
  trical.Machines.Losses.StrayLoadParame ameter           
  ters)                                  s                
  -------------------------------------------------------------------------

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

    model AIM_SquirrelCage 
      "Asynchronous induction machine with squirrel cage rotor"
      extends Machines.Interfaces.PartialBasicInductionMachine(
        final idq_ss = airGapS.i_ss,
        final idq_sr = airGapS.i_sr,
        final idq_rs = airGapS.i_rs,
        final idq_rr = airGapS.i_rr,
        redeclare final Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMC
          thermalAmbient(final Tr=TrOperational),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortAIMC
          thermalPort,
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortAIMC
          internalThermalPort,
        redeclare final Machines.Interfaces.InductionMachines.PowerBalanceAIMC
          powerBalance(final lossPowerRotorWinding = -squirrelCageR.heatPort.Q_flow,
                       final lossPowerRotorCore = 0),
        statorCore(final w=statorCoreParameters.wRef));
      Machines.BasicMachines.Components.AirGapS airGapS(
        final p=p,
        final Lm=Lm,
        final m=m);
      parameter Modelica.SIunits.Inductance Lm(start=3*sqrt(1 - 0.0667)/(2*pi*fsNominal)) 
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)) 
        "Rotor stray inductance (equivalent three phase winding)";
      parameter Modelica.SIunits.Resistance Rr(start=0.04) 
        "Rotor resistance (equivalent three phase winding) at TRef";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of rotor resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20r(
        start=0) "Temperature coefficient of rotor resistance at 20 degC";
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of rotor resistance";
      Machines.BasicMachines.Components.SquirrelCage squirrelCageR(
        final Lrsigma=Lrsigma,
        final Rr=Rr,
        final useHeatPort=true,
        final T_ref=TrRef,
        final T=TrRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20r, TrRef));
    equation 
      connect(airGapS.spacePhasor_r, squirrelCageR.spacePhasor_r);
      connect(airGapS.support, internalSupport);
      connect(airGapS.flange, inertiaRotor.flange_a);
      connect(lssigma.spacePhasor_b, airGapS.spacePhasor_s);
      connect(squirrelCageR.heatPort, internalThermalPort.heatPortRotorWinding);
    end AIM_SquirrelCage;

* * * * *

![image5](Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingI.png) [Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines](Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines).AIM\_SlipRing
======================================================================================================================================================================================================================================================================================================================================================

**Asynchronous induction machine with slipring rotor**

Information
-----------

::

**Model of a three phase asynchronous induction machine with slipring
rotor.**
  ~ Resistance and stray inductance of stator and rotor are modeled

directly in stator respectively rotor phases, then using space phasor
transformation and a stator-fixed *AirGap* model. The machine models
take the following loss effects into account:

-   heat losses in the temperature dependent stator winding resistances
-   heat losses in the temperature dependent rotor winding resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

**Default values for machine's parameters (a realistic example) are:**

  ------------------------ ----------------------- -----------------------
  number of pole pairs p   2                       

  stator's moment of       0.29                    kg.m2
  inertia                                          

  rotor's moment of        0.29                    kg.m2
  inertia                                          

  nominal frequency        50                      Hz
  fNominal                                         

  nominal voltage per      100                     V RMS
  phase                                            

  nominal current per      100                     A RMS
  phase                                            

  nominal torque           161.4                   Nm

  nominal speed            1440.45                 rpm

  nominal mechanical       24.346                  kW
  output                                           

  efficiency               92.7                    %

  power factor             0.875                   

  stator resistance        0.03                    Ohm per phase at
                                                   reference temperature

  reference temperature    20                      °C
  TsRef                                            

  temperature coefficient  0                       1/K
  alpha20s                                         

  rotor resistance         0.04                    Ohm per phase at
                                                   reference temperature

  reference temperature    20                      °C
  TrRef                                            

  temperature coefficient  0                       1/K
  alpha20r                                         

  stator reactance Xs      3                       Ohm per phase

  rotor reactance Xr       3                       Ohm per phase

  total stray coefficient  0.0667                  
  sigma                                            

  turnsRatio               1                       effective ratio of
                                                   stator and rotor
                                                   current

  stator operational       20                      °C
  temperature                                      
  TsOperational                                    

  rotor operational        20                      °C
  temperature                                      
  TrOperational                                    

  These values give the                            
  following inductances:                           

  stator stray inductance  Xs \* (1 -              
  per phase                sqrt(1-sigma))/(2\*pi\* 
                           fNominal)               

  rotor stray inductance   Xr \* (1 -              
                           sqrt(1-sigma))/(2\*pi\* 
                           fNominal)               

  main field inductance    sqrt(Xs\*Xr \*          
  per phase                (1-sigma))/(2\*pi\*f)   
  ------------------------ ----------------------- -----------------------

Parameter turnsRatio could be obtained from the following relationship
at standstill with open rotor circuit at nominal voltage and nominal
frequency, using the locked-rotor voltage VR, no-load stator current I0
and powerfactor PF0: turnsRatio \* V~R~ = V~s~ - (R~s~ + j X~s,sigma~)
I~0~

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

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapS.i Stator space
  ca.SIunits.Current)                    s[2]   \_ss      phasor current /
                                                          stator fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_s airGapS.i Stator space
  ca.SIunits.Current)                    r[2]   \_sr      phasor current /
                                                          rotor fixed frame
                                                          [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapS.i Rotor space phasor
  ca.SIunits.Current)                    s[2]   \_rs      current / stator
                                                          fixed frame [A]

  [Current](Modelica_SIunits.html#Modeli idq\_r airGapS.i Rotor space phasor
  ca.SIunits.Current)                    r[2]   \_rr      current / rotor
                                                          fixed frame [A]

  Boolean                                useTur           Use turnsRatio or
                                         nsRati           calculate from
                                         o                locked-rotor
                                                          voltage?

  Real                                   turnsR           Effective number
                                         atio             of stator turns /
                                                          effective number
                                                          of rotor turns

  [Voltage](Modelica_SIunits.html#Modeli VsNomi           Nominal stator
  ca.SIunits.Voltage)                    nal              voltage per phase
                                                          [V]

  [Voltage](Modelica_SIunits.html#Modeli VrLock           Locked-rotor
  ca.SIunits.Voltage)                    edRoto           voltage per phase
                                         r                [V]

  Operational temperatures                                

  [Temperature](Modelica_SIunits.html#Mo TsOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                stator resistance
                                                          [K]

  [Temperature](Modelica_SIunits.html#Mo TrOper           Operational
  delica.SIunits.Temperature)            ationa           temperature of
                                         l                rotor resistance
                                                          [K]

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

  [Inductance](Modelica_SIunits.html#Mod Lssigm           Stator stray
  elica.SIunits.Inductance)              a                inductance per
                                                          phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lm               Main field
  elica.SIunits.Inductance)                               inductance [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsigm           Rotor stray
  elica.SIunits.Inductance)              a                inductance per
                                                          phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lrzero Lrsigma   Rotor zero
  elica.SIunits.Inductance)                               sequence
                                                          inductance [H]

  [Resistance](Modelica_SIunits.html#Mod Rr               Rotor resistance
  elica.SIunits.Resistance)                               per phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TrRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          rotor resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0r               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  rotor resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

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

  [CoreParameters](Modelica_Electrical_M rotorC           Rotor core losses
  achines_Losses.html#Modelica.Electrica orePar           
  l.Machines.Losses.CoreParameters)      ameter           
                                         s                
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

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive rotor plug
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_rp 
  nterfaces.PositivePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative rotor plug
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_rn 
  nterfaces.NegativePlug)                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model AIM_SlipRing 
      "Asynchronous induction machine with slipring rotor"
      extends Machines.Interfaces.PartialBasicInductionMachine(
        final idq_ss = airGapS.i_ss,
        final idq_sr = airGapS.i_sr,
        final idq_rs = airGapS.i_rs,
        final idq_rr = airGapS.i_rr,
        redeclare final Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMS
          thermalAmbient(final Tr=TrOperational),
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortAIMS
          thermalPort,
        redeclare final Machines.Interfaces.InductionMachines.ThermalPortAIMS
          internalThermalPort,
        redeclare final Machines.Interfaces.InductionMachines.PowerBalanceAIMS
          powerBalance(final lossPowerRotorWinding = -sum(rr.heatPort.Q_flow),
                       final lossPowerRotorCore = -rotorCore.heatPort.Q_flow,
                       final lossPowerBrush = 0,
                       final powerRotor = Machines.SpacePhasors.Functions.activePower(vr, ir)),
        statorCore(final w=statorCoreParameters.wRef));
      Machines.BasicMachines.Components.AirGapS airGapS(
        final p=p,
        final Lm=Lm,
        final m=m);
      parameter Modelica.SIunits.Inductance Lm(start=3*sqrt(1 - 0.0667)/(2*pi*fsNominal)) 
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)) 
        "Rotor stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lrzero=Lrsigma 
        "Rotor zero sequence inductance";
      parameter Modelica.SIunits.Resistance Rr(start=0.04) 
        "Rotor resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of rotor resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20r(
        start=0) "Temperature coefficient of rotor resistance at 20 degC";
      parameter Boolean useTurnsRatio(start=true) 
        "Use turnsRatio or calculate from locked-rotor voltage?";
      parameter Real turnsRatio(final min=Modelica.Constants.small, start=1) 
        "Effective number of stator turns / effective number of rotor turns";
      parameter Modelica.SIunits.Voltage VsNominal(start=100) 
        "Nominal stator voltage per phase";
      parameter Modelica.SIunits.Voltage VrLockedRotor(start=100*(2*pi*fsNominal*Lm)/sqrt(Rs^2+(2*pi*fsNominal*(Lm+Lssigma))^2)) 
        "Locked-rotor voltage per phase";
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of rotor resistance";
      parameter Machines.Losses.CoreParameters rotorCoreParameters(
        final m=3,
        PRef=0,
        VRef(start=1)=1,
        wRef(start=1)=1) "Rotor core losses";
      output Modelica.SIunits.Current i_0_r(stateSelect=StateSelect.prefer) = spacePhasorR.zero.i 
        "Rotor zero-sequence current";
      output Modelica.SIunits.Voltage vr[m] = plug_rp.pin.v - plug_rn.pin.v 
        "Rotor instantaneous voltages";
      output Modelica.SIunits.Current ir[m] = plug_rp.pin.i 
        "Rotor instantaneous currents";
    protected 
      final parameter Real internalTurnsRatio=if useTurnsRatio then turnsRatio else 
        VsNominal/VrLockedRotor*(2*pi*fsNominal*Lm)/sqrt(Rs^2+(2*pi*fsNominal*(Lm+Lssigma))^2);
    public 
      Machines.SpacePhasors.Components.SpacePhasor spacePhasorR(final turnsRatio=internalTurnsRatio);
      Modelica.Electrical.MultiPhase.Basic.Resistor rr(
        final m=m,
        final R=fill(Rr, m),
        final T_ref=fill(TrRef,m),
        final alpha=fill(Machines.Thermal.convertAlpha(alpha20r, TrRef), m),
        final useHeatPort=true,
        final T=fill(TrRef,m));
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_rp(final m=m) 
        "Positive rotor plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_rn(final m=m) 
        "Negative rotor plug";
      Machines.BasicMachines.Components.Inductor lrsigma(final L=fill(Lrsigma, 2));
      Modelica.Electrical.Analog.Basic.Inductor lrzero(final L=Lrzero);
      Machines.Losses.InductionMachines.Core rotorCore(
        final coreParameters=rotorCoreParameters,
        final w=rotorCoreParameters.wRef);
    equation 

      connect(airGapS.support, internalSupport);

      connect(airGapS.flange, inertiaRotor.flange_a);
      connect(plug_rn, plug_rn);
      connect(lssigma.spacePhasor_b, airGapS.spacePhasor_s);
      connect(lrsigma.spacePhasor_b, airGapS.spacePhasor_r);
      connect(rr.plug_n, spacePhasorR.plug_p);
      connect(spacePhasorR.plug_n, plug_rn);
      connect(spacePhasorR.zero,lrzero. p);
      connect(spacePhasorR.ground,lrzero. n);
      connect(spacePhasorR.spacePhasor, lrsigma.spacePhasor_a);
      connect(rotorCore.spacePhasor, lrsigma.spacePhasor_a);
      connect(rotorCore.heatPort, internalThermalPort.heatPortRotorCore);
      connect(rr.heatPort, internalThermalPort.heatPortRotorWinding);
      connect(plug_rp, rr.plug_p);
    end AIM_SlipRing;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:41 2010.
