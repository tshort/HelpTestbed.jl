=====================================================
Modelica.Electrical.Machines.BasicMachines.DCMachines
=====================================================

`Modelica.Electrical.Machines.BasicMachines <Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines>`_.DCMachines
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Models of DC machines**

Information
~~~~~~~~~~~

::

This package contains models of DC machines:

-  DC\_PermanentMagnet: DC machine with permanent magnet excitation
-  DC\_ElectricalExcited: DC machine with electrical shunt or separate
   excitation
-  DC\_SeriesExcited: DC machine with series excitation

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| Name                                                                                                                                                                                                                                             | Description                                           |
+==================================================================================================================================================================================================================================================+=======================================================+
| |image3| `DC\_PermanentMagnet <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet>`_                                                                            | Permanent magnet DC machine                           |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image4| `DC\_ElectricalExcited <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcited>`_                                                                        | Electrical shunt/separate excited linear DC machine   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+
| |image5| `DC\_SeriesExcited <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcited>`_                                                                                | Series excited linear DC machine                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------+

--------------

|image6| `Modelica.Electrical.Machines.BasicMachines.DCMachines <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines>`_.DC\_PermanentMagnet
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Permanent magnet DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnetD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_PermanentMagnet

   Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_PermanentMagnet

Information
~~~~~~~~~~~

::

**Model of a DC Machine with permanent magnets.**
 Armature resistance and inductance are modeled directly after the
armature pins, then using a *AirGapDC* model. Permanent magnet
excitation is modelled by a constant equivalent excitation current
feeding AirGapDC. The machine models take the following loss effects
into account:

-  heat losses in the temperature dependent armature winding resistance
-  brush losses in the armature circuit
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

No saturation is modelled.
**Default values for machine's parameters (a realistic example) are:**

+--------------------------------------------------+----------+--------------------------------+
| stator's moment of inertia                       | 0.29     | kg.m2                          |
+--------------------------------------------------+----------+--------------------------------+
| rotor's moment of inertia                        | 0.15     | kg.m2                          |
+--------------------------------------------------+----------+--------------------------------+
| nominal armature voltage                         | 100      | V                              |
+--------------------------------------------------+----------+--------------------------------+
| nominal armature current                         | 100      | A                              |
+--------------------------------------------------+----------+--------------------------------+
| nominal speed                                    | 1425     | rpm                            |
+--------------------------------------------------+----------+--------------------------------+
| nominal torque                                   | 63.66    | Nm                             |
+--------------------------------------------------+----------+--------------------------------+
| nominal mechanical output                        | 9.5      | kW                             |
+--------------------------------------------------+----------+--------------------------------+
| efficiency                                       | 95.0     | %                              |
+--------------------------------------------------+----------+--------------------------------+
| armature resistance                              | 0.05     | Ohm at reference temperature   |
+--------------------------------------------------+----------+--------------------------------+
| reference temperature TaRef                      | 20       | °C                             |
+--------------------------------------------------+----------+--------------------------------+
| temperature coefficient alpha20a                 | 0        | 1/K                            |
+--------------------------------------------------+----------+--------------------------------+
| armature inductance                              | 0.0015   | H                              |
+--------------------------------------------------+----------+--------------------------------+
| armature nominal temperature TaNominal           | 20       | °C                             |
+--------------------------------------------------+----------+--------------------------------+
| armature operational temperature TaOperational   | 20       | °C                             |
+--------------------------------------------------+----------+--------------------------------+

Armature resistance resp. inductance include resistance resp. inductance
of commutating pole winding and compensation windig, if present.

::

Extends from
`Machines.Interfaces.PartialBasicDCMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachine>`_
(Partial model for DC machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Type                                                                                                                                                | Name                  | Default                           | Description                                               |
+=====================================================================================================================================================+=======================+===================================+===========================================================+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                    | Jr(start=0.15)                    | Rotor's moment of inertia [kg.m2]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport            | false                             | Enable / disable (=fixed stator) support                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                    |                                   | Stator's moment of inertia [kg.m2]                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort        | false                             | Enable / disable (=fixed temperatures) thermal port       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaOperational         |                                   | Operational armature temperature [K]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal parameters**                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VaNominal             |                                   | Nominal armature voltage [V]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | IaNominal             |                                   | Nominal armature current (>0..Motor, <0..Generator) [A]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                                                         | wNominal              |                                   | Nominal speed [rad/s]                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaNominal             |                                   | Nominal armature temperature [K]                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Ra                    |                                   | Armature resistance at TRef [Ohm]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaRef                 |                                   | Reference temperature of armature resistance [K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20a              |                                   | Temperature coefficient of armature resistance [1/K]      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | La                    |                                   | Armature inductance [H]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters    | frictionParameters(wRef=wNom...   | Friction losses                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | coreParameters        |                                   | Armature core losses                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters   |                                   | Stray load losses                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_                                   | brushParameters       |                                   | Brush losses                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| Type                                                                                                             | Name      | Description                                      |
+==================================================================================================================+===========+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange    | Shaft                                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support   | Support at which the reaction torque is acting   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ap   | Positive armature pin                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_an   | Negative armature pin                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DC_PermanentMagnet "Permanent magnet DC machine"
      extends Machines.Interfaces.PartialBasicDCMachine(
        final ViNominal = VaNominal - Machines.Thermal.convertResistance(Ra,TaRef,alpha20a,TaNominal)*IaNominal
                                    - Machines.Losses.DCMachines.brushVoltageDrop(brushParameters, IaNominal),
        final psi_eNominal = Lme*IeNominal,
        redeclare final Machines.Thermal.DCMachines.ThermalAmbientDCPM
          thermalAmbient(final Tpm=TpmOperational),
        redeclare final Machines.Interfaces.DCMachines.ThermalPortDCPM
          thermalPort,
        redeclare final Machines.Interfaces.DCMachines.ThermalPortDCPM
          internalThermalPort,
        redeclare final Machines.Interfaces.DCMachines.PowerBalanceDCPM
          powerBalance(final lossPowerPermanentMagnet = 0),
        core(final w=airGapDC.w));
      final parameter Modelica.SIunits.Temperature TpmOperational=293.15 
        "Operational temperature of permanent magnet";
      Machines.BasicMachines.Components.AirGapDC airGapDC(
        final turnsRatio=turnsRatio,
        final Le=Lme,
        final quasiStationary=quasiStationary);
      Modelica.Electrical.Analog.Basic.Ground eGround;
      Modelica.Electrical.Analog.Sources.ConstantCurrent ie(I=IeNominal);
    protected 
      constant Modelica.SIunits.Inductance Lme=1 "Field excitation inductance";
      constant Modelica.SIunits.Current IeNominal=1 "Equivalent excitation current";
    equation 
      connect(eGround.p, ie.p);
      connect(airGapDC.pin_ep, ie.n);
      connect(airGapDC.pin_en, eGround.p);
      connect(airGapDC.pin_ap, la.n);
      connect(airGapDC.support, internalSupport);

      connect(airGapDC.flange, inertiaRotor.flange_a);
      connect(airGapDC.pin_an, brush.p);

    end DC_PermanentMagnet;

--------------

|image7| `Modelica.Electrical.Machines.BasicMachines.DCMachines <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines>`_.DC\_ElectricalExcited
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Electrical shunt/separate excited linear DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcitedD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_ElectricalExcited

   Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_ElectricalExcited

Information
~~~~~~~~~~~

::

**Model of a DC Machine with electrical shunt or separate excitation.**
 Armature resistance and inductance are modeled directly after the
armature pins, then using a *AirGapDC* model.
 The machine models take the following loss effects into account:

-  heat losses in the temperature dependent armature winding resistance
-  heat losses in the temperature dependent excitation winding
   resistance
-  brush losses in the armature circuit
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

No saturation is modelled.
 Shunt or separate excitation is defined by the user's external circuit.
**Default values for machine's parameters (a realistic example) are:**

+------------------------------------------------------------+----------+--------------------------------+
| stator's moment of inertia                                 | 0.29     | kg.m2                          |
+------------------------------------------------------------+----------+--------------------------------+
| rotor's moment of inertia                                  | 0.15     | kg.m2                          |
+------------------------------------------------------------+----------+--------------------------------+
| nominal armature voltage                                   | 100      | V                              |
+------------------------------------------------------------+----------+--------------------------------+
| nominal armature current                                   | 100      | A                              |
+------------------------------------------------------------+----------+--------------------------------+
| nominal torque                                             | 63.66    | Nm                             |
+------------------------------------------------------------+----------+--------------------------------+
| nominal speed                                              | 1425     | rpm                            |
+------------------------------------------------------------+----------+--------------------------------+
| nominal mechanical output                                  | 9.5      | kW                             |
+------------------------------------------------------------+----------+--------------------------------+
| efficiency                                                 | 95.0     | % only armature                |
+------------------------------------------------------------+----------+--------------------------------+
| efficiency                                                 | 94.06    | % including excitation         |
+------------------------------------------------------------+----------+--------------------------------+
| armature resistance                                        | 0.05     | Ohm at reference temperature   |
+------------------------------------------------------------+----------+--------------------------------+
| reference temperature TaRef                                | 20       | °C                             |
+------------------------------------------------------------+----------+--------------------------------+
| temperature coefficient alpha20a                           | 0        | 1/K                            |
+------------------------------------------------------------+----------+--------------------------------+
| armature inductance                                        | 0.0015   | H                              |
+------------------------------------------------------------+----------+--------------------------------+
| nominal excitation voltage                                 | 100      | V                              |
+------------------------------------------------------------+----------+--------------------------------+
| nominal excitation current                                 | 1        | A                              |
+------------------------------------------------------------+----------+--------------------------------+
| excitation resistance                                      | 100      | Ohm at reference temperature   |
+------------------------------------------------------------+----------+--------------------------------+
| reference temperature TeRef                                | 20       | °C                             |
+------------------------------------------------------------+----------+--------------------------------+
| temperature coefficient alpha20e                           | 0        | 1/K                            |
+------------------------------------------------------------+----------+--------------------------------+
| excitation inductance                                      | 1        | H                              |
+------------------------------------------------------------+----------+--------------------------------+
| stray part of excitation inductance                        | 0        |                                |
+------------------------------------------------------------+----------+--------------------------------+
| armature nominal temperature TaNominal                     | 20       | °C                             |
+------------------------------------------------------------+----------+--------------------------------+
| armature operational temperature TaOperational             | 20       | °C                             |
+------------------------------------------------------------+----------+--------------------------------+
| (shunt) excitation operational temperature TeOperational   | 20       | °C                             |
+------------------------------------------------------------+----------+--------------------------------+

Armature resistance resp. inductance include resistance resp. inductance
of commutating pole winding and compensation windig, if present.
 Armature current does not cover excitation current of a shunt
excitation; in this case total current drawn from the grid = armature
current + excitation current.

::

Extends from
`Machines.Interfaces.PartialBasicDCMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachine>`_
(Partial model for DC machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Type                                                                                                                                                | Name                  | Default                           | Description                                               |
+=====================================================================================================================================================+=======================+===================================+===========================================================+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                    | Jr(start=0.15)                    | Rotor's moment of inertia [kg.m2]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport            | false                             | Enable / disable (=fixed stator) support                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                    |                                   | Stator's moment of inertia [kg.m2]                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort        | false                             | Enable / disable (=fixed temperatures) thermal port       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaOperational         |                                   | Operational armature temperature [K]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TeOperational         |                                   | Operational (shunt) excitation temperature [K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal parameters**                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VaNominal             |                                   | Nominal armature voltage [V]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | IaNominal             |                                   | Nominal armature current (>0..Motor, <0..Generator) [A]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                                                         | wNominal              |                                   | Nominal speed [rad/s]                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaNominal             |                                   | Nominal armature temperature [K]                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Ra                    |                                   | Armature resistance at TRef [Ohm]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaRef                 |                                   | Reference temperature of armature resistance [K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20a              |                                   | Temperature coefficient of armature resistance [1/K]      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | La                    |                                   | Armature inductance [H]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters    | frictionParameters(wRef=wNom...   | Friction losses                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | coreParameters        |                                   | Armature core losses                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters   |                                   | Stray load losses                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_                                   | brushParameters       |                                   | Brush losses                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Excitation**                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | IeNominal             |                                   | Nominal excitation current [A]                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Re                    |                                   | Field excitation resistance at TRef [Ohm]                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TeRef                 |                                   | Reference temperature of excitation resistance [K]        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20e              |                                   | Temperature coefficient of excitation resistance [1/K]    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Le                    |                                   | Total field excitation inductance [H]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Real                                                                                                                                                | sigmae                |                                   | Stray fraction of total excitation inductance             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| Type                                                                                                             | Name      | Description                                      |
+==================================================================================================================+===========+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange    | Shaft                                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support   | Support at which the reaction torque is acting   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ap   | Positive armature pin                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_an   | Negative armature pin                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ep   | Positive excitation pin                          |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_en   | Negative excitation pin                          |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DC_ElectricalExcited 
      "Electrical shunt/separate excited linear DC machine"
      extends Machines.Interfaces.PartialBasicDCMachine(
        final ViNominal = VaNominal - Machines.Thermal.convertResistance(Ra,TaRef,alpha20a,TaNominal)*IaNominal
                                    - Machines.Losses.DCMachines.brushVoltageDrop(brushParameters, IaNominal),
        final psi_eNominal = Lme*IeNominal,
        redeclare final Machines.Thermal.DCMachines.ThermalAmbientDCEE
          thermalAmbient(final Te=TeOperational),
        redeclare final Machines.Interfaces.DCMachines.ThermalPortDCEE
          thermalPort,
        redeclare final Machines.Interfaces.DCMachines.ThermalPortDCEE
          internalThermalPort,
        redeclare final Machines.Interfaces.DCMachines.PowerBalanceDCEE
          powerBalance(
            final powerExcitation = ve*ie,
            final lossPowerExcitation = -re.heatPort.Q_flow),
        core(final w=airGapDC.w));
      parameter Modelica.SIunits.Current IeNominal(start=1) 
        "Nominal excitation current";
      parameter Modelica.SIunits.Resistance Re(start=100) 
        "Field excitation resistance at TRef";
      parameter Modelica.SIunits.Temperature TeRef(start=293.15) 
        "Reference temperature of excitation resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20e(
        start=0) "Temperature coefficient of excitation resistance";
      parameter Modelica.SIunits.Inductance Le(start=1) 
        "Total field excitation inductance";
      parameter Real sigmae(min=0, max=0.99, start=0) 
        "Stray fraction of total excitation inductance";
      parameter Modelica.SIunits.Temperature TeOperational(start=293.15) 
        "Operational (shunt) excitation temperature";
      output Modelica.SIunits.Voltage ve = pin_ep.v-pin_en.v 
        "Field excitation voltage";
      output Modelica.SIunits.Current ie = pin_ep.i "Field excitation current";
      Machines.BasicMachines.Components.AirGapDC airGapDC(
        final turnsRatio=turnsRatio,
        final Le=Lme,
        final quasiStationary=quasiStationary);
      Modelica.Electrical.Analog.Basic.Ground ground;
     Machines.BasicMachines.Components.CompoundDCExcitation compoundDCExcitation(final excitationTurnsRatio=
                               1);
      Modelica.Electrical.Analog.Basic.Ground groundSE;

      Modelica.Electrical.Analog.Basic.Resistor re(
        final R=Re,
        final T_ref=TeRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20e, TeRef),
        final useHeatPort=true,
        final T=TeRef);
     Machines.BasicMachines.Components.InductorDC lesigma(final L=Lesigma, final quasiStationary=
            quasiStationary);
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep 
        "Positive excitation pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en 
        "Negative excitation pin";
    protected 
      final parameter Modelica.SIunits.Inductance Lme = Le*(1 - sigmae) 
        "Main part of excitation inductance";
      final parameter Modelica.SIunits.Inductance Lesigma = Le*sigmae 
        "Stray part of excitation inductance";
    equation 
      connect(airGapDC.pin_ap, la.n);
      connect(airGapDC.support, internalSupport);
      connect(airGapDC.flange, inertiaRotor.flange_a);
      connect(re.p, pin_ep);
      connect(re.n, lesigma.p);
      connect(ground.p, airGapDC.pin_en);
      connect(airGapDC.pin_en, compoundDCExcitation.pin_n);
      connect(airGapDC.pin_ep, compoundDCExcitation.pin_p);
      connect(groundSE.p, compoundDCExcitation.pin_sen);
      connect(pin_en, compoundDCExcitation.pin_en);
      connect(compoundDCExcitation.pin_ep, lesigma.n);
      connect(airGapDC.pin_an, brush.p);
      connect(re.heatPort, internalThermalPort.heatPortExcitation);
    end DC_ElectricalExcited;

--------------

|image8| `Modelica.Electrical.Machines.BasicMachines.DCMachines <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines>`_.DC\_SeriesExcited
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Series excited linear DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcitedD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_SeriesExcited

   Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_SeriesExcited

Information
~~~~~~~~~~~

::

**Model of a DC Machine with series excitation.**
 Armature resistance and inductance are modeled directly after the
armature pins, then using a *AirGapDC* model.
 The machine models take the following loss effects into account:

-  heat losses in the temperature dependent armature winding resistance
-  heat losses in the temperature dependent excitation winding
   resistance
-  brush losses in the armature circuit
-  friction losses
-  core losses (only eddy current losses, no hysteresis losses)
-  stray load losses

No saturation is modelled.
 Series excitation has to be connected by the user's external circuit.
**Default values for machine's parameters (a realistic example) are:**

+-----------------------------------------------------------+----------+--------------------------------+
| stator's moment of inertia                                | 0.29     | kg.m2                          |
+-----------------------------------------------------------+----------+--------------------------------+
| rotor's moment of inertia                                 | 0.15     | kg.m2                          |
+-----------------------------------------------------------+----------+--------------------------------+
| nominal armature voltage                                  | 100      | V                              |
+-----------------------------------------------------------+----------+--------------------------------+
| nominal armature current                                  | 100      | A                              |
+-----------------------------------------------------------+----------+--------------------------------+
| nominal torque                                            | 63.66    | Nm                             |
+-----------------------------------------------------------+----------+--------------------------------+
| nominal speed                                             | 1410     | rpm                            |
+-----------------------------------------------------------+----------+--------------------------------+
| nominal mechanical output                                 | 9.4      | kW                             |
+-----------------------------------------------------------+----------+--------------------------------+
| efficiency                                                | 94.0     | % only armature                |
+-----------------------------------------------------------+----------+--------------------------------+
| armature resistance                                       | 0.05     | Ohm at reference temperature   |
+-----------------------------------------------------------+----------+--------------------------------+
| reference temperature TaRef                               | 20       | °C                             |
+-----------------------------------------------------------+----------+--------------------------------+
| temperature coefficient alpha20a                          | 0        | 1/K                            |
+-----------------------------------------------------------+----------+--------------------------------+
| armature inductance                                       | 0.0015   | H                              |
+-----------------------------------------------------------+----------+--------------------------------+
| excitation resistance                                     | 0.01     | Ohm at reference temperature   |
+-----------------------------------------------------------+----------+--------------------------------+
| reference temperature TeRef                               | 20       | °C                             |
+-----------------------------------------------------------+----------+--------------------------------+
| temperature coefficient alpha20e                          | 0        | 1/K                            |
+-----------------------------------------------------------+----------+--------------------------------+
| excitation inductance                                     | 0.0005   | H                              |
+-----------------------------------------------------------+----------+--------------------------------+
| stray part of excitation inductance                       | 0        |                                |
+-----------------------------------------------------------+----------+--------------------------------+
| armature nominal temperature TaNominal                    | 20       | °C                             |
+-----------------------------------------------------------+----------+--------------------------------+
| series excitation nominal temperature TeNominal           | 20       | °C                             |
+-----------------------------------------------------------+----------+--------------------------------+
| armature operational temperature TaOperational            | 20       | °C                             |
+-----------------------------------------------------------+----------+--------------------------------+
| series excitation operational temperature TeOperational   | 20       | °C                             |
+-----------------------------------------------------------+----------+--------------------------------+

Armature resistance resp. inductance include resistance resp. inductance
of commutating pole winding and compensation windig, if present.
 Parameter nominal armature voltage includes voltage drop of series
excitation;
 but for output the voltage is splitted into:
 va = armature voltage without voltage drop of series excitation
 ve = voltage drop of series excitation

::

Extends from
`Machines.Interfaces.PartialBasicDCMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachine>`_
(Partial model for DC machine).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Type                                                                                                                                                | Name                  | Default                           | Description                                               |
+=====================================================================================================================================================+=======================+===================================+===========================================================+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Jr                    | Jr(start=0.15)                    | Rotor's moment of inertia [kg.m2]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Boolean                                                                                                                                             | useSupport            | false                             | Enable / disable (=fixed stator) support                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                         | Js                    |                                   | Stator's moment of inertia [kg.m2]                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort        | false                             | Enable / disable (=fixed temperatures) thermal port       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaOperational         |                                   | Operational armature temperature [K]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TeOperational         |                                   | Operational series excitation temperature [K]             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal parameters**                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                         | VaNominal             |                                   | Nominal armature voltage [V]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                         | IaNominal             |                                   | Nominal armature current (>0..Motor, <0..Generator) [A]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                                                         | wNominal.start        | 1410\*2\*pi/60                    | Nominal speed [rad/s]                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaNominal             |                                   | Nominal armature temperature [K]                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TeNominal             |                                   | Nominal series excitation temperature [K]                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Ra                    |                                   | Armature resistance at TRef [Ohm]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TaRef                 |                                   | Reference temperature of armature resistance [K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20a              |                                   | Temperature coefficient of armature resistance [1/K]      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | La                    |                                   | Armature inductance [H]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Losses**                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                             | frictionParameters    | frictionParameters(wRef=wNom...   | Friction losses                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                     | coreParameters        |                                   | Armature core losses                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                           | strayLoadParameters   |                                   | Stray load losses                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_                                   | brushParameters       |                                   | Brush losses                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Excitation**                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | Re                    |                                   | Series excitation resistance at TRef [Ohm]                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | TeRef                 |                                   | Reference temperature of excitation resistance [K]        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20e              |                                   | Temperature coefficient of excitation resistance [1/K]    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | Le                    |                                   | Total field excitation inductance [H]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Real                                                                                                                                                | sigmae                |                                   | Stray fraction of total excitation inductance             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| Type                                                                                                             | Name      | Description                                      |
+==================================================================================================================+===========+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange    | Shaft                                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support   | Support at which the reaction torque is acting   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ap   | Positive armature pin                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_an   | Negative armature pin                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_    | pin\_ep   | Positive series excitation pin                   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_    | pin\_en   | Negative series excitation pin                   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model DC_SeriesExcited "Series excited linear DC machine"
      extends Machines.Interfaces.PartialBasicDCMachine(wNominal(start=1410*2*pi/60),
        final ViNominal = VaNominal - (Machines.Thermal.convertResistance(Ra,TaRef,alpha20a,TaNominal) +
                                       Machines.Thermal.convertResistance(Re,TeRef,alpha20e,TeNominal))*IaNominal
                                    - Machines.Losses.DCMachines.brushVoltageDrop(brushParameters, IaNominal),
        final psi_eNominal = Lme*abs(IaNominal),
        redeclare final Machines.Thermal.DCMachines.ThermalAmbientDCSE
          thermalAmbient(final Tse=TeOperational),
        redeclare final Machines.Interfaces.DCMachines.ThermalPortDCSE
          thermalPort,
        redeclare final Machines.Interfaces.DCMachines.ThermalPortDCSE
          internalThermalPort,
        redeclare final Machines.Interfaces.DCMachines.PowerBalanceDCSE
          powerBalance(
            final powerSeriesExcitation = ve*ie,
            final lossPowerSeriesExcitation = -re.heatPort.Q_flow),
        core(final w=airGapDC.w));
      parameter Modelica.SIunits.Resistance Re(start=0.01) 
        "Series excitation resistance at TRef";
      parameter Modelica.SIunits.Temperature TeRef(start=293.15) 
        "Reference temperature of excitation resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20e(
        start=0) "Temperature coefficient of excitation resistance";
      parameter Modelica.SIunits.Inductance Le(start=0.0005) 
        "Total field excitation inductance";
      parameter Real sigmae(min=0, max=0.99, start=0) 
        "Stray fraction of total excitation inductance";
      parameter Modelica.SIunits.Temperature TeNominal(start=293.15) 
        "Nominal series excitation temperature";
      parameter Modelica.SIunits.Temperature TeOperational(start=293.15) 
        "Operational series excitation temperature";
      output Modelica.SIunits.Voltage ve = pin_ep.v-pin_en.v 
        "Field excitation voltage";
      output Modelica.SIunits.Current ie = pin_ep.i "Field excitation current";
      Machines.BasicMachines.Components.AirGapDC airGapDC(
        final turnsRatio=turnsRatio,
        final Le=Lme,
        final quasiStationary=quasiStationary);
     Machines.BasicMachines.Components.CompoundDCExcitation compoundDCExcitation(final excitationTurnsRatio=
                               1);
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Electrical.Analog.Basic.Ground groundE;
      Modelica.Electrical.Analog.Basic.Resistor re(
        final R=Re,
        final T_ref=TeRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20e, TeRef),
        final useHeatPort=true,
        final T=TeRef);
     Machines.BasicMachines.Components.InductorDC lesigma(final L=Lesigma, final quasiStationary=
            quasiStationary);
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ep 
        "Positive series excitation pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_en 
        "Negative series excitation pin";
    protected 
      final parameter Modelica.SIunits.Inductance Lme = Le*(1 - sigmae) 
        "Main part of excitation inductance";
      final parameter Modelica.SIunits.Inductance Lesigma = Le*sigmae 
        "Stray part of excitation inductance";
    equation 
      connect(airGapDC.pin_ap, la.n);
      connect(airGapDC.support, internalSupport);
      connect(airGapDC.flange, inertiaRotor.flange_a);
      connect(pin_ep, re.p);
      connect(re.n, lesigma.p);
      connect(airGapDC.pin_en, compoundDCExcitation.pin_n);
      connect(compoundDCExcitation.pin_p, airGapDC.pin_ep);
      connect(airGapDC.pin_en, ground.p);
      connect(compoundDCExcitation.pin_sen, pin_en);
      connect(compoundDCExcitation.pin_sep, lesigma.n);
      connect(compoundDCExcitation.pin_en, groundE.p);
      connect(airGapDC.pin_an, brush.p);

      connect(re.heatPort, internalThermalPort.heatPortSeriesExcitation);
    end DC_SeriesExcited;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:46
2010.

.. |Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_PermanentMagnet| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnetS.png
.. |Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_ElectricalExcited| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcitedS.png
.. |Modelica.Electrical.Machines.BasicMachines.DCMachines.DC\_SeriesExcited| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcitedS.png
.. |image3| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnetS.png
.. |image4| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcitedS.png
.. |image5| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcitedS.png
.. |image6| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnetI.png
.. |image7| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcitedI.png
.. |image8| image:: Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcitedI.png
