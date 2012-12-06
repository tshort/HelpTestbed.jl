====================================================================
Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines
====================================================================

`Modelica.Electrical.Machines.BasicMachines <Modelica_Electrical_Machines_BasicMachines.html#Modelica.Electrical.Machines.BasicMachines>`_.QuasiStationaryDCMachines
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Models of quasistationary DC machines**

Information
~~~~~~~~~~~

::

This package contains quasistationary models of DC machines; these
models are fully compatible with the `transient machine models of DC
machines <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines>`_;
the only difference is that electrical transients are neglected.

Please note:
^^^^^^^^^^^^

Quasistationary DC machine models are basically different from
quasistationary induction machine models: Quasistaionary DC machine
models neglect electrical transients, i.e., setting ``der(i) = 0``,
whereas quasistationary induction machine models are based on time
phasor theory, see `QuasiStationary
Library <Modelica_Electrical_QuasiStationary.html#Modelica.Electrical.QuasiStationary>`_,
where e.g., ``L*der(i)`` is replaced by ``j*omega*L*(I_re+j*I_im)``.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                          | Description                                                           |
+===============================================================================================================================================================================================================================================================================================+=======================================================================+
| |image3| `DC\_PermanentMagnet <Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnet>`_                                                                                           | Quasistationary permanent magnet DC machine                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image4| `DC\_ElectricalExcited <Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_ElectricalExcited>`_                                                                                       | Quasistationary electrical shunt/separate excited linear DC machine   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+
| |image5| `DC\_SeriesExcited <Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_SeriesExcited>`_                                                                                               | Quasistationary series excited linear DC machine                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------+

--------------

|image6| `Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines <Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines>`_.DC\_PermanentMagnet
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quasistationary permanent magnet DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnetD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_PermanentMagnet

   Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_PermanentMagnet

Information
~~~~~~~~~~~

::

**Quasistaionary model of a DC Machine with permanent magnets.**
 This model is fully compatible with the `transient machine model of a
DC machine with permanent
magnets <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet>`_;
the only difference is that electrical transients are neglected.

::

Extends from
`Machines.BasicMachines.DCMachines.DC\_PermanentMagnet <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_PermanentMagnet>`_
(Permanent magnet DC machine),
`Machines.Icons.QuasiStationaryMachine <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.QuasiStationaryMachine>`_.

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

    model DC_PermanentMagnet 
      "Quasistationary permanent magnet DC machine"
      extends Machines.BasicMachines.DCMachines.DC_PermanentMagnet(final quasiStationary=true);
        extends Machines.Icons.QuasiStationaryMachine;
    end DC_PermanentMagnet;

--------------

|image7| `Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines <Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines>`_.DC\_ElectricalExcited
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quasistationary electrical shunt/separate excited linear DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_ElectricalExcitedD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_ElectricalExcited

   Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_ElectricalExcited

Information
~~~~~~~~~~~

::

**Quasistaionary model of a DC Machine with electrical shunt or separate
excitation.**
 This model is fully compatible with the `transient machine model of a
DC machine with electrical shunt or separate
excitation <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcited>`_;
the only difference is that electrical transients are neglected.

::

Extends from
`Machines.BasicMachines.DCMachines.DC\_ElectricalExcited <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_ElectricalExcited>`_
(Electrical shunt/separate excited linear DC machine),
`Machines.Icons.QuasiStationaryMachine <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.QuasiStationaryMachine>`_.

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
      "Quasistationary electrical shunt/separate excited linear DC machine"
      extends Machines.BasicMachines.DCMachines.DC_ElectricalExcited(final quasiStationary=true);
      extends Machines.Icons.QuasiStationaryMachine;
    end DC_ElectricalExcited;

--------------

|image8| `Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines <Modelica_Electrical_Machines_BasicMachines_QuasiStationaryDCMachines.html#Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines>`_.DC\_SeriesExcited
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Quasistationary series excited linear DC machine**

.. figure:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_SeriesExcitedD.png
   :align: center
   :alt: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_SeriesExcited

   Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_SeriesExcited

Information
~~~~~~~~~~~

::

**Quasistaionary model of a DC Machine with Series excitation.**
 This model is fully compatible with the `transient machine model of a
DC machine with with series
excitation <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcited>`_;
the only difference is that electrical transients are neglected.

::

Extends from
`Machines.BasicMachines.DCMachines.DC\_SeriesExcited <Modelica_Electrical_Machines_BasicMachines_DCMachines.html#Modelica.Electrical.Machines.BasicMachines.DCMachines.DC_SeriesExcited>`_
(Series excited linear DC machine),
`Machines.Icons.QuasiStationaryMachine <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.QuasiStationaryMachine>`_.

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
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                                                         | wNominal              | wNominal(start=1410\*2\*pi/60)    | Nominal speed [rad/s]                                     |
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

    model DC_SeriesExcited 
      "Quasistationary series excited linear DC machine"
      extends Machines.BasicMachines.DCMachines.DC_SeriesExcited(final quasiStationary=true);
      extends Machines.Icons.QuasiStationaryMachine;
    end DC_SeriesExcited;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:48
2010.

.. |Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_PermanentMagnet| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnetS.png
.. |Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_ElectricalExcited| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_ElectricalExcitedS.png
.. |Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC\_SeriesExcited| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_SeriesExcitedS.png
.. |image3| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnetS.png
.. |image4| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_ElectricalExcitedS.png
.. |image5| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_SeriesExcitedS.png
.. |image6| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_PermanentMagnetI.png
.. |image7| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_ElectricalExcitedI.png
.. |image8| image:: Modelica.Electrical.Machines.BasicMachines.QuasiStationaryDCMachines.DC_SeriesExcitedI.png
