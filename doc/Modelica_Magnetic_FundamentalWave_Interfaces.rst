============================================
Modelica.Magnetic.FundamentalWave.Interfaces
============================================

`Modelica.Magnetic.FundamentalWave <Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave>`_.Interfaces
--------------------------------------------------------------------------------------------------------------------------

**Interfaces and partial models**

Information
~~~~~~~~~~~

::

This package contains interface definitions of the magnetic ports as
well as partial models.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                        | Description                                                         |
+=============================================================================================================================================================================================================================================+=====================================================================+
| |image7| `MagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_                                                                                                      | Complex magnetic port                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image8| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_                                                                                      | Negative complex magnetic port                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image9| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_                                                                                      | Positive complex magnetic port                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image10| `PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_                                                                                                 | Two magnetic ports for graphical modeling                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image11| `PartialTwoPortElementary <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary>`_                                                                             | Two magnetic ports for textual modeling                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image12| `PartialBasicInductionMachine <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine>`_                                                                     | Partial model for induction machine                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+
| |image13| `StateSelector <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.StateSelector>`_                                                                                                   | Transform instantaneous values to space phasors and select states   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------+

--------------

`Modelica.Magnetic.FundamentalWave.Interfaces <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces>`_.MagneticPort
-------------------------------------------------------------------------------------------------------------------------------------------------------------

**Complex magnetic port**

Information
~~~~~~~~~~~

::

The potential quantity of the magnetic port is the complex magnetic
potential difference |image14|. The corresponding flow quantity is the
magnetic flux |image15|.

See also
^^^^^^^^

`PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_,
`NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_

::

Contents
~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| Type                                                                                                                | Name   | Description                             |
+=====================================================================================================================+========+=========================================+
| `ComplexMagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticPotentialDifference>`_   | V\_m   | Complex magnetic potential difference   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| flow `ComplexMagneticFlux <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticFlux>`_                            | Phi    | Complex magnetic flux                   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector MagneticPort "Complex magnetic port"

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      flow Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    end MagneticPort;

--------------

|image16| `Modelica.Magnetic.FundamentalWave.Interfaces <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces>`_.NegativeMagneticPort
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Negative complex magnetic port**

.. figure:: Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPortD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort

   Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort

Information
~~~~~~~~~~~

::

Negative magnetic
`port <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_.

See also
^^^^^^^^

`MagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_,
`PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_
(Complex magnetic port).

Contents
~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| Type                                                                                                                | Name   | Description                             |
+=====================================================================================================================+========+=========================================+
| `ComplexMagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticPotentialDifference>`_   | V\_m   | Complex magnetic potential difference   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| flow `ComplexMagneticFlux <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticFlux>`_                            | Phi    | Complex magnetic flux                   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector NegativeMagneticPort "Negative complex magnetic port"

      extends Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort;

    end NegativeMagneticPort;

--------------

|image17| `Modelica.Magnetic.FundamentalWave.Interfaces <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces>`_.PositiveMagneticPort
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Positive complex magnetic port**

.. figure:: Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPortD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort

   Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort

Information
~~~~~~~~~~~

::

Positive magnetic
`port <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_.

See also
^^^^^^^^

`MagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_,
`NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_
(Complex magnetic port).

Contents
~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| Type                                                                                                                | Name   | Description                             |
+=====================================================================================================================+========+=========================================+
| `ComplexMagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticPotentialDifference>`_   | V\_m   | Complex magnetic potential difference   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| flow `ComplexMagneticFlux <Modelica_SIunits.html#Modelica.SIunits.ComplexMagneticFlux>`_                            | Phi    | Complex magnetic flux                   |
+---------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector PositiveMagneticPort "Positive complex magnetic port"

      extends Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort;
    end PositiveMagneticPort;

--------------

|image18| `Modelica.Magnetic.FundamentalWave.Interfaces <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces>`_.PartialTwoPort
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Two magnetic ports for graphical modeling**

.. figure:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort

   Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort

Information
~~~~~~~~~~~

::

This magnetic two port element consists of a
`positive <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_
and a `negative magnetic
port <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_
and considers the flux balance of the two ports. Additionally the
magnetic potential difference (of the positive and the negative port)
and the magnetic flux (into the positive magnetic port) are defined.
This model is mainly to used to extend from in order build more complex
- graphical - models.

See also
^^^^^^^^

`PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_,
`NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_,
`PartialTwoPortElementary <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary>`_

::

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| Type                                                                                                                                            | Name      | Description                      |
+=================================================================================================================================================+===========+==================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoPort 
      "Two magnetic ports for graphical modeling"

      PositiveMagneticPort port_p "Positive complex magnetic port";
      NegativeMagneticPort port_n "Negative complex magnetic port";

    end PartialTwoPort;

--------------

|image19| `Modelica.Magnetic.FundamentalWave.Interfaces <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces>`_.PartialTwoPortElementary
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Two magnetic ports for textual modeling**

.. figure:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary

   Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary

Information
~~~~~~~~~~~

::

This magnetic two port element only consists of a
`positive <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_
and a `negative magnetic
port <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_.
This model is mainly used to extend from in order build more complex -
equation based - models.

See also
^^^^^^^^

`PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_,
`NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_,
`PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_

::

Extends from
`Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
(Two magnetic ports for graphical modeling).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| Type                                                                                                                                            | Name      | Description                      |
+=================================================================================================================================================+===========+==================================+
| `PositiveMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative complex magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------------------+-----------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoPortElementary 
      "Two magnetic ports for textual modeling"

      extends Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort;

      Modelica.SIunits.ComplexMagneticPotentialDifference  V_m 
        "Complex magnetic potential difference";
      Modelica.SIunits.ComplexMagneticFlux  Phi "Complex magnetic flux";

    equation 
      // Flux into positive port
      V_m = port_p.V_m - port_n.V_m;

      // Magneto motive force
      port_p.Phi = Phi;

      // Local flux balance
      port_p.Phi + port_n.Phi = Complex(0,0);

    end PartialTwoPortElementary;

--------------

|image20| `Modelica.Magnetic.FundamentalWave.Interfaces <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces>`_.PartialBasicInductionMachine
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model for induction machine**

.. figure:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachineD.png
   :align: center
   :alt: Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine

   Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine

Information
~~~~~~~~~~~

::

This partial model for induction machines contains elements common in
all machine models.

::

Extends from
`Modelica.Electrical.Machines.Icons.FundamentalWaveMachine <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons.FundamentalWaveMachine>`_.

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Type                                                                                                                                                                                                          | Name                   | Default                           | Description                                                     |
+===============================================================================================================================================================================================================+========================+===================================+=================================================================+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                                                                                   | Jr                     |                                   | Rotor inertia [kg.m2]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Boolean                                                                                                                                                                                                       | useSupport             | false                             | Enable / disable (=fixed stator) support                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_                                                                                                                                                   | Js                     |                                   | Stator inertia [kg.m2]                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Boolean                                                                                                                                                                                                       | useThermalPort         | false                             | Enable / disable (=fixed temperatures) thermal port             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Integer                                                                                                                                                                                                       | p                      |                                   | Number of pole pairs (Integer)                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_                                                                                                                                               | fsNominal              |                                   | Nominal frequency [Hz]                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                                                                                          | effectiveStatorTurns   | 1                                 | Effective number of stator turns                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_       | powerBalance           | redeclare output Modelica.El...   | Power balance                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `PartialThermalAmbientInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines>`_   | thermalAmbient         | redeclare Modelica.Electrica...   |                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_         | thermalPort            | redeclare Modelica.Electrica...   | Thermal port of induction machines                              |
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
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                                                                             | Lssigma                |                                   | Stator stray inductance per phase [H]                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_                                                                                                                                             | Lszero                 | Lssigma                           | Stator zero inductance per phase [H]                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `SalientInductance <Modelica_Magnetic_FundamentalWave_Types.html#Modelica.Magnetic.FundamentalWave.Types.SalientInductance>`_                                                                                 | L0                     |                                   | Salient inductance of an unchorded coil                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| **Losses**                                                                                                                                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-----------------------------------------------------------------+
| `FrictionParameters <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters>`_                                                                                       | frictionParameters     |                                   | Friction losses                                                 |
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
| `PositivePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug>`_                                                                                 | plug\_sp      | Positive plug of stator                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `NegativePlug <Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug>`_                                                                                 | plug\_sn      | Negative plug of stator                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+
| `PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_   | thermalPort   | Thermal port of induction machines               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialBasicInductionMachine 
      "Partial model for induction machine"
      extends Modelica.Electrical.Machines.Icons.FundamentalWaveMachine;
      constant Modelica.SIunits.Angle pi=Modelica.Constants.pi;
      constant Integer m=3 "Number of phases";

      // Mechanical parameters
      parameter Modelica.SIunits.Inertia Jr(start=0.29) "Rotor inertia";
      parameter Boolean useSupport=false "Enable / disable (=fixed stator) support";
      parameter Modelica.SIunits.Inertia Js(start=Jr) "Stator inertia";
      parameter Boolean useThermalPort=false 
        "Enable / disable (=fixed temperatures) thermal port";

      parameter Integer p(min=1, start=2) "Number of pole pairs (Integer)";
      parameter Modelica.SIunits.Frequency fsNominal(start=50) "Nominal frequency";
      parameter Modelica.SIunits.Temperature TsOperational(start=293.15) 
        "Operational temperature of stator resistance";
      parameter Modelica.SIunits.Resistance Rs(start=0.03) 
        "Stator resistance per phase at TRef";
      parameter Modelica.SIunits.Temperature TsRef(start=293.15) 
        "Reference temperature of stator resistance";
      parameter Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20
        alpha20s(start=0) "Temperature coefficient of stator resistance at 20 degC";
      parameter Real effectiveStatorTurns = 1 "Effective number of stator turns";

      parameter Modelica.SIunits.Inductance Lssigma(start=3*(1 - sqrt(1 - 0.0667))/(2*pi*fsNominal)) 
        "Stator stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lszero=Lssigma 
        "Stator zero inductance per phase";
      parameter Modelica.Magnetic.FundamentalWave.Types.SalientInductance L0(d(start=1),q(start=1)) 
        "Salient inductance of an unchorded coil";
      parameter Modelica.Electrical.Machines.Losses.FrictionParameters
        frictionParameters(
          wRef(start=2*pi*fsNominal/p)) "Friction losses";
      parameter Modelica.Electrical.Machines.Losses.CoreParameters
        statorCoreParameters(
          final m=3,
          wRef(start=2*pi*fsNominal/p),
          VRef(start=100)) "Stator core losses";
      parameter Modelica.Electrical.Machines.Losses.StrayLoadParameters
        strayLoadParameters(
          IRef(start=100),
          wRef(start=2*pi*fsNominal/p)) "Stray load losses";

      // Mechanical quantities
      output Modelica.SIunits.Angle phiMechanical = flange.phi-internalSupport.phi 
        "Mechanical angle of rotor against stator";
      output Modelica.SIunits.AngularVelocity wMechanical(displayUnit="1/min") = der(phiMechanical) 
        "Mechanical angular velocity of rotor against stator";
      output Modelica.SIunits.Torque tauElectrical = inertiaRotor.flange_a.tau 
        "Electromagnetic torque";
      output Modelica.SIunits.Torque tauShaft = -flange.tau "Shaft torque";

      replaceable output Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        powerBalance(
        final powerStator = Modelica.Electrical.Machines.SpacePhasors.Functions.activePower(vs, is),
        final powerMechanical = wMechanical*tauShaft,
        final powerInertiaStator = inertiaStator.J*inertiaStator.a*inertiaStator.w,
        final powerInertiaRotor = inertiaRotor.J*inertiaRotor.a*inertiaRotor.w,
        final lossPowerStatorWinding = -sum(stator.heatPortWinding.Q_flow),
        final lossPowerStatorCore = -stator.heatPortCore.Q_flow,
        final lossPowerStrayLoad = -strayLoad.heatPort.Q_flow,
        final lossPowerFriction = -friction.heatPort.Q_flow) "Power balance";

      // Stator voltages and currents
      output Modelica.SIunits.Voltage vs[m] = plug_sp.pin.v - plug_sn.pin.v 
        "Stator instantaneous voltages";
      output Modelica.SIunits.Current is[m] = plug_sp.pin.i 
        "Stator instantaneous currents";

      Modelica.Mechanics.Rotational.Interfaces.Flange_a flange "Shaft";
      Modelica.Mechanics.Rotational.Components.Inertia inertiaRotor(final J=Jr);
      Modelica.Mechanics.Rotational.Interfaces.Flange_a support if useSupport 
        "Support at which the reaction torque is acting";
      Modelica.Mechanics.Rotational.Components.Inertia inertiaStator(final J=Js);
      Modelica.Mechanics.Rotational.Components.Fixed fixed if (not useSupport);

      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_sp(
        final m=m) "Positive plug of stator";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_sn(
        final m=m) "Negative plug of stator";
      BasicMachines.Components.SymmetricMultiPhaseWinding stator(
        final useHeatPort=true,
        final m=m,
        final RRef=Rs,
        final TRef=TsRef,
        final Lsigma=Lssigma,
        final effectiveTurns=effectiveStatorTurns,
        final TOperational=TsOperational,
        final GcRef=statorCoreParameters.GcRef,
        final alpha20=alpha20s,
        final Lzero=Lszero) 
        "Symmetric stator winding including resistances, zero and stray inductances and core losses";
      replaceable Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        thermalAmbient(
        final useTemperatureInputs=false,
        final Ts=TsOperational) if not useThermalPort;
      replaceable Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines
        thermalPort if useThermalPort "Thermal port of induction machines";
      Modelica.Magnetic.FundamentalWave.Components.Ground groundS 
        "Ground of stator magnetic circuit";
      Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap
        airGap(
        final p=p,
        final L0=L0);
      Modelica.Magnetic.FundamentalWave.Components.Ground groundR 
        "Ground of rotor magnetic circuit";
      /* previously used: state selection, now commented
      FundamentalWave.Interfaces.StateSelector stateSelectorS(
        final m=m,
        final xi=is,
        final gamma=p*phiMechanical) "State selection of stator currents"
        annotation (Placement(transformation(extent={{-10,80},{10,100}})));
      */
      Electrical.Machines.Losses.InductionMachines.StrayLoad strayLoad(
        final strayLoadParameters=strayLoadParameters);

      Electrical.Machines.Losses.Friction                   friction(
        final frictionParameters=frictionParameters);
    protected 
      replaceable Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines
        internalThermalPort;
      Modelica.Mechanics.Rotational.Interfaces.Support internalSupport;
    equation 
      connect(stator.plug_n, plug_sn);
      connect(thermalPort,internalThermalPort);
      connect(thermalAmbient.thermalPort,internalThermalPort);
      connect(inertiaRotor.flange_b, flange);
      connect(internalSupport, inertiaStator.flange_a);
      connect(internalSupport, fixed.flange);
      connect(inertiaStator.flange_b, support);
      connect(airGap.flange_a, inertiaRotor.flange_a);
      connect(airGap.support, internalSupport);
      connect(groundR.port_p,airGap. port_rn);
      connect(stator.plug_p, strayLoad.plug_n);
      connect(plug_sp, strayLoad.plug_p);
      connect(strayLoad.support, internalSupport);
      connect(strayLoad.heatPort, internalThermalPort.heatPortStrayLoad);
      connect(friction.support, internalSupport);
      connect(strayLoad.flange, inertiaRotor.flange_b);
      connect(friction.flange, inertiaRotor.flange_b);
      connect(friction.heatPort, internalThermalPort.heatPortFriction);
      connect(groundS.port_p, airGap.port_sp);
      connect(stator.port_n, airGap.port_sp);
      connect(stator.port_p, airGap.port_sn);
      connect(stator.heatPortWinding, internalThermalPort.heatPortStatorWinding);
      connect(stator.heatPortCore, internalThermalPort.heatPortStatorCore);
    end PartialBasicInductionMachine;

--------------

|image21| `Modelica.Magnetic.FundamentalWave.Interfaces <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces>`_.StateSelector
------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform instantaneous values to space phasors and select states**

Information
~~~~~~~~~~~

::

Transforms instantaneous values into space phasors and zero system
currents, rotates space phasors and sets stateSelect modifiers in order
to choose states w.r.t. rotating frame, i.e., with small derivatives.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+-----------------+----------------------+-----------------------------------------------------------------+
| Type                                                      | Name            | Default              | Description                                                     |
+===========================================================+=================+======================+=================================================================+
| Integer                                                   | m               | 3                    | Number of phases                                                |
+-----------------------------------------------------------+-----------------+----------------------+-----------------------------------------------------------------+
| Real                                                      | xi[m]           |                      | Instantaneous values                                            |
+-----------------------------------------------------------+-----------------+----------------------+-----------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | gamma           |                      | Angle of rotation [rad]                                         |
+-----------------------------------------------------------+-----------------+----------------------+-----------------------------------------------------------------+
| StateSelect                                               | x0StateSelect   | StateSelect.prefer   | Priority to use zero systems as states                          |
+-----------------------------------------------------------+-----------------+----------------------+-----------------------------------------------------------------+
| StateSelect                                               | xrStateSelect   | StateSelect.prefer   | Priority to use space phasors w.r.t. rotating frame as states   |
+-----------------------------------------------------------+-----------------+----------------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model StateSelector 
      "Transform instantaneous values to space phasors and select states"
      import Modelica.Constants.pi;
      parameter Integer m(min=3)=3 "Number of phases";
      input Real xi[m](each stateSelect=StateSelect.avoid) "Instantaneous values";
      input Modelica.SIunits.Angle gamma "Angle of rotation";
      parameter StateSelect x0StateSelect=StateSelect.prefer 
        "Priority to use zero systems as states";
      parameter StateSelect xrStateSelect=StateSelect.prefer 
        "Priority to use space phasors w.r.t. rotating frame as states";
      Real x0(stateSelect=x0StateSelect) = 1/sqrt(m)*sum(xi) "Zero system";
      Real x00(stateSelect=x0StateSelect)= 1/sqrt(m)*sum(
        {xi[2*l-1] - xi[2*l] for l in 1:integer(m/2)}) if m==2*integer(m/2) 
        "Second zero system, if present (mp even)";
      final parameter Integer np = integer((m-1)/2) "Number of space phasors";
      Complex xf[np](each re(stateSelect=StateSelect.avoid), each im(stateSelect=StateSelect.avoid)) 
        "Space phasors w.r.t. fixed frame";
      Complex xr[np](each re(stateSelect=xrStateSelect), each im(stateSelect=xrStateSelect)) 
        "Space phasors w.r.t. rotating frame";
    equation 
    //space phasor transformations
      for k in 1:np loop
        xf[k].re = 1/sqrt(m)*sum({cos(k*(l-1)*2*pi/m)*xi[l] for l in 1:m});
        xf[k].im = 1/sqrt(m)*sum({sin(k*(l-1)*2*pi/m)*xi[l] for l in 1:m});
        xr[k] = xf[k]*Modelica.ComplexMath.conj(Modelica.ComplexMath.exp(Complex(0,gamma)));
      end for;
    end StateSelector;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:03
2010.

.. |Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort| image:: Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPortS.png
.. |Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPort| image:: Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPortS.png
.. |Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPort| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPortS.png
.. |Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortS.png
.. |Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortS.png
.. |Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachine| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachineS.png
.. |Modelica.Magnetic.FundamentalWave.Interfaces.StateSelector| image:: Modelica.Magnetic.FundamentalWave.Interfaces.StateSelectorS.png
.. |image7| image:: Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPortS.png
.. |image8| image:: Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPortS.png
.. |image9| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPortS.png
.. |image10| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortS.png
.. |image11| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortS.png
.. |image12| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachineS.png
.. |image13| image:: Modelica.Magnetic.FundamentalWave.Interfaces.StateSelectorS.png
.. |image14| image:: ../Resources/Images/Magnetic/FundamentalWave/V_m.png
.. |image15| image:: ../Resources/Images/Magnetic/FundamentalWave/Phi.png
.. |image16| image:: Modelica.Magnetic.FundamentalWave.Interfaces.NegativeMagneticPortI.png
.. |image17| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PositiveMagneticPortI.png
.. |image18| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortI.png
.. |image19| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortI.png
.. |image20| image:: Modelica.Magnetic.FundamentalWave.Interfaces.PartialBasicInductionMachineI.png
.. |image21| image:: Modelica.Magnetic.FundamentalWave.Interfaces.StateSelectorI.png
