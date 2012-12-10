% Modelica.Fluid.Examples
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Examples
=============================================================

**Demonstration of the usage of the library**

Information
-----------

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                   Description
  -------------------------------------- ---------------------------------
  ![image12](Modelica.Fluid.Examples.Pum Model of a pumping system for
  pingSystemS.png)                       drinking water
  [PumpingSystem](Modelica_Fluid_Example 
  s.html#Modelica.Fluid.Examples.Pumping 
  System)                                

  ![image13](Modelica.Fluid.Examples.Pum Simple model of a heating system
  pingSystemS.png)                       
  [HeatingSystem](Modelica_Fluid_Example 
  s.html#Modelica.Fluid.Examples.Heating 
  System)                                

  ![image14](Modelica.Fluid.Examples.Dru Drum boiler example, see Franke,
  mBoilerS.png)                          Rode, Krueger: On-line
  [DrumBoiler](Modelica_Fluid_Examples_D Optimization of Drum Boiler
  rumBoiler.html#Modelica.Fluid.Examples Startup, 3rd International
  .DrumBoiler)                           Modelica Conference, Linkoping,
                                         2003

  ![image15](Modelica.Fluid.Examples.Dru Library demonstrating the usage
  mBoilerS.png)                          of the tank model
  [Tanks](Modelica_Fluid_Examples_Tanks. 
  html#Modelica.Fluid.Examples.Tanks)    

  ![image16](Modelica.Fluid.Examples.Dru Tank system with controller,
  mBoilerS.png)                          start/stop/shut operation and
  [ControlledTankSystem](Modelica_Fluid_ diagram animation
  Examples_ControlledTankSystem.html#Mod 
  elica.Fluid.Examples.ControlledTankSys 
  tem)                                   

  ![image17](Modelica.Fluid.Examples.Dru Model of the experimental batch
  mBoilerS.png)                          plant at Process Control
  [AST\_BatchPlant](Modelica_Fluid_Examp Laboratory at University of
  les_AST_BatchPlant.html#Modelica.Fluid Dortmund (Prof. Engell)
  .Examples.AST_BatchPlant)              

  ![image18](Modelica.Fluid.Examples.Inc Multi-way connections of pipes
  ompressibleFluidNetworkS.png)          and incompressible medium model
  [IncompressibleFluidNetwork](Modelica_ 
  Fluid_Examples.html#Modelica.Fluid.Exa 
  mples.IncompressibleFluidNetwork)      

  ![image19](Modelica.Fluid.Examples.Inc Multi-way connections of pipes
  ompressibleFluidNetworkS.png)          with dynamic momentum balance,
  [BranchingDynamicPipes](Modelica_Fluid pressure wave and flow reversal
  _Examples.html#Modelica.Fluid.Examples 
  .BranchingDynamicPipes)                

  ![image20](Modelica.Fluid.Examples.Hea Demo of a heat exchanger model
  tExchangerS.png)                       
  [HeatExchanger](Modelica_Fluid_Example 
  s_HeatExchanger.html#Modelica.Fluid.Ex 
  amples.HeatExchanger)                  

  ![image21](Modelica.Fluid.Examples.Hea Library demonstrating the usage
  tExchangerS.png)                       of trace substances
  [TraceSubstances](Modelica_Fluid_Examp 
  les_TraceSubstances.html#Modelica.Flui 
  d.Examples.TraceSubstances)            

  ![image22](Modelica.Fluid.Examples.Inv Demonstrates the parameterization
  erseParameterizationS.png)             of a pump and a pipe for given
  [InverseParameterization](Modelica_Flu nominal values
  id_Examples.html#Modelica.Fluid.Exampl 
  es.InverseParameterization)            

  ![image23](Modelica.Fluid.Examples.Exp A set of examples illustrating
  lanatoryS.png)                         when special attention has to be
  [Explanatory](Modelica_Fluid_Examples_ paid
  Explanatory.html#Modelica.Fluid.Exampl 
  es.Explanatory)                        
  ------------------------------------------------------------------------

* * * * *

![image24](Modelica.Fluid.Examples.PumpingSystemI.png) [Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).PumpingSystem
====================================================================================================================================================

**Model of a pumping system for drinking water**

Information
-----------

::

Water is pumped from a source by a pump (fitted with check valves),
through a pipe whose outlet is 50 m higher than the source, into a
reservoir. The users are represented by an equivalent valve, connected
to the reservoir.

The water controller is a simple on-off controller, regulating on the
gauge pressure measured at the base of the tower; the output of the
controller is the rotational speed of the pump, which is represented by
the output of a first-order system. A small but nonzero rotational speed
is used to represent the standby state of the pumps, in order to avoid
singularities in the flow characteristic.

Simulate for 2000 s. When the valve is opened at time t=200, the pump
starts turning on and off to keep the reservoir level around 2 meters,
which roughly corresponds to a gauge pressure of 200 mbar.

If using Dymola, turn off "Equidistant time grid" to avoid numerical
errors.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Modelica definition
-------------------

    model PumpingSystem "Model of a pumping system for drinking water"
      extends Modelica.Icons.Example;
      Modelica.Fluid.Sources.FixedBoundary source(
        nPorts = 1,
        redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater,
        use_T=true,
        T=Modelica.SIunits.Conversions.from_degC(20),
        p=system.p_ambient);

      Modelica.Fluid.Pipes.StaticPipe pipe(
        redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater,
        allowFlowReversal=true,
        length=100,
        height_ab=50,
        diameter=0.3);

      Machines.PrescribedPump pumps(
        checkValve=true,
        redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater,
        N_nominal=1200,
        redeclare function flowCharacteristic =
            Modelica.Fluid.Machines.BaseClasses.PumpCharacteristics.quadraticFlow (
              V_flow_nominal={0,0.25,0.5}, head_nominal={100,60,0}),
        V=50/1000,
        T_start=Modelica.SIunits.Conversions.from_degC(20),
        use_N_in=true,
        nParallel=1,
        energyDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial,
        massDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial);

      Modelica.Fluid.Vessels.OpenTank reservoir(
        massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater,
        T_start=Modelica.SIunits.Conversions.from_degC(20),
        use_portsData=true,
        crossArea=50,
        level_start=2.2,
        height=3,
        nPorts=3,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.3),
            Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.3),
            Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=0.01)});

      Modelica.Fluid.Valves.ValveLinear userValve(   redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater,
        allowFlowReversal=false,
        dp_nominal=200000,
        m_flow_nominal=400);
      Modelica.Fluid.Sources.FixedBoundary sink(
                                           redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater,
        p=system.p_ambient,
        T=system.T_ambient,
        nPorts=2);
      Modelica.Blocks.Sources.Step valveOpening(startTime=200, offset=1e-6);
      Modelica.Blocks.Sources.Constant RelativePressureSetPoint(k=2e4);
      Modelica.Blocks.Logical.OnOffController controller(bandwidth=4000,
          pre_y_start=false);
      Modelica.Blocks.Logical.TriggeredTrapezoid PumpRPMGenerator(
        rising=3,
        falling=3,
        amplitude=1200,
        offset=0.001);
      Modelica.Fluid.Sensors.RelativePressure reservoirPressure(
                                                            redeclare package
          Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater);
      Modelica.Blocks.Continuous.FirstOrder PT1(
        T=2,
        initType=Modelica.Blocks.Types.Init.InitialState,
        y_start=0);

      inner Modelica.Fluid.System system;
    equation 
      connect(userValve.port_b, sink.ports[1]);
      connect(source.ports[1], pumps.port_a);
      connect(valveOpening.y, userValve.opening);
      connect(RelativePressureSetPoint.y, controller.reference);
      connect(controller.y, PumpRPMGenerator.u);
      connect(reservoirPressure.p_rel, controller.u);
      connect(reservoirPressure.port_b, sink.ports[2]);
      connect(PumpRPMGenerator.y, PT1.u);
      connect(PT1.y, pumps.N_in);
      connect(pipe.port_a, pumps.port_b);
      connect(reservoir.ports[1], pipe.port_b);
      connect(reservoir.ports[3], reservoirPressure.port_a);
      connect(reservoir.ports[2], userValve.port_a);
    end PumpingSystem;

* * * * *

![image25](Modelica.Fluid.Examples.PumpingSystemI.png) [Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).HeatingSystem
====================================================================================================================================================

**Simple model of a heating system**

Information
-----------

::

Simple heating system with a closed flow cycle. It is set up for
steady-state initial values. After 2000s of simulation time the valve
fully opens. A simple idealized control is embedded into the respective
components, so that the heating system can be regulated with the valve:
the pump controls the pressure, the burner controls the temperature.

One can investigate the temperatures and flows for different settings of
`system.energyDynamics` (see Assumptions tab of the system object). With
`system.energyDynamics==Types.Dynamics.SteadyState` all but one dynamic
states are eliminated. The left state `tank.m` is to account for the
closed flow cycle. It is constant as outflow and inflow are equal in a
steady-state simulation.

Note that a closed flow cycle generally causes circular equalities for
the mass flow rates and leaves the pressure undefined. This is why the
tank.massDynamics, i.e., the tank level determining the port pressure,
is modified locally to Types.Dynamics.FixedInitial.

Also note that the tank is thermally isolated againts its ambient. This
way the temperature of the tank is also well defined for zero flow rate
in the heating system, e.g., for valveOpening.offset=0 at the beginning
of a simulation. The pipe however is assumed to be perfectly isolated.
If steady-state values shall be obtained with the valve fully closed,
then a thermal coupling between the pipe and its ambient should be
defined as well.

Moreover it is worth noting that the idealized direct connection between
the heater and the pipe, resulting in equal port pressures, is treated
as high-index DAE, as opposed to a nonlinear equation system for
connected pressure loss correlations. A pressure loss correlation could
be additionally introduced to model the fitting between the heater and
the pipe, e.g., to adapt different diameters.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                    Name                        Default   Description
  ----------------------- --------------------------- --------- ------------
  replaceable package     Modelica.Media.Water.Standa           
  Medium                  r...                                  
  --------------------------------------------------------------------------

Connectors
----------

  Type                            Name      Description
  ------------------------------- --------- ----------------
  replaceable package Medium                

Modelica definition
-------------------

    model HeatingSystem "Simple model of a heating system"
      extends Modelica.Icons.Example;
       replaceable package Medium =
          Modelica.Media.Water.StandardWater
         constrainedby Modelica.Media.Interfaces.PartialMedium;

      Modelica.Fluid.Vessels.OpenTank tank(
        redeclare package Medium = Medium,
        crossArea=0.01,
        height=2,
        level_start=1,
        nPorts=2,
        massDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        use_HeatTransfer=true,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=
            0.01),Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(diameter=
            0.01)},
        redeclare model HeatTransfer =
            Modelica.Fluid.Vessels.BaseClasses.HeatTransfer.IdealHeatTransfer (k=10));
      Machines.ControlledPump pump(
        redeclare package Medium = Medium,
        N_nominal=1500,
        use_T_start=true,
        T_start=Modelica.SIunits.Conversions.from_degC(40),
        m_flow_start=0.01,
        m_flow_nominal=0.01,
        control_m_flow=false,
        allowFlowReversal=false,
        p_a_start=110000,
        p_b_start=130000,
        p_a_nominal=110000,
        p_b_nominal=130000);
      Modelica.Fluid.Valves.ValveIncompressible valve(
        redeclare package Medium = Medium,
        CvData=Modelica.Fluid.Types.CvTypes.OpPoint,
        m_flow_nominal=0.01,
        show_T=true,
        allowFlowReversal=false,
        dp_nominal=10000);
    protected 
      Modelica.Blocks.Interfaces.RealOutput m_flow;
    public 
      Sensors.MassFlowRate sensor_m_flow(redeclare package Medium = Medium);
      Modelica.Thermal.HeatTransfer.Sources.FixedTemperature T_ambient(T=system.T_ambient);
      Modelica.Thermal.HeatTransfer.Components.ThermalConductor wall(G=1.6e3/20);
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow burner(
                                                         Q_flow=1.6e3,
        T_ref=343.15,
        alpha=-0.5);
      inner Modelica.Fluid.System system(energyDynamics=Modelica.Fluid.Types.Dynamics.SteadyStateInitial,
          m_flow_small=1e-4);
      Pipes.DynamicPipe heater(
        redeclare package Medium = Medium,
        use_T_start=true,
        T_start=Modelica.SIunits.Conversions.from_degC(80),
        length=2,
        redeclare model HeatTransfer =
            Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer,
        diameter=0.01,
        nNodes=1,
        modelStructure=Modelica.Fluid.Types.ModelStructure.a_vb,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow,
        use_HeatTransfer=true);

      Pipes.DynamicPipe radiator(
        use_T_start=true,
        redeclare package Medium = Medium,
        length=10,
        T_start=Modelica.SIunits.Conversions.from_degC(40),
        redeclare model HeatTransfer =
            Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer,
        diameter=0.01,
        nNodes=1,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow,
        modelStructure=Modelica.Fluid.Types.ModelStructure.av_b,
        use_HeatTransfer=true);

    protected 
      Modelica.Blocks.Interfaces.RealOutput T_forward;
      Modelica.Blocks.Interfaces.RealOutput T_return;
    public 
      Modelica.Fluid.Sensors.Temperature sensor_T_forward(redeclare package Medium
          = Medium);
      Modelica.Fluid.Sensors.Temperature sensor_T_return(redeclare package Medium
          = Medium);
    protected 
      Modelica.Blocks.Interfaces.RealOutput tankLevel;
    public 
      Modelica.Blocks.Sources.Step handle(
        startTime=2000,
        height=0.9,
        offset=0.1);
      Pipes.DynamicPipe pipe(
        redeclare package Medium = Medium,
        use_T_start=true,
        T_start=Modelica.SIunits.Conversions.from_degC(80),
        redeclare model HeatTransfer =
            Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.IdealFlowHeatTransfer,
        diameter=0.01,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.DetailedPipeFlow,
        length=10);

    equation 
    tankLevel = tank.level;
      connect(sensor_m_flow.m_flow, m_flow);
      connect(sensor_m_flow.port_b, heater.port_a);
      connect(T_ambient.port, wall.port_a);
      connect(sensor_T_forward.T, T_forward);
      connect(radiator.port_a, valve.port_b);
      connect(sensor_T_return.port, radiator.port_b);
      connect(tank.ports[2], pump.port_a);
      connect(handle.y, valve.opening);
      connect(pump.port_b, sensor_m_flow.port_a);
      connect(sensor_T_return.T, T_return);
      connect(burner.port, heater.heatPorts[1]);
      connect(wall.port_b, radiator.heatPorts[1]);
      connect(sensor_T_forward.port, heater.port_b);
      connect(heater.port_b, pipe.port_a);
      connect(pipe.port_b, valve.port_a);
      connect(radiator.port_b, tank.ports[1]);
    end HeatingSystem;

* * * * *

![image26](Modelica.Fluid.Examples.PumpingSystemI.png) [Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).IncompressibleFluidNetwork
=================================================================================================================================================================

**Multi-way connections of pipes and incompressible medium model**

Information
-----------

::

This example demonstrates two aspects: the efficient treatment of
multi-way connections and the usage of an incompressible medium model.

Normally one would expect bad equation systems in multi-way connections
and possibly introduce mixing volumes to work around this. Here the
problem is treated with the the modelStructure=av\_vb in the
[DynamicPipe](Modelica_Fluid_Pipes.html#Modelica.Fluid.Pipes.DynamicPipe)
model. Each pipe exposes the states of the outer fluid segments to the
respective fluid ports. Consequently the pressures of all connected pipe
segments get lumped together into one mass balance spanning the whole
connection set. With the stream concept in the fluid ports, the energy
and substance balances remain independent in the connected pipe
segments.

The model does not contain pressure dynamics as an incompressible medium
is used (Essotherm650). Pressure dynamics becomes present with a
compressible medium model (e.g., StandardWater).

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                    Name                        Default   Description
  ----------------------- --------------------------- --------- ------------
  replaceable package     Modelica.Media.Incompressib           
  Medium                  l...                                  
  --------------------------------------------------------------------------

Connectors
----------

  Type                            Name      Description
  ------------------------------- --------- ----------------
  replaceable package Medium                

Modelica definition
-------------------

    model IncompressibleFluidNetwork 
      "Multi-way connections of pipes and incompressible medium model"
      extends Modelica.Icons.Example;
      replaceable package Medium =
          Modelica.Media.Incompressible.Examples.Essotherm650
        constrainedby Modelica.Media.Interfaces.PartialMedium;

      model Pipe = Modelica.Fluid.Pipes.DynamicPipe;
      //model Pipe = Modelica.Fluid.Pipes.DynamicPipe(nNodes=1,modelStructure=Types.ModelStructure.a_v_b);

      Sources.Boundary_pT source(nPorts=1,
        redeclare package Medium = Medium,
        p=5.0e5,
        T=300);
      Pipe pipe1(
        use_T_start=true,
        length=10,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);

      Pipe pipe2(
        use_T_start=true,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        length=0.5,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);

      Pipe pipe3(
        use_T_start=true,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        length=0.5,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
      Pipe pipe4(
        use_T_start=true,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        length=2,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
      Pipe pipe6(
        use_T_start=true,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        length=20,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
      Modelica.Fluid.Valves.ValveIncompressible valve1(
        redeclare package Medium = Medium,
        CvData=Modelica.Fluid.Types.CvTypes.OpPoint,
        m_flow_nominal=1,
        rho_nominal=1000,
        dp_nominal=30000);
      Modelica.Fluid.Valves.ValveIncompressible valve2(
        redeclare package Medium = Medium,
        CvData=Modelica.Fluid.Types.CvTypes.OpPoint,
        m_flow_nominal=1,
        rho_nominal=1000,
        dp_nominal=30000);
      Pipe pipe7(
        use_T_start=true,
        length=10,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
      Modelica.Fluid.Valves.ValveIncompressible valve3(
        redeclare package Medium = Medium,
        CvData=Modelica.Fluid.Types.CvTypes.OpPoint,
        m_flow_nominal=1,
        rho_nominal=1000,
        dp_nominal=30000);
      Sources.Boundary_pT sink(nPorts=1,
        redeclare package Medium = Medium,
        T=300,
        p=1.0e5);
      inner Modelica.Fluid.System system;
      Modelica.Blocks.Sources.Step valveOpening1(
        height=-0.2,
        offset=1,
        startTime=1);
      Modelica.Blocks.Sources.Step valveOpening2(
        height=-0.2,
        offset=1,
        startTime=2);
      Modelica.Blocks.Sources.Step valveOpening3(
        height=-0.2,
        offset=1,
        startTime=3);
      Pipe pipe8(
        use_T_start=true,
        length=10,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
      Pipe pipe9(
        use_T_start=true,
        length=10,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
      Pipe pipe10(
        use_T_start=true,
        length=10,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
      Pipe pipe5(
        use_T_start=true,
        diameter=2.5e-2,
        redeclare package Medium = Medium,
        length=20,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.TurbulentPipeFlow,
        p_a_start=500000);
    equation 
      connect(source.ports[1], pipe1.port_a);
      connect(pipe1.port_b, pipe3.port_a);
      connect(pipe1.port_b, pipe2.port_a);
      connect(pipe2.port_b, valve1.port_a);
      connect(valve2.port_b, pipe4.port_a);
      connect(pipe3.port_b, valve2.port_a);
      connect(valve1.port_b, pipe7.port_a);
      connect(pipe6.port_b, valve3.port_a);
      connect(valve3.port_b, sink.ports[1]);
      connect(valveOpening1.y, valve1.opening);
      connect(valveOpening2.y, valve2.opening);
      connect(valveOpening3.y, valve3.opening);
      connect(pipe7.port_b, pipe9.port_a);
      connect(pipe7.port_b, pipe8.port_a);
      connect(pipe9.port_b, valve3.port_a);
      connect(pipe8.port_b, pipe10.port_a);
      connect(pipe10.port_b, valve3.port_a);
      connect(pipe4.port_b, pipe6.port_a);
      connect(pipe8.port_b, pipe4.port_b);
      connect(pipe5.port_a, pipe4.port_b);
      connect(pipe5.port_b, valve3.port_a);
    end IncompressibleFluidNetwork;

* * * * *

![image27](Modelica.Fluid.Examples.PumpingSystemI.png) [Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).BranchingDynamicPipes
============================================================================================================================================================

**Multi-way connections of pipes with dynamic momentum balance, pressure
wave and flow reversal**

Information
-----------

::

This model demonstrates the use of distributed pipe models with dynamic
energy, mass and momentum balances. At time=2s the pressure of boundary4
jumps, which causes a pressure wave and flow reversal.

Change system.momentumDynamics on the Assumptions tab of the system
object from DynamicFreeInitial to SteadyState, in order to assume a
steady-state momentum balance. This is the default for all models of the
library.

Change the Medium from MoistAir to StandardWater, in order to
investigate a medium with significantly different density. Note the
static head caused by the elevation of the pipes.

Note, pipe4.modelStructure = av\_b, i.e., the pipe has no volume at
port\_b. It is not possible to have a volume at port\_b, since otherwise
the pressure of the volume is defined by the connected boundary source.
This in turn means that the derivative of the pressure of the boundary
source is needed, since the volume requires this derivative. It is,
however, not possible to compute this derivative because the input
pressure is changing disontinuously and its derivative would be a dirac
impulse.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                     Name                      Default   Description
  ------------------------ ------------------------- --------- ------------
  replaceable package      Modelica.Media.Air.MoistA           
  Medium                   ir                                  
  -------------------------------------------------------------------------

Connectors
----------

  Type                            Name      Description
  ------------------------------- --------- ----------------
  replaceable package Medium                

Modelica definition
-------------------

    model BranchingDynamicPipes 
      "Multi-way connections of pipes with dynamic momentum balance, pressure wave and flow reversal"
    extends Modelica.Icons.Example;
    replaceable package Medium=Modelica.Media.Air.MoistAir;
    //replaceable package Medium=Modelica.Media.Water.StandardWater;

      inner Modelica.Fluid.System system(momentumDynamics=Modelica.Fluid.Types.Dynamics.DynamicFreeInitial);
      Modelica.Fluid.Sources.Boundary_pT boundary1(nPorts=1,
        redeclare package Medium = Medium, p=150000);
      Modelica.Fluid.Pipes.DynamicPipe pipe1(
        redeclare package Medium=Medium,
        use_T_start=true,
        nNodes=5,
        diameter=2.54e-2,
        m_flow_start=0.02,
        height_ab=50,
        length=50,
        p_a_start=150000,
        p_b_start=130000);
     Modelica.Fluid.Pipes.DynamicPipe pipe2(
        redeclare package Medium = Medium,
        use_T_start=true,
        nNodes=5,
        redeclare model HeatTransfer =
            Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.LocalPipeFlowHeatTransfer,
        use_HeatTransfer=true,
        diameter=2.54e-2,
        m_flow_start=0.01,
        length=50,
        height_ab=25,
        p_a_start=130000,
        p_b_start=120000);

      Modelica.Fluid.Pipes.DynamicPipe pipe3(
        redeclare package Medium=Medium,
        use_T_start=true,
        nNodes=5,
        diameter=2.54e-2,
        m_flow_start=0.01,
        length=25,
        p_a_start=130000,
        p_b_start=120000,
        height_ab=25);
      Modelica.Fluid.Pipes.DynamicPipe pipe4(
        redeclare package Medium=Medium,
        use_T_start=true,
        nNodes=5,
        modelStructure=Modelica.Fluid.Types.ModelStructure.av_b,
        diameter=2.54e-2,
        m_flow_start=0.02,
        p_a_start=120000,
        p_b_start=100000,
        height_ab=50,
        length=50);
      Modelica.Fluid.Sources.Boundary_pT boundary4(nPorts=1,
        redeclare package Medium = Medium,
        use_p_in=true,
        use_T_in=false,
        p=100000);
      Modelica.Blocks.Sources.Ramp ramp1(
        offset=1e5,
        duration=0,
        startTime=2,
        height=1e5);
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow[
                                                  pipe2.nNodes] heat2(Q_flow=200*
            pipe2.dxs);
    equation 
      connect(ramp1.y, boundary4.p_in);
      connect(boundary1.ports[1],pipe1. port_a);
      connect(pipe1.port_b,pipe2. port_a);
      connect(pipe1.port_b,pipe3. port_a);
      connect(pipe2.port_b,pipe4. port_a);
      connect(pipe3.port_b,pipe4. port_a);
      connect(pipe4.port_b, boundary4.ports[1]);
      connect(heat2.port,pipe2. heatPorts);

    end BranchingDynamicPipes;

* * * * *

![image28](Modelica.Fluid.Examples.PumpingSystemI.png) [Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).InverseParameterization
==============================================================================================================================================================

**Demonstrates the parameterization of a pump and a pipe for given
nominal values**

Information
-----------

::

A pump, an orifice and two pipes are parameterized with simple nominal
values. Note that pipe1 and pipe2 use the flowModel NominalTurbulentFlow
and NominalLaminarFlow, respectively, which do not require the
specification of geometry data. Instead pathLengths\_nominal are
obtained internally for given nominal pressure loss and nominal mass
flow rate.

The pump controls a pressure ramp from 1.9 bar to 2.1 bar. This causes
an appropriate ramp on the mass flow rate of the orifice, which has a
boundary pressure of 1 bar. Flow reversal occurs in the pipes, which
have a boundary pressure of 2 bar. The Command plotResults can be used
to see the pump speed N, which is controlled ideally to obtain the
pressure ramp. Moreover the internally obtained nominal design values
that fulfill the nominal operating conditions as well as the Reynolds
number, m\_flows\_turbulent, and dps\_fg\_turbulent are plotted.

Note that the large value for pipe2.flowModel.pathLengths\_nominal[1] is
only meaningful under the made assumption of laminar flow, which is
hardly possible for a real pipe.

Once the geometries have been designed, the NominalTurbulentPipeFlow
correlations can easily be replaced with TurbulentPipeFlow or
DetailedPipeFlow correlations. Similarily the ControlledPump can be
replaced with a PrescribedPump to investigate a real controller or with
a Pump with rotational shaft to investigate inertia effects.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                    Name                        Default   Description
  ----------------------- --------------------------- --------- ------------
  replaceable package     Modelica.Media.Water.Standa           
  Medium                  r...                                  
  --------------------------------------------------------------------------

Connectors
----------

  Type                            Name      Description
  ------------------------------- --------- ----------------
  replaceable package Medium                

Modelica definition
-------------------

    model InverseParameterization 
      "Demonstrates the parameterization of a pump and a pipe for given nominal values"
      extends Modelica.Icons.Example;
      replaceable package Medium = Modelica.Media.Water.StandardWater;
          //Modelica.Media.Water.ConstantPropertyLiquidWater;

      Modelica.Fluid.Sources.Boundary_pT source(
        redeclare package Medium = Medium,
        nPorts=1,
        use_p_in=false,
        p=100000);
      Modelica.Fluid.Machines.ControlledPump pump(
        m_flow_nominal=1,
        control_m_flow=false,
        use_p_set=true,
        redeclare package Medium = Medium,
        p_a_nominal=100000,
        p_b_nominal=200000);
      Modelica.Fluid.Fittings.SimpleGenericOrifice orifice(
        redeclare package Medium = Medium,
        diameter=2.54e-2,
        m_flow_nominal=1,
        use_zeta=false,
        zeta=0,
        dp_nominal=100000);

      Modelica.Fluid.Sources.Boundary_pT sink(nPorts=1,redeclare package Medium = Medium, p=
            100000);

      inner Modelica.Fluid.System system;
      Modelica.Fluid.Pipes.StaticPipe pipe1(
        redeclare package Medium = Medium,
        diameter=2.54e-2,
        length=0,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.NominalTurbulentPipeFlow (
            m_flow_nominal=1,
            show_Res=true,
            dp_nominal=100000));
      Modelica.Fluid.Sources.Boundary_pT sink1(nPorts=1,
        redeclare package Medium = Medium, p=200000);
      Modelica.Blocks.Sources.Ramp p_set(
        height=0.2e5,
        offset=1.9e5,
        duration=8,
        startTime=1);
      Modelica.Fluid.Pipes.StaticPipe pipe2(
        redeclare package Medium = Medium,
        diameter=2.54e-2,
        length=1000,
        redeclare model FlowModel =
            Modelica.Fluid.Pipes.BaseClasses.FlowModels.NominalLaminarFlow (
            show_Res=true,
            dp_nominal=100000,
            m_flow_nominal=1));
      Modelica.Fluid.Sources.Boundary_pT sink2(nPorts=1,
        redeclare package Medium = Medium, p=200000);
    equation 
      connect(orifice.port_b, sink.ports[1]);
      connect(source.ports[1], pump.port_a);
      connect(pump.port_b, orifice.port_a);
      connect(pipe1.port_b, sink1.ports[1]);
      connect(pipe1.port_a, pump.port_b);
      connect(p_set.y, pump.p_set);
      connect(pipe2.port_b, sink2.ports[1]);

      connect(pump.port_b, pipe2.port_a);
    end InverseParameterization;

* * * * *

![Modelica.Fluid.Examples.IncompressibleFluidNetwork.Pipe](Modelica.Fluid.Examples.IncompressibleFluidNetwork.PipeI.png) [Modelica.Fluid.Examples.IncompressibleFluidNetwork](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples.IncompressibleFluidNetwork).Pipe
===================================================================================================================================================================================================================================================================

Parameters
----------

  --------------------------------------------------------------------------
  Type                   Name                       Default Description
  ---------------------- -------------------------- ------- ----------------
  replaceable package    [PartialMedium](Modelica_M Medium  
  Medium                 edia_Interfaces_PartialMed in the  
                         ium.html#Modelica.Media.In compone 
                         terfaces.PartialMedium)    nt      

  Geometry                                                  

  Real                   nParallel                  1       Number of
                                                            identical
                                                            parallel pipes

  [Length](Modelica_SIun length                             Length [m]
  its.html#Modelica.SIun                                    
  its.Length)                                               

  Boolean                isCircular                 true    = true if cross
                                                            sectional area
                                                            is circular

  [Diameter](Modelica_SI diameter                           Diameter of
  units.html#Modelica.SI                                    circular pipe
  units.Diameter)                                           [m]

  [Area](Modelica_SIunit crossArea                  Modelic Inner cross
  s.html#Modelica.SIunit                            a.Const section area
  s.Area)                                           ants.pi [m2]
                                                    \*diame 
                                                    t...    

  [Length](Modelica_SIun perimeter                  Modelic Inner perimeter
  its.html#Modelica.SIun                            a.Const [m]
  its.Length)                                       ants.pi 
                                                    \*diame 
                                                    ter     

  [Height](Modelica_SIun roughness                  2.5e-5  Average height
  its.html#Modelica.SIun                                    of surface
  its.Height)                                               asperities
                                                            (default: smooth
                                                            steel pipe) [m]

  Static head                                               

  [Length](Modelica_SIun height\_ab                 0       Height(port\_b)
  its.html#Modelica.SIun                                    -
  its.Length)                                               Height(port\_a)
                                                            [m]

  Pressure loss                                             

  replaceable model      [DetailedPipeFlow](Modelic Wall    
  FlowModel              a_Fluid_Pipes_BaseClasses_ frictio 
                         FlowModels.html#Modelica.F n,      
                         luid.Pipes.BaseClasses.Flo gravity 
                         wModels.DetailedPipeFlow)  ,       
                                                    momentu 
                                                    m       
                                                    flow    

  **Assumptions**                                           

  Boolean                allowFlowReversal          system. = true to allow
                                                    allowFl flow reversal,
                                                    owRever false restricts
                                                    sal     to design
                                                            direction
                                                            (port\_a -\>
                                                            port\_b)

  Dynamics                                                  

  [Dynamics](Modelica_Fl energyDynamics             system. Formulation of
  uid_Types.html#Modelic                            energyD energy balances
  a.Fluid.Types.Dynamics                            ynamics 
  )                                                         

  [Dynamics](Modelica_Fl massDynamics               system. Formulation of
  uid_Types.html#Modelic                            massDyn mass balances
  a.Fluid.Types.Dynamics                            amics   
  )                                                         

  [Dynamics](Modelica_Fl momentumDynamics           system. Formulation of
  uid_Types.html#Modelic                            momentu momentum
  a.Fluid.Types.Dynamics                            mDynami balances
  )                                                 cs      

  Heat transfer                                             

  Boolean                use\_HeatTransfer          false   = true to use
                                                            the HeatTransfer
                                                            model

  replaceable model      [IdealFlowHeatTransfer](Mo Wall    
  HeatTransfer           delica_Fluid_Pipes_BaseCla heat    
                         sses_HeatTransfer.html#Mod transfe 
                         elica.Fluid.Pipes.BaseClas r       
                         ses.HeatTransfer.IdealFlow         
                         HeatTransfer)                      

  **Initialization**                                        

  [AbsolutePressure](Mod p\_a\_start                system. Start value of
  elica_Media_Interfaces                            p\_star pressure at port
  _PartialMedium.html#Mo                            t       a [Pa]
  delica.Media.Interface                                    
  s.PartialMedium.Absolu                                    
  tePressure)                                               

  [AbsolutePressure](Mod p\_b\_start                p\_a\_s Start value of
  elica_Media_Interfaces                            tart    pressure at port
  _PartialMedium.html#Mo                                    b [Pa]
  delica.Media.Interface                                    
  s.PartialMedium.Absolu                                    
  tePressure)                                               

  Boolean                use\_T\_start              true    Use T\_start if
                                                            true, otherwise
                                                            h\_start

  [Temperature](Modelica T\_start                   if      Start value of
  _Media_Interfaces_Part                            use\_T\ temperature [K]
  ialMedium.html#Modelic                            _start  
  a.Media.Interfaces.Par                            then    
  tialMedium.Temperature                            system. 
  )                                                 T...    

  [SpecificEnthalpy](Mod h\_start                   if      Start value of
  elica_Media_Interfaces                            use\_T\ specific
  _PartialMedium.html#Mo                            _start  enthalpy [J/kg]
  delica.Media.Interface                            then    
  s.PartialMedium.Specif                            Medium. 
  icEnthalpy)                                       s...    

  [MassFraction](Modelic X\_start[Medium.nX]        Medium. Start value of
  a_Media_Interfaces_Par                            X\_defa mass fractions
  tialMedium.html#Modeli                            ult     m\_i/m [kg/kg]
  ca.Media.Interfaces.Pa                                    
  rtialMedium.MassFracti                                    
  on)                                                       

  [ExtraProperty](Modeli C\_start[Medium.nC]        fill(0, Start value of
  ca_Media_Interfaces_Pa                            Medium. trace substances
  rtialMedium.html#Model                            nC)     
  ica.Media.Interfaces.P                                    
  artialMedium.ExtraProp                                    
  erty)                                                     

  [MassFlowRate](Modelic m\_flow\_start             system. Start value for
  a_Media_Interfaces_Par                            m\_flow mass flow rate
  tialMedium.html#Modeli                            \_start [kg/s]
  ca.Media.Interfaces.Pa                                    
  rtialMedium.MassFlowRa                                    
  te)                                                       

  **Advanced**                                              

  Integer                nNodes                     2       Number of
                                                            discrete flow
                                                            volumes

  [ModelStructure](Model modelStructure             Types.M Determines
  ica_Fluid_Types.html#M                            odelStr whether flow or
  odelica.Fluid.Types.Mo                            ucture. volume models
  delStructure)                                     av\_vb  are present at
                                                            the ports

  Boolean                useLumpedPressure          false   =true to lump
                                                            pressure states
                                                            together

  Boolean                useInnerPortProperties     false   =true to take
                                                            port properties
                                                            for flow models
                                                            from internal
                                                            control volumes
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                              Name     Description
  --------------------------------- -------- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Int port\_a  Fluid connector a (positive
  erfaces.html#Modelica.Fluid.Inter          design flow direction is from
  faces.FluidPort_a)                         port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Int port\_b  Fluid connector b (positive
  erfaces.html#Modelica.Fluid.Inter          design flow direction is from
  faces.FluidPort_b)                         port\_a to port\_b)

  [HeatPorts\_a](Modelica_Fluid_Int heatPort 
  erfaces.html#Modelica.Fluid.Inter s[nNodes 
  faces.HeatPorts_a)                ]        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Pipe = Modelica.Fluid.Pipes.DynamicPipe;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:54 2010.
