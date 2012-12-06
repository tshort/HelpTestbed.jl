========================================================================
Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines
========================================================================

`Modelica.Electrical.Machines.BasicMachines <Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines>`_.AsynchronousInductionMachines
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Models of asynchronous induction machines**

Information
~~~~~~~~~~~

::

This package contains models of asynchronous induction machines, based
on space phasor theory:

-  AIM\_SquirrelCage: asynchronous induction machine with squirrel cage
-  AIM\_SlipRing: asynchronous induction machine with wound rotor

These models use package SpacePhasors.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                          | Description                                               |
+===============================================================================================================================================================================================================================================================================================+===========================================================+
| |image2| `AIM\_SquirrelCage <Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage>`_                                                                                       | Asynchronous induction machine with squirrel cage rotor   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image3| `AIM\_SlipRing <Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRing>`_                                                                                               | Asynchronous induction machine with slipring rotor        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+

--------------

|image4| `Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines <Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines>`_.AIM\_SquirrelCage
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Asynchronous induction machine with squirrel cage rotor**

.. figure:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM\_SquirrelCage

   Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM\_SquirrelCage

Information
~~~~~~~~~~~

::

**Model of a three phase asynchronous induction machine with squirrel
cage.**
 Resistance and stray inductance of stator is modeled directly in stator
phases, then using space phasor transformation. Resistance and stray
inductance of rotor's squirrel cage is modeled in two axis of the
rotor-fixed ccordinate system. Both together connected via a
stator-fixed *AirGap* model. The machine models take the following loss
effects into account:

-  heat losses in the temperature dependent stator winding resistances
-  heat losses in the temperature dependent cage resistances
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

**Default values for machine's parameters (a realistic example) are:**

+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| number of pole pairs p                         | 2                                             |                                          |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| stator's moment of inertia                     | 0.29                                          | kg.m2                                    |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| rotor's moment of inertia                      | 0.29                                          | kg.m2                                    |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| nominal frequency fNominal                     | 50                                            | Hz                                       |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| nominal voltage per phase                      | 100                                           | V RMS                                    |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| nominal current per phase                      | 100                                           | A RMS                                    |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| nominal torque                                 | 161.4                                         | Nm                                       |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| nominal speed                                  | 1440.45                                       | rpm                                      |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| nominal mechanical output                      | 24.346                                        | kW                                       |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| efficiency                                     | 92.7                                          | %                                        |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| power factor                                   | 0.875                                         |                                          |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| stator resistance                              | 0.03                                          | Ohm per phase at reference temperature   |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| reference temperature TsRef                    | 20                                            | °C                                       |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| temperature coefficient alpha20s               | 0                                             | 1/K                                      |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| rotor resistance                               | 0.04                                          | Ohm at reference temperature             |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| reference temperature TrRef                    | 20                                            | °C                                       |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| temperature coefficient alpha20r               | 0                                             | 1/K                                      |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| stator reactance Xs                            | 3                                             | Ohm per phase                            |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| rotor reactance Xr                             | 3                                             | Ohm                                      |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| total stray coefficient sigma                  | 0.0667                                        |                                          |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| stator operational temperature TsOperational   | 20                                            | °C                                       |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| rotor operational temperature TrOperational    | 20                                            | °C                                       |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| These values give the following inductances:   |                                               |                                          |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| stator stray inductance per phase              | Xs \* (1 - sqrt(1-sigma))/(2\*pi\*fNominal)   |                                          |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| rotor stray inductance                         | Xr \* (1 - sqrt(1-sigma))/(2\*pi\*fNominal)   |                                          |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+
| main field inductance per phase                | sqrt(Xs\*Xr \* (1-sigma))/(2\*pi\*fNominal)   |                                          |
+------------------------------------------------+-----------------------------------------------+------------------------------------------+

::

Extends from
`Machines.Interfaces.PartialBasicInductionMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine>`_
(Partial model for induction machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| Type                                                                                                                                                | Name                   | Default                           | Description                                                       |
+=====================================================================================================================================================+========================+===================================+===================================================================+
| Integer                                                                                                                                             | p                      |                                   | Number of pole pairs (Integer)                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                     | fsNominal              |                                   | Nominal frequency [Hz]                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                     | Jr(start=0.29)                    | Rotor's moment of inertia [kg.m2]                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport             | false                             | Enable / disable (=fixed stator) support                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                     |                                   | Stator's moment of inertia [kg.m2]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort         | false                             | Enable / disable (=fixed temperatures) thermal port               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_ss[2]             | airGapS.i\_ss                     | Stator space phasor current / stator fixed frame [A]              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_sr[2]             | airGapS.i\_sr                     | Stator space phasor current / rotor fixed frame [A]               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rs[2]             | airGapS.i\_rs                     | Rotor space phasor current / stator fixed frame [A]               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rr[2]             | airGapS.i\_rr                     | Rotor space phasor current / rotor fixed frame [A]                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsOperational          |                                   | Operational temperature of stator resistance [K]                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrOperational          |                                   | Operational temperature of rotor resistance [K]                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rs                     |                                   | Stator resistance per phase at TRef [Ohm]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsRef                  |                                   | Reference temperature of stator resistance [K]                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20s               |                                   | Temperature coefficient of stator resistance at 20 degC [1/K]     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lszero                 | Lssigma                           | Stator zero sequence inductance [H]                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lssigma                |                                   | Stator stray inductance per phase [H]                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lm                     |                                   | Main field inductance [H]                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigma                |                                   | Rotor stray inductance (equivalent three phase winding) [H]       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rr                     |                                   | Rotor resistance (equivalent three phase winding) at TRef [Ohm]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrRef                  |                                   | Reference temperature of rotor resistance [K]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20r               |                                   | Temperature coefficient of rotor resistance at 20 degC [1/K]      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters     | frictionParameters(wRef(star...   | Friction losses                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | statorCoreParameters   |                                   | Stator core losses                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters    |                                   | Stray load losses                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------+

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

--------------

|image5| `Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines <Modelica_Electrical_Machines_BasicMachines_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines>`_.AIM\_SlipRing
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Asynchronous induction machine with slipring rotor**

.. figure:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM\_SlipRing

   Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM\_SlipRing

Information
~~~~~~~~~~~

::

**Model of a three phase asynchronous induction machine with slipring
rotor.**
 Resistance and stray inductance of stator and rotor are modeled
directly in stator respectively rotor phases, then using space phasor
transformation and a stator-fixed *AirGap* model. The machine models
take the following loss effects into account:

-  heat losses in the temperature dependent stator winding resistances
-  heat losses in the temperature dependent rotor winding resistances
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

**Default values for machine's parameters (a realistic example) are:**

+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| number of pole pairs p                         | 2                                             |                                               |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| stator's moment of inertia                     | 0.29                                          | kg.m2                                         |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| rotor's moment of inertia                      | 0.29                                          | kg.m2                                         |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| nominal frequency fNominal                     | 50                                            | Hz                                            |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| nominal voltage per phase                      | 100                                           | V RMS                                         |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| nominal current per phase                      | 100                                           | A RMS                                         |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| nominal torque                                 | 161.4                                         | Nm                                            |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| nominal speed                                  | 1440.45                                       | rpm                                           |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| nominal mechanical output                      | 24.346                                        | kW                                            |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| efficiency                                     | 92.7                                          | %                                             |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| power factor                                   | 0.875                                         |                                               |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| stator resistance                              | 0.03                                          | Ohm per phase at reference temperature        |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| reference temperature TsRef                    | 20                                            | °C                                            |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| temperature coefficient alpha20s               | 0                                             | 1/K                                           |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| rotor resistance                               | 0.04                                          | Ohm per phase at reference temperature        |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| reference temperature TrRef                    | 20                                            | °C                                            |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| temperature coefficient alpha20r               | 0                                             | 1/K                                           |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| stator reactance Xs                            | 3                                             | Ohm per phase                                 |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| rotor reactance Xr                             | 3                                             | Ohm per phase                                 |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| total stray coefficient sigma                  | 0.0667                                        |                                               |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| turnsRatio                                     | 1                                             | effective ratio of stator and rotor current   |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| stator operational temperature TsOperational   | 20                                            | °C                                            |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| rotor operational temperature TrOperational    | 20                                            | °C                                            |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| These values give the following inductances:   |                                               |                                               |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| stator stray inductance per phase              | Xs \* (1 - sqrt(1-sigma))/(2\*pi\*fNominal)   |                                               |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| rotor stray inductance                         | Xr \* (1 - sqrt(1-sigma))/(2\*pi\*fNominal)   |                                               |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+
| main field inductance per phase                | sqrt(Xs\*Xr \* (1-sigma))/(2\*pi\*f)          |                                               |
+------------------------------------------------+-----------------------------------------------+-----------------------------------------------+

Parameter turnsRatio could be obtained from the following relationship
at standstill with open rotor circuit at nominal voltage and nominal
frequency,
 using the locked-rotor voltage VR, no-load stator current I0 and
powerfactor PF0:
 turnsRatio \* V\ :sub:`R`\  = V\ :sub:`s`\  - (R\ :sub:`s`\  + j
X\ :sub:`s,sigma`\ ) I\ :sub:`0`\ 

::

Extends from
`Machines.Interfaces.PartialBasicInductionMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine>`_
(Partial model for induction machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| Type                                                                                                                                                | Name                   | Default                           | Description                                                          |
+=====================================================================================================================================================+========================+===================================+======================================================================+
| Integer                                                                                                                                             | p                      |                                   | Number of pole pairs (Integer)                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                     | fsNominal              |                                   | Nominal frequency [Hz]                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                     | Jr(start=0.29)                    | Rotor's moment of inertia [kg.m2]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport             | false                             | Enable / disable (=fixed stator) support                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                     |                                   | Stator's moment of inertia [kg.m2]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort         | false                             | Enable / disable (=fixed temperatures) thermal port                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_ss[2]             | airGapS.i\_ss                     | Stator space phasor current / stator fixed frame [A]                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_sr[2]             | airGapS.i\_sr                     | Stator space phasor current / rotor fixed frame [A]                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rs[2]             | airGapS.i\_rs                     | Rotor space phasor current / stator fixed frame [A]                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | idq\_rr[2]             | airGapS.i\_rr                     | Rotor space phasor current / rotor fixed frame [A]                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| Boolean                                                                                                                                             | useTurnsRatio          |                                   | Use turnsRatio or calculate from locked-rotor voltage?               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| Real                                                                                                                                                | turnsRatio             |                                   | Effective number of stator turns / effective number of rotor turns   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VsNominal              |                                   | Nominal stator voltage per phase [V]                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VrLockedRotor          |                                   | Locked-rotor voltage per phase [V]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsOperational          |                                   | Operational temperature of stator resistance [K]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrOperational          |                                   | Operational temperature of rotor resistance [K]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rs                     |                                   | Stator resistance per phase at TRef [Ohm]                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsRef                  |                                   | Reference temperature of stator resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20s               |                                   | Temperature coefficient of stator resistance at 20 degC [1/K]        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lszero                 | Lssigma                           | Stator zero sequence inductance [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lssigma                |                                   | Stator stray inductance per phase [H]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lm                     |                                   | Main field inductance [H]                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigma                |                                   | Rotor stray inductance per phase [H]                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrzero                 | Lrsigma                           | Rotor zero sequence inductance [H]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rr                     |                                   | Rotor resistance per phase at TRef [Ohm]                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrRef                  |                                   | Reference temperature of rotor resistance [K]                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20r               |                                   | Temperature coefficient of rotor resistance at 20 degC [1/K]         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters     | frictionParameters(wRef(star...   | Friction losses                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | statorCoreParameters   |                                   | Stator core losses                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters    |                                   | Stray load losses                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | rotorCoreParameters    |                                   | Rotor core losses                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+----------------------------------------------------------------------+

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
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_rp   | Positive rotor plug                              |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_rn   | Negative rotor plug                              |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:41
2010.

.. |Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM\_SquirrelCage| image:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageS.png
.. |Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM\_SlipRing| image:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingS.png
.. |image2| image:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageS.png
.. |image3| image:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingS.png
.. |image4| image:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageI.png
.. |image5| image:: Modelica.Electrical.Machines.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingI.png
