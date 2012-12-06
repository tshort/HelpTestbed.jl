=============================================================================
Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines
=============================================================================

`Modelica.Magnetic.FundamentalWave.BasicMachines <Modelica_Magnetic_FundamentalWave_BasicMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines>`_.AsynchronousInductionMachines
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Asynchronous inductioin machines**

Information
~~~~~~~~~~~

::

This package provides squirrel cage and slip ring induction machine
models.

See also
^^^^^^^^

`SynchronousInductionMachines <Modelica_Magnetic_FundamentalWave_BasicMachines_SynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.SynchronousInductionMachines>`_

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                                         | Description                                           |
+==============================================================================================================================================================================================================================================================================================================+=======================================================+
| |image2| `AIM\_SquirrelCage <Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage>`_                                                                                            | Asynchronous induction machine with squirrel cage     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image3| `AIM\_SlipRing <Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRing>`_                                                                                                    | Asynchronous induction machine with slip ring rotor   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+

--------------

|image4| `Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines <Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines>`_.AIM\_SquirrelCage
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Asynchronous induction machine with squirrel cage**

.. figure:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM\_SquirrelCage

   Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM\_SquirrelCage

Information
~~~~~~~~~~~

::

Resistances and stray inductances of the machine refer to the stator
phases. The symmetry of the stator and rotor is assumed. The machine
models take the following loss effects into account:

-  heat losses in the temperature dependent stator winding resistances
-  heat losses in the temperature dependent cage resistances
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

See also
^^^^^^^^

`AIM\_SlipRing <Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRing>`_,

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine>`_
(Partial model for induction machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| Type                                                                                                                                                | Name                   | Default                             | Description                                                     |
+=====================================================================================================================================================+========================+=====================================+=================================================================+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                     |                                     | Rotor inertia [kg.m2]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport             | false                               | Enable / disable (=fixed stator) support                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                     |                                     | Stator inertia [kg.m2]                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort         | false                               | Enable / disable (=fixed temperatures) thermal port             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| Integer                                                                                                                                             | p                      |                                     | Number of pole pairs (Integer)                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                     | fsNominal              |                                     | Nominal frequency [Hz]                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                                | effectiveStatorTurns   | 1                                   | Effective number of stator turns                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsOperational          |                                     | Operational temperature of stator resistance [K]                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrOperational          |                                     | Operational temperature of rotor resistance [K]                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rs.start               | 0.03                                | Stator resistance per phase at TRef [Ohm]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsRef                  |                                     | Reference temperature of stator resistance [K]                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20s               |                                     | Temperature coefficient of stator resistance at 20 degC [1/K]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lssigma.start          | 3\*(1 - sqrt(1 - 0.0667))/(2\*...   | Stator stray inductance per phase [H]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lszero                 | Lssigma                             | Stator zero inductance per phase [H]                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lm                     |                                     | Main field inductance [H]                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigma                |                                     | Rotor leakage inductance w.r.t. stator side [H]                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rr                     |                                     | Rotor resistance w.r.t. stator side [Ohm]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrRef                  |                                     | Reference temperature of rotor resistance [K]                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20r               |                                     | Temperature coefficient of rotor resistance at 20 degC [1/K]    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters     |                                     | Friction losses                                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | statorCoreParameters   |                                     | Stator core losses                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters    |                                     | Stray load losses                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+-----------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| Type                                                                                                                      | Name       | Description                                      |
+===========================================================================================================================+============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | flange     | Shaft                                            |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | support    | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_sp   | Positive plug of stator                          |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_sn   | Negative plug of stator                          |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image5| `Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines <Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines>`_.AIM\_SlipRing
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Asynchronous induction machine with slip ring rotor**

.. figure:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM\_SlipRing

   Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM\_SlipRing

Information
~~~~~~~~~~~

::

Resistances and stray inductances of the machine always refer to either
stator or rotor phases. The symmetry of the stator and rotor is assumed.
The machine models take the following loss effects into account:

-  heat losses in the temperature dependent stator winding resistances
-  heat losses in the temperature dependent rotor winding resistances
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

See also
^^^^^^^^

`AIM\_SquirrelCage <Modelica_Magnetic_FundamentalWave_BasicMachines_AsynchronousInductionMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCage>`_,

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine>`_
(Partial model for induction machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Type                                                                                                                                                | Name                   | Default                             | Description                                                          |
+=====================================================================================================================================================+========================+=====================================+======================================================================+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                     |                                     | Rotor inertia [kg.m2]                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport             | false                               | Enable / disable (=fixed stator) support                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                     |                                     | Stator inertia [kg.m2]                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort         | false                               | Enable / disable (=fixed temperatures) thermal port                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Integer                                                                                                                                             | p                      |                                     | Number of pole pairs (Integer)                                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                     | fsNominal              |                                     | Nominal frequency [Hz]                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Real                                                                                                                                                | effectiveStatorTurns   | 1                                   | Effective number of stator turns                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Boolean                                                                                                                                             | useTurnsRatio          |                                     | Use TurnsRatio or calculate from locked-rotor voltage?               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Real                                                                                                                                                | TurnsRatio             |                                     | Effective number of stator turns / effective number of rotor turns   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VsNominal              |                                     | Nominal stator voltage per phase [V]                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VrLockedRotor          |                                     | Locked rotor voltage per phase [V]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsOperational          |                                     | Operational temperature of stator resistance [K]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrOperational          |                                     | Operational temperature of rotor resistance [K]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rs.start               | 0.03                                | Stator resistance per phase at TRef [Ohm]                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TsRef                  |                                     | Reference temperature of stator resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20s               |                                     | Temperature coefficient of stator resistance at 20 degC [1/K]        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lssigma.start          | 3\*(1 - sqrt(1 - 0.0667))/(2\*...   | Stator stray inductance per phase [H]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lszero                 | Lssigma                             | Stator zero inductance per phase [H]                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lm                     |                                     | Main field inductance [H]                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrsigma                |                                     | Rotor leakage inductance w.r.t. stator side [H]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Lrzero                 | Lrsigma                             | Rotor zero inductance w.r.t. stator side [H]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Rr                     |                                     | Rotor resistance w.r.t. stator side [Ohm]                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TrRef                  |                                     | Reference temperature of rotor resistance [K]                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20r               |                                     | Temperature coefficient of rotor resistance at 20 degC [1/K]         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters     |                                     | Friction losses                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | statorCoreParameters   |                                     | Stator core losses                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters    |                                     | Stray load losses                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | rotorCoreParameters    |                                     | Rotor core losses                                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-------------------------------------+----------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| Type                                                                                                                      | Name       | Description                                      |
+===========================================================================================================================+============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | flange     | Shaft                                            |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_            | support    | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_sp   | Positive plug of stator                          |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_sn   | Negative plug of stator                          |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_   | plug\_rn   | Negative plug of rotor                           |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_   | plug\_rp   | Positive plug of rotor                           |
+---------------------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:59
2010.

.. |Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM\_SquirrelCage| image:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageS.png
.. |Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM\_SlipRing| image:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingS.png
.. |image2| image:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageS.png
.. |image3| image:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingS.png
.. |image4| image:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SquirrelCageI.png
.. |image5| image:: Modelica.Magnetic.FundamentalWave.BasicMachines.AsynchronousInductionMachines.AIM_SlipRingI.png
