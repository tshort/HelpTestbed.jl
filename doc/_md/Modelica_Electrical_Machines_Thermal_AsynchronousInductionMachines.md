% Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines
% 
% 

[Modelica.Electrical.Machines.Thermal](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal).AsynchronousInductionMachines
====================================================================================================================================================

**Thermal parts of asynchronous induction machines**

Information
-----------

::

Thermal parts for asynchronous induction machines

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image2](Modelica.Electrical.Machines.Thermal.ThermalAm Thermal ambient
  bientTransformerS.png)                                   for
  [ThermalAmbientAIMC](Modelica_Electrical_Machines_Therma asynchronous
  l_AsynchronousInductionMachines.html#Modelica.Electrical induction
  .Machines.Thermal.AsynchronousInductionMachines.ThermalA machine with
  mbientAIMC)                                              squirrel cage

  ![image3](Modelica.Electrical.Machines.Thermal.ThermalAm Thermal ambient
  bientTransformerS.png)                                   for
  [ThermalAmbientAIMS](Modelica_Electrical_Machines_Therma asynchronous
  l_AsynchronousInductionMachines.html#Modelica.Electrical induction
  .Machines.Thermal.AsynchronousInductionMachines.ThermalA machine with
  mbientAIMS)                                              slipring
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMCI.png) [Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines](Modelica_Electrical_Machines_Thermal_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines).ThermalAmbientAIMC
=========================================================================================================================================================================================================================================================================================================================================

**Thermal ambient for asynchronous induction machine with squirrel
cage**

Information
-----------

::

Thermal ambient for asynchronous induction machines with squirrel cage
to prescribe winding temperatures either constant or via signal
connectors. Additionally, all losses = heat flows are recorded.

::

Extends from
[Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines](Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines)
(Partial thermal ambient for induction machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name      Defa Description
                                         ult  
  ---------------------------- --------- ---- -----------------------------
  Integer                      m         3    Number of phases

  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ts             Temperature of stator
  ts.html#Modelica.SIunits.Tem                windings [K]
  perature)                                   

  [Temperature](Modelica_SIuni Tr             Temperature of rotor
  ts.html#Modelica.SIunits.Tem                (squirrel cage) [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  input                                         TStatorWi Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#M nding     stator windings
  odelica.Blocks.Interfaces.RealInput)                    

  input                                         TRotorWin Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#M ding      squirrel cage
  odelica.Blocks.Interfaces.RealInput)                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image5](Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines.ThermalAmbientAIMSI.png) [Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines](Modelica_Electrical_Machines_Thermal_AsynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.AsynchronousInductionMachines).ThermalAmbientAIMS
=========================================================================================================================================================================================================================================================================================================================================

**Thermal ambient for asynchronous induction machine with slipring**

Information
-----------

::

Thermal ambient for asynchronous induction machines with slipring rotor
to prescribe winding temperatures either constant or via signal
connectors. Additionally, all losses = heat flows are recorded.

::

Extends from
[Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines](Modelica_Electrical_Machines_Interfaces_InductionMachines.html#Modelica.Electrical.Machines.Interfaces.InductionMachines.PartialThermalAmbientInductionMachines)
(Partial thermal ambient for induction machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name      Defa Description
                                         ult  
  ---------------------------- --------- ---- -----------------------------
  Integer                      m         3    Number of phases

  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ts             Temperature of stator
  ts.html#Modelica.SIunits.Tem                windings [K]
  perature)                                   

  [Temperature](Modelica_SIuni Tr             Temperature of rotor windings
  ts.html#Modelica.SIunits.Tem                [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name      Description
  --------------------------------------------- --------- -----------------
  input                                         TStatorWi Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#M nding     stator windings
  odelica.Blocks.Interfaces.RealInput)                    

  input                                         TRotorWin Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#M ding      rotor windings
  odelica.Blocks.Interfaces.RealInput)                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:06 2010.
