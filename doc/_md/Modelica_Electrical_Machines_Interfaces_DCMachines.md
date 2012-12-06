% Modelica.Electrical.Machines.Interfaces.DCMachines
% 
% 

[Modelica.Electrical.Machines.Interfaces](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces).DCMachines
==========================================================================================================================================

**Thermal ports of DC machines**

Information
-----------

::

Thermal ports for DC machines

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image11](Modelica.Electrical.Machines.Interfaces.DCMachi Partial
  nes.PartialThermalPortDCMachinesS.png)                     thermal port
  [PartialThermalPortDCMachines](Modelica_Electrical_Machine of DC
  s_Interfaces_DCMachines.html#Modelica.Electrical.Machines. machines
  Interfaces.DCMachines.PartialThermalPortDCMachines)        

  ![image12](Modelica.Electrical.Machines.Interfaces.DCMachi Partial
  nes.PartialThermalAmbientDCMachinesS.png)                  thermal
  [PartialThermalAmbientDCMachines](Modelica_Electrical_Mach ambient for
  ines_Interfaces_DCMachines.html#Modelica.Electrical.Machin DC machines
  es.Interfaces.DCMachines.PartialThermalAmbientDCMachines)  

  ![image13](Modelica.Electrical.Machines.Interfaces.DCMachi Partial power
  nes.PartialPowerBalanceDCMachinesS.png)                    balance of DC
  [PartialPowerBalanceDCMachines](Modelica_Electrical_Machin machines
  es_Interfaces_DCMachines.html#Modelica.Electrical.Machines 
  .Interfaces.DCMachines.PartialPowerBalanceDCMachines)      

  ![image14](Modelica.Electrical.Machines.Interfaces.DCMachi Thermal port
  nes.ThermalPortDCPMS.png)                                  of DC machine
  [ThermalPortDCPM](Modelica_Electrical_Machines_Interfaces_ with
  DCMachines.html#Modelica.Electrical.Machines.Interfaces.DC permanent
  Machines.ThermalPortDCPM)                                  magnets

  ![image15](Modelica.Electrical.Machines.Interfaces.DCMachi Power balance
  nes.PowerBalanceDCPMS.png)                                 of DC
  [PowerBalanceDCPM](Modelica_Electrical_Machines_Interfaces machines with
  _DCMachines.html#Modelica.Electrical.Machines.Interfaces.D permanent
  CMachines.PowerBalanceDCPM)                                magnet

  ![image16](Modelica.Electrical.Machines.Interfaces.DCMachi Thermal port
  nes.ThermalPortDCEES.png)                                  of DC machine
  [ThermalPortDCEE](Modelica_Electrical_Machines_Interfaces_ with
  DCMachines.html#Modelica.Electrical.Machines.Interfaces.DC electrical
  Machines.ThermalPortDCEE)                                  excitation

  ![image17](Modelica.Electrical.Machines.Interfaces.DCMachi Power balance
  nes.PowerBalanceDCEES.png)                                 of DC
  [PowerBalanceDCEE](Modelica_Electrical_Machines_Interfaces machines with
  _DCMachines.html#Modelica.Electrical.Machines.Interfaces.D electrical
  CMachines.PowerBalanceDCEE)                                excitation

  ![image18](Modelica.Electrical.Machines.Interfaces.DCMachi Thermal port
  nes.ThermalPortDCSES.png)                                  of DC machine
  [ThermalPortDCSE](Modelica_Electrical_Machines_Interfaces_ with series
  DCMachines.html#Modelica.Electrical.Machines.Interfaces.DC excitation
  Machines.ThermalPortDCSE)                                  

  ![image19](Modelica.Electrical.Machines.Interfaces.DCMachi Power balance
  nes.PowerBalanceDCSES.png)                                 of DC
  [PowerBalanceDCSE](Modelica_Electrical_Machines_Interfaces machines with
  _DCMachines.html#Modelica.Electrical.Machines.Interfaces.D series
  CMachines.PowerBalanceDCSE)                                excitation

  ![image20](Modelica.Electrical.Machines.Interfaces.DCMachi Thermal port
  nes.ThermalPortDCCES.png)                                  of DC machine
  [ThermalPortDCCE](Modelica_Electrical_Machines_Interfaces_ with compound
  DCMachines.html#Modelica.Electrical.Machines.Interfaces.DC excitation
  Machines.ThermalPortDCCE)                                  

  ![image21](Modelica.Electrical.Machines.Interfaces.DCMachi Power balance
  nes.PowerBalanceDCCES.png)                                 of DC
  [PowerBalanceDCCE](Modelica_Electrical_Machines_Interfaces machines with
  _DCMachines.html#Modelica.Electrical.Machines.Interfaces.D compound
  CMachines.PowerBalanceDCCE)                                excitation
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachinesI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).PartialThermalPortDCMachines
==============================================================================================================================================================================================================================================================================================

**Partial thermal port of DC machines**

Information
-----------

::

Partial thermal port for DC machines

::

Contents
--------

  -------------------------------------------------------------------------
  Type                                           Name     Description
  ---------------------------------------------- -------- -----------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Armature armature
  terfaces.HeatPort_a)                                    

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Core     (optional) core
  terfaces.HeatPort_a)                                    losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In StrayLoa (optional) stray
  terfaces.HeatPort_a)                           d        losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Friction (optional)
  terfaces.HeatPort_a)                                    friction losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Brush    (optional) brush
  terfaces.HeatPort_a)                                    losses
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image23](Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalAmbientDCMachinesI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).PartialThermalAmbientDCMachines
====================================================================================================================================================================================================================================================================================================

**Partial thermal ambient for DC machines**

Information
-----------

::

Partial thermal ambient for induction machines

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name  Default  Description
  ---------------------------------------- ----- -------- -----------------
  Boolean                                  useTe false    If true,
                                           mpera          temperature
                                           tureI          inputs are used;
                                           nputs          else,
                                                          temperatures are
                                                          constant

  [Temperature](Modelica_SIunits.html#Mode Ta             Temperature of
  lica.SIunits.Temperature)                               armature [K]

  [PartialThermalPortDCMachines](Modelica_ therm redeclar 
  Electrical_Machines_Interfaces_DCMachine alPor e        
  s.html#Modelica.Electrical.Machines.Inte t     Machines 
  rfaces.DCMachines.PartialThermalPortDCMa       .Interfa 
  chines)                                        ce...    
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  [PartialThermalPortDCMachines](Modelica_Electrical_Machin therm 
  es_Interfaces_DCMachines.html#Modelica.Electrical.Machine alPor 
  s.Interfaces.DCMachines.PartialThermalPortDCMachines)     t     

  input                                                     TArma Temperatu
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bloc ture  re
  ks.Interfaces.RealInput)                                        of
                                                                  armature
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image24](Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachinesI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).PartialPowerBalanceDCMachines
================================================================================================================================================================================================================================================================================================

**Partial power balance of DC machines**

Information
-----------

::

Partial power balance of DC machines.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Modelica definition
-------------------

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

* * * * *

![image25](Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCPMI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).ThermalPortDCPM
====================================================================================================================================================================================================================================================================

**Thermal port of DC machine with permanent magnets**

Information
-----------

::

Thermal port for DC machine with permanent magnets

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalPortDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines)
(Partial thermal port of DC machines).

Contents
--------

  ------------------------------------------------------------------------
  Type                                         Name       Description
  -------------------------------------------- ---------- ----------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortAr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe mature     armature
  r.Interfaces.HeatPort_a)                                

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortCo Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe re         (optional) core
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortSt Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe rayLoad    (optional) stray
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortFr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe iction     (optional)
  r.Interfaces.HeatPort_a)                                friction losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortBr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe ush        (optional) brush
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortPe Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe rmanentMag permanent
  r.Interfaces.HeatPort_a)                     net        magnets
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector ThermalPortDCPM 
      "Thermal port of DC machine with permanent magnets"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortPermanentMagnet 
        "Heat port of permanent magnets";
    end ThermalPortDCPM;

* * * * *

![image26](Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCPMI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).PowerBalanceDCPM
======================================================================================================================================================================================================================================================================

**Power balance of DC machines with permanent magnet**

Information
-----------

::

Power balance of DC machines with permanent magnet.

::

Extends from
[Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines)
(Partial power balance of DC machines).

Parameters
----------

  ------------------------------------------------------------------------
  Type                           Name      Default            Description
  ------------------------------ --------- ------------------ ------------
  [Power](Modelica_SIunits.html# lossPower lossPowerArmature  Total loss
  Modelica.SIunits.Power)        Total     + lossPowe...      power [W]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record PowerBalanceDCPM 
      "Power balance of DC machines with permanent magnet"
      extends Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines(
        final lossPowerTotal = lossPowerArmature + lossPowerCore + lossPowerStrayLoad + lossPowerFriction + lossPowerBrush +
                               lossPowerPermanentMagnet);
      Modelica.SIunits.Power lossPowerPermanentMagnet "Permanent magnet losses";
    end PowerBalanceDCPM;

* * * * *

![image27](Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCEEI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).ThermalPortDCEE
====================================================================================================================================================================================================================================================================

**Thermal port of DC machine with electrical excitation**

Information
-----------

::

Thermal port for DC machine with electrical (shunt) excitation

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalPortDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines)
(Partial thermal port of DC machines).

Contents
--------

  -------------------------------------------------------------------------
  Type                                           Name     Description
  ---------------------------------------------- -------- -----------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Armature armature
  terfaces.HeatPort_a)                                    

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Core     (optional) core
  terfaces.HeatPort_a)                                    losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In StrayLoa (optional) stray
  terfaces.HeatPort_a)                           d        losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Friction (optional)
  terfaces.HeatPort_a)                                    friction losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Brush    (optional) brush
  terfaces.HeatPort_a)                                    losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In heatPort Heat port of
  terfaces.html#Modelica.Thermal.HeatTransfer.In Excitati (shunt)
  terfaces.HeatPort_a)                           on       excitation
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector ThermalPortDCEE 
      "Thermal port of DC machine with electrical excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortExcitation 
        "Heat port of (shunt) excitation";
    end ThermalPortDCEE;

* * * * *

![image28](Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCEEI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).PowerBalanceDCEE
======================================================================================================================================================================================================================================================================

**Power balance of DC machines with electrical excitation**

Information
-----------

::

Power balance of DC machines with electrical excitation.

::

Extends from
[Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines)
(Partial power balance of DC machines).

Parameters
----------

  ------------------------------------------------------------------------
  Type                           Name      Default            Description
  ------------------------------ --------- ------------------ ------------
  [Power](Modelica_SIunits.html# lossPower lossPowerArmature  Total loss
  Modelica.SIunits.Power)        Total     + lossPowe...      power [W]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record PowerBalanceDCEE 
      "Power balance of DC machines with electrical excitation"
      extends Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines(
        final lossPowerTotal = lossPowerArmature + lossPowerCore + lossPowerStrayLoad + lossPowerFriction + lossPowerBrush +
                               lossPowerExcitation);
      Modelica.SIunits.Power powerExcitation "Electrical (shunt) excitation power";
      Modelica.SIunits.Power lossPowerExcitation "Excitation losses";
    end PowerBalanceDCEE;

* * * * *

![image29](Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCSEI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).ThermalPortDCSE
====================================================================================================================================================================================================================================================================

**Thermal port of DC machine with series excitation**

Information
-----------

::

Thermal port for DC machine with serial excitation

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalPortDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines)
(Partial thermal port of DC machines).

Contents
--------

  ------------------------------------------------------------------------
  Type                                         Name       Description
  -------------------------------------------- ---------- ----------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortAr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe mature     armature
  r.Interfaces.HeatPort_a)                                

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortCo Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe re         (optional) core
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortSt Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe rayLoad    (optional) stray
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortFr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe iction     (optional)
  r.Interfaces.HeatPort_a)                                friction losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortBr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe ush        (optional) brush
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortSe Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe riesExcita series
  r.Interfaces.HeatPort_a)                     tion       excitation
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector ThermalPortDCSE 
      "Thermal port of DC machine with series excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortSeriesExcitation 
        "Heat port of series excitation";
    end ThermalPortDCSE;

* * * * *

![image30](Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCSEI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).PowerBalanceDCSE
======================================================================================================================================================================================================================================================================

**Power balance of DC machines with series excitation**

Information
-----------

::

Power balance of DC machines with series excitation.

::

Extends from
[Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines)
(Partial power balance of DC machines).

Parameters
----------

  ------------------------------------------------------------------------
  Type                           Name      Default            Description
  ------------------------------ --------- ------------------ ------------
  [Power](Modelica_SIunits.html# lossPower lossPowerArmature  Total loss
  Modelica.SIunits.Power)        Total     + lossPowe...      power [W]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record PowerBalanceDCSE 
      "Power balance of DC machines with series excitation"
      extends Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines(
        final lossPowerTotal = lossPowerArmature + lossPowerCore + lossPowerStrayLoad + lossPowerFriction + lossPowerBrush +
                               lossPowerSeriesExcitation);
      Modelica.SIunits.Power powerSeriesExcitation 
        "Electrical series excitation power";
      Modelica.SIunits.Power lossPowerSeriesExcitation "Series excitation losses";
    end PowerBalanceDCSE;

* * * * *

![image31](Modelica.Electrical.Machines.Interfaces.DCMachines.ThermalPortDCCEI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).ThermalPortDCCE
====================================================================================================================================================================================================================================================================

**Thermal port of DC machine with compound excitation**

Information
-----------

::

Thermal port for DC machine with compound excitation

::

Extends from
[Machines.Interfaces.DCMachines.PartialThermalPortDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialThermalPortDCMachines)
(Partial thermal port of DC machines).

Contents
--------

  ------------------------------------------------------------------------
  Type                                         Name       Description
  -------------------------------------------- ---------- ----------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortAr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe mature     armature
  r.Interfaces.HeatPort_a)                                

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortCo Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe re         (optional) core
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortSt Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe rayLoad    (optional) stray
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortFr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe iction     (optional)
  r.Interfaces.HeatPort_a)                                friction losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortBr Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe ush        (optional) brush
  r.Interfaces.HeatPort_a)                                losses

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortSh Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe untExcitat (shunt)
  r.Interfaces.HeatPort_a)                     ion        excitation

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_ heatPortSe Heat port of
  Interfaces.html#Modelica.Thermal.HeatTransfe riesExcita series
  r.Interfaces.HeatPort_a)                     tion       excitation
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector ThermalPortDCCE 
      "Thermal port of DC machine with compound excitation"
      extends Machines.Interfaces.DCMachines.PartialThermalPortDCMachines;

      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortShuntExcitation 
        "Heat port of (shunt) excitation";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPortSeriesExcitation 
        "Heat port of series excitation";
    end ThermalPortDCCE;

* * * * *

![image32](Modelica.Electrical.Machines.Interfaces.DCMachines.PowerBalanceDCCEI.png) [Modelica.Electrical.Machines.Interfaces.DCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines).PowerBalanceDCCE
======================================================================================================================================================================================================================================================================

**Power balance of DC machines with compound excitation**

Information
-----------

::

Power balance of DC machines with compound excitation.

::

Extends from
[Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines](Modelica_Electrical_Machines_Interfaces_DCMachines.html#Modelica.Electrical.Machines.Interfaces.DCMachines.PartialPowerBalanceDCMachines)
(Partial power balance of DC machines).

Parameters
----------

  ------------------------------------------------------------------------
  Type                           Name      Default            Description
  ------------------------------ --------- ------------------ ------------
  [Power](Modelica_SIunits.html# lossPower lossPowerArmature  Total loss
  Modelica.SIunits.Power)        Total     + lossPowe...      power [W]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:15 2010.
