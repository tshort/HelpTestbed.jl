=========================================================
Modelica.Electrical.Machines.Interfaces.InductionMachines
=========================================================

`Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.InductionMachines
---------------------------------------------------------------------------------------------------------------------------------------------------

**Interfaces and partial models for induction machines**

Information
~~~~~~~~~~~

::

Interfaces and partial models for induction machines

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                                             | Description                                                                  |
+==================================================================================================================================================================================================================================================================================================================+==============================================================================+
| |image13| `PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_                                                                                                  | Partial thermal port of induction machines                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image14| `PartialThermalAmbientInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines>`_                                                                                            | Partial thermal ambient for induction machines                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image15| `PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_                                                                                                | Partial power balance of induction machines                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image16| `ThermalPortAIMC <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMC>`_                                                                                                                                          | Thermal port of asynchronous induction machine with squirrel cage            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image17| `PowerBalanceAIMC <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMC>`_                                                                                                                                        | Power balance of asynchronous induction machines with squirrel cage          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image18| `ThermalPortAIMS <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMS>`_                                                                                                                                          | Thermal port of asynchronous induction machine with slipring                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image19| `PowerBalanceAIMS <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMS>`_                                                                                                                                        | Power balance of asynchronous induction machines with slipring               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image20| `ThermalPortSMPM <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPM>`_                                                                                                                                          | Thermal port of synchronous induction machine with permanent magnets         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image21| `PowerBalanceSMPM <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMPM>`_                                                                                                                                        | Power balance of synchronous induction machines with permanent magnet        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image22| `ThermalPortSMEE <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEE>`_                                                                                                                                          | Thermal port of synchronous induction machine with electrical excitation     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image23| `PowerBalanceSMEE <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMEE>`_                                                                                                                                        | Power balance of synchronous induction machines with electrical excitation   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image24| `ThermalPortSMR <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMR>`_                                                                                                                                            | Thermal port of synchronous induction machine with reluctance rotor          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+
| |image25| `PowerBalanceSMR <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMR>`_                                                                                                                                          | Power balance of synchronous induction machines with reluctance rotor        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------+

--------------

|image26| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PartialThermalPortInductionMachines
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial thermal port of induction machines**

.. figure:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachinesD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines

   Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines

Information
~~~~~~~~~~~

::

Partial thermal port for induction machines

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Type                                                                                                                 | Name                       | Description                                  |
+======================================================================================================================+============================+==============================================+
| Integer                                                                                                              | m                          | Number of phases                             |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorWinding[m]   | Heat port of stator windings                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorCore         | Heat port of (optional) stator core losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorCore          | Heat port of (optional) rotor core losses    |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial connector PartialThermalPortInductionMachines 
      "Partial thermal port of induction machines"
      parameter Integer m=3 "Number of phases";

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortStatorWinding[m] 
        "Heat port of stator windings";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortStatorCore 
        "Heat port of (optional) stator core losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortRotorCore 
        "Heat port of (optional) rotor core losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortStrayLoad 
        "Heat port of (optional) stray losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortFriction 
        "Heat port of (optional) friction losses";
    end PartialThermalPortInductionMachines;

--------------

|image27| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PartialThermalAmbientInductionMachines
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial thermal ambient for induction machines**

.. figure:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachinesD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines

   Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines

Information
~~~~~~~~~~~

::

Partial thermal ambient for induction machines

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Type                                                                                                                                                                                                    | Name                   | Default                           | Description                                                             |
+=========================================================================================================================================================================================================+========================+===================================+=========================================================================+
| Integer                                                                                                                                                                                                 | m                      | 3                                 | Number of phases                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Boolean                                                                                                                                                                                                 | useTemperatureInputs   | false                             | If true, temperature inputs are used; else, temperatures are constant   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                                                                     | Ts                     |                                   | Temperature of stator windings [K]                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_   | thermalPort            | redeclare Machines.Interface...   |                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------+
| Type                                                                                                                                                                                                    | Name             | Description                      |
+=========================================================================================================================================================================================================+==================+==================================+
| `PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_   | thermalPort      |                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                                                               | TStatorWinding   | Temperature of stator windings   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialThermalAmbientInductionMachines 
      "Partial thermal ambient for induction machines"
      parameter Integer m=3 "Number of phases";
      parameter Boolean useTemperatureInputs=false 
        "If true, temperature inputs are used; else, temperatures are constant";
      constant Modelica.SIunits.Temperature TDefault=293.15 "Default temperature";
      parameter Modelica.SIunits.Temperature Ts(start=TDefault) 
        "Temperature of stator windings";
      output Modelica.SIunits.HeatFlowRate Q_flowStatorWinding = temperatureStatorWinding.port.Q_flow 
        "Heat flow rate of stator windings";
      output Modelica.SIunits.HeatFlowRate Q_flowStatorCore = temperatureStatorCore.port.Q_flow 
        "Heat flow rate of stator core losses";
      output Modelica.SIunits.HeatFlowRate Q_flowRotorCore = temperatureRotorCore.port.Q_flow 
        "Heat flow rate of stator core losses";
      output Modelica.SIunits.HeatFlowRate Q_flowStrayLoad = temperatureStrayLoad.port.Q_flow 
        "Heat flow rate of stray load losses";
      output Modelica.SIunits.HeatFlowRate Q_flowFriction = temperatureFriction.port.Q_flow 
        "Heat flow rate of friction losses";
      replaceable Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines
        thermalPort(final m=m);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureStatorWinding;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureStatorCore(final T=
            TDefault);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureRotorCore(final T=
            TDefault);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureStrayLoad(final T=
            TDefault);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureFriction(final T=
            TDefault);
      Modelica.Blocks.Interfaces.RealInput TStatorWinding if 
                                                  useTemperatureInputs 
        "Temperature of stator windings";
      Modelica.Blocks.Sources.Constant constTs(final k=Ts) if  not useTemperatureInputs;
      Modelica.Thermal.HeatTransfer.Components.ThermalCollector
        thermalCollectorStator(final m=m);
    equation 
      connect(constTs.y, temperatureStatorWinding.T);
      connect(TStatorWinding, temperatureStatorWinding.T);
      connect(temperatureStrayLoad.port, thermalPort.heatPortStrayLoad);
      connect(temperatureFriction.port, thermalPort.heatPortFriction);
      connect(thermalCollectorStator.port_b, temperatureStatorWinding.port);
      connect(thermalCollectorStator.port_a, thermalPort.heatPortStatorWinding);
      connect(temperatureStatorCore.port, thermalPort.heatPortStatorCore);
      connect(temperatureRotorCore.port, thermalPort.heatPortRotorCore);
    end PartialThermalAmbientInductionMachines;

--------------

|image28| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PartialPowerBalanceInductionMachines
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial power balance of induction machines**

Information
~~~~~~~~~~~

::

Partial power balance of induction machines.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial record PartialPowerBalanceInductionMachines 
      "Partial power balance of induction machines"
      extends Modelica.Icons.Record;
      Modelica.SIunits.Power powerStator "Electrical power (stator)";
      Modelica.SIunits.Power powerMechanical "Mechanical power";
      Modelica.SIunits.Power powerInertiaStator "Stator inertia power";
      Modelica.SIunits.Power powerInertiaRotor "Rotor inertia power";
      Modelica.SIunits.Power lossPowerTotal "Total loss power";
      Modelica.SIunits.Power lossPowerStatorWinding "Stator copper losses";
      Modelica.SIunits.Power lossPowerStatorCore "Stator core losses";
      Modelica.SIunits.Power lossPowerRotorCore "Rotor core losses";
      Modelica.SIunits.Power lossPowerStrayLoad "Stray load losses";
      Modelica.SIunits.Power lossPowerFriction "Friction losses";
    end PartialPowerBalanceInductionMachines;

--------------

|image29| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.ThermalPortAIMC
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of asynchronous induction machine with squirrel cage**

.. figure:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMC

   Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMC

Information
~~~~~~~~~~~

::

Thermal port for asnychronous induction machine with squirrel cage

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_
(Partial thermal port of induction machines).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Type                                                                                                                 | Name                       | Description                                  |
+======================================================================================================================+============================+==============================================+
| Integer                                                                                                              | m                          | Number of phases                             |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorWinding[m]   | Heat port of stator windings                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorCore         | Heat port of (optional) stator core losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorCore          | Heat port of (optional) rotor core losses    |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorWinding       | Heat port of rotor (squirrel cage)           |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortAIMC 
      "Thermal port of asynchronous induction machine with squirrel cage"
      extends Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortRotorWinding 
        "Heat port of rotor (squirrel cage)";
    end ThermalPortAIMC;

--------------

|image30| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PowerBalanceAIMC
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of asynchronous induction machines with squirrel cage**

Information
~~~~~~~~~~~

::

Power balance of asynchronous induction machines with squirrel cage.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_
(Partial power balance of induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerStatorWinding + los...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceAIMC 
      "Power balance of asynchronous induction machines with squirrel cage"
      extends Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        (
        final lossPowerTotal = lossPowerStatorWinding + lossPowerStatorCore + lossPowerRotorCore + lossPowerStrayLoad + lossPowerFriction +
                               lossPowerRotorWinding);
      Modelica.SIunits.Power lossPowerRotorWinding "Rotor copper losses";
    end PowerBalanceAIMC;

--------------

|image31| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.ThermalPortAIMS
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of asynchronous induction machine with slipring**

.. figure:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMS

   Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMS

Information
~~~~~~~~~~~

::

Thermal port for asnychronous induction machine with slipring rotor

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_
(Partial thermal port of induction machines).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Type                                                                                                                 | Name                       | Description                                  |
+======================================================================================================================+============================+==============================================+
| Integer                                                                                                              | m                          | Number of phases                             |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorWinding[m]   | Heat port of stator windings                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorCore         | Heat port of (optional) stator core losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorCore          | Heat port of (optional) rotor core losses    |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorWinding[m]    | Heat port of rotor windings                  |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortBrush              | Heat port of (optional) brush losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortAIMS 
      "Thermal port of asynchronous induction machine with slipring"
      extends Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortRotorWinding[m] 
        "Heat port of rotor windings";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortBrush 
        "Heat port of (optional) brush losses";
    end ThermalPortAIMS;

--------------

|image32| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PowerBalanceAIMS
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of asynchronous induction machines with slipring**

Information
~~~~~~~~~~~

::

Power balance of asynchronous induction machines with slipring.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_
(Partial power balance of induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerStatorWinding + los...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceAIMS 
      "Power balance of asynchronous induction machines with slipring"
      extends Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        (
        final lossPowerTotal = lossPowerStatorWinding + lossPowerStatorCore + lossPowerRotorCore + lossPowerStrayLoad + lossPowerFriction +
                               lossPowerRotorWinding + lossPowerBrush);
      Modelica.SIunits.Power lossPowerRotorWinding "Rotor copper losses";
      Modelica.SIunits.Power lossPowerBrush "Brush losses";
      Modelica.SIunits.Power powerRotor "Electrical power (rotor)";
    end PowerBalanceAIMS;

--------------

|image33| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.ThermalPortSMPM
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of synchronous induction machine with permanent magnets**

.. figure:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPM

   Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPM

Information
~~~~~~~~~~~

::

Thermal port for snychronous induction machine with permanent magnets

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_
(Partial thermal port of induction machines).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+--------------------------------+
| Type      | Name            | Default   | Description                    |
+===========+=================+===========+================================+
| Integer   | m               | 3         | Number of phases               |
+-----------+-----------------+-----------+--------------------------------+
| Boolean   | useDamperCage   |           | Enable / disable damper cage   |
+-----------+-----------------+-----------+--------------------------------+

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Type                                                                                                                 | Name                       | Description                                  |
+======================================================================================================================+============================+==============================================+
| Integer                                                                                                              | m                          | Number of phases                             |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorWinding[m]   | Heat port of stator windings                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorCore         | Heat port of (optional) stator core losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorCore          | Heat port of (optional) rotor core losses    |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Boolean                                                                                                              | useDamperCage              | Enable / disable damper cage                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorWinding       | Heat port of damper cage (optional)          |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortPermanentMagnet    | Heat port of permanent magnets               |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortSMPM 
      "Thermal port of synchronous induction machine with permanent magnets"
      extends Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines;
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortRotorWinding if useDamperCage 
        "Heat port of damper cage (optional)";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortPermanentMagnet 
        "Heat port of permanent magnets";
    end ThermalPortSMPM;

--------------

|image34| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PowerBalanceSMPM
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of synchronous induction machines with permanent
magnet**

Information
~~~~~~~~~~~

::

Power balance of synchronous induction machines with permanent magnet.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_
(Partial power balance of induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerStatorWinding + los...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceSMPM 
      "Power balance of synchronous induction machines with permanent magnet"
      extends Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        (
        final lossPowerTotal = lossPowerStatorWinding + lossPowerStatorCore + lossPowerRotorCore + lossPowerStrayLoad + lossPowerFriction +
                               lossPowerRotorWinding + lossPowerPermanentMagnet);
      Modelica.SIunits.Power lossPowerRotorWinding "Rotor copper losses";
      Modelica.SIunits.Power lossPowerPermanentMagnet "Permanent magnet losses";
    end PowerBalanceSMPM;

--------------

|image35| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.ThermalPortSMEE
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of synchronous induction machine with electrical
excitation**

.. figure:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEE

   Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEE

Information
~~~~~~~~~~~

::

Thermal port for snychronous induction machine with electrical
excitation

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_
(Partial thermal port of induction machines).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+--------------------------------+
| Type      | Name            | Default   | Description                    |
+===========+=================+===========+================================+
| Integer   | m               | 3         | Number of phases               |
+-----------+-----------------+-----------+--------------------------------+
| Boolean   | useDamperCage   |           | Enable / disable damper cage   |
+-----------+-----------------+-----------+--------------------------------+

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Type                                                                                                                 | Name                       | Description                                  |
+======================================================================================================================+============================+==============================================+
| Integer                                                                                                              | m                          | Number of phases                             |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorWinding[m]   | Heat port of stator windings                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorCore         | Heat port of (optional) stator core losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorCore          | Heat port of (optional) rotor core losses    |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Boolean                                                                                                              | useDamperCage              | Enable / disable damper cage                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorWinding       | Heat port of damper cage (optional)          |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortExcitation         | Heat port of excitation                      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortBrush              | Heat port of (optional) brush losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortSMEE 
      "Thermal port of synchronous induction machine with electrical excitation"
      extends Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines;
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortRotorWinding if useDamperCage 
        "Heat port of damper cage (optional)";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortExcitation 
        "Heat port of excitation";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortBrush 
        "Heat port of (optional) brush losses";
    end ThermalPortSMEE;

--------------

|image36| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PowerBalanceSMEE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of synchronous induction machines with electrical
excitation**

Information
~~~~~~~~~~~

::

Power balance of synchronous induction machines with electrical
excitation.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_
(Partial power balance of induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerStatorWinding + los...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceSMEE 
      "Power balance of synchronous induction machines with electrical excitation"
      extends Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        (
        final lossPowerTotal = lossPowerStatorWinding + lossPowerStatorCore + lossPowerRotorCore + lossPowerStrayLoad + lossPowerFriction +
                               lossPowerRotorWinding + lossPowerExcitation + lossPowerBrush);
      Modelica.SIunits.Power lossPowerRotorWinding "Rotor copper losses";
      Modelica.SIunits.Power powerExcitation "Electrical excitation power";
      Modelica.SIunits.Power lossPowerExcitation "Excitation losses";
      Modelica.SIunits.Power lossPowerBrush "Brush losses";
    end PowerBalanceSMEE;

--------------

|image37| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.ThermalPortSMR
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of synchronous induction machine with reluctance rotor**

.. figure:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMR

   Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMR

Information
~~~~~~~~~~~

::

Thermal port for snychronous induction machine with reluctance rotor

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines>`_
(Partial thermal port of induction machines).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+--------------------------------+
| Type      | Name            | Default   | Description                    |
+===========+=================+===========+================================+
| Integer   | m               | 3         | Number of phases               |
+-----------+-----------------+-----------+--------------------------------+
| Boolean   | useDamperCage   |           | Enable / disable damper cage   |
+-----------+-----------------+-----------+--------------------------------+

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Type                                                                                                                 | Name                       | Description                                  |
+======================================================================================================================+============================+==============================================+
| Integer                                                                                                              | m                          | Number of phases                             |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorWinding[m]   | Heat port of stator windings                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStatorCore         | Heat port of (optional) stator core losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorCore          | Heat port of (optional) rotor core losses    |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses         |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| Boolean                                                                                                              | useDamperCage              | Enable / disable damper cage                 |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortRotorWinding       | Heat port of damper cage (optional)          |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortSMR 
      "Thermal port of synchronous induction machine with reluctance rotor"
      extends Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines;
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortRotorWinding if useDamperCage 
        "Heat port of damper cage (optional)";
    end ThermalPortSMR;

--------------

|image38| `Modelica.Electrical.Machines.Interfaces.InductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines>`_.PowerBalanceSMR
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of synchronous induction machines with reluctance
rotor**

Information
~~~~~~~~~~~

::

Power balance of synchronous induction machines with reluctnace rotor.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines>`_
(Partial power balance of induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerStatorWinding + los...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceSMR 
      "Power balance of synchronous induction machines with reluctance rotor"
      extends Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines
        (
        final lossPowerTotal = lossPowerStatorWinding + lossPowerStatorCore + lossPowerRotorCore + lossPowerStrayLoad + lossPowerFriction +
                               lossPowerRotorWinding);
      Modelica.SIunits.Power lossPowerRotorWinding "Rotor copper losses";
    end PowerBalanceSMR;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:14
2010.

.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachines| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachines| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMC| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMC| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMCS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMS| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMSS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMS| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMSS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPM| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPMS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMPM| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMPMS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEE| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEES.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMEE| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMEES.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMR| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMRS.png
.. |Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMR| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMRS.png
.. |image13| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachinesS.png
.. |image14| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachinesS.png
.. |image15| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachinesS.png
.. |image16| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCS.png
.. |image17| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMCS.png
.. |image18| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMSS.png
.. |image19| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMSS.png
.. |image20| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPMS.png
.. |image21| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMPMS.png
.. |image22| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEES.png
.. |image23| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMEES.png
.. |image24| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMRS.png
.. |image25| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMRS.png
.. |image26| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalPortInductionMachinesI.png
.. |image27| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachinesI.png
.. |image28| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialPowerBalanceInductionMachinesI.png
.. |image29| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMCI.png
.. |image30| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMCI.png
.. |image31| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortAIMSI.png
.. |image32| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceAIMSI.png
.. |image33| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMPMI.png
.. |image34| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMPMI.png
.. |image35| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMEEI.png
.. |image36| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMEEI.png
.. |image37| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.ThermalPortSMRI.png
.. |image38| image:: Modelica.Electrical.Machines.Interfaces.InductionMachines.PowerBalanceSMRI.png
