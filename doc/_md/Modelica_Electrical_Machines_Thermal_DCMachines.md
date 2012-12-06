% Modelica.Electrical.Machines.Thermal.DCMachines
% 
% 

[Modelica.Electrical.Machines.Thermal](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal).DCMachines
=================================================================================================================================

**Thermal parts of DC machines**

Information
-----------

::

Thermal parts for DC machines

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  -------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ----------------
  ![image4](Modelica.Electrical.Machines.Thermal.DCMachine Thermal ambient
  s.ThermalAmbientDCPMS.png)                               for DC machine
  [ThermalAmbientDCPM](Modelica_Electrical_Machines_Therma with permanent
  l_DCMachines.html#Modelica.Electrical.Machines.Thermal.D magnets
  CMachines.ThermalAmbientDCPM)                            

  ![image5](Modelica.Electrical.Machines.Thermal.DCMachine Thermal ambient
  s.ThermalAmbientDCPMS.png)                               for DC machine
  [ThermalAmbientDCEE](Modelica_Electrical_Machines_Therma with electrical
  l_DCMachines.html#Modelica.Electrical.Machines.Thermal.D excitation
  CMachines.ThermalAmbientDCEE)                            

  ![image6](Modelica.Electrical.Machines.Thermal.DCMachine Thermal ambient
  s.ThermalAmbientDCSES.png)                               for DC machine
  [ThermalAmbientDCSE](Modelica_Electrical_Machines_Therma with series
  l_DCMachines.html#Modelica.Electrical.Machines.Thermal.D excitation
  CMachines.ThermalAmbientDCSE)                            

  ![image7](Modelica.Electrical.Machines.Thermal.DCMachine Thermal ambient
  s.ThermalAmbientDCCES.png)                               for DC machine
  [ThermalAmbientDCCE](Modelica_Electrical_Machines_Therma with compound
  l_DCMachines.html#Modelica.Electrical.Machines.Thermal.D excitation
  CMachines.ThermalAmbientDCCE)                            
  -------------------------------------------------------------------------

* * * * *

![image8](Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCPMI.png) [Modelica.Electrical.Machines.Thermal.DCMachines](Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines).ThermalAmbientDCPM
=============================================================================================================================================================================================================================================================

**Thermal ambient for DC machine with permanent magnets**

Information
-----------

::

Thermal ambient for DC machines with permanent magnets to prescribe
winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines)
(Partial thermal ambient for DC machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name      Defa Description
                                         ult  
  ---------------------------- --------- ---- -----------------------------
  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ta             Temperature of armature [K]
  ts.html#Modelica.SIunits.Tem                
  perature)                                   

  [Temperature](Modelica_SIuni Tpm            Temperature of permanent
  ts.html#Modelica.SIunits.Tem                magnet [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Name       Description
  -------------------------------------------- ---------- -----------------
  input                                        TArmature  Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#            armature
  Modelica.Blocks.Interfaces.RealInput)                   

  input                                        TPermanent Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html# Magnet     permanent magnet
  Modelica.Blocks.Interfaces.RealInput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ThermalAmbientDCPM 
      "Thermal ambient for DC machine with permanent magnets"
      import Modelica;
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCPM
          thermalPort);
      parameter Modelica.SIunits.Temperature Tpm(start=TDefault) 
        "Temperature of permanent magnet";
      output Modelica.SIunits.HeatFlowRate Q_flowPermanentMagnet = temperaturePermanentMagnet.port.Q_flow 
        "Heat flow rate of permanent magnets";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowPermanentMagnet;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature
        temperaturePermanentMagnet;
      Modelica.Blocks.Sources.Constant constTpm(final k=Tpm) if not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput TPermanentMagnet if useTemperatureInputs 
        "Temperature of permanent magnet";
    equation 
      connect(temperaturePermanentMagnet.port, thermalPort.heatPortPermanentMagnet);
      connect(constTpm.y, temperaturePermanentMagnet.T);
      connect(TPermanentMagnet, temperaturePermanentMagnet.T);
    end ThermalAmbientDCPM;

* * * * *

![image9](Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCEEI.png) [Modelica.Electrical.Machines.Thermal.DCMachines](Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines).ThermalAmbientDCEE
=============================================================================================================================================================================================================================================================

**Thermal ambient for DC machine with electrical excitation**

Information
-----------

::

Thermal ambient for DC machines with electrical (shunt) excitation to
prescribe winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines)
(Partial thermal ambient for DC machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name      Defa Description
                                         ult  
  ---------------------------- --------- ---- -----------------------------
  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ta             Temperature of armature [K]
  ts.html#Modelica.SIunits.Tem                
  perature)                                   

  [Temperature](Modelica_SIuni Te             Temperature of (shunt)
  ts.html#Modelica.SIunits.Tem                excitation [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                          Name    Description
  --------------------------------------------- ------- ------------------
  input                                         TArmatu Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#M re      armature
  odelica.Blocks.Interfaces.RealInput)                  

  input                                         TExcita Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#M tion    (shunt) excitation
  odelica.Blocks.Interfaces.RealInput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ThermalAmbientDCEE 
      "Thermal ambient for DC machine with electrical excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCEE
          thermalPort);
      parameter Modelica.SIunits.Temperature Te(start=TDefault) 
        "Temperature of (shunt) excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowExcitation = temperatureExcitation.port.Q_flow 
        "Heat flow rate of (shunt) excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowExcitation;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureExcitation;
      Modelica.Blocks.Sources.Constant constTe(final k=Te) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput TExcitation if 
                                                  useTemperatureInputs 
        "Temperature of (shunt) excitation";
    equation 
      connect(constTe.y, temperatureExcitation.T);
      connect(TExcitation, temperatureExcitation.T);
      connect(temperatureExcitation.port, thermalPort.heatPortExcitation);
    end ThermalAmbientDCEE;

* * * * *

![image10](Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCSEI.png) [Modelica.Electrical.Machines.Thermal.DCMachines](Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines).ThermalAmbientDCSE
==============================================================================================================================================================================================================================================================

**Thermal ambient for DC machine with series excitation**

Information
-----------

::

Thermal ambient for DC machines with serial excitation to prescribe
winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines)
(Partial thermal ambient for DC machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name      Defa Description
                                         ult  
  ---------------------------- --------- ---- -----------------------------
  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ta             Temperature of armature [K]
  ts.html#Modelica.SIunits.Tem                
  perature)                                   

  [Temperature](Modelica_SIuni Tse            Temperature of series
  ts.html#Modelica.SIunits.Tem                excitation [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name   Description
  ---------------------------------------------- ------ ------------------
  input                                          TArmat Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#Mo ure    armature
  delica.Blocks.Interfaces.RealInput)                   

  input                                          T\_se  Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#Mo        series excitation
  delica.Blocks.Interfaces.RealInput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ThermalAmbientDCSE 
      "Thermal ambient for DC machine with series excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCSE
          thermalPort);
      parameter Modelica.SIunits.Temperature Tse(start=TDefault) 
        "Temperature of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowSeriesExcitation = temperatureSeriesExcitation.port.Q_flow 
        "Heat flow rate of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowSeriesExcitation;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureSeriesExcitation;
      Modelica.Blocks.Sources.Constant constTse(final k=Tse) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput T_se if useTemperatureInputs 
        "Temperature of series excitation";
    equation 
      connect(constTse.y, temperatureSeriesExcitation.T);
      connect(T_se, temperatureSeriesExcitation.T);
      connect(temperatureSeriesExcitation.port, thermalPort.heatPortSeriesExcitation);
    end ThermalAmbientDCSE;

* * * * *

![image11](Modelica.Electrical.Machines.Thermal.DCMachines.ThermalAmbientDCCEI.png) [Modelica.Electrical.Machines.Thermal.DCMachines](Modelica_Electrical_Machines_Thermal_DCMachines.html#Modelica.Electrical.Machines.Thermal.DCMachines).ThermalAmbientDCCE
==============================================================================================================================================================================================================================================================

**Thermal ambient for DC machine with compound excitation**

Information
-----------

::

Thermal ambient for DC machines with compound excitation to prescribe
winding temperatures either constant or via signal connectors.
Additionally, all losses = heat flows are recorded.

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines)
(Partial thermal ambient for DC machines).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name      Defa Description
                                         ult  
  ---------------------------- --------- ---- -----------------------------
  Boolean                      useTemper fals If true, temperature inputs
                               atureInpu e    are used; else, temperatures
                               ts             are constant

  [Temperature](Modelica_SIuni Ta             Temperature of armature [K]
  ts.html#Modelica.SIunits.Tem                
  perature)                                   

  [Temperature](Modelica_SIuni Te             Temperature of (shunt)
  ts.html#Modelica.SIunits.Tem                excitation [K]
  perature)                                   

  [Temperature](Modelica_SIuni Tse            Temperature of series
  ts.html#Modelica.SIunits.Tem                excitation [K]
  perature)                                   
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Name   Description
  ---------------------------------------------- ------ ------------------
  input                                          TArmat Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#Mo ure    armature
  delica.Blocks.Interfaces.RealInput)                   

  input                                          T\_e   Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#Mo        (shunt) excitation
  delica.Blocks.Interfaces.RealInput)                   

  input                                          T\_se  Temperature of
  [RealInput](Modelica_Blocks_Interfaces.html#Mo        series excitation
  delica.Blocks.Interfaces.RealInput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ThermalAmbientDCCE 
      "Thermal ambient for DC machine with compound excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachines(
         redeclare final Machines.Interfaces.DCMachines.ThermalPortDCCE
          thermalPort);
      parameter Modelica.SIunits.Temperature Te(start=TDefault) 
        "Temperature of (shunt) excitation";
       parameter Modelica.SIunits.Temperature Tse(start=TDefault) 
        "Temperature of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowShuntExcitation = temperatureShuntExcitation.port.Q_flow 
        "Heat flow rate of (shunt) excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowSeriesExcitation = temperatureSeriesExcitation.port.Q_flow 
        "Heat flow rate of series excitation";
      output Modelica.SIunits.HeatFlowRate Q_flowTotal=
        Q_flowArmature + Q_flowCore + Q_flowStrayLoad + Q_flowFriction + Q_flowBrush + Q_flowShuntExcitation + Q_flowSeriesExcitation;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureShuntExcitation;
      Modelica.Blocks.Sources.Constant constTe(final k=Te) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput T_e if useTemperatureInputs 
        "Temperature of (shunt) excitation";
      Modelica.Thermal.HeatTransfer.Sources.PrescribedTemperature temperatureSeriesExcitation;
      Modelica.Blocks.Sources.Constant constTse(final k=Tse) if  not useTemperatureInputs;
      Modelica.Blocks.Interfaces.RealInput T_se if useTemperatureInputs 
        "Temperature of series excitation";
    equation 
      connect(constTe.y, temperatureShuntExcitation.T);
      connect(T_e, temperatureShuntExcitation.T);
      connect(constTse.y, temperatureSeriesExcitation.T);
      connect(T_se, temperatureSeriesExcitation.T);
      connect(temperatureSeriesExcitation.port, thermalPort.heatPortSeriesExcitation);
      connect(temperatureShuntExcitation.port, thermalPort.heatPortShuntExcitation);
    end ThermalAmbientDCCE;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:12 2010.
