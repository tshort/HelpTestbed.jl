% Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines
% 
% 

[Modelica.Magnetic.FundamentalWave.BasicMachines](Modelica_Magnetic_FundamentalWave_BasicMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines).AsynchronousInductionMachines
=====================================================================================================================================================================================

**Asynchronous inductioin machines**

Information
-----------

::

This package provides squirrel cage and slip ring induction machine
models.

### See also

[SynchronousInductionMachines](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines)

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image2](Modelica.Magnetic.FundamentalWave.BasicMachines.As Asynchronou
  ynchronousInductionMachines.AIM_SquirrelCageS.png)           s
  [AIM\_SquirrelCage](Modelica_Magnetic_FundamentalWave_BasicM induction
  achines_AsynchronousInductionMachines.html#Modelica.Magnetic machine
  .FundamentalWave.BasicMachines.AsynchronousInductionMachines with
  .AIM_SquirrelCage)                                           squirrel
                                                               cage

  ![image3](Modelica.Magnetic.FundamentalWave.BasicMachines.As Asynchronou
  ynchronousInductionMachines.AIM_SlipRingS.png)               s
  [AIM\_SlipRing](Modelica_Magnetic_FundamentalWave_BasicMachi induction
  nes_AsynchronousInductionMachines.html#Modelica.Magnetic.Fun machine
  damentalWave.BasicMachines.AsynchronousInductionMachines.AIM with slip
  _SlipRing)                                                   ring rotor
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines](Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines).AIM\_SquirrelCage
==================================================================================================================================================================================================================================================================================================================================================================================

**Asynchronous induction machine with squirrel cage**

Information
-----------

::

Resistances and stray inductances of the machine refer to the stator
phases. The symmetry of the stator and rotor is assumed. The machine
models take the following loss effects into account:

-   heat losses in the temperature dependent stator winding resistances
-   heat losses in the temperature dependent cage resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

### See also

[AIM\_SlipRing](Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRing),

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name   Default   Description
  -------------------------------------- ------ --------- -----------------
  [Inertia](Modelica_SIunits.html#Modeli Jr               Rotor inertia
  ca.SIunits.Inertia)                                     [kg.m2]

  Boolean                                useSup false     Enable / disable
                                         port             (=fixed stator)
                                                          support

  [Inertia](Modelica_SIunits.html#Modeli Js               Stator inertia
  ca.SIunits.Inertia)                                     [kg.m2]

  Boolean                                useThe false     Enable / disable
                                         rmalPo           (=fixed
                                         rt               temperatures)
                                                          thermal port

  Integer                                p                Number of pole
                                                          pairs (Integer)

  [Frequency](Modelica_SIunits.html#Mode fsNomi           Nominal frequency
  lica.SIunits.Frequency)                nal              [Hz]

  Real                                   effect 1         Effective number
                                         iveSta           of stator turns
                                         torTur           
                                         ns               

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

  [Resistance](Modelica_SIunits.html#Mod Rs.sta 0.03      Stator resistance
  elica.SIunits.Resistance)              rt               per phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TsRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          stator resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0s               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  stator resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mod Lssigm 3\*(1 -   Stator stray
  elica.SIunits.Inductance)              a.star sqrt(1 -  inductance per
                                         t      0.0667))/ phase [H]
                                                (2\*...   

  [Inductance](Modelica_SIunits.html#Mod Lszero Lssigma   Stator zero
  elica.SIunits.Inductance)                               inductance per
                                                          phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lm               Main field
  elica.SIunits.Inductance)                               inductance [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsigm           Rotor leakage
  elica.SIunits.Inductance)              a                inductance w.r.t.
                                                          stator side [H]

  [Resistance](Modelica_SIunits.html#Mod Rr               Rotor resistance
  elica.SIunits.Resistance)                               w.r.t. stator
                                                          side [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TrRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          rotor resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0r               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  rotor resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

  **Losses**                                              

  [FrictionParameters](Modelica_Electric fricti           Friction losses
  al_Machines_Losses.html#Modelica.Elect onPara           
  rical.Machines.Losses.FrictionParamete meters           
  rs)                                                     

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

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sp stator
  nterfaces.PositivePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sn stator
  nterfaces.NegativePlug)                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model AIM_SquirrelCage 
      "Asynchronous induction machine with squirrel cage"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine
        (
        is(start=zeros(m)),
        Rs(start=0.03),
        Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)),
        final L0(d=2.0*Lm/3.0/effectiveStatorTurns^2, q=2.0*Lm/3.0/effectiveStatorTurns^2),
        redeclare final Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMC
          thermalAmbient(final Tr=TrOperational),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMC
          thermalPort,
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMC
          internalThermalPort,
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMC
          powerBalance(final lossPowerRotorWinding = -rotorCage.heatPortWinding.Q_flow,
                       final lossPowerRotorCore = 0));

      parameter Modelica.SIunits.Inductance Lm(start=3*sqrt(1 - 0.0667)/(2*pi*fsNominal)) 
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)) 
        "Rotor leakage inductance w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rr(start=0.04) 
        "Rotor resistance w.r.t. stator side";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of rotor resistance";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20r(start=0) "Temperature coefficient of rotor resistance at 20 degC";
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of rotor resistance";

      Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWinding
        rotorCage(
        final Lsigma=Lrsigma,
        final m=m,
        final effectiveTurns=effectiveStatorTurns,
        final useHeatPort=true,
        final RRef=Rr,
        final TRef=TrRef,
        final TOperational=TrRef,
        final alpha20=alpha20r) 
        "Symmetric rotor cage winding including resistances and stray inductances";

    equation 
      connect(airGap.port_rn, rotorCage.port_n);
      connect(airGap.port_rp, rotorCage.port_p);
      connect(rotorCage.heatPortWinding, internalThermalPort.heatPortRotorWinding);
    end AIM_SquirrelCage;

* * * * *

![image5](Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines](Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines).AIM\_SlipRing
==========================================================================================================================================================================================================================================================================================================================================================================

**Asynchronous induction machine with slip ring rotor**

Information
-----------

::

Resistances and stray inductances of the machine always refer to either
stator or rotor phases. The symmetry of the stator and rotor is assumed.
The machine models take the following loss effects into account:

-   heat losses in the temperature dependent stator winding resistances
-   heat losses in the temperature dependent rotor winding resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

### See also

[AIM\_SquirrelCage](Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage),

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name   Default   Description
  -------------------------------------- ------ --------- ------------------
  [Inertia](Modelica_SIunits.html#Modeli Jr               Rotor inertia
  ca.SIunits.Inertia)                                     [kg.m2]

  Boolean                                useSup false     Enable / disable
                                         port             (=fixed stator)
                                                          support

  [Inertia](Modelica_SIunits.html#Modeli Js               Stator inertia
  ca.SIunits.Inertia)                                     [kg.m2]

  Boolean                                useThe false     Enable / disable
                                         rmalPo           (=fixed
                                         rt               temperatures)
                                                          thermal port

  Integer                                p                Number of pole
                                                          pairs (Integer)

  [Frequency](Modelica_SIunits.html#Mode fsNomi           Nominal frequency
  lica.SIunits.Frequency)                nal              [Hz]

  Real                                   effect 1         Effective number
                                         iveSta           of stator turns
                                         torTur           
                                         ns               

  Boolean                                useTur           Use TurnsRatio or
                                         nsRati           calculate from
                                         o                locked-rotor
                                                          voltage?

  Real                                   TurnsR           Effective number
                                         atio             of stator turns /
                                                          effective number
                                                          of rotor turns

  [Voltage](Modelica_SIunits.html#Modeli VsNomi           Nominal stator
  ca.SIunits.Voltage)                    nal              voltage per phase
                                                          [V]

  [Voltage](Modelica_SIunits.html#Modeli VrLock           Locked rotor
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

  [Resistance](Modelica_SIunits.html#Mod Rs.sta 0.03      Stator resistance
  elica.SIunits.Resistance)              rt               per phase at TRef
                                                          [Ohm]

  [Temperature](Modelica_SIunits.html#Mo TsRef            Reference
  delica.SIunits.Temperature)                             temperature of
                                                          stator resistance
                                                          [K]

  [LinearTemperatureCoefficient20](Model alpha2           Temperature
  ica_Electrical_Machines_Thermal.html#M 0s               coefficient of
  odelica.Electrical.Machines.Thermal.Li                  stator resistance
  nearTemperatureCoefficient20)                           at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mod Lssigm 3\*(1 -   Stator stray
  elica.SIunits.Inductance)              a.star sqrt(1 -  inductance per
                                         t      0.0667))/ phase [H]
                                                (2\*...   

  [Inductance](Modelica_SIunits.html#Mod Lszero Lssigma   Stator zero
  elica.SIunits.Inductance)                               inductance per
                                                          phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lm               Main field
  elica.SIunits.Inductance)                               inductance [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsigm           Rotor leakage
  elica.SIunits.Inductance)              a                inductance w.r.t.
                                                          stator side [H]

  [Inductance](Modelica_SIunits.html#Mod Lrzero Lrsigma   Rotor zero
  elica.SIunits.Inductance)                               inductance w.r.t.
                                                          stator side [H]

  [Resistance](Modelica_SIunits.html#Mod Rr               Rotor resistance
  elica.SIunits.Resistance)                               w.r.t. stator side
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

  [FrictionParameters](Modelica_Electric fricti           Friction losses
  al_Machines_Losses.html#Modelica.Elect onPara           
  rical.Machines.Losses.FrictionParamete meters           
  rs)                                                     

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

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sp stator
  nterfaces.PositivePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sn stator
  nterfaces.NegativePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_rn rotor
  nterfaces.NegativePlug)                              

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_rp rotor
  nterfaces.PositivePlug)                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model AIM_SlipRing 
      "Asynchronous induction machine with slip ring rotor"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine
        (
        is(start=zeros(m)),
        Rs(start=0.03),
        Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)),
        final L0(d=2.0*Lm/3.0/effectiveStatorTurns^2, q=2.0*Lm/3.0/effectiveStatorTurns^2),
        redeclare final Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMS
          thermalAmbient(final Tr=TrOperational),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMS
          thermalPort,
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMS
          internalThermalPort,
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMS
          powerBalance(final lossPowerRotorWinding = -sum(rotor.heatPortWinding.Q_flow),
                       final lossPowerRotorCore = -rotor.heatPortCore.Q_flow,
                       final lossPowerBrush = 0,
                       final powerRotor = Modelica.Electrical.Machines.SpacePhasors.Functions.activePower(vr, ir)));
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_rn(final m=m) 
        "Negative plug of rotor";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_rp(final m=m) 
        "Positive plug of rotor";

      parameter Modelica.SIunits.Inductance Lm(start=3*sqrt(1 - 0.0667)/(2*pi*fsNominal)) 
        "Main field inductance";
      parameter Modelica.SIunits.Inductance Lrsigma(start = 3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)) 
        "Rotor leakage inductance w.r.t. stator side";
      parameter Modelica.SIunits.Inductance Lrzero=Lrsigma 
        "Rotor zero inductance w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rr(start = 0.04) 
        "Rotor resistance w.r.t. stator side";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of rotor resistance";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20r(start=0) "Temperature coefficient of rotor resistance at 20 degC";
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of rotor resistance";

      parameter Boolean useTurnsRatio(start=true) 
        "Use TurnsRatio or calculate from locked-rotor voltage?";
      parameter Real TurnsRatio(final min=Modelica.Constants.small, start=1) 
        "Effective number of stator turns / effective number of rotor turns";
      parameter Modelica.SIunits.Voltage VsNominal(start=100) 
        "Nominal stator voltage per phase";
      parameter Modelica.SIunits.Voltage VrLockedRotor(
        start=100*(2*pi*fsNominal*Lm)/sqrt(Rs^2+(2*pi*fsNominal*(Lm+Lssigma))^2)) 
        "Locked rotor voltage per phase";

      parameter Modelica.Electrical.Machines.Losses.CoreParameters
        rotorCoreParameters(
        final m=3,
        PRef=0,
        VRef(start=1)=1,
        wRef(start=1)=1) "Rotor core losses";

      output Modelica.SIunits.Voltage vr[m] = plug_rp.pin.v - plug_rn.pin.v 
        "Rotor instantaneous voltages";
      output Modelica.SIunits.Current ir[m] = plug_rp.pin.i 
        "Rotor instantaneous currents";

    protected 
      final parameter Real internalTurnsRatio=if useTurnsRatio then TurnsRatio else 
        VsNominal/VrLockedRotor*(2*pi*fsNominal*Lm)/sqrt(Rs^2+(2*pi*fsNominal*(Lm+Lssigma))^2);
    public 
      Components.SymmetricMultiPhaseWinding rotor(
        final m=m,
        final Lsigma=Lrsigma,
        final effectiveTurns=effectiveStatorTurns/internalTurnsRatio,
        final useHeatPort=true,
        final RRef=Rr,
        final TRef=TrRef,
        final TOperational=TrOperational,
        final Lzero=Lrsigma,
        final alpha20=alpha20r,
        final GcRef=rotorCoreParameters.GcRef) 
        "Symmetric rotor winding including resistances, zero and stray inductances and zero core losses";

      /* previously used: state selection, now commented
      FundamentalWave.Interfaces.StateSelector stateSelectorR(
        final m=m,
        final xi=ir,
        final gamma=0) "State selection of rotor currents"
        annotation (Placement(transformation(extent={{-10,-10},{10,10}},
            rotation=90,
            origin={-90,0})));
      */
    equation 

      connect(rotor.plug_n, plug_rn);
      connect(airGap.port_rn, rotor.port_n);
      connect(airGap.port_rp, rotor.port_p);
      connect(rotor.heatPortCore, internalThermalPort.heatPortRotorCore);
      connect(rotor.heatPortWinding, internalThermalPort.heatPortRotorWinding);
      connect(plug_rp, rotor.plug_p);
    end AIM_SlipRing;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:59 2010.
