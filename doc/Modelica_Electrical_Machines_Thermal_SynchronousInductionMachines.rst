=================================================================
Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines
=================================================================

`Modelica.Electrical.Machines.Thermal <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal>`_.SynchronousInductionMachines
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal parts of synchronous induction machines**

Information
~~~~~~~~~~~

::

Thermal parts for synchronous induction machines

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                         | Description                                                                    |
+==============================================================================================================================================================================================================================================================================+================================================================================+
| |image3| `ThermalAmbientSMPM <Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPM>`_                                                                                 | Thermal ambient for synchronous induction machine with permanent magnets       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| |image4| `ThermalAmbientSMEE <Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEE>`_                                                                                 | Thermal ambient for synchronous induction machine with electrical excitation   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| |image5| `ThermalAmbientSMR <Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMR>`_                                                                                   | Thermal ambient for synchronous induction machine with reluctance rotor        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+

--------------

|image6| `Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines <Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines>`_.ThermalAmbientSMPM
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for synchronous induction machine with permanent
magnets**

.. figure:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPMD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPM

   Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPM

Information
~~~~~~~~~~~

::

Thermal ambient for synchronous induction machines with permanent
magnets to prescribe winding temperatures either constant or via signal
connectors. Additionally, all losses = heat flows are recorded.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines>`_
(Partial thermal ambient for induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                  | Name                   | Default   | Description                                                             |
+=======================================================================+========================+===========+=========================================================================+
| Boolean                                                               | useDamperCage          |           | Enable / disable damper cage                                            |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Integer                                                               | m                      | 3         | Number of phases                                                        |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ts                     |           | Temperature of stator windings [K]                                      |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tpm                    |           | Temperature of permanent magnet [K]                                     |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tr                     |           | Temperature of damper cage (optional) [K]                               |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+--------------------+-----------------------------------------+
| Type                                                                                        | Name               | Description                             |
+=============================================================================================+====================+=========================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TStatorWinding     | Temperature of stator windings          |
+---------------------------------------------------------------------------------------------+--------------------+-----------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TRotorWinding      | Temperature of damper cage (optional)   |
+---------------------------------------------------------------------------------------------+--------------------+-----------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TPermanentMagnet   | Temperature of permanent magnet         |
+---------------------------------------------------------------------------------------------+--------------------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientSMPM 
      "Thermal ambient for synchronous induction machine with permanent magnets"
      import Modelica;
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";
      extends Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        (redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMPM
           thermalPort(final useDamperCage = useDamperCage));
      parameter Modelica.SIunits.Temperature Tpm(start=TDefault) 
        "Temperature of permanent magnet";
      parameter Modelica.SIunits.Temperature Tr(start=TDefault) 
        "Temperature of damper cage (optional)";
      output Modelica.SIunits.HeatFlowRate Q_flowRotorWinding = temperatureRotorWinding.port.Q_flow 
        "Heat flow rate of damper cage (optional)";
      output Modelica.SIunits.HeatFlowRate Q_flowPermanentMagnet = temperaturePermanentMagnet.port.Q_flow 
        "Heat flow rate of permanent magnets";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowStatorWinding + Q_flowRotorWinding + Q_flowPermanentMagnet + Q_flowStatorCore  + Q_flowRotorCore + Q_flowStrayLoad + Q_flowFriction;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureRotorWinding;
      Modelica.Blocks.Interfaces.RealInput TRotorWinding if 
        (useTemperatureInputs and useDamperCage) 
        "Temperature of damper cage (optional)";
      Modelica.Blocks.Sources.Constant constTr(final k=if useDamperCage  then Tr else TDefault) if 
           (not useTemperatureInputs or not useDamperCage);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperaturePermanentMagnet;
      Modelica.Blocks.Sources.Constant constTpm(final k=Tpm) if  (not useTemperatureInputs);
      Modelica.Blocks.Interfaces.RealInput TPermanentMagnet if 
        (useTemperatureInputs and useDamperCage) "Temperature of permanent magnet";
    equation 
      connect(constTr.y, temperatureRotorWinding.T);
      connect(temperatureRotorWinding.port, thermalPort.heatPortRotorWinding);
      connect(TRotorWinding, temperatureRotorWinding.T);
      connect(temperaturePermanentMagnet.port, thermalPort.heatPortPermanentMagnet);
      connect(constTpm.y, temperaturePermanentMagnet.T);
      connect(TPermanentMagnet, temperaturePermanentMagnet.T);
    end ThermalAmbientSMPM;

--------------

|image7| `Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines <Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines>`_.ThermalAmbientSMEE
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for synchronous induction machine with electrical
excitation**

.. figure:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEED.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEE

   Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEE

Information
~~~~~~~~~~~

::

Thermal ambient for synchronous induction machines with electrical
excitation to prescribe winding temperatures either constant or via
signal connectors. Additionally, all losses = heat flows are recorded.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines>`_
(Partial thermal ambient for induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                  | Name                   | Default   | Description                                                             |
+=======================================================================+========================+===========+=========================================================================+
| Boolean                                                               | useDamperCage          |           | Enable / disable damper cage                                            |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Integer                                                               | m                      | 3         | Number of phases                                                        |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ts                     |           | Temperature of stator windings [K]                                      |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tr                     |           | Temperature of damper cage (optional) [K]                               |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Te                     |           | Temperature of excitation [K]                                           |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+------------------+-----------------------------------------+
| Type                                                                                        | Name             | Description                             |
+=============================================================================================+==================+=========================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TStatorWinding   | Temperature of stator windings          |
+---------------------------------------------------------------------------------------------+------------------+-----------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TRotorWinding    | Temperature of damper cage (optional)   |
+---------------------------------------------------------------------------------------------+------------------+-----------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TExcitation      | Temperature of excitation               |
+---------------------------------------------------------------------------------------------+------------------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientSMEE 
      "Thermal ambient for synchronous induction machine with electrical excitation"
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";
      extends Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        (redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMEE
           thermalPort(final useDamperCage = useDamperCage));
      parameter Modelica.SIunits.Temperature Tr(start=TDefault) 
        "Temperature of damper cage (optional)";
      parameter Modelica.SIunits.Temperature Te(start=TDefault) 
        "Temperature of excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowRotorWinding = temperatureRotorWinding.port.Q_flow 
        "Heat flow rate of damper cage (optional)";
      output Modelica.SIunits.HeatFlowRate Q_flowExcitation = temperatureExcitation.port.Q_flow 
        "Heat flow rate of excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowStatorWinding + Q_flowRotorWinding + Q_flowExcitation + Q_flowStatorCore  + Q_flowRotorCore + Q_flowStrayLoad + Q_flowFriction;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureRotorWinding;
      Modelica.Blocks.Interfaces.RealInput TRotorWinding if 
                                                  (useTemperatureInputs and useDamperCage) 
        "Temperature of damper cage (optional)";
      Modelica.Blocks.Sources.Constant constTr(final k=if useDamperCage  then Tr else TDefault) if (not useTemperatureInputs or not useDamperCage);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureExcitation;
      Modelica.Blocks.Interfaces.RealInput TExcitation if 
                                                  useTemperatureInputs 
        "Temperature of excitation";
      Modelica.Blocks.Sources.Constant constTe(final k=Te) if  not useTemperatureInputs;
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureBrush(final T=
            TDefault);
    equation 
      connect(constTr.y, temperatureRotorWinding.T);
      connect(temperatureRotorWinding.port, thermalPort.heatPortRotorWinding);
      connect(TRotorWinding, temperatureRotorWinding.T);
      connect(constTe.y, temperatureExcitation.T);
      connect(TExcitation, temperatureExcitation.T);
      connect(temperatureExcitation.port, thermalPort.heatPortExcitation);
      connect(temperatureBrush.port, thermalPort.heatPortBrush);
    end ThermalAmbientSMEE;

--------------

|image8| `Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines <Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines>`_.ThermalAmbientSMR
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for synchronous induction machine with reluctance
rotor**

.. figure:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMRD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMR

   Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMR

Information
~~~~~~~~~~~

::

Thermal ambient for synchronous induction machines with reluctance rotor
to prescribe winding temperatures either constant or via signal
connectors. Additionally, all losses = heat flows are recorded.

::

Extends from
`Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines <Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines>`_
(Partial thermal ambient for induction machines).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                  | Name                   | Default   | Description                                                             |
+=======================================================================+========================+===========+=========================================================================+
| Boolean                                                               | useDamperCage          |           | Enable / disable damper cage                                            |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Integer                                                               | m                      | 3         | Number of phases                                                        |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ts                     |           | Temperature of stator windings [K]                                      |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tr                     |           | Temperature of damper cage (optional) [K]                               |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+------------------+-----------------------------------------+
| Type                                                                                        | Name             | Description                             |
+=============================================================================================+==================+=========================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TStatorWinding   | Temperature of stator windings          |
+---------------------------------------------------------------------------------------------+------------------+-----------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TRotorWinding    | Temperature of damper cage (optional)   |
+---------------------------------------------------------------------------------------------+------------------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientSMR 
      "Thermal ambient for synchronous induction machine with reluctance rotor"
      parameter Boolean useDamperCage(start = true) "Enable / disable damper cage";
      extends Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        (redeclare final Machines.Interfaces.InductionMachines.ThermalPortSMR
          thermalPort(final useDamperCage = useDamperCage));
      parameter Modelica.SIunits.Temperature Tr(start=TDefault) 
        "Temperature of damper cage (optional)";
      output Modelica.SIunits.HeatFlowRate Q_flowRotorWinding = temperatureRotorWinding.port.Q_flow 
        "Heat flow rate of damper cage (optional))";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowStatorWinding + Q_flowRotorWinding + Q_flowStatorCore + Q_flowRotorCore + Q_flowStrayLoad + Q_flowFriction;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureRotorWinding;
      Modelica.Blocks.Interfaces.RealInput TRotorWinding if 
                                                  (useTemperatureInputs and useDamperCage) 
        "Temperature of damper cage (optional)";
      Modelica.Blocks.Sources.Constant constTr(final k=if useDamperCage  then Tr else TDefault) if (not useTemperatureInputs or not useDamperCage);
    equation 
      connect(constTr.y, temperatureRotorWinding.T);
      connect(temperatureRotorWinding.port, thermalPort.heatPortRotorWinding);
      connect(TRotorWinding, temperatureRotorWinding.T);
    end ThermalAmbientSMR;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:09
2010.

.. |Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPM| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPMS.png
.. |Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEE| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPMS.png
.. |Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMR| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMRS.png
.. |image3| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPMS.png
.. |image4| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPMS.png
.. |image5| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMRS.png
.. |image6| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPMI.png
.. |image7| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEEI.png
.. |image8| image:: Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMRI.png
