==================================================================
Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines
==================================================================

`Modelica.Electrical.Machines.Thermal <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal>`_.AsynchronousInductionMachines
------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal parts of asynchronous induction machines**

Information
~~~~~~~~~~~

::

Thermal parts for asynchronous induction machines

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                            | Description                                                             |
+=================================================================================================================================================================================================================================================================================+=========================================================================+
| |image2| `ThermalAmbientAIMC <Modelica_Electrical_Machines_Thermal_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMC>`_                                                                                  | Thermal ambient for asynchronous induction machine with squirrel cage   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image3| `ThermalAmbientAIMS <Modelica_Electrical_Machines_Thermal_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMS>`_                                                                                  | Thermal ambient for asynchronous induction machine with slipring        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+

--------------

|image4| `Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines <Modelica_Electrical_Machines_Thermal_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines>`_.ThermalAmbientAIMC
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for asynchronous induction machine with squirrel
cage**

.. figure:: Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMCD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMC

   Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMC

Information
~~~~~~~~~~~

::

Thermal ambient for asynchronous induction machines with squirrel cage
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
| Integer                                                               | m                      | 3         | Number of phases                                                        |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ts                     |           | Temperature of stator windings [K]                                      |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tr                     |           | Temperature of rotor (squirrel cage) [K]                                |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+------------------+----------------------------------+
| Type                                                                                        | Name             | Description                      |
+=============================================================================================+==================+==================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TStatorWinding   | Temperature of stator windings   |
+---------------------------------------------------------------------------------------------+------------------+----------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TRotorWinding    | Temperature of squirrel cage     |
+---------------------------------------------------------------------------------------------+------------------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientAIMC 
      "Thermal ambient for asynchronous induction machine with squirrel cage"
      extends Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        (redeclare final Machines.Interfaces.InductionMachines.ThermalPortAIMC thermalPort);
      parameter Modelica.SIunits.Temperature Tr(start=TDefault) 
        "Temperature of rotor (squirrel cage)";
      output Modelica.SIunits.HeatFlowRate Q_flowRotorWinding = temperatureRotorWinding.port.Q_flow 
        "Heat flow rate of rotor (squirrel cage)";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowStatorWinding + Q_flowRotorWinding + Q_flowStatorCore  + Q_flowRotorCore + Q_flowStrayLoad + Q_flowFriction;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureRotorWinding;
      Modelica.Blocks.Interfaces.RealInput TRotorWinding if 
                                                  useTemperatureInputs 
        "Temperature of squirrel cage";
      Modelica.Blocks.Sources.Constant constTr(final k=Tr) if  not useTemperatureInputs;
    equation 
      connect(constTr.y, temperatureRotorWinding.T);
      connect(temperatureRotorWinding.port, thermalPort.heatPortRotorWinding);
      connect(TRotorWinding, temperatureRotorWinding.T);
    end ThermalAmbientAIMC;

--------------

|image5| `Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines <Modelica_Electrical_Machines_Thermal_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines>`_.ThermalAmbientAIMS
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Thermal ambient for asynchronous induction machine with slipring**

.. figure:: Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMSD.png
   :align: center
   :alt: Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMS

   Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMS

Information
~~~~~~~~~~~

::

Thermal ambient for asynchronous induction machines with slipring rotor
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
| Integer                                                               | m                      | 3         | Number of phases                                                        |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| Boolean                                                               | useTemperatureInputs   | false     | If true, temperature inputs are used; else, temperatures are constant   |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Ts                     |           | Temperature of stator windings [K]                                      |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Tr                     |           | Temperature of rotor windings [K]                                       |
+-----------------------------------------------------------------------+------------------------+-----------+-------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+------------------+----------------------------------+
| Type                                                                                        | Name             | Description                      |
+=============================================================================================+==================+==================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TStatorWinding   | Temperature of stator windings   |
+---------------------------------------------------------------------------------------------+------------------+----------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_   | TRotorWinding    | Temperature of rotor windings    |
+---------------------------------------------------------------------------------------------+------------------+----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ThermalAmbientAIMS 
      "Thermal ambient for asynchronous induction machine with slipring"
      extends Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines
        (redeclare final Machines.Interfaces.InductionMachines.ThermalPortAIMS thermalPort);
      parameter Modelica.SIunits.Temperature Tr(start=TDefault) 
        "Temperature of rotor windings";
      output Modelica.SIunits.HeatFlowRate Q_flowRotorWinding = temperatureRotorWinding.port.Q_flow 
        "Heat flow rate of rotor (squirrel cage)";
      output Modelica.SIunits.HeatFlowRate Q_flowBrush = temperatureBrush.port.Q_flow 
        "Heat flow rate of brushes";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowStatorWinding + Q_flowRotorWinding + Q_flowStatorCore  + Q_flowRotorCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureRotorWinding;
      Modelica.Blocks.Interfaces.RealInput TRotorWinding if 
                                                  useTemperatureInputs 
        "Temperature of rotor windings";
      Modelica.Blocks.Sources.Constant constTr(final k=Tr) if  not useTemperatureInputs;
      Modelica.Thermal.HeatTransfer.Components.ThermalCollector
        thermalCollectorRotor(m=thermalPort.m);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature temperatureBrush(final T=
            TDefault);
    equation 
      connect(constTr.y, temperatureRotorWinding.T);
      connect(thermalCollectorRotor.port_b, temperatureRotorWinding.port);
      connect(thermalCollectorRotor.port_a, thermalPort.heatPortRotorWinding);
      connect(temperatureBrush.port, thermalPort.heatPortBrush);
      connect(TRotorWinding, temperatureRotorWinding.T);
    end ThermalAmbientAIMS;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:06
2010.

.. |Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMC| image:: Modelica.Electrical.Machines.Thermal.ThermalAmbientTransformerS.png
.. |Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMS| image:: Modelica.Electrical.Machines.Thermal.ThermalAmbientTransformerS.png
.. |image2| image:: Modelica.Electrical.Machines.Thermal.ThermalAmbientTransformerS.png
.. |image3| image:: Modelica.Electrical.Machines.Thermal.ThermalAmbientTransformerS.png
.. |image4| image:: Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMCI.png
.. |image5| image:: Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMSI.png
