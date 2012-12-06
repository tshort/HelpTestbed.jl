% Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines
% 
% 

[Modelica.Electrical.Machines.Thermal](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal).SynchronousInductionMachines
===================================================================================================================================================

**Thermal parts of synchronous induction machines**

Information
-----------

::

Thermal parts for synchronous induction machines

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image3](Modelica.Electrical.Machines.Thermal.Synchron Thermal ambient
  ousInductionMachines.ThermalAmbientSMPMS.png)           for synchronous
  [ThermalAmbientSMPM](Modelica_Electrical_Machines_Therm induction
  al_SynchronousInductionMachines.html#Modelica.Electrica machine with
  l.Machines.Thermal.SynchronousInductionMachines.Thermal permanent
  AmbientSMPM)                                            magnets

  ![image4](Modelica.Electrical.Machines.Thermal.Synchron Thermal ambient
  ousInductionMachines.ThermalAmbientSMPMS.png)           for synchronous
  [ThermalAmbientSMEE](Modelica_Electrical_Machines_Therm induction
  al_SynchronousInductionMachines.html#Modelica.Electrica machine with
  l.Machines.Thermal.SynchronousInductionMachines.Thermal electrical
  AmbientSMEE)                                            excitation

  ![image5](Modelica.Electrical.Machines.Thermal.Synchron Thermal ambient
  ousInductionMachines.ThermalAmbientSMRS.png)            for synchronous
  [ThermalAmbientSMR](Modelica_Electrical_Machines_Therma induction
  l_SynchronousInductionMachines.html#Modelica.Electrical machine with
  .Machines.Thermal.SynchronousInductionMachines.ThermalA reluctance rotor
  mbientSMR)                                              
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMPMI.png) [Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines](Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines).ThermalAmbientSMPM
=====================================================================================================================================================================================================================================================================================================================================

**Thermal ambient for synchronous induction machine with permanent
magnets**

Information
-----------

::

Thermal ambient for synchronous induction machines with permanent
magnets to prescribe winding temperatures either constant or via signal
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
  Boolean                      useDamper      Enable / disable damper cage
                               Cage           

  Integer                      m         3    Number of phases

  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ts             Temperature of stator
  ts.html#Modelica.SIunits.Tem                windings [K]
  perature)                                   

  [Temperature](Modelica_SIuni Tpm            Temperature of permanent
  ts.html#Modelica.SIunits.Tem                magnet [K]
  perature)                                   

  [Temperature](Modelica_SIuni Tr             Temperature of damper cage
  ts.html#Modelica.SIunits.Tem                (optional) [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name      Description
  ------------------------------------------- --------- -------------------
  input                                       TStatorWi Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html nding     stator windings
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       TRotorWin Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html ding      damper cage
  #Modelica.Blocks.Interfaces.RealInput)                (optional)

  input                                       TPermanen Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html tMagnet   permanent magnet
  #Modelica.Blocks.Interfaces.RealInput)                
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image7](Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMEEI.png) [Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines](Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines).ThermalAmbientSMEE
=====================================================================================================================================================================================================================================================================================================================================

**Thermal ambient for synchronous induction machine with electrical
excitation**

Information
-----------

::

Thermal ambient for synchronous induction machines with electrical
excitation to prescribe winding temperatures either constant or via
signal connectors. Additionally, all losses = heat flows are recorded.

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
  Boolean                      useDamper      Enable / disable damper cage
                               Cage           

  Integer                      m         3    Number of phases

  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ts             Temperature of stator
  ts.html#Modelica.SIunits.Tem                windings [K]
  perature)                                   

  [Temperature](Modelica_SIuni Tr             Temperature of damper cage
  ts.html#Modelica.SIunits.Tem                (optional) [K]
  perature)                                   

  [Temperature](Modelica_SIuni Te             Temperature of excitation [K]
  ts.html#Modelica.SIunits.Tem                
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                        Name     Description
  ------------------------------------------- -------- -------------------
  input                                       TStatorW Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html inding   stator windings
  #Modelica.Blocks.Interfaces.RealInput)               

  input                                       TRotorWi Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html nding    damper cage
  #Modelica.Blocks.Interfaces.RealInput)               (optional)

  input                                       TExcitat Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html ion      excitation
  #Modelica.Blocks.Interfaces.RealInput)               
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image8](Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines.ThermalAmbientSMRI.png) [Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines](Modelica_Electrical_Machines_Thermal_SynchronousInductionMachines.html#Modelica.Electrical.Machines.Thermal.SynchronousInductionMachines).ThermalAmbientSMR
===================================================================================================================================================================================================================================================================================================================================

**Thermal ambient for synchronous induction machine with reluctance
rotor**

Information
-----------

::

Thermal ambient for synchronous induction machines with reluctance rotor
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
  Boolean                      useDamper      Enable / disable damper cage
                               Cage           

  Integer                      m         3    Number of phases

  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ts             Temperature of stator
  ts.html#Modelica.SIunits.Tem                windings [K]
  perature)                                   

  [Temperature](Modelica_SIuni Tr             Temperature of damper cage
  ts.html#Modelica.SIunits.Tem                (optional) [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                        Name     Description
  ------------------------------------------- -------- -------------------
  input                                       TStatorW Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html inding   stator windings
  #Modelica.Blocks.Interfaces.RealInput)               

  input                                       TRotorWi Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html nding    damper cage
  #Modelica.Blocks.Interfaces.RealInput)               (optional)
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:09 2010.
