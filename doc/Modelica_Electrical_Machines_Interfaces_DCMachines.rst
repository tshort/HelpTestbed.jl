==================================================
Modelica.Electrical.Machines.Interfaces.DCMachines
==================================================

`Modelica.Electrical.Machines.Interfaces <Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces>`_.DCMachines
--------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ports of DC machines**

Information
~~~~~~~~~~~

::

Thermal ports for DC machines

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                   | Description                                               |
+========================================================================================================================================================================================================================================================================+===========================================================+
| |image11| `PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_                                                                                    | Partial thermal port of DC machines                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image12| `PartialThermalAmbientDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines>`_                                                                              | Partial thermal ambient for DC machines                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image13| `PartialPowerBalanceDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines>`_                                                                                  | Partial power balance of DC machines                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image14| `ThermalPortDCPM <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPM>`_                                                                                                              | Thermal port of DC machine with permanent magnets         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image15| `PowerBalanceDCPM <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCPM>`_                                                                                                            | Power balance of DC machines with permanent magnet        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image16| `ThermalPortDCEE <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEE>`_                                                                                                              | Thermal port of DC machine with electrical excitation     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image17| `PowerBalanceDCEE <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCEE>`_                                                                                                            | Power balance of DC machines with electrical excitation   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image18| `ThermalPortDCSE <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSE>`_                                                                                                              | Thermal port of DC machine with series excitation         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image19| `PowerBalanceDCSE <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCSE>`_                                                                                                            | Power balance of DC machines with series excitation       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image20| `ThermalPortDCCE <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCE>`_                                                                                                              | Thermal port of DC machine with compound excitation       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image21| `PowerBalanceDCCE <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCE>`_                                                                                                            | Power balance of DC machines with compound excitation     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+

--------------

|image22| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.PartialThermalPortDCMachines
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial thermal port of DC machines**

.. figure:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachinesD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines

   Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines

Information
~~~~~~~~~~~

::

Partial thermal port for DC machines

::

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+---------------------+-------------------------------------------+
| Type                                                                                                                 | Name                | Description                               |
+======================================================================================================================+=====================+===========================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortArmature    | Heat port of armature                     |
+----------------------------------------------------------------------------------------------------------------------+---------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortCore        | Heat port of (optional) core losses       |
+----------------------------------------------------------------------------------------------------------------------+---------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad   | Heat port of (optional) stray losses      |
+----------------------------------------------------------------------------------------------------------------------+---------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction    | Heat port of (optional) friction losses   |
+----------------------------------------------------------------------------------------------------------------------+---------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortBrush       | Heat port of (optional) brush losses      |
+----------------------------------------------------------------------------------------------------------------------+---------------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial connector PartialThermalPortDCMachines 
      "Partial thermal port of DC machines"

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortArmature 
        "Heat port of armature";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortCore 
        "Heat port of (optional) core losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortStrayLoad 
        "Heat port of (optional) stray losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortFriction 
        "Heat port of (optional) friction losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortBrush 
        "Heat port of (optional) brush losses";
    end PartialThermalPortDCMachines;

--------------

|image23| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.PartialThermalAmbientDCMachines
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial thermal ambient for DC machines**

.. figure:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachinesD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines

   Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines

Information
~~~~~~~~~~~

::

Partial thermal ambient for induction machines

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Type                                                                                                                                                                        | Name                   | Default                           | Description                                                             |
+=============================================================================================================================================================================+========================+===================================+=========================================================================+
| Boolean                                                                                                                                                                     | useTemperatureInputs   | false                             | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                                                                                                         | Ta                     |                                   | Temperature of armature [K]                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_   | thermalPort            | redeclare Machines.Interface...   |                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+---------------------------+
| Type                                                                                                                                                                        | Name          | Description               |
+=============================================================================================================================================================================+===============+===========================+
| `PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_   | thermalPort   |                           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+---------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                                                                   | TArmature     | Temperature of armature   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialThermalAmbientDCMachines 
      "Partial thermal ambient for DC machines"
      parameter Boolean useTemperatureInputs=false 
        "If true, temperature inputs are used; else, temperatures are constant";
      constant Modelica.SIunits.Temperature TDefault=293.15 "Default temperature";
      parameter Modelica.SIunits.Temperature Ta(start=TDefault) 
        "Temperature of armature";
      output Modelica.SIunits.HeatFlowRate Q_flowArmature = temperatureArmature.port.Q_flow 
        "Heat flow rate of armature";
      output Modelica.SIunits.HeatFlowRate Q_flowCore = temperatureCore.port.Q_flow 
        "Heat flow rate of core losses";
      output Modelica.SIunits.HeatFlowRate Q_flowStrayLoad = temperatureStrayLoad.port.Q_flow 
        "Heat flow rate of stray load losses";
      output Modelica.SIunits.HeatFlowRate Q_flowFriction = temperatureFriction.port.Q_flow 
        "Heat flow rate of friction losses";
       output Modelica.SIunits.HeatFlowRate Q_flowBrush = temperatureBrush.port.Q_flow 
        "Heat flow rate of brushes";
      replaceable Machines.Interfaces.DCMachines.PartialThermalPortDCMachines
        thermalPort;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureArmature;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureCore(final T=
            TDefault);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureStrayLoad(final T=
            TDefault);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureFriction(final T=
            TDefault);
      Modelica.Blocks.Interfaces.RealInput TArmature if 
                                                  useTemperatureInputs 
        "Temperature of armature";
      Modelica.Blocks.Sources.Constant constTa(final k=Ta) if  not useTemperatureInputs;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureBrush(final T=
            TDefault);
    equation 

      connect(constTa.y, temperatureArmature.T);
      connect(TArmature, temperatureArmature.T);
      connect(temperatureArmature.port, thermalPort.heatPortArmature);
      connect(temperatureBrush.port, thermalPort.heatPortBrush);
      connect(temperatureCore.port, thermalPort.heatPortCore);
      connect(temperatureStrayLoad.port, thermalPort.heatPortStrayLoad);
      connect(temperatureFriction.port, thermalPort.heatPortFriction);
    end PartialThermalAmbientDCMachines;

--------------

|image24| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.PartialPowerBalanceDCMachines
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial power balance of DC machines**

Information
~~~~~~~~~~~

::

Partial power balance of DC machines.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial record PartialPowerBalanceDCMachines 
      "Partial power balance of DC machines"
      extends Modelica.Icons.Record;
      Modelica.SIunits.Power powerArmature "Electrical armature power";
      Modelica.SIunits.Power powerMechanical "Mechanical power";
      Modelica.SIunits.Power powerInertiaStator "Stator inertia power";
      Modelica.SIunits.Power powerInertiaRotor "Rotor inertia power";
      Modelica.SIunits.Power lossPowerTotal "Total loss power";
      Modelica.SIunits.Power lossPowerArmature "Armature copper losses";
      Modelica.SIunits.Power lossPowerCore "Core losses";
      Modelica.SIunits.Power lossPowerStrayLoad "Stray load losses";
      Modelica.SIunits.Power lossPowerFriction "Friction losses";
      Modelica.SIunits.Power lossPowerBrush "Brush losses";
    end PartialPowerBalanceDCMachines;

--------------

|image25| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.ThermalPortDCPM
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of DC machine with permanent magnets**

.. figure:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPM

   Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPM

Information
~~~~~~~~~~~

::

Thermal port for DC machine with permanent magnets

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_
(Partial thermal port of DC machines).

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+---------------------------+-------------------------------------------+
| Type                                                                                                                 | Name                      | Description                               |
+======================================================================================================================+===========================+===========================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortArmature          | Heat port of armature                     |
+----------------------------------------------------------------------------------------------------------------------+---------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortCore              | Heat port of (optional) core losses       |
+----------------------------------------------------------------------------------------------------------------------+---------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad         | Heat port of (optional) stray losses      |
+----------------------------------------------------------------------------------------------------------------------+---------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction          | Heat port of (optional) friction losses   |
+----------------------------------------------------------------------------------------------------------------------+---------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortBrush             | Heat port of (optional) brush losses      |
+----------------------------------------------------------------------------------------------------------------------+---------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortPermanentMagnet   | Heat port of permanent magnets            |
+----------------------------------------------------------------------------------------------------------------------+---------------------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortDCPM 
      "Thermal port of DC machine with permanent magnets"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortPermanentMagnet 
        "Heat port of permanent magnets";
    end ThermalPortDCPM;

--------------

|image26| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.PowerBalanceDCPM
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of DC machines with permanent magnet**

Information
~~~~~~~~~~~

::

Power balance of DC machines with permanent magnet.

::

Extends from
`Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines>`_
(Partial power balance of DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerArmature + lossPowe...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceDCPM 
      "Power balance of DC machines with permanent magnet"
      extends Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines(
        final lossPowerTotal = lossPowerArmature + lossPowerCore + lossPowerStrayLoad + lossPowerFriction + lossPowerBrush +
                               lossPowerPermanentMagnet);
      Modelica.SIunits.Power lossPowerPermanentMagnet "Permanent magnet losses";
    end PowerBalanceDCPM;

--------------

|image27| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.ThermalPortDCEE
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of DC machine with electrical excitation**

.. figure:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEE

   Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEE

Information
~~~~~~~~~~~

::

Thermal port for DC machine with electrical (shunt) excitation

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_
(Partial thermal port of DC machines).

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------+-------------------------------------------+
| Type                                                                                                                 | Name                 | Description                               |
+======================================================================================================================+======================+===========================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortArmature     | Heat port of armature                     |
+----------------------------------------------------------------------------------------------------------------------+----------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortCore         | Heat port of (optional) core losses       |
+----------------------------------------------------------------------------------------------------------------------+----------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad    | Heat port of (optional) stray losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction     | Heat port of (optional) friction losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortBrush        | Heat port of (optional) brush losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortExcitation   | Heat port of (shunt) excitation           |
+----------------------------------------------------------------------------------------------------------------------+----------------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortDCEE 
      "Thermal port of DC machine with electrical excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortExcitation 
        "Heat port of (shunt) excitation";
    end ThermalPortDCEE;

--------------

|image28| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.PowerBalanceDCEE
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of DC machines with electrical excitation**

Information
~~~~~~~~~~~

::

Power balance of DC machines with electrical excitation.

::

Extends from
`Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines>`_
(Partial power balance of DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerArmature + lossPowe...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceDCEE 
      "Power balance of DC machines with electrical excitation"
      extends Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines(
        final lossPowerTotal = lossPowerArmature + lossPowerCore + lossPowerStrayLoad + lossPowerFriction + lossPowerBrush +
                               lossPowerExcitation);
      Modelica.SIunits.Power powerExcitation "Electrical (shunt) excitation power";
      Modelica.SIunits.Power lossPowerExcitation "Excitation losses";
    end PowerBalanceDCEE;

--------------

|image29| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.ThermalPortDCSE
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of DC machine with series excitation**

.. figure:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSE

   Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSE

Information
~~~~~~~~~~~

::

Thermal port for DC machine with serial excitation

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_
(Partial thermal port of DC machines).

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| Type                                                                                                                 | Name                       | Description                               |
+======================================================================================================================+============================+===========================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortArmature           | Heat port of armature                     |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortCore               | Heat port of (optional) core losses       |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortBrush              | Heat port of (optional) brush losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortSeriesExcitation   | Heat port of series excitation            |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortDCSE 
      "Thermal port of DC machine with series excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortSeriesExcitation 
        "Heat port of series excitation";
    end ThermalPortDCSE;

--------------

|image30| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.PowerBalanceDCSE
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of DC machines with series excitation**

Information
~~~~~~~~~~~

::

Power balance of DC machines with series excitation.

::

Extends from
`Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines>`_
(Partial power balance of DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerArmature + lossPowe...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceDCSE 
      "Power balance of DC machines with series excitation"
      extends Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines(
        final lossPowerTotal = lossPowerArmature + lossPowerCore + lossPowerStrayLoad + lossPowerFriction + lossPowerBrush +
                               lossPowerSeriesExcitation);
      Modelica.SIunits.Power powerSeriesExcitation 
        "Electrical series excitation power";
      Modelica.SIunits.Power lossPowerSeriesExcitation "Series excitation losses";
    end PowerBalanceDCSE;

--------------

|image31| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.ThermalPortDCCE
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal port of DC machine with compound excitation**

.. figure:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCE

   Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCE

Information
~~~~~~~~~~~

::

Thermal port for DC machine with compound excitation

::

Extends from
`Machines.Interfaces.DCMachines.PartialThermalPortDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines>`_
(Partial thermal port of DC machines).

Contents
~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| Type                                                                                                                 | Name                       | Description                               |
+======================================================================================================================+============================+===========================================+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortArmature           | Heat port of armature                     |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortCore               | Heat port of (optional) core losses       |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortStrayLoad          | Heat port of (optional) stray losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortFriction           | Heat port of (optional) friction losses   |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortBrush              | Heat port of (optional) brush losses      |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortShuntExcitation    | Heat port of (shunt) excitation           |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPortSeriesExcitation   | Heat port of series excitation            |
+----------------------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector ThermalPortDCCE 
      "Thermal port of DC machine with compound excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortShuntExcitation 
        "Heat port of (shunt) excitation";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortSeriesExcitation 
        "Heat port of series excitation";
    end ThermalPortDCCE;

--------------

|image32| `Modelica.Electrical.Machines.Interfaces.DCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines>`_.PowerBalanceDCCE
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Power balance of DC machines with compound excitation**

Information
~~~~~~~~~~~

::

Power balance of DC machines with compound excitation.

::

Extends from
`Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines <Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines>`_
(Partial power balance of DC machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+
| Type                                                      | Name             | Default                           | Description            |
+===========================================================+==================+===================================+========================+
| `Power <Modelica_SIunits.html#Modelica.SIunits.Power>`_   | lossPowerTotal   | lossPowerArmature + lossPowe...   | Total loss power [W]   |
+-----------------------------------------------------------+------------------+-----------------------------------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PowerBalanceDCCE 
      "Power balance of DC machines with compound excitation"
      extends Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines(
        final lossPowerTotal = lossPowerArmature + lossPowerCore + lossPowerStrayLoad + lossPowerFriction + lossPowerBrush +
                               lossPowerShuntExcitation + lossPowerSeriesExcitation);
      Modelica.SIunits.Power powerShuntExcitation 
        "Electrical (shunt) excitation power";
      Modelica.SIunits.Power powerSeriesExcitation 
        "Electrical series excitation power";
      Modelica.SIunits.Power lossPowerShuntExcitation "(Shunt) excitation losses";
      Modelica.SIunits.Power lossPowerSeriesExcitation "Series excitation losses";
    end PowerBalanceDCCE;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:15
2010.

.. |Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachinesS.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPM| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMS.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCPM| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCPMS.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEE| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEES.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCEE| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCEES.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSE| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSES.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCSE| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCSES.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCE| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCES.png
.. |Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCE| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCES.png
.. |image11| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachinesS.png
.. |image12| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachinesS.png
.. |image13| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachinesS.png
.. |image14| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMS.png
.. |image15| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCPMS.png
.. |image16| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEES.png
.. |image17| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCEES.png
.. |image18| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSES.png
.. |image19| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCSES.png
.. |image20| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCES.png
.. |image21| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCES.png
.. |image22| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachinesI.png
.. |image23| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachinesI.png
.. |image24| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachinesI.png
.. |image25| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMI.png
.. |image26| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCPMI.png
.. |image27| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEEI.png
.. |image28| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCEEI.png
.. |image29| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSEI.png
.. |image30| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCSEI.png
.. |image31| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCEI.png
.. |image32| image:: Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCEI.png
