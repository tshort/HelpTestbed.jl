% Modelica.Fluid.Examples.AST\_BatchPlant
% 
% 

[Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).AST\_BatchPlant
===============================================================================================

**Model of the experimental batch plant at Process Control Laboratory at
University of Dortmund (Prof. Engell)**

Information
-----------

::

The process under consideration is an evaporation plant for a student
lab at the Process Control Laboratory (AST) of the University of
Dortmund that evaporates a water sodium chloride mixture so that a
higher concentrated solution is produced. The task of the students is to
learn how to program the process control system. A picture of the batch
plant is shown in the figure below.

The flow sheet diagram is shown in the next figure.

Pure water from tank B1 and concentrated sodium chloride solution from
tank B2 are mixed in a mixing tank B3. After buffering in tank B4 the
mixture flows to the evaporator B5. Here the water sodium chloride
mixture is evaporated until the desired con-centration is reached. The
steam is condensed in the condenser K1 and cooled afterwards in the
cooling tank B6. The concentrated solution is also led to a cooling tank
B7. The cooled fluids are pumped back to the charging vessels by the
pumps P1 and P2. Be-tween the tanks several valves are present that are
regulated by a central control system.

::

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                            Descript
                                                                  ion
  --------------------------------------------------------------- --------
  ![image3](Modelica.Fluid.Examples.AST_BatchPlant.BatchPlant_Sta 
  ndardWaterS.png)                                                
  [BatchPlant\_StandardWater](Modelica_Fluid_Examples_AST_BatchPl 
  ant.html#Modelica.Fluid.Examples.AST_BatchPlant.BatchPlant_Stan 
  dardWater)                                                      

  ![image4](Modelica.Fluid.Examples.AST_BatchPlant.BaseClassesS.p 
  ng)                                                             
  [BaseClasses](Modelica_Fluid_Examples_AST_BatchPlant_BaseClasse 
  s.html#Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses)      

  ![image5](Modelica.Fluid.Examples.AST_BatchPlant.TestS.png)     Test of
  [Test](Modelica_Fluid_Examples_AST_BatchPlant_Test.html#Modelic used
  a.Fluid.Examples.AST_BatchPlant.Test)                           tank
                                                                  models
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Fluid.Examples.AST_BatchPlant.BatchPlant_StandardWaterI.png) [Modelica.Fluid.Examples.AST\_BatchPlant](Modelica_Fluid_Examples_AST_BatchPlant.html#Modelica.Fluid.Examples.AST_BatchPlant).BatchPlant\_StandardWater
=======================================================================================================================================================================================================================================

Information
-----------

::

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name                Default    Descript
                                                                   ion
  --------------------------------- ------------------- ---------- --------
  replaceable package BatchMedium   Modelica.Media.Wate Component  
                                    r.Standar...        media      

  [Length](Modelica_SIunits.html#Mo pipeDiameter        0.01       [m]
  delica.SIunits.Length)                                           
  -------------------------------------------------------------------------

Connectors
----------

  Type                                 Name                 Description
  ------------------------------------ -------------------- ----------------
  replaceable package BatchMedium      Component media      

Modelica definition
-------------------

    model BatchPlant_StandardWater
        extends Modelica.Icons.Example;
      replaceable package BatchMedium = Modelica.Media.Water.StandardWater constrainedby 
        Modelica.Media.Interfaces.PartialTwoPhaseMedium "Component media";

    /*
      replaceable package BatchMedium =Modelica.Media.Electrolytes.WaterNaCl extends
        Modelica.Media.Interfaces.PartialTwoPhaseMedium "Component media";
    */

      parameter Modelica.SIunits.Length pipeDiameter = 0.01;

      BaseClasses.TankWith3InletOutletArraysWithEvaporatorCondensor B5(
        redeclare package Medium = BatchMedium,
        height=0.5,
        n_SidePorts=1,
        V0=0.001,
        n_BottomPorts=1,
        bottom_pipeArea={0.0001},
        top_pipeArea={0.0001},
        n_TopPorts=1,
        min_level_for_heating=0.0001,
        level_start=0.0009,
        crossArea=0.05,
        initType=BaseClasses.Init.InitialValues,
        side_pipeArea={0.0001},
        redeclare model HeatTransfer =
            Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer (k=
                4.9));
      Modelica.Fluid.Valves.ValveDiscrete V12(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V15(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatB5;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow CoolingB7;
      Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow CoolingB6;

      Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.Controller controller(
          Transition3(enableTimer=true, waitTime=60), Transition7(
          condition=true,
          enableTimer=true,
          waitTime=300));

      Modelica.Fluid.Valves.ValveDiscrete V11(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V8(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V9(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V2(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V4(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V3(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Fittings.TeeJunctionIdeal volume2(
        redeclare package Medium = BatchMedium);
      Modelica.Fluid.Valves.ValveDiscrete V6(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Fittings.TeeJunctionIdeal volume8(
        redeclare package Medium = BatchMedium);
      Modelica.Fluid.Valves.ValveDiscrete V23(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V1(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V22(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V5(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V24(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V25(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V20(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V19(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V10(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Valves.ValveDiscrete V21(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Modelica.Fluid.Fittings.TeeJunctionVolume volume5(
        redeclare package Medium = BatchMedium,
        V=0.001);
      Modelica.Fluid.Valves.ValveDiscrete V18(
        redeclare package Medium = BatchMedium,
        m_flow_nominal = 1,
        dp_nominal = 100);
      Machines.PrescribedPump P1(
        redeclare package Medium = BatchMedium,
        m_flow_start=0.1,
        redeclare function flowCharacteristic =
            Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow (
                                                                                V_flow_nominal={0,
                0.001,0.0015}, head_nominal={100,50,0}),
        N_nominal=200,
        use_N_in=true,
        show_NPSHa=true,
        V(displayUnit="ml") = 0.0001,
        checkValve=true,
        p_a_start=100000,
        p_b_start=100000,
        energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial,
        massDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial);
      Machines.PrescribedPump P2(
        redeclare package Medium = BatchMedium,
        m_flow_start=0.1,
        redeclare function flowCharacteristic =
            Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow (
                                                                               V_flow_nominal={0,
                0.001,0.0015}, head_nominal={100,50,0}),
        N_nominal=200,
        use_N_in=true,
        show_NPSHa=true,
        V(displayUnit="ml") = 0.0001,
        checkValve=true,
        p_a_start=100000,
        p_b_start=100000,
        energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial,
        massDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial);
      Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.TankWithTopPorts B1(
        level_start=0.2,
        redeclare package Medium = BatchMedium,
        height=0.5,
        crossArea=0.05,
        V0=0.0001,
        nTopPorts=1,
        nPorts=1,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                                                                   diameter=0.011,
            height=0)},
        stiffCharacteristicForEmptyPort=false);
      inner Modelica.Fluid.System system;
      Modelica.Blocks.Logical.TriggeredTrapezoid P1_on(amplitude=100, rising=0);
      Modelica.Blocks.Logical.TriggeredTrapezoid P2_on(amplitude=50, rising=0);
      Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.TankWithTopPorts B2(
        level_start=0.2,
        redeclare package Medium = BatchMedium,
        height=0.5,
        crossArea=0.05,
        V0=0.0001,
        nTopPorts=1,
        nPorts=1,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                                                                   diameter=0.011,
            height=0)},
        stiffCharacteristicForEmptyPort=false);
      Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.TankWithTopPorts B3(
        redeclare package Medium = BatchMedium,
        height=0.5,
        crossArea=0.05,
        V0=0.0001,
        nTopPorts=2,
        nPorts=2,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                                                                   diameter=0.011,
            height=0),Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=
             0.011, height=0)},
        level_start=0.02,
        stiffCharacteristicForEmptyPort=false);
      Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.TankWithTopPorts B4(
        redeclare package Medium = BatchMedium,
        height=0.5,
        crossArea=0.05,
        V0=0.0001,
        level_start=0.015,
        nTopPorts=1,
        nPorts=1,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                                                                   diameter=0.011,
            height=0)},
        stiffCharacteristicForEmptyPort=false);
      Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.TankWithTopPorts B7(
        redeclare package Medium = BatchMedium,
        V0=0.0001,
        nTopPorts=1,
        nPorts=1,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                                                                   diameter=0.011,
            height=0)},
        level_start=0.009,
        height=0.5,
        crossArea=0.05,
        stiffCharacteristicForEmptyPort=false,
        use_HeatTransfer=true,
        T_start=298,
        redeclare model HeatTransfer =
            Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer (k=
                4.9));
      Pipes.DynamicPipe pipeB1B2(
        redeclare package Medium = BatchMedium,
        length=1,
        diameter=pipeDiameter,
        height_ab=0);
      Pipes.StaticPipe pipeB1B3(
        redeclare package Medium = BatchMedium,
        length=1,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow,
        diameter=pipeDiameter,
        height_ab=-0.1);
      Pipes.StaticPipe pipeB2B3(
        redeclare package Medium = BatchMedium,
        length=1,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow,
        diameter=pipeDiameter,
        height_ab=-0.1);
      Pipes.StaticPipe pipeB1B1(
        redeclare package Medium = BatchMedium,
        diameter=pipeDiameter,
        length=1,
        height_ab=-0.5);
      Pipes.StaticPipe pipeB6Pump(
        redeclare package Medium = BatchMedium,
        length=0.5,
        diameter=pipeDiameter,
        height_ab=-0.5);
      Pipes.StaticPipe pipeB7Pump(
        redeclare package Medium = BatchMedium,
        length=1,
        diameter=pipeDiameter,
        height_ab=-0.1);
      Pipes.DynamicPipe pipePump1B1(
        redeclare package Medium = BatchMedium,
        diameter=pipeDiameter,
        height_ab=3,
        length=3);
      Pipes.DynamicPipe pipePump2B2(
        redeclare package Medium = BatchMedium,
        diameter=pipeDiameter,
        height_ab=3,
        length=3);
      Modelica.Fluid.Examples.AST_BatchPlant.BaseClasses.TankWithTopPorts B6(
        redeclare package Medium = BatchMedium,
        V0=0.0001,
        nTopPorts=1,
        height=0.5,
        crossArea=0.05,
        level_start=0.02,
        nPorts=1,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
                                                                   diameter=0.011,
            height=0)},
        stiffCharacteristicForEmptyPort=false,
        use_HeatTransfer=true,
        T_start=298,
        redeclare model HeatTransfer =
            Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer (k=
                4.9));
      Fittings.MultiPort multiPort(redeclare package Medium = BatchMedium,
          nPorts_b=3);
      Modelica.Fluid.Fittings.TeeJunctionVolume volume4(
        redeclare package Medium = BatchMedium,
        V=0.001);
    equation 
      controller.sensors.LIS_301 = B3.level;
      controller.sensors.QI_302 = 0;//B3.medium.X[2];
      controller.sensors.LIS_501 = B5.level;
      controller.sensors.QIS_502 = 0;//B5.medium.X[2];
      controller.sensors.TI_503 = B5.medium.T;
      controller.sensors.LIS_601 = B6.level;
      controller.sensors.TIS_602 = B6.medium.T;
      controller.sensors.LIS_701 = B7.level;
      controller.sensors.TIS_702 = B7.medium.T;

      P1_on.u = controller.actuators.P1;
      P2_on.u = controller.actuators.P2;
      V1.open = controller.actuators.V1;
      V2.open = controller.actuators.V2;
      V3.open = controller.actuators.V3;
      V4.open = controller.actuators.V4;
      V5.open = controller.actuators.V5;
      V6.open = controller.actuators.V6;
      V8.open = controller.actuators.V8;
      V9.open = controller.actuators.V9;
      V10.open = controller.actuators.V10;
      V11.open = controller.actuators.V11;
      V12.open = controller.actuators.V12;
      V15.open = controller.actuators.V15;
      V18.open = controller.actuators.V18;
      V19.open = controller.actuators.V19;
      V20.open = controller.actuators.V20;
      V21.open = controller.actuators.V21;
      V22.open = controller.actuators.V22;
      V23.open = controller.actuators.V23;
      V24.open = controller.actuators.V24;
      V25.open = controller.actuators.V25;
      HeatB5.Q_flow = if controller.actuators.T5_Heater then 20000 else 0;
      CoolingB6.Q_flow = if controller.actuators.T6_Cooling then -2000 else 0;
      CoolingB7.Q_flow = if controller.actuators.T7_Cooling then -2000 else 0;

      connect(V24.port_b, P2.port_a);
      connect(V15.port_a, B5.BottomFluidPort[1]);
      connect(P1_on.y, P1.N_in);
      connect(P2_on.y, P2.N_in);
      connect(B4.ports[1], V12.port_b);
      connect(CoolingB7.port, B7.heatPort);
      connect(pipeB1B2.port_a, V4.port_b);
      connect(B5.TopFluidPort[1], V12.port_a);
      connect(V15.port_b, B7.topPorts[1]);
      connect(pipePump1B1.port_a, V22.port_b);
      connect(V25.port_b, pipePump2B2.port_a);
      connect(B6.topPorts[1], B5.Condensed);
      connect(CoolingB6.port, B6.heatPort);
      connect(HeatB5.port, B5.heatPort);
      connect(V1.port_b, volume2.port_1);
      connect(volume8.port_2, V4.port_a);
      connect(volume8.port_1, V5.port_b);
      connect(volume5.port_1, V21.port_b);
      connect(volume5.port_2, V24.port_a);
      connect(P2.port_b, V25.port_a);
      connect(V22.port_a, P1.port_b);
      connect(V5.port_a, pipePump2B2.port_b);
      connect(V1.port_a, pipePump1B1.port_b);
      connect(P1.port_a, V23.port_b);
      connect(V23.port_a, volume4.port_1);
      connect(volume4.port_2, V21.port_a);
      connect(multiPort.port_a, volume4.port_3);
      connect(multiPort.ports_b[3], V19.port_b);
      connect(V18.port_b, multiPort.ports_b[1]);
      connect(V10.port_b, multiPort.ports_b[2]);
      connect(V11.port_b, B4.topPorts[1]);
      connect(B3.ports[1], V11.port_a);
      connect(V20.port_b, volume5.port_3);
      connect(V2.port_b, pipeB1B2.port_b);
      connect(volume2.port_2, V2.port_a);
      connect(volume2.port_3, V3.port_a);
      connect(V3.port_b, B1.topPorts[1]);
      connect(volume8.port_3, V6.port_a);
      connect(V6.port_b, B2.topPorts[1]);
      connect(B2.ports[1], V9.port_a);
      connect(V9.port_b, pipeB2B3.port_a);
      connect(pipeB2B3.port_b, B3.topPorts[2]);
      connect(B1.ports[1], V8.port_a);
      connect(V8.port_b, pipeB1B3.port_a);
      connect(B3.topPorts[1], pipeB1B3.port_b);
      connect(B7.ports[1], pipeB7Pump.port_a);
      connect(pipeB7Pump.port_b, V18.port_a);
      connect(B6.ports[1], pipeB6Pump.port_a);
      connect(pipeB6Pump.port_b, V20.port_a);
      connect(V19.port_a, pipeB6Pump.port_b);
      connect(pipeB1B1.port_b, V10.port_a);
      connect(B3.ports[2], pipeB1B1.port_a);
    end BatchPlant_StandardWater;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:00 2010.
