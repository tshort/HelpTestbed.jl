=======================================
Modelica.Electrical.Machines.Interfaces
=======================================

`Modelica.Electrical.Machines <Modelica_Electrical_Machines.html#Modelica.Electrical.Machines>`_.Interfaces
-----------------------------------------------------------------------------------------------------------

**SpacePhasor connector and PartialMachines**

Information
~~~~~~~~~~~

::

This package contains the space phasor connector and partial models for
machine models.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| Name                                                                                                                                                                                                                         | Description                                            |
+==============================================================================================================================================================================================================================+========================================================+
| |image10| `SpacePhasor <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.SpacePhasor>`_                                                                                                  | Connector for Space Phasors                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image11| `PartialBasicMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicMachine>`_                                                                                  | Partial model for all machines                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image12| `PartialBasicInductionMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine>`_                                                                | Partial model for induction machine                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image13| `InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_                                                                    | Interfaces and partial models for induction machines   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image14| `PartialBasicDCMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachine>`_                                                                              | Partial model for DC machine                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image15| `DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_                                                                                         | Thermal ports of DC machines                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image16| `PartialBasicTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer>`_                                                                          | Partial model of threephase transformer                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image17| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_                                                                            | Thermal port of transformers                           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image18| `PowerBalanceTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PowerBalanceTransformer>`_                                                                          | Power balance of transformers                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+
| |image19| `FlangeSupport <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.FlangeSupport>`_                                                                                              | Shaft and support                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------+

--------------

|image20| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.SpacePhasor
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Connector for Space Phasors**

.. figure:: Modelica.Electrical.Machines.Interfaces.SpacePhasorD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.SpacePhasor

   Modelica.Electrical.Machines.Interfaces.SpacePhasor

Information
~~~~~~~~~~~

::

Connector for Space Phasors:

-  Voltage v\_[2] ... Real and Imaginary part of voltage space phasor
-  Current i\_[2] ... Real and Imaginary part of current space phasor

::

Contents
~~~~~~~~

+--------------------------------------------------------------------+----------+--------------------------------+
| Type                                                               | Name     | Description                    |
+====================================================================+==========+================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_        | v\_[2]   | 1=real, 2=imaginary part [V]   |
+--------------------------------------------------------------------+----------+--------------------------------+
| flow `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | i\_[2]   | 1=real, 2=imaginary part [A]   |
+--------------------------------------------------------------------+----------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector SpacePhasor "Connector for Space Phasors"
      Modelica.SIunits.Voltage v_[2] "1=real, 2=imaginary part";
      flow Modelica.SIunits.Current i_[2] "1=real, 2=imaginary part";
    end SpacePhasor;

--------------

|image21| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.PartialBasicMachine
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for all machines**

.. figure:: Modelica.Electrical.Machines.Interfaces.PartialBasicMachineD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.PartialBasicMachine

   Modelica.Electrical.Machines.Interfaces.PartialBasicMachine

Information
~~~~~~~~~~~

::

Base partial model DC machines:

-  main parts of the icon
-  mechanical shaft
-  mechanical support

Besides the mechanical connector *flange* (i.e., the shaft) the machines
have a second mechanical connector *support*.
 If *useSupport* = false, it is assumed that the stator is fixed.
 Otherwise reaction torque (i.e., airGap torque, minus acceleration
torque for stator's moment of inertia) can be measured at *support*.
 One may also fix the the shaft and let rotate the stator; parameter Js
is only of importance when the stator is rotating.

::

Extends from
`Machines.Icons.TransientMachine <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.TransientMachine>`_.

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+-------------------------------------------------------+
| Type                                                                                                                      | Name                 | Default   | Description                                           |
+===========================================================================================================================+======================+===========+=======================================================+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | Jr                   |           | Rotor's moment of inertia [kg.m2]                     |
+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+-------------------------------------------------------+
| Boolean                                                                                                                   | useSupport           | false     | Enable / disable (=fixed stator) support              |
+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+-------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                               | Js                   |           | Stator's moment of inertia [kg.m2]                    |
+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+-------------------------------------------------------+
| Boolean                                                                                                                   | useThermalPort       | false     | Enable / disable (=fixed temperatures) thermal port   |
+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+-------------------------------------------------------+
| **Losses**                                                                                                                |
+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+-------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_   | frictionParameters   |           | Friction losses                                       |
+---------------------------------------------------------------------------------------------------------------------------+----------------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| Type                                                                                                             | Name      | Description                                      |
+==================================================================================================================+===========+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange    | Shaft                                            |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support   | Support at which the reaction torque is acting   |
+------------------------------------------------------------------------------------------------------------------+-----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialBasicMachine "Partial model for all machines"
      extends Machines.Icons.TransientMachine;
      constant Modelica.SIunits.Angle pi=Modelica.Constants.pi;
      parameter Modelica.SIunits.Inertia Jr "Rotor's moment of inertia";
      parameter Boolean useSupport=false "Enable / disable (=fixed stator) support";
      parameter Modelica.SIunits.Inertia Js(start=Jr) "Stator's moment of inertia";
      parameter Boolean useThermalPort=false 
        "Enable / disable (=fixed temperatures) thermal port";
      parameter Machines.Losses.FrictionParameters frictionParameters 
        "Friction losses";
      output Modelica.SIunits.Angle phiMechanical = flange.phi-internalSupport.phi 
        "Mechanical angle of rotor against stator";
      output Modelica.SIunits.AngularVelocity wMechanical(displayUnit="1/min") = der(phiMechanical) 
        "Mechanical angular velocity of rotor against stator";
      output Modelica.SIunits.Torque tauElectrical = inertiaRotor.flange_a.tau 
        "Electromagnetic torque";
      output Modelica.SIunits.Torque tauShaft = -flange.tau "Shaft torque";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange "Shaft";
      Modelica.Mechanics.Rotational.Components.Inertia inertiaRotor(final J=Jr);
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if useSupport 
        "Support at which the reaction torque is acting";
      Modelica.Mechanics.Rotational.Components.Inertia inertiaStator(final J=Js);
      Modelica.Mechanics.Rotational.Components.Fixed fixed if  (not useSupport);
      Machines.Losses.Friction friction(final frictionParameters=frictionParameters);
    protected 
      Modelica.Mechanics.Rotational.Interfaces.Support internalSupport;
    equation 
      connect(inertiaRotor.flange_b, flange);
      connect(inertiaStator.flange_b, support);
      connect(internalSupport, fixed.flange);
      connect(internalSupport, inertiaStator.flange_a);
      connect(inertiaRotor.flange_b, friction.flange);
      connect(friction.support, internalSupport);
    end PartialBasicMachine;

--------------

|image22| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.PartialBasicInductionMachine
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for induction machine**

.. figure:: Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachineD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine

   Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine

Information
~~~~~~~~~~~

::

Partial model for induction machine models

::

Extends from
`PartialBasicMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicMachine>`_
(Partial model for all machines).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Type                                                                                                                                                                                                          | Name                   | Default                           | Description                                                     |
+===============================================================================================================================================================================================================+========================+===================================+=================================================================+
| Integer                                                                                                                                                                                                       | p                      |                                   | Number of pole pairs (Integer)                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                                                                               | fsNominal              |                                   | Nominal frequency [Hz]                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Boolean                                                                                                                                                                                                       | useSupport             | false                             | Enable / disable (=fixed stator) support                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                                                                                   | Js                     |                                   | Stator's moment of inertia [kg.m2]                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Boolean                                                                                                                                                                                                       | useThermalPort         | false                             | Enable / disable (=fixed temperatures) thermal port             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_       | powerBalance           | redeclare output Machines.In...   | Power balance                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_         | thermalPort            | redeclare Machines.Interface...   |                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `PartialThermalAmbientInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines>`_   | thermalAmbient         | redeclare Machines.Interface...   |                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Operational temperatures                                                                                                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                                                                           | TsOperational          |                                   | Operational temperature of stator resistance [K]                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                                                                             | Rs                     |                                   | Stator resistance per phase at TRef [Ohm]                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                                                                           | TsRef                  |                                   | Reference temperature of stator resistance [K]                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_                                                             | alpha20s               |                                   | Temperature coefficient of stator resistance at 20 degC [1/K]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                                                                             | Lszero                 | Lssigma                           | Stator zero sequence inductance [H]                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                                                                             | Lssigma                |                                   | Stator stray inductance per phase [H]                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| **Losses**                                                                                                                                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                                                                               | statorCoreParameters   |                                   | Stator core losses                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                                                                                     | strayLoadParameters    |                                   | Stray load losses                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| Type                                                                                                                                                                                                    | Name          | Description                                      |
+=========================================================================================================================================================================================================+===============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_                                                                                          | flange        | Shaft                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_                                                                                          | support       | Support at which the reaction torque is acting   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                                                                                 | plug\_sp      | Positive stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                                                                                 | plug\_sn      | Negative stator plug                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_   | thermalPort   |                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialBasicInductionMachine 
      "Partial model for induction machine"
      final parameter Integer m=3 "Number of phases";
      parameter Integer p(min=1, start=2) "Number of pole pairs (Integer)";
      parameter Modelica.SIunits.Frequency fsNominal(start=50) "Nominal frequency";
      parameter Modelica.SIunits.Temperature TsOperational(start=293.15) 
        "Operational temperature of stator resistance";
      parameter Modelica.SIunits.Resistance Rs(start=0.03) 
        "Stator resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature TsRef(start=293.15) 
        "Reference temperature of stator resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20s(
        start=0) "Temperature coefficient of stator resistance at 20 degC";
      parameter Modelica.SIunits.Inductance Lszero=Lssigma 
        "Stator zero sequence inductance";
      parameter Modelica.SIunits.Inductance Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)) 
        "Stator stray inductance per phase";
      extends PartialBasicMachine(Jr(start=0.29),
        frictionParameters(wRef(start=2*pi*fsNominal/p)));
      parameter Machines.Losses.CoreParameters statorCoreParameters(
        final m=3,
        VRef(start=100),
        wRef=2*pi*fsNominal) "Stator core losses";
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters(
        IRef(start=100), wRef(start=2*pi*fsNominal/p)) "Stray load losses";
      replaceable output Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        powerBalance(
        final powerStator = Machines.SpacePhasors.Functions.activePower(vs, is),
        final powerMechanical = wMechanical*tauShaft,
        final powerInertiaStator = inertiaStator.J*inertiaStator.a*inertiaStator.w,
        final powerInertiaRotor = inertiaRotor.J*inertiaRotor.a*inertiaRotor.w,
        final lossPowerStatorWinding = -sum(rs.heatPort.Q_flow),
        final lossPowerStatorCore = -statorCore.heatPort.Q_flow,
        final lossPowerStrayLoad = -strayLoad.heatPort.Q_flow,
        final lossPowerFriction = -friction.heatPort.Q_flow) "Power balance";
      output Modelica.SIunits.Voltage vs[m] = plug_sp.pin.v - plug_sn.pin.v 
        "Stator instantaneous voltages";
      output Modelica.SIunits.Current is[m] = plug_sp.pin.i 
        "Stator instantaneous currents";
      output Modelica.SIunits.Current i_0_s( stateSelect=StateSelect.prefer) = spacePhasorS.zero.i 
        "Stator zero-sequence current";
    // to be defined in model that extends from this partial (since airgap isn't included here)
      input Modelica.SIunits.Current idq_ss[2] 
        "Stator space phasor current / stator fixed frame";
      input Modelica.SIunits.Current idq_sr[2](each stateSelect=StateSelect.prefer) 
        "Stator space phasor current / rotor fixed frame";
      input Modelica.SIunits.Current idq_rs[2] 
        "Rotor space phasor current / stator fixed frame";
      input Modelica.SIunits.Current idq_rr[2](each stateSelect=StateSelect.prefer) 
        "Rotor space phasor current / rotor fixed frame";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_sp(final m=m) 
        "Positive stator plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_sn(final m=m) 
        "Negative stator plug";
      Modelica.Electrical.MultiPhase.Basic.Resistor rs(
        final m=m,
        final R=fill(Rs, m),
        final T_ref=fill(TsRef, m),
        final alpha=fill(Machines.Thermal.convertAlpha(alpha20s, TsRef), m),
        final useHeatPort=true,
        final T=fill(TsRef,m));
      Machines.BasicMachines.Components.Inductor lssigma(final L=fill(Lssigma, 2));
      Modelica.Electrical.Analog.Basic.Inductor lszero(final L=Lszero);
      Machines.Losses.InductionMachines.Core statorCore(final coreParameters=statorCoreParameters);
      Machines.SpacePhasors.Components.SpacePhasor spacePhasorS(final turnsRatio=1);
      Machines.Losses.InductionMachines.StrayLoad strayLoad(final strayLoadParameters=
            strayLoadParameters);
      replaceable Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines
        thermalPort(final m=m) if useThermalPort;
      replaceable Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        thermalAmbient(
        final useTemperatureInputs=false, final Ts=TsOperational,
        final m=m) if not useThermalPort;
    protected 
      replaceable Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines
        internalThermalPort(final m=m);
    equation 
      connect(spacePhasorS.plug_n, plug_sn);
      connect(thermalPort, internalThermalPort);
      connect(thermalAmbient.thermalPort, internalThermalPort);
      connect(strayLoad.plug_n, rs.plug_p);
      connect(strayLoad.plug_p, plug_sp);
      connect(strayLoad.flange, inertiaRotor.flange_b);
      connect(strayLoad.support, internalSupport);
      connect(spacePhasorS.plug_p, rs.plug_n);
      connect(spacePhasorS.zero,lszero. p);
      connect(lszero.n, spacePhasorS.ground);
      connect(spacePhasorS.spacePhasor, lssigma.spacePhasor_a);
      connect(statorCore.spacePhasor, lssigma.spacePhasor_a);
      connect(statorCore.heatPort, internalThermalPort.heatPortStatorCore);
      connect(strayLoad.heatPort, internalThermalPort.heatPortStrayLoad);
      connect(rs.heatPort, internalThermalPort.heatPortStatorWinding);
      connect(friction.heatPort, internalThermalPort.heatPortFriction);
    end PartialBasicInductionMachine;

--------------

|image23| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.PartialBasicDCMachine
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for DC machine**

.. figure:: Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachineD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachine

   Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachine

Information
~~~~~~~~~~~

::

Partial model for DC machine models.

::

Extends from
`PartialBasicMachine <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.PartialBasicMachine>`_
(Partial model for all machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Type                                                                                                                                                                              | Name                  | Default                           | Description                                               |
+===================================================================================================================================================================================+=======================+===================================+===========================================================+
| Boolean                                                                                                                                                                           | useSupport            | false                             | Enable / disable (=fixed stator) support                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                                                       | Js                    |                                   | Stator's moment of inertia [kg.m2]                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Boolean                                                                                                                                                                           | useThermalPort        | false                             | Enable / disable (=fixed temperatures) thermal port       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `PartialPowerBalanceDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines>`_       | powerBalance          | redeclare output Machines.In...   | Power balance                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_         | thermalPort           | redeclare Machines.Interface...   |                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `PartialThermalAmbientDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines>`_   | thermalAmbient        | redeclare Machines.Interface...   |                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| Operational temperatures                                                                                                                                                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                                               | TaOperational         |                                   | Operational armature temperature [K]                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal parameters**                                                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                                                                                                       | VaNominal             |                                   | Nominal armature voltage [V]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                                                                                                       | IaNominal             |                                   | Nominal armature current (>0..Motor, <0..Generator) [A]   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                                                                                       | wNominal              |                                   | Nominal speed [rad/s]                                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                                               | TaNominal             |                                   | Nominal armature temperature [K]                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                                                 | Ra                    |                                   | Armature resistance at TRef [Ohm]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                                               | TaRef                 |                                   | Reference temperature of armature resistance [K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_                                 | alpha20a              |                                   | Temperature coefficient of armature resistance [1/K]      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                                                 | La                    |                                   | Armature inductance [H]                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| **Losses**                                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `CoreParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters>`_                                                                   | coreParameters        |                                   | Armature core losses                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `StrayLoadParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters>`_                                                         | strayLoadParameters   |                                   | Stray load losses                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+
| `BrushParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters>`_                                                                 | brushParameters       |                                   | Brush losses                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------+-----------------------------------+-----------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| Type                                                                                                                                                                        | Name          | Description                                      |
+=============================================================================================================================================================================+===============+==================================================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_                                                              | flange        | Shaft                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_                                                              | support       | Support at which the reaction torque is acting   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_                                                               | pin\_ap       | Positive armature pin                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                                                               | pin\_an       | Negative armature pin                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_   | thermalPort   |                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialBasicDCMachine "Partial model for DC machine"
      parameter Modelica.SIunits.Temperature TaOperational(start=293.15) 
        "Operational armature temperature";
      parameter Modelica.SIunits.Voltage VaNominal(start=100) 
        "Nominal armature voltage";
      parameter Modelica.SIunits.Current IaNominal(start=100) 
        "Nominal armature current (>0..Motor, <0..Generator)";
      parameter Modelica.SIunits.AngularVelocity wNominal(displayUnit="1/min", start=1425*2*pi/60) 
        "Nominal speed";
      parameter Modelica.SIunits.Temperature TaNominal(start=293.15) 
        "Nominal armature temperature";
      parameter Modelica.SIunits.Resistance Ra(start=0.05) 
        "Armature resistance at TRef";
      parameter Modelica.SIunits.Temperature TaRef(start=293.15) 
        "Reference temperature of armature resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20a(
         start=0) "Temperature coefficient of armature resistance";
      parameter Modelica.SIunits.Inductance La(start=0.0015) "Armature inductance";
      extends PartialBasicMachine(Jr(start=0.15),
        frictionParameters(wRef=wNominal));
      parameter Machines.Losses.CoreParameters coreParameters(final m=1,
        VRef=ViNominal, wRef=wNominal) "Armature core losses";
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters(
        IRef=IaNominal, wRef=wNominal) "Stray load losses";
      parameter Machines.Losses.BrushParameters brushParameters(
        ILinear=0.01*IaNominal) "Brush losses";
      replaceable output Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines
        powerBalance(
        final powerArmature = va*ia,
        final powerMechanical = wMechanical*tauShaft,
        final powerInertiaStator = inertiaStator.J*inertiaStator.a*inertiaStator.w,
        final powerInertiaRotor = inertiaRotor.J*inertiaRotor.a*inertiaRotor.w,
        final lossPowerArmature = -ra.heatPort.Q_flow,
        final lossPowerCore = -core.heatPort.Q_flow,
        final lossPowerStrayLoad = -strayLoad.heatPort.Q_flow,
        final lossPowerFriction = -friction.heatPort.Q_flow,
        final lossPowerBrush = -brush.heatPort.Q_flow) "Power balance";
      output Modelica.SIunits.Voltage va = pin_ap.v-pin_an.v "Armature voltage";
      output Modelica.SIunits.Current ia = pin_ap.i "Armature current";
      Modelica.Electrical.Analog.Interfaces.PositivePin pin_ap 
        "Positive armature pin";
      Modelica.Electrical.Analog.Interfaces.NegativePin pin_an 
        "Negative armature pin";
      Modelica.Electrical.Analog.Basic.Resistor ra(
        final R=Ra,
        final T_ref=TaRef,
        final alpha=Machines.Thermal.convertAlpha(alpha20a, TaRef),
        final useHeatPort=true,
        final T=TaRef);
      Machines.BasicMachines.Components.InductorDC la(final L=La,
        final quasiStationary = quasiStationary);
      Machines.Losses.DCMachines.Brush brush(final brushParameters=brushParameters);
      Machines.Losses.DCMachines.Core core(final coreParameters=coreParameters);
      Machines.Losses.DCMachines.StrayLoad strayLoad(final strayLoadParameters=strayLoadParameters);
      replaceable Machines.Interfaces.DCMachines.PartialThermalPortDCMachines
        thermalPort if useThermalPort;
      replaceable Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines
        thermalAmbient(
        final useTemperatureInputs=false, final Ta=TaOperational) if not useThermalPort;
    protected 
      constant Boolean quasiStationary=false "No electrical transients if true";
      parameter Modelica.SIunits.Voltage ViNominal "Nominal induced Voltage";
      parameter Modelica.SIunits.MagneticFlux psi_eNominal "Nominal magnetic flux";
      parameter Real turnsRatio = ViNominal/(wNominal*psi_eNominal) 
        "Ratio of armature turns over number of turns of the excitation winding";
      replaceable Machines.Interfaces.DCMachines.PartialThermalPortDCMachines
        internalThermalPort;
    equation 
      assert(ViNominal > Modelica.Constants.eps, "VaNominal has to be > (Ra[+Rse])*IaNominal");
      connect(la.p,ra. n);
      connect(thermalPort, internalThermalPort);
      connect(thermalAmbient.thermalPort, internalThermalPort);
      connect(brush.n, pin_an);
      connect(pin_ap, strayLoad.p);
      connect(strayLoad.n, ra.p);
      connect(strayLoad.flange, inertiaRotor.flange_b);
      connect(strayLoad.support, internalSupport);
      connect(la.p, core.p);
      connect(core.n, brush.p);
      connect(core.heatPort, internalThermalPort.heatPortCore);
      connect(brush.heatPort, internalThermalPort.heatPortBrush);
      connect(strayLoad.heatPort, internalThermalPort.heatPortStrayLoad);
      connect(friction.heatPort, internalThermalPort.heatPortFriction);
      connect(ra.heatPort, internalThermalPort.heatPortArmature);
    end PartialBasicDCMachine;

--------------

|image24| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.PartialBasicTransformer
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model of threephase transformer**

.. figure:: Modelica.Electrical.Machines.Interfaces.PartialBasicTransformerD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer

   Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer

Information
~~~~~~~~~~~

::

Partialmodel of a threephase transformer, containing primary and
secondary resistances and stray inductances, as well as the iron core.
Circuit layout (vector group) of primary and secondary windings have to
be defined.
**Default values for transformer's parameters (a realistic example)
are:**

+-------------------------------------------------+---------+------------------------------------------+
| turns ratio n                                   | 1       |                                          |
+-------------------------------------------------+---------+------------------------------------------+
| nominal frequency fNominal                      | 50      | Hz                                       |
+-------------------------------------------------+---------+------------------------------------------+
| nominal voltage per phase                       | 100     | V RMS                                    |
+-------------------------------------------------+---------+------------------------------------------+
| nominal current per phase                       | 100     | A RMS                                    |
+-------------------------------------------------+---------+------------------------------------------+
| nominal apparent power                          | 30      | kVA                                      |
+-------------------------------------------------+---------+------------------------------------------+
| primary resistance R1                           | 0.005   | Ohm per phase at reference temperature   |
+-------------------------------------------------+---------+------------------------------------------+
| reference temperature T1Ref                     | 20      | °C                                       |
+-------------------------------------------------+---------+------------------------------------------+
| temperature coefficient alpha20\_1              | 0       | 1/K                                      |
+-------------------------------------------------+---------+------------------------------------------+
| primary stray inductance L1sigma                | 78E-6   | H per phase                              |
+-------------------------------------------------+---------+------------------------------------------+
| secondary resistance R2                         | 0.005   | Ohm per phase at reference temperature   |
+-------------------------------------------------+---------+------------------------------------------+
| reference temperature T2Ref                     | 20      | °C                                       |
+-------------------------------------------------+---------+------------------------------------------+
| temperature coefficient alpha20\_2              | 0       | 1/K                                      |
+-------------------------------------------------+---------+------------------------------------------+
| secondary stray inductance L2sigma              | 78E-6   | H per phase                              |
+-------------------------------------------------+---------+------------------------------------------+
| operational temperature T1Operational           | 20      | °C                                       |
+-------------------------------------------------+---------+------------------------------------------+
| operational temperature T2Operational           | 20      | °C                                       |
+-------------------------------------------------+---------+------------------------------------------+
| These values give the operational parameters:   |         |                                          |
+-------------------------------------------------+---------+------------------------------------------+
| nominal voltage drop                            | 0.05    | p.u.                                     |
+-------------------------------------------------+---------+------------------------------------------+
| nominal copper losses                           | 300     | W                                        |
+-------------------------------------------------+---------+------------------------------------------+

::

Extends from
`Machines.Icons.TransientTransformer <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.TransientTransformer>`_.

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Type                                                                                                                                                | Name             | Default   | Description                                                               |
+=====================================================================================================================================================+==================+===========+===========================================================================+
| Real                                                                                                                                                | n                |           | Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Boolean                                                                                                                                             | useThermalPort   | false     | Enable / disable (=fixed temperatures) thermal port                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| Operational temperatures                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Operational    |           | Operational temperature of primary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Operational    |           | Operational temperature of secondary resistance [K]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| **Nominal resistances and inductances**                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R1               |           | Primary resistance per phase at TRef [Ohm]                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T1Ref            |           | Reference temperature of primary resistance [K]                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_1       |           | Temperature coefficient of primary resistance at 20 degC [1/K]            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L1sigma          |           | Primary stray inductance per phase [H]                                    |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_                                                                                   | R2               |           | Secondary resistance per phase at TRef [Ohm]                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                 | T2Ref            |           | Reference temperature of secondary resistance [K]                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_   | alpha20\_2       |           | Temperature coefficient of secondary resistance at 20 degC [1/K]          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                   | L2sigma          |           | Secondary stray inductance per phase [H]                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+---------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| Type                                                                                                                                      | Name          | Description      |
+===========================================================================================================================================+===============+==================+
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                   | plug1         | Primary plug     |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                   | plug2         | Secondary plug   |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+
| `ThermalPortTransformer <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer>`_   | thermalPort   |                  |
+-------------------------------------------------------------------------------------------------------------------------------------------+---------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialBasicTransformer 
      "Partial model of threephase transformer"
      extends Machines.Icons.TransientTransformer;
      final parameter Integer m(min=1) = 3 "Number of phases";
      constant String VectorGroup="Yy00";
      parameter Real n(start=1) 
        "Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)";
      parameter Modelica.SIunits.Resistance R1(start=5E-3/(if C1=="D" then 1 else 3)) 
        "Primary resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature T1Ref(start=293.15) 
        "Reference temperature of primary resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20_1(
                  start=0) 
        "Temperature coefficient of primary resistance at 20 degC";
      parameter Modelica.SIunits.Inductance L1sigma(start=78E-6/(if C1=="D" then 1 else 3)) 
        "Primary stray inductance per phase";
      parameter Modelica.SIunits.Resistance R2(start=5E-3/(if C2=="d" then 1 else 3)) 
        "Secondary resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature T2Ref(start=293.15) 
        "Reference temperature of secondary resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20_2(start=0) 
        "Temperature coefficient of secondary resistance at 20 degC";
      parameter Modelica.SIunits.Inductance L2sigma(start=78E-6/(if C2=="d" then 1 else 3)) 
        "Secondary stray inductance per phase";
      parameter Boolean useThermalPort=false 
        "Enable / disable (=fixed temperatures) thermal port";
      parameter Modelica.SIunits.Temperature T1Operational(start=293.15) 
        "Operational temperature of primary resistance";
      parameter Modelica.SIunits.Temperature T2Operational(start=293.15) 
        "Operational temperature of secondary resistance";
      output Machines.Interfaces.PowerBalanceTransformer powerBalance(
        final power1 = Machines.SpacePhasors.Functions.activePower(v1, +i1),
        final power2 = Machines.SpacePhasors.Functions.activePower(v2, -i2),
        final lossPower1 = -sum(r1.heatPort.Q_flow),
        final lossPower2 = -sum(r2.heatPort.Q_flow),
        final lossPowerCore = 0) "Power balance";
      output Modelica.SIunits.Voltage v1[m]=plug1.pin.v "Primary voltage";
      output Modelica.SIunits.Current i1[m]=plug1.pin.i "Primary current";
      output Modelica.SIunits.Voltage v2[m]=plug2.pin.v "Secondary voltage";
      output Modelica.SIunits.Current i2[m]=plug2.pin.i "Secondary current";
    protected 
      constant String C1 = Modelica.Utilities.Strings.substring(VectorGroup,1,1);
      constant String C2 = Modelica.Utilities.Strings.substring(VectorGroup,2,2);
      parameter Real ni=n*(if C2=="z" then sqrt(3) else 2)*(if C2=="d" then 1 else sqrt(3))/(if C1=="D" then 1 else sqrt(3));
    public 
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug1(final m=m) 
        "Primary plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug2(final m=m) 
        "Secondary plug";
      Modelica.Electrical.MultiPhase.Basic.Resistor r1(
        final m=m,
        final R=fill(R1,m),
        final T_ref=fill(T1Ref,m),
        final alpha=fill(Machines.Thermal.convertAlpha(alpha20_1, T1Ref), m),
        final useHeatPort=true,
        final T=fill(T1Ref,m));
      Modelica.Electrical.MultiPhase.Basic.Inductor l1sigma(final m=m, final L=fill(L1sigma, m));
      Modelica.Electrical.MultiPhase.Basic.Resistor r2(
        final m=m,
        final R=fill(R2,m),
        final T_ref=fill(T2Ref,m),
        final alpha=fill(Machines.Thermal.convertAlpha(alpha20_2, T2Ref), m),
        final useHeatPort=true,
        final T=fill(T2Ref,m));
      Modelica.Electrical.MultiPhase.Basic.Inductor l2sigma(final m=m, final L=fill(L2sigma, m));
      Machines.BasicMachines.Components.IdealCore core(
        final m=m,
        final n12=ni,
        final n13=ni);
      Machines.Interfaces.ThermalPortTransformer thermalPort(final m=m) if useThermalPort;
     Machines.Thermal.ThermalAmbientTransformer thermalAmbient(final useTemperatureInputs=false,
        final T1=T1Operational,
        final T2=T2Operational,
        final m=m) if not useThermalPort;
    protected 
      Machines.Interfaces.ThermalPortTransformer internalThermalPort(final m=m);
    equation 
      connect(r1.plug_n,l1sigma.plug_p);
      connect(l2sigma.plug_n,r2.plug_p);
      connect(plug1, r1.plug_p);
      connect(r2.plug_n, plug2);
      connect(thermalPort, internalThermalPort);
      connect(thermalAmbient.thermalPort, internalThermalPort);
      connect(r1.heatPort, internalThermalPort.heatPort1);
      connect(r2.heatPort, internalThermalPort.heatPort2);
    end PartialBasicTransformer;

--------------

|image25| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.ThermalPortTransformer
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of transformers**

.. figure:: Modelica.Electrical.Machines.Interfaces.ThermalPortTransformerD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer

   Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer

Information
~~~~~~~~~~~

::

Thermal port for transformers

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------+---------------------------------------+
| Type                                                                                                                 | Name           | Description                           |
+======================================================================================================================+================+=======================================+
| Integer                                                                                                              | m              | number of phases                      |
+----------------------------------------------------------------------------------------------------------------------+----------------+---------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort1[m]   | Heat port of primary windings         |
+----------------------------------------------------------------------------------------------------------------------+----------------+---------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort2[m]   | Heat port of secondary windings       |
+----------------------------------------------------------------------------------------------------------------------+----------------+---------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortCore   | Heat port of (optional) core losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortTransformer "Thermal port of transformers"
      parameter Integer m=3 "number of phases";

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort1[m] 
        "Heat port of primary windings";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort2[m] 
        "Heat port of secondary windings";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortCore 
        "Heat port of (optional) core losses";
    end ThermalPortTransformer;

--------------

|image26| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.PowerBalanceTransformer
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of transformers**

Information
~~~~~~~~~~~

::

Power balance of transformers.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceTransformer "Power balance of transformers"
      extends Modelica.Icons.Record;
      Modelica.SIunits.Power power1 "Primary power";
      Modelica.SIunits.Power power2 "Secondary power";
      Modelica.SIunits.Power lossPowerTotal = lossPower1 + lossPower2 + lossPowerCore 
        "Total loss power";
      Modelica.SIunits.Power lossPower1 "Primary copper losses";
      Modelica.SIunits.Power lossPower2 "Secondary copper losses";
      Modelica.SIunits.Power lossPowerCore "Core losses";
    end PowerBalanceTransformer;

--------------

|image27| `Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.FlangeSupport
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Shaft and support**

.. figure:: Modelica.Electrical.Machines.Interfaces.FlangeSupportD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.FlangeSupport

   Modelica.Electrical.Machines.Interfaces.FlangeSupport

Information
~~~~~~~~~~~

::

This partial model defines shaft and housing connector for loss models.
Positive torque ``tau`` acts as braking torque.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------+-----------+-----------------------+
| Type                                                                                                             | Name      | Description           |
+==================================================================================================================+===========+=======================+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | flange    | Shaft end             |
+------------------------------------------------------------------------------------------------------------------+-----------+-----------------------+
| `Flange\_a <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.Flange_a>`_   | support   | Housing and support   |
+------------------------------------------------------------------------------------------------------------------+-----------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model FlangeSupport "Shaft and support"

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange "Shaft end";
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support 
        "Housing and support";

      Modelica.SIunits.Angle phi "Angle between shaft and support";
      Modelica.SIunits.Torque tau "Torque";
      Modelica.SIunits.AngularVelocity w 
        "Relative angular velocity of flange and support";
    equation 
      phi = flange.phi - support.phi;
      w = der(phi);
      tau = -flange.tau;
      tau = support.tau;
    end FlangeSupport;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:13
2010.

.. |Modelica.Electrical.Machines.Interfaces.SpacePhasor| image:: Modelica.Electrical.Machines.Interfaces.SpacePhasorS.png
.. |Modelica.Electrical.Machines.Interfaces.PartialBasicMachine| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicMachineS.png
.. |Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachine| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachineS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines| image:: Modelica.Electrical.Machines.Interfaces.InductionMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachine| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachineS.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines| image:: Modelica.Electrical.Machines.Interfaces.DCMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicTransformerS.png
.. |Modelica.Electrical.Machines.Interfaces.ThermalPortTransformer| image:: Modelica.Electrical.Machines.Interfaces.ThermalPortTransformerS.png
.. |Modelica.Electrical.Machines.Interfaces.PowerBalanceTransformer| image:: Modelica.Electrical.Machines.Interfaces.PowerBalanceTransformerS.png
.. |Modelica.Electrical.Machines.Interfaces.FlangeSupport| image:: Modelica.Electrical.Machines.Interfaces.FlangeSupportS.png
.. |image10| image:: Modelica.Electrical.Machines.Interfaces.SpacePhasorS.png
.. |image11| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicMachineS.png
.. |image12| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachineS.png
.. |image13| image:: Modelica.Electrical.Machines.Interfaces.InductionMachinesS.png
.. |image14| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachineS.png
.. |image15| image:: Modelica.Electrical.Machines.Interfaces.DCMachinesS.png
.. |image16| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicTransformerS.png
.. |image17| image:: Modelica.Electrical.Machines.Interfaces.ThermalPortTransformerS.png
.. |image18| image:: Modelica.Electrical.Machines.Interfaces.PowerBalanceTransformerS.png
.. |image19| image:: Modelica.Electrical.Machines.Interfaces.FlangeSupportS.png
.. |image20| image:: Modelica.Electrical.Machines.Interfaces.SpacePhasorI.png
.. |image21| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicMachineI.png
.. |image22| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicInductionMachineI.png
.. |image23| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicDCMachineI.png
.. |image24| image:: Modelica.Electrical.Machines.Interfaces.PartialBasicTransformerI.png
.. |image25| image:: Modelica.Electrical.Machines.Interfaces.ThermalPortTransformerI.png
.. |image26| image:: Modelica.Electrical.Machines.Interfaces.PowerBalanceTransformerI.png
.. |image27| image:: Modelica.Electrical.Machines.Interfaces.FlangeSupportI.png
