% Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines
% 
% 

[Modelica.Magnetic.FundamentalWave.BasicMachines](Modelica_Magnetic_FundamentalWave_BasicMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines).SynchronousInductionMachines
====================================================================================================================================================================================

**Synchronous machines**

Information
-----------

::

This package contains various synchronous induction machine models.

### See also

[AsynchronousInductionMachines](Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines)

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image3](Modelica.Magnetic.FundamentalWave.BasicMachines. Permanent
  SynchronousInductionMachines.SM_PermanentMagnetS.png)      magnet
  [SM\_PermanentMagnet](Modelica_Magnetic_FundamentalWave_Ba synchronous
  sicMachines_SynchronousInductionMachines.html#Modelica.Mag machine with
  netic.FundamentalWave.BasicMachines.SynchronousInductionMa optional
  chines.SM_PermanentMagnet)                                 damper cage

  ![image4](Modelica.Magnetic.FundamentalWave.BasicMachines. Electrical
  SynchronousInductionMachines.SM_ElectricalExcitedS.png)    excited
  [SM\_ElectricalExcited](Modelica_Magnetic_FundamentalWave_ synchronous
  BasicMachines_SynchronousInductionMachines.html#Modelica.M machine with
  agnetic.FundamentalWave.BasicMachines.SynchronousInduction optional
  Machines.SM_ElectricalExcited)                             damper cage

  ![image5](Modelica.Magnetic.FundamentalWave.BasicMachines. Reluctance
  SynchronousInductionMachines.SM_ReluctanceRotorS.png)      machine with
  [SM\_ReluctanceRotor](Modelica_Magnetic_FundamentalWave_Ba optional
  sicMachines_SynchronousInductionMachines.html#Modelica.Mag damper cage
  netic.FundamentalWave.BasicMachines.SynchronousInductionMa 
  chines.SM_ReluctanceRotor)                                 
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnetI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines).SM\_PermanentMagnet
==================================================================================================================================================================================================================================================================================================================================================================================

**Permanent magnet synchronous machine with optional damper cage**

Information
-----------

::

Resistances and stray inductances of the machine refer to the stator
phases. The symmetry of the stator is assumed. For rotor asymmetries can
be taken into account by different resistances and stray inductances in
the d- and q-axis. The machine models take the following loss effects
into account:

-   heat losses in the temperature dependent stator winding resistances
-   optional, when enabled: heat losses in the temperature dependent
    damper cage resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

### See also

[SM\_ElectricalExcited](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcited),
[SM\_ReluctanceRotor](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotor),

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                    Name   Default Description
  --------------------------------------- ------ ------- -------------------
  [Inertia](Modelica_SIunits.html#Modelic Jr             Rotor inertia
  a.SIunits.Inertia)                                     [kg.m2]

  Boolean                                 useSup false   Enable / disable
                                          port           (=fixed stator)
                                                         support

  [Inertia](Modelica_SIunits.html#Modelic Js             Stator inertia
  a.SIunits.Inertia)                                     [kg.m2]

  Boolean                                 useThe false   Enable / disable
                                          rmalPo         (=fixed
                                          rt             temperatures)
                                                         thermal port

  Integer                                 p              Number of pole
                                                         pairs (Integer)

  [Frequency](Modelica_SIunits.html#Model fsNomi         Nominal frequency
  ica.SIunits.Frequency)                  nal            [Hz]

  Real                                    effect 1       Effective number of
                                          iveSta         stator turns
                                          torTur         
                                          ns             

  [Voltage](Modelica_SIunits.html#Modelic VsOpen         Open circuit RMS
  a.SIunits.Voltage)                      Circui         voltage per phase @
                                          t              fsNominal [V]

  Operational temperatures                               

  [Temperature](Modelica_SIunits.html#Mod TsOper         Operational
  elica.SIunits.Temperature)              ationa         temperature of
                                          l              stator resistance
                                                         [K]

  [Temperature](Modelica_SIunits.html#Mod TrOper         Operational
  elica.SIunits.Temperature)              ationa         temperature of
                                          l              (optional) damper
                                                         cage [K]

  **Nominal resistances and inductances**                

  [Resistance](Modelica_SIunits.html#Mode Rs.sta 0.03    Stator resistance
  lica.SIunits.Resistance)                rt             per phase at TRef
                                                         [Ohm]

  [Temperature](Modelica_SIunits.html#Mod TsRef          Reference
  elica.SIunits.Temperature)                             temperature of
                                                         stator resistance
                                                         [K]

  [LinearTemperatureCoefficient20](Modeli alpha2         Temperature
  ca_Electrical_Machines_Thermal.html#Mod 0s             coefficient of
  elica.Electrical.Machines.Thermal.Linea                stator resistance
  rTemperatureCoefficient20)                             at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mode Lssigm 0.1/(2\ Stator stray
  lica.SIunits.Inductance)                a.star *pi\*fs inductance per
                                          t      Nominal phase [H]
                                                 )       

  [Inductance](Modelica_SIunits.html#Mode Lszero Lssigma Stator zero
  lica.SIunits.Inductance)                               inductance per
                                                         phase [H]

  [Inductance](Modelica_SIunits.html#Mode Lmd            Main field
  lica.SIunits.Inductance)                               inductance, d-axis
                                                         [H]

  [Inductance](Modelica_SIunits.html#Mode Lmq            Main field
  lica.SIunits.Inductance)                               inductance, q-axis
                                                         [H]

  Damper cage                                            

  Boolean                                 useDam         Enable/disable
                                          perCag         damper cage
                                          e              

  [Inductance](Modelica_SIunits.html#Mode Lrsigm         Rotor leakage
  lica.SIunits.Inductance)                ad             inductance, d-axis,
                                                         w.r.t. stator side
                                                         [H]

  [Inductance](Modelica_SIunits.html#Mode Lrsigm Lrsigma Rotor leakage
  lica.SIunits.Inductance)                aq     d       inductance, q-axis,
                                                         w.r.t. stator side
                                                         [H]

  [Resistance](Modelica_SIunits.html#Mode Rrd            Rotor resistance,
  lica.SIunits.Resistance)                               d-axis, w.r.t.
                                                         stator side [Ohm]

  [Resistance](Modelica_SIunits.html#Mode Rrq    Rrd     Rotor resistance ,
  lica.SIunits.Resistance)                               q-axis, w.r.t.
                                                         stator side [Ohm]

  [Temperature](Modelica_SIunits.html#Mod TrRef          Reference
  elica.SIunits.Temperature)                             temperature of
                                                         damper resistances
                                                         in d- and q-axis
                                                         [K]

  [LinearTemperatureCoefficient20](Modeli alpha2         Temperature
  ca_Electrical_Machines_Thermal.html#Mod 0r             coefficient of
  elica.Electrical.Machines.Thermal.Linea                damper resistances
  rTemperatureCoefficient20)                             in d- and q-axis
                                                         [1/K]

  **Losses**                                             

  [FrictionParameters](Modelica_Electrica fricti         Friction losses
  l_Machines_Losses.html#Modelica.Electri onPara         
  cal.Machines.Losses.FrictionParameters) meters         

  [CoreParameters](Modelica_Electrical_Ma stator         Stator core losses
  chines_Losses.html#Modelica.Electrical. CorePa         
  Machines.Losses.CoreParameters)         ramete         
                                          rs             

  [StrayLoadParameters](Modelica_Electric strayL         Stray load losses
  al_Machines_Losses.html#Modelica.Electr oadPar         
  ical.Machines.Losses.StrayLoadParameter ameter         
  s)                                      s              
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
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SM_PermanentMagnet 
      "Permanent magnet synchronous machine with optional damper cage"

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine
        (
        is(start=zeros(m)),
        Rs(start=0.03),
        Lssigma(start=0.1/(2*pi*fsNominal)),
        final L0(d=2.0*Lmd/3.0/effectiveStatorTurns^2, q=2.0*Lmq/3.0/effectiveStatorTurns^2),
        redeclare final Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPM
          thermalAmbient(final useDamperCage = useDamperCage, final Tr=TrOperational),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPM
          thermalPort(final useDamperCage = useDamperCage),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPM
          internalThermalPort(final useDamperCage = useDamperCage),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMPM
          powerBalance(final lossPowerRotorWinding = heatFlowSensorDamperCage.Q_flow,
                       final lossPowerRotorCore = 0,
                       final lossPowerPermanentMagnet = 0));

      parameter Modelica.SIunits.Inductance Lmd(start=0.3/(2*pi*fsNominal)) 
        "Main field inductance, d-axis";
      parameter Modelica.SIunits.Inductance Lmq(start=0.3/(2*pi*fsNominal)) 
        "Main field inductance, q-axis";

      // Rotor cage parameters
      parameter Boolean useDamperCage(start=true) "Enable/disable damper cage";
      parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal)) 
        "Rotor leakage inductance, d-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad 
        "Rotor leakage inductance, q-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rrd(start=0.04) 
        "Rotor resistance, d-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rrq=Rrd 
        "Rotor resistance , q-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of damper resistances in d- and q-axis";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20r(start=0) 
        "Temperature coefficient of damper resistances in d- and q-axis";

      parameter Modelica.SIunits.Voltage VsOpenCircuit(start=112.3) 
        "Open circuit RMS voltage per phase @ fsNominal";

      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of (optional) damper cage";

    protected 
      final parameter Modelica.SIunits.MagneticPotentialDifference V_mPM=
        (2/pi)*sqrt(2)*(m/2)*VsOpenCircuit/effectiveStatorTurns/(Lmd/effectiveStatorTurns^2*2*pi*fsNominal) 
        "Equivalent excitation magnetic potential difference";

    public 
      Modelica.Magnetic.FundamentalWave.Components.Ground groundR 
        "Ground of rotor magnetic circuit";
      Modelica.Magnetic.FundamentalWave.Components.Short short if not 
        useDamperCage "Magnetic connection in case the damper cage is not present";
      Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding
        rotorCage(
        final RRef(d=Rrd, q=Rrq),
        final Lsigma(d=Lrsigmad, q=Lrsigmaq),
        final effectiveTurns=sqrt(3.0/2.0)*effectiveStatorTurns,
        final useHeatPort=true,
        final TRef=TrRef,
        final alpha20=alpha20r,
        final TOperational=TrOperational) if 
        useDamperCage 
        "Symmetric rotor cage winding including resistances and stray inductances";
      Modelica.Magnetic.FundamentalWave.Sources.ConstantMagneticPotentialDifference
        permanentMagnet(final V_m=Complex(V_mPM, 0)) 
        "Magnetic potential difference of permanent magnet";
      Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor
        heatFlowSensorDamperCage(final useFixedTemperature=not useDamperCage);
    equation 

      connect(permanentMagnet.port_p, airGap.port_rn);

      connect(permanentMagnet.port_n, short.port_n);
      connect(permanentMagnet.port_n, rotorCage.port_n);
      connect(short.port_p, airGap.port_rp);
      connect(rotorCage.port_p, airGap.port_rp);
      connect(rotorCage.heatPortWinding, heatFlowSensorDamperCage.port_a);
      connect(heatFlowSensorDamperCage.port_b, internalThermalPort.heatPortRotorWinding);
    end SM_PermanentMagnet;

* * * * *

![image7](Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcitedI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines).SM\_ElectricalExcited
======================================================================================================================================================================================================================================================================================================================================================================================

**Electrical excited synchronous machine with optional damper cage**

Information
-----------

::

The symmetry of the stator is assumed. For rotor asymmetries can be
taken into account by different resistances and stray inductances in the
d- and q-axis. The machine models take the following loss effects into
account:

-   heat losses in the temperature dependent stator winding resistances
-   heat losses in the temperature dependent excitation winding
    resistance
-   optional, when enabled: heat losses in the temperature dependent
    damper cage resistances
-   brush losses in the excitation circuit
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

### See also

[SM\_PermanentMagnet](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnet),
[SM\_ReluctanceRotor](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotor),

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                    Name   Default Description
  --------------------------------------- ------ ------- -------------------
  [Inertia](Modelica_SIunits.html#Modelic Jr             Rotor inertia
  a.SIunits.Inertia)                                     [kg.m2]

  Boolean                                 useSup false   Enable / disable
                                          port           (=fixed stator)
                                                         support

  [Inertia](Modelica_SIunits.html#Modelic Js             Stator inertia
  a.SIunits.Inertia)                                     [kg.m2]

  Boolean                                 useThe false   Enable / disable
                                          rmalPo         (=fixed
                                          rt             temperatures)
                                                         thermal port

  Integer                                 p              Number of pole
                                                         pairs (Integer)

  [Frequency](Modelica_SIunits.html#Model fsNomi         Nominal frequency
  ica.SIunits.Frequency)                  nal            [Hz]

  Real                                    effect 1       Effective number of
                                          iveSta         stator turns
                                          torTur         
                                          ns             

  Operational temperatures                               

  [Temperature](Modelica_SIunits.html#Mod TsOper         Operational
  elica.SIunits.Temperature)              ationa         temperature of
                                          l              stator resistance
                                                         [K]

  [Temperature](Modelica_SIunits.html#Mod TrOper         Operational
  elica.SIunits.Temperature)              ationa         temperature of
                                          l              (optional) damper
                                                         cage [K]

  [Temperature](Modelica_SIunits.html#Mod TeOper         Operational
  elica.SIunits.Temperature)              ationa         excitation
                                          l              temperature [K]

  **Nominal resistances and inductances**                

  [Resistance](Modelica_SIunits.html#Mode Rs.sta 0.03    Stator resistance
  lica.SIunits.Resistance)                rt             per phase at TRef
                                                         [Ohm]

  [Temperature](Modelica_SIunits.html#Mod TsRef          Reference
  elica.SIunits.Temperature)                             temperature of
                                                         stator resistance
                                                         [K]

  [LinearTemperatureCoefficient20](Modeli alpha2         Temperature
  ca_Electrical_Machines_Thermal.html#Mod 0s             coefficient of
  elica.Electrical.Machines.Thermal.Linea                stator resistance
  rTemperatureCoefficient20)                             at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mode Lssigm 0.1/(2\ Stator stray
  lica.SIunits.Inductance)                a.star *pi\*fs inductance per
                                          t      Nominal phase [H]
                                                 )       

  [Inductance](Modelica_SIunits.html#Mode Lszero Lssigma Stator zero
  lica.SIunits.Inductance)                               inductance per
                                                         phase [H]

  [Inductance](Modelica_SIunits.html#Mode Lmd            Main field
  lica.SIunits.Inductance)                               inductance, d-axis
                                                         [H]

  [Inductance](Modelica_SIunits.html#Mode Lmq            Main field
  lica.SIunits.Inductance)                               inductance, q-axis
                                                         [H]

  DamperCage                                             

  Boolean                                 useDam         Enable/disable
                                          perCag         damper cage
                                          e              

  [Inductance](Modelica_SIunits.html#Mode Lrsigm         Rotor leakage
  lica.SIunits.Inductance)                ad             inductance, d-axis,
                                                         w.r.t. stator side
                                                         [H]

  [Inductance](Modelica_SIunits.html#Mode Lrsigm Lrsigma Rotor leakage
  lica.SIunits.Inductance)                aq     d       inductance, q-axis,
                                                         w.r.t. stator side
                                                         [H]

  [Resistance](Modelica_SIunits.html#Mode Rrd            Rotor resistance,
  lica.SIunits.Resistance)                               d-axis, w.r.t.
                                                         stator side [Ohm]

  [Resistance](Modelica_SIunits.html#Mode Rrq    Rrd     Rotor resistance ,
  lica.SIunits.Resistance)                               q-axis, w.r.t.
                                                         stator side [Ohm]

  [Temperature](Modelica_SIunits.html#Mod TrRef          Reference
  elica.SIunits.Temperature)                             temperature of
                                                         damper resistances
                                                         in d- and q-axis
                                                         [K]

  [LinearTemperatureCoefficient20](Modeli alpha2         Temperature
  ca_Electrical_Machines_Thermal.html#Mod 0r             coefficient of
  elica.Electrical.Machines.Thermal.Linea                damper resistances
  rTemperatureCoefficient20)                             in d- and q-axis
                                                         [1/K]

  **Losses**                                             

  [FrictionParameters](Modelica_Electrica fricti         Friction losses
  l_Machines_Losses.html#Modelica.Electri onPara         
  cal.Machines.Losses.FrictionParameters) meters         

  [CoreParameters](Modelica_Electrical_Ma stator         Stator core losses
  chines_Losses.html#Modelica.Electrical. CorePa         
  Machines.Losses.CoreParameters)         ramete         
                                          rs             

  [StrayLoadParameters](Modelica_Electric strayL         Stray load losses
  al_Machines_Losses.html#Modelica.Electr oadPar         
  ical.Machines.Losses.StrayLoadParameter ameter         
  s)                                      s              

  [BrushParameters](Modelica_Electrical_M brushP         Brush losses
  achines_Losses.html#Modelica.Electrical aramet         
  .Machines.Losses.BrushParameters)       ers            

  **Excitation**                                         

  [Voltage](Modelica_SIunits.html#Modelic VsNomi         Nominal stator
  a.SIunits.Voltage)                      nal            voltage [V]

  [Current](Modelica_SIunits.html#Modelic IeOpen         Open circuit
  a.SIunits.Current)                      Circui         excitation current
                                          t              @ nominal voltage
                                                         and frequency [A]

  [Resistance](Modelica_SIunits.html#Mode Re             Warm excitation
  lica.SIunits.Resistance)                               resistance [Ohm]

  [Temperature](Modelica_SIunits.html#Mod TeRef          Reference
  elica.SIunits.Temperature)                             temperture of
                                                         excitation
                                                         resistance [K]

  [LinearTemperatureCoefficient20](Modeli alpha2         Temperature
  ca_Electrical_Machines_Thermal.html#Mod 0e             coefficient of
  elica.Electrical.Machines.Thermal.Linea                excitation
  rTemperatureCoefficient20)                             resistance [1/K]

  Real                                    sigmae         Stray fraction of
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

  [PositivePlug](Modelica_Electrical_MultiPhase_I plug Positive plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sp stator
  nterfaces.PositivePlug)                              

  [NegativePlug](Modelica_Electrical_MultiPhase_I plug Negative plug of
  nterfaces.html#Modelica.Electrical.MultiPhase.I \_sn stator
  nterfaces.NegativePlug)                              

  [PositivePin](Modelica_Electrical_Analog_Interf pin\ Positive pin of
  aces.html#Modelica.Electrical.Analog.Interfaces _ep  excitation
  .PositivePin)                                        

  [NegativePin](Modelica_Electrical_Analog_Interf pin\ Negative pin of
  aces.html#Modelica.Electrical.Analog.Interfaces _en  excitation
  .NegativePin)                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SM_ElectricalExcited 
      "Electrical excited synchronous machine with optional damper cage"
      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine
        (
        is(start=zeros(m)),
        Rs(start=0.03),
        Lssigma(start=0.1/(2*pi*fsNominal)),
        final L0(d=2.0*Lmd/3.0/effectiveStatorTurns^2, q=2.0*Lmq/3.0/effectiveStatorTurns^2),
        redeclare final Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEE
          thermalAmbient(final useDamperCage = useDamperCage, final Te=TeOperational, final Tr=TrOperational),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEE
          thermalPort(final useDamperCage = useDamperCage),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEE
          internalThermalPort(final useDamperCage = useDamperCage),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMEE
          powerBalance(final lossPowerRotorWinding = heatFlowSensorDamperCage.Q_flow,
                       final powerExcitation = ve*ie,
                       final lossPowerExcitation = -excitation.heatPortWinding.Q_flow,
                       final lossPowerBrush = -brush.heatPort.Q_flow,
                       final lossPowerRotorCore = 0));

      parameter Modelica.SIunits.Inductance Lmd(start=1.5/(2*pi*fsNominal)) 
        "Main field inductance, d-axis";
      parameter Modelica.SIunits.Inductance Lmq(start=1.5/(2*pi*fsNominal)) 
        "Main field inductance, q-axis";

      // Rotor cage parameters
      parameter Boolean useDamperCage(start=true) "Enable/disable damper cage";
      parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal)) 
        "Rotor leakage inductance, d-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad 
        "Rotor leakage inductance, q-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rrd(start=0.04) 
        "Rotor resistance, d-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rrq=Rrd 
        "Rotor resistance , q-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of damper resistances in d- and q-axis";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20r(start=0) 
        "Temperature coefficient of damper resistances in d- and q-axis";

      // Operational temperature
      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of (optional) damper cage";
      parameter Modelica.SIunits.Temperature TeOperational(start=293.15) 
        "Operational excitation temperature";

      // Excitaiton parameters
      parameter Modelica.SIunits.Voltage VsNominal(start=100) 
        "Nominal stator voltage";
      parameter Modelica.SIunits.Current IeOpenCircuit(start=10) 
        "Open circuit excitation current @ nominal voltage and frequency";
      parameter Modelica.SIunits.Resistance Re(start=2.5) 
        "Warm excitation resistance";
      parameter Modelica.SIunits.Temperature TeRef(start=293.15) 
        "Reference temperture of excitation resistance";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20e(start=0) "Temperature coefficient of excitation resistance";
      parameter Real sigmae(min=0, max=1, start=0.025) 
        "Stray fraction of total excitation inductance";

      parameter Modelica.Electrical.Machines.Losses.BrushParameters
        brushParameters "Brush losses";

      output Modelica.SIunits.Voltage ve = pin_ep.v-pin_en.v "Excitation voltage";
      output Modelica.SIunits.Current ie = pin_ep.i "Excitation current";
    protected 
      final parameter Real turnsRatio = sqrt(2)*VsNominal/(2*pi*fsNominal*Lmd*IeOpenCircuit) 
        "Stator current / excitation current";
      final parameter Modelica.SIunits.Inductance Lesigma = Lmd*turnsRatio^2*3/2 * sigmae/(1-sigmae) 
        "Leakage inductance of the excitation winding";

    public 
      FundamentalWave.Components.Short short if not useDamperCage 
        "Magnetic connection in case the damper cage is not present";
      Components.SaliencyCageWinding rotorCage(
        final Lsigma(d=Lrsigmad, q=Lrsigmaq),
        final effectiveTurns=sqrt(3.0/2.0)*effectiveStatorTurns,
        final useHeatPort=true,
        final TRef=TrRef,
        final TOperational=TrOperational,
        final RRef(d=Rrd, q=Rrq),
        final alpha20=alpha20r) if useDamperCage 
        "Symmetric rotor cage winding including resistances and stray inductances";
      Components.SinglePhaseWinding excitation(
        final orientation=0,
        final RRef=Re,
        final TRef=TeRef,
        final Lsigma=Lesigma,
        final effectiveTurns=effectiveStatorTurns*turnsRatio*m/2,
        final useHeatPort=true,
        final TOperational=TeOperational,
        final alpha20=alpha20e) 
        "Excitation winding including resistance and stray inductance";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep 
        "Positive pin of excitation";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en 
        "Negative pin of excitation";
      Electrical.Machines.Losses.DCMachines.Brush brush(
        final brushParameters=brushParameters);
      Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor
        heatFlowSensorDamperCage(final useFixedTemperature=not useDamperCage);
    equation 

      connect(short.port_n, rotorCage.port_n);
      connect(excitation.port_n, short.port_n);
      connect(excitation.port_n, rotorCage.port_n);
      connect(pin_en, excitation.pin_n);
      connect(airGap.port_rn, excitation.port_p);
      connect(airGap.port_rp, short.port_p);
      connect(airGap.port_rp, rotorCage.port_p);

      connect(pin_ep, brush.p);
      connect(brush.n, excitation.pin_p);
      connect(brush.heatPort, internalThermalPort.heatPortBrush);
      connect(excitation.heatPortWinding, internalThermalPort.heatPortExcitation);
      connect(rotorCage.heatPortWinding, heatFlowSensorDamperCage.port_a);
      connect(heatFlowSensorDamperCage.port_b, internalThermalPort.heatPortRotorWinding);
    end SM_ElectricalExcited;

* * * * *

![image8](Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotorI.png) [Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines).SM\_ReluctanceRotor
==================================================================================================================================================================================================================================================================================================================================================================================

**Reluctance machine with optional damper cage**

Information
-----------

::

The symmetry of the stator is assumed. For rotor asymmetries can be
taken into account by different resistances and stray inductances in the
d- and q-axis. The machine models take the following loss effects into
account:

-   heat losses in the temperature dependent stator winding resistances
-   optional, when enabled: heat losses in the temperature dependent
    damper cage resistances
-   friction losses
-   core losses (only eddy current losses, no hysteresis losses)
-   stray load losses

### See also

[SM\_ElectricalExcited](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcited),
[SM\_PermanentMagnet](Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnet),

::

Extends from
[Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine)
(Partial model for induction machine).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                    Name   Default Description
  --------------------------------------- ------ ------- -------------------
  [Inertia](Modelica_SIunits.html#Modelic Jr             Rotor inertia
  a.SIunits.Inertia)                                     [kg.m2]

  Boolean                                 useSup false   Enable / disable
                                          port           (=fixed stator)
                                                         support

  [Inertia](Modelica_SIunits.html#Modelic Js             Stator inertia
  a.SIunits.Inertia)                                     [kg.m2]

  Boolean                                 useThe false   Enable / disable
                                          rmalPo         (=fixed
                                          rt             temperatures)
                                                         thermal port

  Integer                                 p              Number of pole
                                                         pairs (Integer)

  [Frequency](Modelica_SIunits.html#Model fsNomi         Nominal frequency
  ica.SIunits.Frequency)                  nal            [Hz]

  Real                                    effect 1       Effective number of
                                          iveSta         stator turns
                                          torTur         
                                          ns             

  Operational temperatures                               

  [Temperature](Modelica_SIunits.html#Mod TsOper         Operational
  elica.SIunits.Temperature)              ationa         temperature of
                                          l              stator resistance
                                                         [K]

  [Temperature](Modelica_SIunits.html#Mod TrOper         Operational
  elica.SIunits.Temperature)              ationa         temperature of
                                          l              (optional) damper
                                                         cage [K]

  **Nominal resistances and inductances**                

  [Resistance](Modelica_SIunits.html#Mode Rs.sta 0.03    Stator resistance
  lica.SIunits.Resistance)                rt             per phase at TRef
                                                         [Ohm]

  [Temperature](Modelica_SIunits.html#Mod TsRef          Reference
  elica.SIunits.Temperature)                             temperature of
                                                         stator resistance
                                                         [K]

  [LinearTemperatureCoefficient20](Modeli alpha2         Temperature
  ca_Electrical_Machines_Thermal.html#Mod 0s             coefficient of
  elica.Electrical.Machines.Thermal.Linea                stator resistance
  rTemperatureCoefficient20)                             at 20 degC [1/K]

  [Inductance](Modelica_SIunits.html#Mode Lssigm 0.1/(2\ Stator stray
  lica.SIunits.Inductance)                a.star *pi\*fs inductance per
                                          t      Nominal phase [H]
                                                 )       

  [Inductance](Modelica_SIunits.html#Mode Lszero Lssigma Stator zero
  lica.SIunits.Inductance)                               inductance per
                                                         phase [H]

  [Inductance](Modelica_SIunits.html#Mode Lmd            Main field
  lica.SIunits.Inductance)                               inductance, d-axis
                                                         [H]

  [Inductance](Modelica_SIunits.html#Mode Lmq            Main field
  lica.SIunits.Inductance)                               inductance, q-axis
                                                         [H]

  DamperCage                                             

  Boolean                                 useDam         Enable/disable
                                          perCag         damper cage
                                          e              

  [Inductance](Modelica_SIunits.html#Mode Lrsigm         Rotor leakage
  lica.SIunits.Inductance)                ad             inductance, d-axis,
                                                         w.r.t. stator side
                                                         [H]

  [Inductance](Modelica_SIunits.html#Mode Lrsigm Lrsigma Rotor leakage
  lica.SIunits.Inductance)                aq     d       inductance, q-axis,
                                                         w.r.t. stator side
                                                         [H]

  [Resistance](Modelica_SIunits.html#Mode Rrd            Rotor resistance,
  lica.SIunits.Resistance)                               d-axis, w.r.t.
                                                         stator side [Ohm]

  [Resistance](Modelica_SIunits.html#Mode Rrq    Rrd     Rotor resistance ,
  lica.SIunits.Resistance)                               q-axis, w.r.t.
                                                         stator side [Ohm]

  [Temperature](Modelica_SIunits.html#Mod TrRef          Reference
  elica.SIunits.Temperature)                             temperature of
                                                         damper resistances
                                                         in d- and q-axis
                                                         [K]

  [LinearTemperatureCoefficient20](Modeli alpha2         Temperature
  ca_Electrical_Machines_Thermal.html#Mod 0r             coefficient of
  elica.Electrical.Machines.Thermal.Linea                damper resistances
  rTemperatureCoefficient20)                             in d- and q-axis
                                                         [1/K]

  **Losses**                                             

  [FrictionParameters](Modelica_Electrica fricti         Friction losses
  l_Machines_Losses.html#Modelica.Electri onPara         
  cal.Machines.Losses.FrictionParameters) meters         

  [CoreParameters](Modelica_Electrical_Ma stator         Stator core losses
  chines_Losses.html#Modelica.Electrical. CorePa         
  Machines.Losses.CoreParameters)         ramete         
                                          rs             

  [StrayLoadParameters](Modelica_Electric strayL         Stray load losses
  al_Machines_Losses.html#Modelica.Electr oadPar         
  ical.Machines.Losses.StrayLoadParameter ameter         
  s)                                      s              
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
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SM_ReluctanceRotor 
      "Reluctance machine with optional damper cage"

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine
        (
        is(start=zeros(m)),
        Rs(start=0.03),
        Lssigma(start=0.1/(2*pi*fsNominal)),
        final L0(d=2.0*Lmd/3.0/effectiveStatorTurns^2, q=2.0*Lmq/3.0/effectiveStatorTurns^2),
        redeclare final Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMR
          thermalAmbient(final useDamperCage = useDamperCage, final Tr=TrOperational),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMR
          thermalPort(final useDamperCage = useDamperCage),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMR
          internalThermalPort(final useDamperCage = useDamperCage),
        redeclare final Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMR
          powerBalance(final lossPowerRotorWinding = heatFlowSensorDamperCage.Q_flow,
                       final lossPowerRotorCore = 0));

      parameter Modelica.SIunits.Temperature TrOperational(start=293.15) 
        "Operational temperature of (optional) damper cage";

      parameter Modelica.SIunits.Inductance Lmd(start=2.9/(2*pi*fsNominal)) 
        "Main field inductance, d-axis";
      parameter Modelica.SIunits.Inductance Lmq(start=0.9/(2*pi*fsNominal)) 
        "Main field inductance, q-axis";

      // Rotor cage parameters
      parameter Boolean useDamperCage(start=true) "Enable/disable damper cage";
      parameter Modelica.SIunits.Inductance Lrsigmad(start=0.05/(2*pi*fsNominal)) 
        "Rotor leakage inductance, d-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Inductance Lrsigmaq=Lrsigmad 
        "Rotor leakage inductance, q-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rrd(start=0.04) 
        "Rotor resistance, d-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Resistance Rrq=Rrd 
        "Rotor resistance , q-axis, w.r.t. stator side";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of damper resistances in d- and q-axis";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20r(start=0) 
        "Temperature coefficient of damper resistances in d- and q-axis";
      Modelica.Magnetic.FundamentalWave.Components.Ground groundR 
        "Ground of rotor magnetic circuit";
      Modelica.Magnetic.FundamentalWave.Components.Short short if not useDamperCage 
        "Magnetic connection in case the damper cage is not present";
      Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding
        rotorCage(
        final RRef(d=Rrd, q=Rrq),
        final Lsigma(d=Lrsigmad, q=Lrsigmaq),
        final effectiveTurns=sqrt(3.0/2.0)*effectiveStatorTurns,
        final useHeatPort=true,
        final TRef=TrRef,
        final alpha20=alpha20r,
        final TOperational=TrOperational) if useDamperCage 
        "Symmetric rotor cage winding including resistances and stray inductances";
      Modelica.Thermal.HeatTransfer.Sensors.ConditionalFixedHeatFlowSensor
        heatFlowSensorDamperCage(final useFixedTemperature=not useDamperCage);
    equation 

      connect(airGap.port_rn, short.port_n);
      connect(airGap.port_rn, rotorCage.port_n);
      connect(airGap.port_rp, short.port_p);
      connect(airGap.port_rp, rotorCage.port_p);
      connect(rotorCage.heatPortWinding, heatFlowSensorDamperCage.port_a);
      connect(heatFlowSensorDamperCage.port_b, internalThermalPort.heatPortRotorWinding);
    end SM_ReluctanceRotor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:01 2010.
