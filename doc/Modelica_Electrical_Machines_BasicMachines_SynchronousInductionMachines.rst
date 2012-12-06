=======================================================================
Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines
=======================================================================

`Modelica.Electrical.Machines.BasicMachines <Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines>`_.SynchronousInductionMachines
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Models of synchronous induction machines**

Information
~~~~~~~~~~~

::

This package contains models of synchronous induction machines, based on
space phasor theory:

-  SM\_PermanentMagnet: synchronous induction machine with permanent
   magnet excitation, with damper cage
-  SM\_ElectricalExcited: synchronous induction machine with electrical
   excitation and damper cage
-  SM\_ReluctanceRotor: induction machine with reluctance rotor and
   damper cage
    i.e., a squirrel cage rotor with magnetic poles due to different
   airgap width

These models use package SpacePhasors.
**Please keep in mind:**

-  We keep the same reference system as for motors, i.e.:
    Positive RotorDisplacementAngle means acting as motor,
    with positive electric power consumption and positive mechanical
   power output.
-  ElectricalAngle = p \* MechanicalAngle
-  real axis = d-axis
    imaginary= q-axis
-  Voltage induced by the magnet wheel (d-axis) is located in the
   q-axis.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                                   | Description                                                           |
+========================================================================================================================================================================================================================================================================================================+=======================================================================+
| |image3| `SM\_PermanentMagnet <Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnet>`_                                                                                              | Permanent magnet synchronous induction machine                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image4| `SM\_ElectricalExcited <Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcited>`_                                                                                          | Electrical excited synchronous induction machine with damper cage     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image5| `SM\_ReluctanceRotor <Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotor>`_                                                                                              | Synchronous induction machine with reluctance rotor and damper cage   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

--------------

|image6| `Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines <Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines>`_.SM\_PermanentMagnet
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Permanent magnet synchronous induction machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnetD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_PermanentMagnet

   Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_PermanentMagnet

Information
~~~~~~~~~~~

::

**Model of a three phase permanent magnet synchronous induction
machine.**
 Resistance and stray inductance of stator is modeled directly in stator
phases, then using space phasor transformation and a rotor-fixed
*AirGap* model. Resistance and stray inductance of rotor's squirrel cage
is modeled in two axis of the rotor-fixed ccordinate system. Permanent
magnet excitation is modelled by a constant equivalent excitation
current feeding the d-axis. The machine models take the following loss
effects into account:

-  heat losses in the temperature dependent stator winding resistances
-  optional, when enabled: heat losses in the temperature dependent
   damper cage resistances
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

Whether a damper cage is present or not, can be selected with Boolean
parameter useDamperCage (default = true).
**Default values for machine's parameters (a realistic example) are:**

+------------------------------------------------+--------------------------------+------------------------------------------+
| number of pole pairs p                         | 2                              |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| stator's moment of inertia                     | 0.29                           | kg.m2                                    |
+------------------------------------------------+--------------------------------+------------------------------------------+
| rotor's moment of inertia                      | 0.29                           | kg.m2                                    |
+------------------------------------------------+--------------------------------+------------------------------------------+
| nominal frequency fNominal                     | 50                             | Hz                                       |
+------------------------------------------------+--------------------------------+------------------------------------------+
| nominal voltage per phase                      | 100                            | V RMS                                    |
+------------------------------------------------+--------------------------------+------------------------------------------+
| no-load voltage per phase                      | 112.3                          | V RMS @ nominal speed                    |
+------------------------------------------------+--------------------------------+------------------------------------------+
| nominal current per phase                      | 100                            | A RMS                                    |
+------------------------------------------------+--------------------------------+------------------------------------------+
| nominal torque                                 | 181.4                          | Nm                                       |
+------------------------------------------------+--------------------------------+------------------------------------------+
| nominal speed                                  | 1500                           | rpm                                      |
+------------------------------------------------+--------------------------------+------------------------------------------+
| nominal mechanical output                      | 28.5                           | kW                                       |
+------------------------------------------------+--------------------------------+------------------------------------------+
| nominal rotor angle                            | 20.75                          | degree                                   |
+------------------------------------------------+--------------------------------+------------------------------------------+
| efficiency                                     | 95.0                           | %                                        |
+------------------------------------------------+--------------------------------+------------------------------------------+
| power factor                                   | 0.98                           |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| stator resistance                              | 0.03                           | Ohm per phase at reference temperature   |
+------------------------------------------------+--------------------------------+------------------------------------------+
| reference temperature TsRef                    | 20                             | °C                                       |
+------------------------------------------------+--------------------------------+------------------------------------------+
| temperature coefficient alpha20s               | 0                              | 1/K                                      |
+------------------------------------------------+--------------------------------+------------------------------------------+
| stator reactance Xd                            | 0.4                            | Ohm per phase in d-axis                  |
+------------------------------------------------+--------------------------------+------------------------------------------+
| stator reactance Xq                            | 0.4                            | Ohm per phase in q-axis                  |
+------------------------------------------------+--------------------------------+------------------------------------------+
| stator stray reactance Xss                     | 0.1                            | Ohm per phase                            |
+------------------------------------------------+--------------------------------+------------------------------------------+
| damper resistance in d-axis                    | 0.04                           | Ohm at reference temperature             |
+------------------------------------------------+--------------------------------+------------------------------------------+
| damper resistance in q-axis                    | same as d-axis                 |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| reference temperature TrRef                    | 20                             | °C                                       |
+------------------------------------------------+--------------------------------+------------------------------------------+
| temperature coefficient alpha20r               | 0                              | 1/K                                      |
+------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray reactance in d-axis XDds          | 0.05                           | Ohm                                      |
+------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray reactance in q-axis XDqs          | same as d-axis                 |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| stator operational temperature TsOperational   | 20                             | °C                                       |
+------------------------------------------------+--------------------------------+------------------------------------------+
| damper operational temperature TrOperational   | 20                             | °C                                       |
+------------------------------------------------+--------------------------------+------------------------------------------+
| These values give the following inductances:   |                                |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| main field inductance in d-axis                | (Xd - Xss)/(2\*pi\*fNominal)   |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| main field inductance in q-axis                | (Xq - Xss)/(2\*pi\*fNominal)   |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| stator stray inductance per phase              | Xss/(2\*pi\*fNominal)          |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray inductance in d-axis              | XDds/(2\*pi\*fNominal)         |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray inductance in q-axis              | XDqs/(2\*pi\*fNominal)         |                                          |
+------------------------------------------------+--------------------------------+------------------------------------------+

::

Extends from
`Machines.Interfaces.PartialBasicInductionMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine>`_
(Partial model for induction machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Type                                                                                                                                                | Name                   | Default                           | Description                                                            |
+=====================================================================================================================================================+========================+===================================+========================================================================+
| Integer                                                                                                                                             | p                      |                                   | Number of pole pairs (Integer)                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                     | fsNominal              |                                   | Nominal frequency [Hz]                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                     | Jr(start=0.29)                    | Rotor's moment of inertia [kg.m2]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport             | false                             | Enable / disable (=fixed stator) support                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                     |                                   | Stator's moment of inertia [kg.m2]                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort         | false                             | Enable / disable (=fixed temperatures) thermal port                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_ss[2]             | airGapR.i\_ss                     | Stator space phasor current / stator fixed frame [A]                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_sr[2]             | airGapR.i\_sr                     | Stator space phasor current / rotor fixed frame [A]                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rs[2]             | airGapR.i\_rs                     | Rotor space phasor current / stator fixed frame [A]                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rr[2]             | airGapR.i\_rr                     | Rotor space phasor current / rotor fixed frame [A]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VsOpenCircuit          |                                   | Open circuit RMS voltage per phase @ fsNominal [V]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsOperational          |                                   | Operational temperature of stator resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrOperational          |                                   | Operational temperature of (optional) damper cage [K]                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rs                     |                                   | Stator resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsRef                  |                                   | Reference temperature of stator resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20s               |                                   | Temperature coefficient of stator resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lszero                 | Lssigma                           | Stator zero sequence inductance [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lssigma.start          | 0.1/(2\*pi\*fsNominal)            | Stator stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lmd                    |                                   | Main field inductance in d-axis [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lmq                    |                                   | Main field inductance in q-axis [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| DamperCage                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useDamperCage          |                                   | Enable / disable damper cage                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigmad               |                                   | Damper stray inductance in d-axis [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigmaq               | Lrsigmad                          | Damper stray inductance in q-axis [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rrd                    |                                   | Damper resistance in d-axis at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rrq                    | Rrd                               | Damper resistance in q-axis at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrRef                  |                                   | Reference temperature of damper resistances in d- and q-axis [K]       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20r               |                                   | Temperature coefficient of damper resistances in d- and q-axis [1/K]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters     | frictionParameters(wRef(star...   | Friction losses                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | statorCoreParameters   |                                   | Stator core losses                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters    |                                   | Stray load losses                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| Type                                                                                                                      | Name       | Description                                      |
+===========================================================================================================================+============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | flange     | Shaft                                            |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | support    | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_sp   | Positive stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_sn   | Negative stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image7| `Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines <Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines>`_.SM\_ElectricalExcited
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Electrical excited synchronous induction machine with damper cage**

.. figure:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcitedD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_ElectricalExcited

   Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_ElectricalExcited

Information
~~~~~~~~~~~

::

**Model of a three phase electrical excited synchronous induction
machine with damper cage.**
 Resistance and stray inductance of stator is modeled directly in stator
phases, then using space phasor transformation and a rotor-fixed
*AirGap* model. Resistance and stray inductance of rotor's squirrel cage
is modeled in two axis of the rotor-fixed ccordinate system. Electrical
excitation is modelled by converting excitation current and voltage to
d-axis space phasors. The machine models take the following loss effects
into account:

-  heat losses in the temperature dependent stator winding resistances
-  heat losses in the temperature dependent excitation winding
   resistance
-  optional, when enabled: heat losses in the temperature dependent
   damper cage resistances
-  brush losses in the excitation circuit
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

Whether a damper cage is present or not, can be selected with Boolean
parameter useDamperCage (default = true).
**Default values for machine's parameters (a realistic example) are:**

+----------------------------------------------------+--------------------------------+------------------------------------------+
| number of pole pairs p                             | 2                              |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| stator's moment of inertia                         | 0.29                           | kg.m2                                    |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| rotor's moment of inertia                          | 0.29                           | kg.m2                                    |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal frequency fNominal                         | 50                             | Hz                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal voltage per phase                          | 100                            | V RMS                                    |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| no-load excitation current                         | 10                             | A DC                                     |
|  @ nominal voltage and frequency                   |                                |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| warm excitation resistance                         | 2.5                            | Ohm                                      |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal current per phase                          | 100                            | A RMS                                    |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal apparent power                             | -30000                         | VA                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| power factor                                       | -1.0                           | ind./cap.                                |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal excitation current                         | 19                             | A                                        |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| efficiency w/o excitation                          | 97.1                           | %                                        |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal torque                                     | -196.7                         | Nm                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal speed                                      | 1500                           | rpm                                      |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| nominal rotor angle                                | -57.23                         | degree                                   |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| stator resistance                                  | 0.03                           | Ohm per phase at reference temperature   |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| reference temperature TsRef                        | 20                             | °C                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| temperature coefficient alpha20s                   | 0                              | 1/K                                      |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| stator reactance Xd                                | 1.6                            | Ohm per phase in d-axis                  |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| giving Kc                                          | 0.625                          |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| stator reactance Xq                                | 1.6                            | Ohm per phase in q-axis                  |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| stator stray reactance Xss                         | 0.1                            | Ohm per phase                            |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| damper resistance in d-axis                        | 0.04                           | Ohm at reference temperature             |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| damper resistance in q-axis                        | same as d-axis                 |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| reference temperature TrRef                        | 20                             | °C                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| temperature coefficient alpha20r                   | 0                              | 1/K                                      |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray reactance in d-axis XDds              | 0.05                           | Ohm                                      |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray reactance in q-axis XDqs              | same as d-axis                 |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| excitation resistance                              | 2.5                            | Ohm at reference temperature             |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| reference temperature TeRef                        | 20                             | °C                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| temperature coefficient alpha20e                   | 0                              | 1/K                                      |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| excitation stray inductance                        | 2.5                            | % of total excitation inductance         |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| stator operational temperature TsOperational       | 20                             | °C                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| damper operational temperature TrOperational       | 20                             | °C                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| excitation operational temperature TeOperational   | 20                             | °C                                       |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| These values give the following inductances:       |                                |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| main field inductance in d-axis                    | (Xd - Xss)/(2\*pi\*fNominal)   |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| main field inductance in q-axis                    | (Xq - Xss)/(2\*pi\*fNominal)   |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| stator stray inductance per phase                  | Xss/(2\*pi\*fNominal)          |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray inductance in d-axis                  | XDds/(2\*pi\*fNominal)         |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+
| damper stray inductance in q-axis                  | XDqs/(2\*pi\*fNominal)         |                                          |
+----------------------------------------------------+--------------------------------+------------------------------------------+

::

Extends from
`Machines.Interfaces.PartialBasicInductionMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine>`_
(Partial model for induction machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Type                                                                                                                                                | Name                   | Default                           | Description                                                            |
+=====================================================================================================================================================+========================+===================================+========================================================================+
| Integer                                                                                                                                             | p                      |                                   | Number of pole pairs (Integer)                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                     | fsNominal              |                                   | Nominal frequency [Hz]                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                     | Jr(start=0.29)                    | Rotor's moment of inertia [kg.m2]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport             | false                             | Enable / disable (=fixed stator) support                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                     |                                   | Stator's moment of inertia [kg.m2]                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort         | false                             | Enable / disable (=fixed temperatures) thermal port                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_ss[2]             | airGapR.i\_ss                     | Stator space phasor current / stator fixed frame [A]                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_sr[2]             | airGapR.i\_sr                     | Stator space phasor current / rotor fixed frame [A]                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rs[2]             | airGapR.i\_rs                     | Rotor space phasor current / stator fixed frame [A]                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rr[2]             | airGapR.i\_rr                     | Rotor space phasor current / rotor fixed frame [A]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsOperational          |                                   | Operational temperature of stator resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrOperational          |                                   | Operational temperature of (optional) damper cage [K]                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TeOperational          |                                   | Operational excitation temperature [K]                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rs                     |                                   | Stator resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsRef                  |                                   | Reference temperature of stator resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20s               |                                   | Temperature coefficient of stator resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lszero                 | Lssigma                           | Stator zero sequence inductance [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lssigma.start          | 0.1/(2\*pi\*fsNominal)            | Stator stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lmd                    |                                   | Main field inductance in d-axis [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lmq                    |                                   | Main field inductance in q-axis [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| DamperCage                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useDamperCage          |                                   | Enable / disable damper cage                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigmad               |                                   | Damper stray inductance in d-axis [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigmaq               | Lrsigmad                          | Damper stray inductance in q-axis [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rrd                    |                                   | Damper resistance in d-axis at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rrq                    | Rrd                               | Damper resistance in q-axis at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrRef                  |                                   | Reference temperature of damper resistances in d- and q-axis [K]       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20r               |                                   | Temperature coefficient of damper resistances in d- and q-axis [1/K]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters     | frictionParameters(wRef(star...   | Friction losses                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | statorCoreParameters   |                                   | Stator core losses                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters    |                                   | Stray load losses                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_                                   | brushParameters        |                                   | Brush losses                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| **Excitation**                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VsNominal              |                                   | Nominal stator RMS voltage per phase [V]                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | IeOpenCircuit          |                                   | Open circuit excitation current @ nominal voltage and frequency [A]    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Re                     |                                   | Excitation resistance at TRef [Ohm]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TeRef                  |                                   | Reference temperture of excitation resistance [K]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20e               |                                   | Temperature coefficient of excitation resistance [1/K]                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Real                                                                                                                                                | sigmae                 |                                   | Stray fraction of total excitation inductance                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| Type                                                                                                                      | Name       | Description                                      |
+===========================================================================================================================+============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | flange     | Shaft                                            |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | support    | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_sp   | Positive stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_sn   | Negative stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_             | pin\_ep    | Positive excitation pin                          |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_             | pin\_en    | Negative excitation pin                          |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image8| `Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines <Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines>`_.SM\_ReluctanceRotor
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Synchronous induction machine with reluctance rotor and damper cage**

.. figure:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_ReluctanceRotor

   Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_ReluctanceRotor

Information
~~~~~~~~~~~

::

**Model of a three phase synchronous induction machine with reluctance
rotor and damper cage.**
 Resistance and stray inductance of stator is modeled directly in stator
phases, then using space phasor transformation. Resistance and stray
inductance of rotor's squirrel cage is modeled in two axis of the
rotor-fixed ccordinate system. Both together connected via a rotor-fixed
*AirGap* model. The machine models take the following loss effects into
account:

-  heat losses in the temperature dependent stator winding resistances
-  optional, when enabled: heat losses in the temperature dependent
   damper cage resistances
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

Whether a damper cage is present or not, can be selected with Boolean
parameter useDamperCage (default = true).
**Default values for machine's parameters (a realistic example) are:**

+------------------------------------------------+-------------------------------+------------------------------------------+
| number of pole pairs p                         | 2                             |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| stator's moment of inertia                     | 0.29                          | kg.m2                                    |
+------------------------------------------------+-------------------------------+------------------------------------------+
| rotor's moment of inertia                      | 0.29                          | kg.m2                                    |
+------------------------------------------------+-------------------------------+------------------------------------------+
| nominal frequency fNominal                     | 50                            | Hz                                       |
+------------------------------------------------+-------------------------------+------------------------------------------+
| nominal voltage per phase                      | 100                           | V RMS                                    |
+------------------------------------------------+-------------------------------+------------------------------------------+
| nominal current per phase                      | 50                            | A RMS                                    |
+------------------------------------------------+-------------------------------+------------------------------------------+
| nominal torque                                 | 46                            | Nm                                       |
+------------------------------------------------+-------------------------------+------------------------------------------+
| nominal speed                                  | 1500                          | rpm                                      |
+------------------------------------------------+-------------------------------+------------------------------------------+
| nominal mechanical output                      | 7.23                          | kW                                       |
+------------------------------------------------+-------------------------------+------------------------------------------+
| efficiency                                     | 96.98                         | %                                        |
+------------------------------------------------+-------------------------------+------------------------------------------+
| power factor                                   | 0.497                         |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| stator resistance                              | 0.03                          | Ohm per phase at reference temperature   |
+------------------------------------------------+-------------------------------+------------------------------------------+
| reference temperature TsRef                    | 20                            | °C                                       |
+------------------------------------------------+-------------------------------+------------------------------------------+
| temperature coefficient alpha20s               | 0                             | 1/K                                      |
+------------------------------------------------+-------------------------------+------------------------------------------+
| rotor resistance in d-axis                     | 0.04                          | Ohm at reference temperature             |
+------------------------------------------------+-------------------------------+------------------------------------------+
| rotor resistance in q-axis                     | same as d-axis                |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| reference temperature TrRef                    | 20                            | °C                                       |
+------------------------------------------------+-------------------------------+------------------------------------------+
| temperature coefficient alpha20r               | 0                             | 1/K                                      |
+------------------------------------------------+-------------------------------+------------------------------------------+
| stator reactance Xsd in d-axis                 | 3                             | Ohm per phase                            |
+------------------------------------------------+-------------------------------+------------------------------------------+
| stator reactance Xsq in q-axis                 | 1                             | Ohm                                      |
+------------------------------------------------+-------------------------------+------------------------------------------+
| stator stray reactance Xss                     | 0.1                           | Ohm per phase                            |
+------------------------------------------------+-------------------------------+------------------------------------------+
| rotor stray reactance in d-axis Xrds           | 0.05                          | Ohm per phase                            |
+------------------------------------------------+-------------------------------+------------------------------------------+
| rotor stray reactance in q-axis Xrqs           | same as d-axis                |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| stator operational temperature TsOperational   | 20                            | °C                                       |
+------------------------------------------------+-------------------------------+------------------------------------------+
| damper operational temperature TrOperational   | 20                            | °C                                       |
+------------------------------------------------+-------------------------------+------------------------------------------+
| These values give the following inductances:   |                               |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| stator stray inductance per phase              | Xss/(2\*pi\*fNominal)         |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| rotor stray inductance in d-axis               | Xrds/(2\*pi\*fNominal)        |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| rotor stray inductance in q-axis               | Xrqs/(2\*pi\*fNominal)        |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| main field inductance per phase in d-axis      | (Xsd-Xss)/(2\*pi\*fNominal)   |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+
| main field inductance per phase in q-axis      | (Xsq-Xss)/(2\*pi\*fNominal)   |                                          |
+------------------------------------------------+-------------------------------+------------------------------------------+

::

Extends from
`Machines.Interfaces.PartialBasicInductionMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine>`_
(Partial model for induction machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Type                                                                                                                                                | Name                   | Default                           | Description                                                            |
+=====================================================================================================================================================+========================+===================================+========================================================================+
| Integer                                                                                                                                             | p                      |                                   | Number of pole pairs (Integer)                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                     | fsNominal              |                                   | Nominal frequency [Hz]                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                     | Jr(start=0.29)                    | Rotor's moment of inertia [kg.m2]                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport             | false                             | Enable / disable (=fixed stator) support                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                     |                                   | Stator's moment of inertia [kg.m2]                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort         | false                             | Enable / disable (=fixed temperatures) thermal port                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_ss[2]             | airGapR.i\_ss                     | Stator space phasor current / stator fixed frame [A]                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_sr[2]             | airGapR.i\_sr                     | Stator space phasor current / rotor fixed frame [A]                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rs[2]             | airGapR.i\_rs                     | Rotor space phasor current / stator fixed frame [A]                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rr[2]             | airGapR.i\_rr                     | Rotor space phasor current / rotor fixed frame [A]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsOperational          |                                   | Operational temperature of stator resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrOperational          |                                   | Operational temperature of (optional) damper cage [K]                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rs                     |                                   | Stator resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsRef                  |                                   | Reference temperature of stator resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20s               |                                   | Temperature coefficient of stator resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lszero                 | Lssigma                           | Stator zero sequence inductance [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lssigma.start          | 0.1/(2\*pi\*fsNominal)            | Stator stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lmd                    |                                   | Main field inductance in d-axis [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lmq                    |                                   | Main field inductance in q-axis [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| DamperCage                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useDamperCage          |                                   | Enable / disable damper cage                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigmad               |                                   | Damper stray inductance in d-axis [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigmaq               | Lrsigmad                          | Damper stray inductance in q-axis [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rrd                    |                                   | Damper resistance in d-axis at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rrq                    | Rrd                               | Damper resistance in q-axis at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrRef                  |                                   | Reference temperature of damper resistances in d- and q-axis [K]       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20r               |                                   | Temperature coefficient of damper resistances in d- and q-axis [1/K]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters     | frictionParameters(wRef(star...   | Friction losses                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | statorCoreParameters   |                                   | Stator core losses                                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters    |                                   | Stray load losses                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| Type                                                                                                                      | Name       | Description                                      |
+===========================================================================================================================+============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | flange     | Shaft                                            |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | support    | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_sp   | Positive stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_sn   | Negative stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:44
2010.

.. |Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_PermanentMagnet| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnetS.png
.. |Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_ElectricalExcited| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcitedS.png
.. |Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM\_ReluctanceRotor| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotorS.png
.. |image3| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnetS.png
.. |image4| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcitedS.png
.. |image5| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotorS.png
.. |image6| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_PermanentMagnetI.png
.. |image7| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcitedI.png
.. |image8| image:: Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ReluctanceRotorI.png
