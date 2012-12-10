% Modelica.Thermal.FluidHeatFlow.Examples
% 
% 

[Modelica.Thermal.FluidHeatFlow](Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow).Examples
=============================================================================================================

**Examples that demonstrate the usage of the FluidHeatFlow components**

Information
-----------

::

This package contains test examples:

-   1.SimpleCooling: heat is dissipated through a media flow
-   2.ParallelCooling: two heat sources dissipate through merged media
    flows
-   3.IndirectCooling: heat is disspated through two cooling cycles
-   4.PumpAndValve: demonstrates usage of an IdealPump and a Valve
-   5.PumpDropOut: demonstrates shutdown and restart of a pump
-   6.ParallelPumpDropOut: demonstrates shutdown and restart of a pump
    in a parallel circuit
-   7.OneMass: cooling of a mass (thermal capacity) by a coolant flow
-   8.TwoMass: cooling of two masses (thermal capacities) by two
    parallel coolant flows

**Main Authors:**
  ~ [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern, Austria email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

    Dr.Christian Kral
      ~ [Austrian Institute of Technology, AIT](http://www.ait.ac.at/)
        Giefinggasse 2 A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                 Description
  ---------------------------------------------------- -------------------
  ![image9](Modelica.Thermal.FluidHeatFlow.Examples.Si Example: simple
  mpleCoolingS.png)                                    cooling circuit
  [SimpleCooling](Modelica_Thermal_FluidHeatFlow_Examp 
  les.html#Modelica.Thermal.FluidHeatFlow.Examples.Sim 
  pleCooling)                                          

  ![image10](Modelica.Thermal.FluidHeatFlow.Examples.S Example: coolig
  impleCoolingS.png)                                   circuit with
  [ParallelCooling](Modelica_Thermal_FluidHeatFlow_Exa parallel branches
  mples.html#Modelica.Thermal.FluidHeatFlow.Examples.P 
  arallelCooling)                                      

  ![image11](Modelica.Thermal.FluidHeatFlow.Examples.S Example: indirect
  impleCoolingS.png)                                   cooling circuit
  [IndirectCooling](Modelica_Thermal_FluidHeatFlow_Exa 
  mples.html#Modelica.Thermal.FluidHeatFlow.Examples.I 
  ndirectCooling)                                      

  ![image12](Modelica.Thermal.FluidHeatFlow.Examples.S Example: cooling
  impleCoolingS.png)                                   circuit with pump
  [PumpAndValve](Modelica_Thermal_FluidHeatFlow_Exampl and valve
  es.html#Modelica.Thermal.FluidHeatFlow.Examples.Pump 
  AndValve)                                            

  ![image13](Modelica.Thermal.FluidHeatFlow.Examples.S Example: cooling
  impleCoolingS.png)                                   circuit with drop
  [PumpDropOut](Modelica_Thermal_FluidHeatFlow_Example out of pump
  s.html#Modelica.Thermal.FluidHeatFlow.Examples.PumpD 
  ropOut)                                              

  ![image14](Modelica.Thermal.FluidHeatFlow.Examples.S Example: cooling
  impleCoolingS.png)                                   circuit with
  [ParallelPumpDropOut](Modelica_Thermal_FluidHeatFlow parallel branches
  _Examples.html#Modelica.Thermal.FluidHeatFlow.Exampl and drop out of
  es.ParallelPumpDropOut)                              pump

  ![image15](Modelica.Thermal.FluidHeatFlow.Examples.S Example: ccoling of
  impleCoolingS.png)                                   one hot mass
  [OneMass](Modelica_Thermal_FluidHeatFlow_Examples.ht 
  ml#Modelica.Thermal.FluidHeatFlow.Examples.OneMass)  

  ![image16](Modelica.Thermal.FluidHeatFlow.Examples.S Example: cooling of
  impleCoolingS.png)                                   two hot masses
  [TwoMass](Modelica_Thermal_FluidHeatFlow_Examples.ht 
  ml#Modelica.Thermal.FluidHeatFlow.Examples.TwoMass)  

  ![image17](Modelica.Thermal.FluidHeatFlow.Examples.U Utility models for
  tilitiesS.png)                                       examples
  [Utilities](Modelica_Thermal_FluidHeatFlow_Examples_ 
  Utilities.html#Modelica.Thermal.FluidHeatFlow.Exampl 
  es.Utilities)                                        
  ------------------------------------------------------------------------

* * * * *

![image18](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).SimpleCooling
====================================================================================================================================================================================================================

**Example: simple cooling circuit**

Information
-----------

::

1st test example: SimpleCooling

A prescribed heat source dissipates its heat through a thermal conductor
to a coolant flow. The coolant flow is taken from an ambient and driven
by a pump with prescribed mass flow. **Results**:

  --------- --------------------- ------------------- ---------------------
  **output* **explanation**       **formula**         **actual steady-state
  *                                                   value**

  dTSource  Source over Ambient   dtCoolant +         20 K
                                  dtToPipe            

  dTtoPipe  Source over Coolant   Losses /            10 K
                                  ThermalConductor.G  

  dTCoolant Coolant's temperature Losses \* cp \*     10 K
            increase              massFlow            
  --------- --------------------- ------------------- ---------------------

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Cooling
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium medium
  dia.Medium)                                     ()            

  [Temperature](Modelica_SIunits.html#Modeli TAmb 293.15        Ambient
  ca.SIunits.Temperature)                                       temperature
                                                                [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SimpleCooling "Example: simple cooling circuit"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Cooling medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      output Modelica.SIunits.TemperatureDifference dTSource=
        prescribedHeatFlow.port.T-TAmb "Source over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe=prescribedHeatFlow.port.T-pipe.heatPort.T 
        "Source over Coolant";
      output Modelica.SIunits.TemperatureDifference dTCoolant=pipe.dT 
        "Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=medium);
      Sources.VolumeFlow pump(
        medium=medium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      FluidHeatFlow.Components.HeatedPipe pipe(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=medium);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(
        T(start=TAmb), C=0.1);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow;
      Modelica.Blocks.Sources.Constant volumeFlow(k=1);
      Modelica.Blocks.Sources.Constant heatFlow(k=10);
      Modelica.Thermal.HeatTransfer.Components.Convection convection;
      Modelica.Blocks.Sources.Constant thermalConductance(k=1);
    equation 
      connect(ambient1.flowPort, pump.flowPort_a);
      connect(pump.flowPort_b, pipe.flowPort_a);
      connect(pipe.flowPort_b, ambient2.flowPort);
      connect(heatFlow.y, prescribedHeatFlow.Q_flow);
      connect(convection.solid, prescribedHeatFlow.port);
      connect(convection.solid, heatCapacitor.port);
      connect(pipe.heatPort, convection.fluid);
      connect(thermalConductance.y, convection.Gc);
      connect(volumeFlow.y, pump.volumeFlow);
    end SimpleCooling;

* * * * *

![image19](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).ParallelCooling
======================================================================================================================================================================================================================

**Example: coolig circuit with parallel branches**

Information
-----------

::

2nd test example: ParallelCooling

Two prescribed heat sources dissipate their heat through thermal
conductors to coolant flows. The coolant flow is taken from an ambient
and driven by a pump with prescribed mass flow, then splitted into two
coolant flows connected to the two heat sources, and afterwards merged.
Splitting of coolant flows is determined by pressure drop characteristic
of the two pipes. **Results**:

  ---------- ---------------------- ------------------- -------------------
  **output** **explanation**        **formula**         **actual
                                                        steady-state
                                                        value**

  dTSource1  Source1 over Ambient   dTCoolant1 +        15 K
                                    dTtoPipe1           

  dTtoPipe1  Source1 over Coolant1  Losses1 /           5 K
                                    ThermalConductor1.G 

  dTCoolant1 Coolant's temperature  Losses \* cp \*     10 K
             increase               totalMassFlow/2     

  dTSource2  Source2 over Ambient   dTCoolant2 +        30 K
                                    dTtoPipe2           

  dTtoPipe2  Source2 over Coolant2  Losses2 /           10 K
                                    ThermalConductor2.G 

  dTCoolant2 Coolant's temperature  Losses \* cp \*     20 K
             increase               totalMassFlow/2     

  dTmixedCoo mixed Coolant's        (dTCoolant1+dTCoola 15 K
  lant       temperature increase   nt2)/2              
  ---------- ---------------------- ------------------- -------------------

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Cooling
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium medium
  dia.Medium)                                     ()            

  [Temperature](Modelica_SIunits.html#Modeli TAmb 293.15        Ambient
  ca.SIunits.Temperature)                                       temperature
                                                                [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ParallelCooling 
      "Example: coolig circuit with parallel branches"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Cooling medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      output Modelica.SIunits.TemperatureDifference dTSource1=
        prescribedHeatFlow1.port.T-TAmb "Source1 over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe1=prescribedHeatFlow1.port.T-pipe1.heatPort.T 
        "Source1 over Coolant1";
      output Modelica.SIunits.TemperatureDifference dTCoolant1=pipe1.dT 
        "Coolant1's temperature increase";
      output Modelica.SIunits.TemperatureDifference dTSource2=
        prescribedHeatFlow2.port.T-TAmb "Source2 over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe2=prescribedHeatFlow2.port.T-pipe2.heatPort.T 
        "Source2 over Coolant2";
      output Modelica.SIunits.TemperatureDifference dTCoolant2=pipe2.dT 
        "Coolant2's temperature increase";
      output Modelica.SIunits.TemperatureDifference dTmixedCoolant=ambient2.T_port-ambient1.T_port 
        "mixed Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=medium);
      Sources.VolumeFlow pump(
        medium=medium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      FluidHeatFlow.Components.HeatedPipe pipe1(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Components.HeatedPipe pipe2(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Components.IsolatedPipe pipe3(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=medium);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(
        T(start=TAmb), C=0.1);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow1;
      Modelica.Thermal.HeatTransfer.Components.Convection convection1;
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor2(
        T(start=TAmb), C=0.1);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow2;
      Modelica.Thermal.HeatTransfer.Components.Convection convection2;
      Modelica.Blocks.Sources.Constant volumeFlow(k=1);
      Modelica.Blocks.Sources.Constant heatFlow1(k=5);
      Modelica.Blocks.Sources.Constant heatFlow2(k=10);
      Modelica.Blocks.Sources.Constant thermalConductance1(k=1);
      Modelica.Blocks.Sources.Constant thermalConductance2(k=1);
    equation 
      connect(ambient1.flowPort, pump.flowPort_a);
      connect(pump.flowPort_b, pipe1.flowPort_a);
      connect(pump.flowPort_b, pipe2.flowPort_a);
      connect(heatFlow2.y,prescribedHeatFlow2. Q_flow);
      connect(heatFlow1.y,prescribedHeatFlow1. Q_flow);
      connect(thermalConductance2.y, convection2.Gc);
      connect(thermalConductance1.y, convection1.Gc);
      connect(pipe1.heatPort,convection1. fluid);
      connect(convection2.fluid,pipe2. heatPort);
      connect(convection2.solid,prescribedHeatFlow2. port);
      connect(convection2.solid,heatCapacitor2. port);
      connect(convection1.solid,prescribedHeatFlow1. port);
      connect(convection1.solid,heatCapacitor1. port);
      connect(pipe2.flowPort_b,pipe3. flowPort_a);
      connect(pipe1.flowPort_b,pipe3. flowPort_a);
      connect(pipe3.flowPort_b,ambient2. flowPort);
      connect(volumeFlow.y, pump.volumeFlow);
    end ParallelCooling;

* * * * *

![image20](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).IndirectCooling
======================================================================================================================================================================================================================

**Example: indirect cooling circuit**

Information
-----------

::

3rd test example: IndirectCooling

A prescribed heat sources dissipates its heat through a thermal
conductor to the inner coolant cycle. It is necessary to define the
pressure level of the inner coolant cycle. The inner coolant cycle is
coupled to the outer coolant flow through a thermal conductor. Inner
coolant's temperature rise near the source is the same as temperature
drop near the cooler. **Results**:

  ------- ------------------------- ------------------------ --------------
  **outpu **explanation**           **formula**              **actual
  t**                                                        steady-state
                                                             value**

  dTSourc Source over Ambient       dtouterCoolant +         40 K
  e                                 dtCooler +               
                                    dTinnerCoolant +         
                                    dtToPipe                 

  dTtoPip Source over inner Coolant Losses /                 10 K
  e                                 ThermalConductor.G       

  dTinner inner Coolant's           Losses \* cp \*          10 K
  Colant  temperature increase      innerMassFlow            

  dTCoole Cooler's temperature rise Losses \* (innerGc +     10 K
  r       between inner and outer   outerGc)                 
          pipes                                              

  dTouter outer Coolant's           Losses \* cp \*          10 K
  Colant  temperature increase      outerMassFlow            
  ------- ------------------------- ------------------------ --------------

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                      Name   Default       Description
  ----------------------------------------- ------ ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_M outerM FluidHeatFlow Outer
  edia.html#Modelica.Thermal.FluidHeatFlow. edium  .Media.Medium medium
  Media.Medium)                                    ()            

  [Medium](Modelica_Thermal_FluidHeatFlow_M innerM FluidHeatFlow Inner
  edia.html#Modelica.Thermal.FluidHeatFlow. edium  .Media.Medium medium
  Media.Medium)                                    ()            

  [Temperature](Modelica_SIunits.html#Model TAmb   293.15        Ambient
  ica.SIunits.Temperature)                                       temperature
                                                                 [K]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    model IndirectCooling "Example: indirect cooling circuit"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium outerMedium=FluidHeatFlow.Media.Medium() 
        "Outer medium";
      parameter FluidHeatFlow.Media.Medium innerMedium=FluidHeatFlow.Media.Medium() 
        "Inner medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      output Modelica.SIunits.TemperatureDifference dTSource=
        prescribedHeatFlow.port.T-TAmb "Source over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe=prescribedHeatFlow.port.T-pipe1.heatPort.T 
        "Source over inner Coolant";
      output Modelica.SIunits.TemperatureDifference dTinnerCoolant=pipe1.dT 
        "inner Coolant's temperature increase";
      output Modelica.SIunits.TemperatureDifference dTCooler=innerPipe.heatPort.T-outerPipe.heatPort.T 
        "Cooler's temperature increase between inner and outer pipes";
      output Modelica.SIunits.TemperatureDifference dTouterCoolant=outerPipe.dT 
        "outer Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=outerMedium);
      Sources.VolumeFlow outerPump(
        medium=outerMedium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=outerMedium);
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor
        thermalConductor(                                                        G=1);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(
        T(start=TAmb), C=0.05);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow;
      FluidHeatFlow.Components.HeatedPipe pipe1(
        medium=innerMedium,
        m=0.1,
        T0=TAmb,
        V_flowLaminar=1,
        dpLaminar=1000,
        V_flowNominal=2,
        dpNominal=2000);
      FluidHeatFlow.Sources.AbsolutePressure absolutePressure(p=10000, medium=innerMedium);
      Sources.VolumeFlow innerPump(
        medium=innerMedium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      Modelica.Blocks.Sources.Constant heatFlow(k=10);
      Modelica.Blocks.Sources.Constant outerVolumeFlow(k=1);
      Modelica.Blocks.Sources.Constant innerVolumeFlow(k=1);
      Modelica.Blocks.Sources.Constant outerGc(k=2);
      Modelica.Blocks.Sources.Constant innerGc(k=2);
      FluidHeatFlow.Components.HeatedPipe outerPipe(
        medium=outerMedium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Components.HeatedPipe innerPipe(
        medium=innerMedium,
        m=0.1,
        T0=TAmb);
      Modelica.Thermal.HeatTransfer.Components.Convection innerConvection;
      Modelica.Thermal.HeatTransfer.Components.Convection outerConvection;
    equation 
      connect(ambient1.flowPort, outerPump.flowPort_a);
      connect(prescribedHeatFlow.port, thermalConductor.port_a);
      connect(heatCapacitor.port, thermalConductor.port_a);
      connect(pipe1.heatPort, thermalConductor.port_b);
      connect(pipe1.flowPort_b, innerPump.flowPort_a);
      connect(absolutePressure.flowPort, pipe1.flowPort_a);
      connect(heatFlow.y, prescribedHeatFlow.Q_flow);
      connect(innerPump.flowPort_b, innerPipe.flowPort_a);
      connect(innerPipe.flowPort_b, absolutePressure.flowPort);
      connect(outerPump.flowPort_b, outerPipe.flowPort_a);
      connect(outerPipe.flowPort_b,ambient2. flowPort);
      connect(outerPipe.heatPort, outerConvection.fluid);
      connect(outerConvection.solid, innerConvection.solid);
      connect(innerConvection.fluid, innerPipe.heatPort);
      connect(innerGc.y, innerConvection.Gc);
      connect(outerGc.y, outerConvection.Gc);
      connect(outerVolumeFlow.y, outerPump.volumeFlow);
      connect(innerVolumeFlow.y, innerPump.volumeFlow);
    end IndirectCooling;

* * * * *

![image21](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).PumpAndValve
===================================================================================================================================================================================================================

**Example: cooling circuit with pump and valve**

Information
-----------

::

4th test example: PumpAndValve

The pump is running with half speed for 0.4 s, afterwards with full
speed (using a ramp of 0.1 s). The valve is half open for 0.9 s,
afterwards full open (using a ramp of 0.1 s). You may try to:

-   drive the pump with variable speed and let the valve full open to
    regulate the volume flow rate of coolant
-   drive the pump with constant speed and throttle the valve to
    regulate the volume flow rate of coolant

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Cooling
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium medium
  dia.Medium)                                     ()            

  [Temperature](Modelica_SIunits.html#Modeli TAmb 293.15        Ambient
  ca.SIunits.Temperature)                                       temperature
                                                                [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PumpAndValve "Example: cooling circuit with pump and valve"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Cooling medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      output Modelica.SIunits.TemperatureDifference dTSource=
        prescribedHeatFlow.port.T-TAmb "Source over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe=prescribedHeatFlow.port.T-pipe.heatPort.T 
        "Source over Coolant";
      output Modelica.SIunits.TemperatureDifference dTCoolant=pipe.dT 
        "Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=medium);
      FluidHeatFlow.Sources.IdealPump idealPump(
        medium=medium,
        m=0,
        T0=TAmb);
      FluidHeatFlow.Components.Valve valve(
        medium=medium,
        T0=TAmb,
        LinearCharacteristic=false);
      FluidHeatFlow.Components.HeatedPipe pipe(
        medium=medium,
        T0=TAmb,
        m=0.1);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=medium);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(
        T(start=TAmb), C=0.1);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow;
      Modelica.Blocks.Sources.Constant heatFlow(k=10);
      Modelica.Thermal.HeatTransfer.Components.Convection convection;
      Modelica.Blocks.Sources.Constant thermalConductance(k=1);
      Modelica.Mechanics.Rotational.Sources.Speed speed(exact=true, useSupport=
            false);
      Modelica.Blocks.Sources.Ramp speedRamp(
        height=0.5,
        offset=0.5,
        duration=0.1,
        startTime=0.4);
      Modelica.Blocks.Sources.Ramp valveRamp(
        height=0.5,
        offset=0.5,
        duration=0.1,
        startTime=0.9);
    equation 
      connect(pipe.flowPort_b, ambient2.flowPort);
      connect(heatFlow.y, prescribedHeatFlow.Q_flow);
      connect(convection.solid, prescribedHeatFlow.port);
      connect(convection.solid, heatCapacitor.port);
      connect(pipe.heatPort, convection.fluid);
      connect(thermalConductance.y, convection.Gc);
      connect(ambient1.flowPort, idealPump.flowPort_a);
      connect(idealPump.flowPort_b, valve.flowPort_a);
      connect(valve.flowPort_b, pipe.flowPort_a);
      connect(speedRamp.y, speed.w_ref);
      connect(valveRamp.y, valve.y);
      connect(speed.flange, idealPump.flange_a);
    end PumpAndValve;

* * * * *

![image22](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).PumpDropOut
==================================================================================================================================================================================================================

**Example: cooling circuit with drop out of pump**

Information
-----------

::

5th test example: PumpDropOut

Same as 1st test example, but with a drop out of the pump:
  ~ The pump is running for 0.2 s, then shut down (using a ramp of 0.2
    s)

for 0.2 s, then started again (using a ramp of 0.2 s).

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Cooling
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium medium
  dia.Medium)                                     ()            

  [Temperature](Modelica_SIunits.html#Modeli TAmb 293.15        Ambient
  ca.SIunits.Temperature)                                       temperature
                                                                [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PumpDropOut "Example: cooling circuit with drop out of pump"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Cooling medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      output Modelica.SIunits.TemperatureDifference dTSource=
        prescribedHeatFlow.port.T-TAmb "Source over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe=prescribedHeatFlow.port.T-pipe.heatPort.T 
        "Source over Coolant";
      output Modelica.SIunits.TemperatureDifference dTCoolant=pipe.dT 
        "Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=medium);
      Sources.VolumeFlow pump(
        medium=medium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      FluidHeatFlow.Components.HeatedPipe pipe(
        medium=medium,
        T0=TAmb,
        m=0.1);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=medium);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(
        T(start=TAmb), C=0.1);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow;
      Utilities.DoubleRamp volumeFlow;
      Modelica.Blocks.Sources.Constant heatFlow(k=10);
      Modelica.Thermal.HeatTransfer.Components.Convection convection;
      Modelica.Blocks.Sources.Constant thermalConductance(k=1);
    equation 
      connect(ambient1.flowPort, pump.flowPort_a);
      connect(pump.flowPort_b, pipe.flowPort_a);
      connect(pipe.flowPort_b, ambient2.flowPort);
      connect(heatFlow.y, prescribedHeatFlow.Q_flow);
      connect(convection.solid, prescribedHeatFlow.port);
      connect(convection.solid, heatCapacitor.port);
      connect(pipe.heatPort, convection.fluid);
      connect(thermalConductance.y, convection.Gc);
      connect(volumeFlow.y, pump.volumeFlow);
    end PumpDropOut;

* * * * *

![image23](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).ParallelPumpDropOut
==========================================================================================================================================================================================================================

**Example: cooling circuit with parallel branches and drop out of pump**

Information
-----------

::

6th test example: ParallelPumpDropOut

Same as 2nd test example, but with a drop out of the pump:
  ~ The pump is running for 0.2 s, then shut down (using a ramp of 0.2
    s)

for 0.2 s, then started again (using a ramp of 0.2 s).

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name Default       Description
  ------------------------------------------ ---- ------------- -----------
  [Medium](Modelica_Thermal_FluidHeatFlow_Me medi FluidHeatFlow Cooling
  dia.html#Modelica.Thermal.FluidHeatFlow.Me um   .Media.Medium medium
  dia.Medium)                                     ()            

  [Temperature](Modelica_SIunits.html#Modeli TAmb 293.15        Ambient
  ca.SIunits.Temperature)                                       temperature
                                                                [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ParallelPumpDropOut 
      "Example: cooling circuit with parallel branches and drop out of pump"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Cooling medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      output Modelica.SIunits.TemperatureDifference dTSource1=
        prescribedHeatFlow1.port.T-TAmb "Source1 over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe1=prescribedHeatFlow1.port.T-pipe1.heatPort.T 
        "Source1 over Coolant1";
      output Modelica.SIunits.TemperatureDifference dTCoolant1=pipe1.dT 
        "Coolant1's temperature increase";
      output Modelica.SIunits.TemperatureDifference dTSource2=
        prescribedHeatFlow2.port.T-TAmb "Source2 over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe2=prescribedHeatFlow2.port.T-pipe2.heatPort.T 
        "Source2 over Coolant2";
      output Modelica.SIunits.TemperatureDifference dTCoolant2=pipe2.dT 
        "Coolant2's temperature increase";
      output Modelica.SIunits.TemperatureDifference dTmixedCoolant=ambient2.T_port-ambient1.T_port 
        "mixed Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=medium);
      Sources.VolumeFlow pump(
        medium=medium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      FluidHeatFlow.Components.HeatedPipe pipe1(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Components.HeatedPipe pipe2(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Components.IsolatedPipe pipe3(
        medium=medium,
        T0=TAmb,
        m=0.1);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=medium);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(
        T(start=TAmb), C=0.1);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow1;
      Modelica.Thermal.HeatTransfer.Components.Convection Convection1;
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor2(
        T(start=TAmb), C=0.1);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow
        prescribedHeatFlow2;
      Modelica.Thermal.HeatTransfer.Components.Convection convection2;
      Utilities.DoubleRamp volumeFlow;
      Modelica.Blocks.Sources.Constant heatFlow1(k=5);
      Modelica.Blocks.Sources.Constant heatFlow2(k=10);
      Modelica.Blocks.Sources.Constant thermalConductance1(k=1);
      Modelica.Blocks.Sources.Constant thermalConductance2(k=1);
    equation 
      connect(ambient1.flowPort, pump.flowPort_a);
      connect(pump.flowPort_b, pipe1.flowPort_a);
      connect(pump.flowPort_b, pipe2.flowPort_a);
      connect(heatFlow2.y,prescribedHeatFlow2. Q_flow);
      connect(heatFlow1.y,prescribedHeatFlow1. Q_flow);
      connect(thermalConductance2.y, convection2.Gc);
      connect(thermalConductance1.y, Convection1.Gc);
      connect(pipe1.heatPort, Convection1.fluid);
      connect(convection2.fluid,pipe2. heatPort);
      connect(convection2.solid,prescribedHeatFlow2. port);
      connect(convection2.solid,heatCapacitor2. port);
      connect(Convection1.solid,prescribedHeatFlow1. port);
      connect(Convection1.solid,heatCapacitor1. port);
      connect(pipe2.flowPort_b,pipe3. flowPort_a);
      connect(pipe1.flowPort_b,pipe3. flowPort_a);
      connect(pipe3.flowPort_b,ambient2. flowPort);
      connect(volumeFlow.y, pump.volumeFlow);
    end ParallelPumpDropOut;

* * * * *

![image24](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).OneMass
==============================================================================================================================================================================================================

**Example: ccoling of one hot mass**

Information
-----------

::

7th test example: OneMass

A thermal capacity is coupled with a coolant flow. Different inital
temperatures of thermal capacity and pipe's coolant get ambient's
temperature, the time behaviour depending on coolant flow.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name Default       Description
  ---------------------------------------- ---- ------------- -------------
  [Medium](Modelica_Thermal_FluidHeatFlow_ medi FluidHeatFlow Cooling
  Media.html#Modelica.Thermal.FluidHeatFlo um   .Media.Medium medium
  w.Media.Medium)                               ()            

  [Temperature](Modelica_SIunits.html#Mode TAmb 293.15        Ambient
  lica.SIunits.Temperature)                                   temperature
                                                              [K]

  [Temperature](Modelica_SIunits.html#Mode TMas 313.15        Inital
  lica.SIunits.Temperature)                s                  temperature
                                                              of mass [K]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model OneMass "Example: ccoling of one hot mass"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Cooling medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      parameter Modelica.SIunits.Temperature TMass(displayUnit="degC")=313.15 
        "Inital temperature of mass";
      output Modelica.SIunits.TemperatureDifference dTMass=
        heatCapacitor.port.T-TAmb "Mass over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe=heatCapacitor.port.T-pipe.heatPort.T 
        "Mass over Coolant";
      output Modelica.SIunits.TemperatureDifference dTCoolant=pipe.dT 
        "Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=medium);
      Sources.VolumeFlow pump(
        medium=medium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      FluidHeatFlow.Components.HeatedPipe pipe(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=medium);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor(
        C=0.1, T(start=TMass));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor
        thermalConductor(                                                        G=1);
      Utilities.DoubleRamp volumeFlow(
        offset=0,
        height_1=1,
        height_2=-2);
    equation 
      connect(ambient1.flowPort, pump.flowPort_a);
      connect(pump.flowPort_b, pipe.flowPort_a);
      connect(pipe.flowPort_b, ambient2.flowPort);
      connect(thermalConductor.port_a, heatCapacitor.port);
      connect(pipe.heatPort, thermalConductor.port_b);
      connect(volumeFlow.y, pump.volumeFlow);
    end OneMass;

* * * * *

![image25](Modelica.Thermal.FluidHeatFlow.Examples.SimpleCoolingI.png) [Modelica.Thermal.FluidHeatFlow.Examples](Modelica_Thermal_FluidHeatFlow_Examples.html#Modelica.Thermal.FluidHeatFlow.Examples).TwoMass
==============================================================================================================================================================================================================

**Example: cooling of two hot masses**

Information
-----------

::

8th test example: TwoMass

Two thermal capacities are coupled with two parallel coolant flow.
Different inital temperatures of thermal capacities and pipe's coolants
get ambient's temperature, the time behaviour depending on coolant flow.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                     Name Default       Description
  ---------------------------------------- ---- ------------- --------------
  [Medium](Modelica_Thermal_FluidHeatFlow_ medi FluidHeatFlow Cooling medium
  Media.html#Modelica.Thermal.FluidHeatFlo um   .Media.Medium 
  w.Media.Medium)                               ()            

  [Temperature](Modelica_SIunits.html#Mode TAmb 293.15        Ambient
  lica.SIunits.Temperature)                                   temperature
                                                              [K]

  [Temperature](Modelica_SIunits.html#Mode TMas 313.15        Inital
  lica.SIunits.Temperature)                s1                 temperature of
                                                              mass1 [K]

  [Temperature](Modelica_SIunits.html#Mode TMas 333.15        Inital
  lica.SIunits.Temperature)                s2                 temperature of
                                                              mass2 [K]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    model TwoMass "Example: cooling of two hot masses"
      extends Modelica.Icons.Example;
      parameter FluidHeatFlow.Media.Medium medium=FluidHeatFlow.Media.Medium() 
        "Cooling medium";
      parameter Modelica.SIunits.Temperature TAmb(displayUnit="degC")=293.15 
        "Ambient temperature";
      parameter Modelica.SIunits.Temperature TMass1(displayUnit="degC")=313.15 
        "Inital temperature of mass1";
      parameter Modelica.SIunits.Temperature TMass2(displayUnit="degC")=333.15 
        "Inital temperature of mass2";
      output Modelica.SIunits.TemperatureDifference dTMass1=
        heatCapacitor1.port.T-TAmb "Mass1 over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe1=heatCapacitor1.port.T-pipe1.heatPort.T 
        "Mass1 over Coolant1";
      output Modelica.SIunits.TemperatureDifference dTCoolant1=pipe1.dT 
        "Coolant1's temperature increase";
      output Modelica.SIunits.TemperatureDifference dTMass2=
        heatCapacitor2.port.T-TAmb "Mass2 over Ambient";
      output Modelica.SIunits.TemperatureDifference dTtoPipe2=heatCapacitor2.port.T-pipe2.heatPort.T 
        "Mass2 over Coolant2";
      output Modelica.SIunits.TemperatureDifference dTCoolant2=pipe2.dT 
        "Coolant2's temperature increase";
      output Modelica.SIunits.TemperatureDifference dTmixedCoolant=ambient2.T_port-ambient1.T_port 
        "mixed Coolant's temperature increase";
      FluidHeatFlow.Sources.Ambient ambient1(constantAmbientTemperature=TAmb, medium=medium);
      Sources.VolumeFlow pump(
        medium=medium,
        m=0,
        T0=TAmb,
        useVolumeFlowInput=true);
      FluidHeatFlow.Components.HeatedPipe pipe1(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Components.HeatedPipe pipe2(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Components.IsolatedPipe pipe3(
        medium=medium,
        m=0.1,
        T0=TAmb);
      FluidHeatFlow.Sources.Ambient ambient2(constantAmbientTemperature=TAmb, medium=medium);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor1(
        C=0.1, T(start=TMass1));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor
        thermalConductor1(                                                        G=1);
      Modelica.Thermal.HeatTransfer.Components.HeatCapacitor heatCapacitor2(
        C=0.1, T(start=TMass2));
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor
        thermalConductor2(                                                        G=1);
      Utilities.DoubleRamp volumeFlow(
        offset=0,
        height_1=1,
        height_2=-2);
    equation 
      connect(ambient1.flowPort, pump.flowPort_a);
      connect(pump.flowPort_b, pipe1.flowPort_a);
      connect(pump.flowPort_b, pipe2.flowPort_a);
      connect(pipe2.flowPort_b,pipe3. flowPort_a);
      connect(pipe1.flowPort_b,pipe3. flowPort_a);
      connect(pipe3.flowPort_b,ambient2. flowPort);
      connect(heatCapacitor2.port,thermalConductor2. port_a);
      connect(thermalConductor2.port_b,pipe2. heatPort);
      connect(pipe1.heatPort,thermalConductor1. port_b);
      connect(thermalConductor1.port_a, heatCapacitor1.port);
      connect(volumeFlow.y, pump.volumeFlow);
    end TwoMass;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:43 2010.
