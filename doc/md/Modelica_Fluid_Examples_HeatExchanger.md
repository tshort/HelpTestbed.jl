% Modelica.Fluid.Examples.HeatExchanger
% 
% 

[Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).HeatExchanger
=============================================================================================

**Demo of a heat exchanger model**

Information
-----------

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image2](Modelica.Fluid.Examples.AST_BatchPlant.Test.OneTa simulation
  nkS.png)                                                    for the heat
  [HeatExchangerSimulation](Modelica_Fluid_Examples_HeatExcha exchanger
  nger.html#Modelica.Fluid.Examples.HeatExchanger.HeatExchang model
  erSimulation)                                               

  ![image3](Modelica.Fluid.Examples.HeatExchanger.BaseClasses Additional
  S.png)                                                      models for
  [BaseClasses](Modelica_Fluid_Examples_HeatExchanger_BaseCla heat
  sses.html#Modelica.Fluid.Examples.HeatExchanger.BaseClasses exchangers
  )                                                           
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Fluid.Examples.HeatExchanger.HeatExchangerSimulationI.png) [Modelica.Fluid.Examples.HeatExchanger](Modelica_Fluid_Examples_HeatExchanger.html#Modelica.Fluid.Examples.HeatExchanger).HeatExchangerSimulation
===============================================================================================================================================================================================================================

**simulation for the heat exchanger model**

Information
-----------

::

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                    Name                        Default   Description
  ----------------------- --------------------------- --------- ------------
  replaceable package     Modelica.Media.Water.Consta           
  Medium                  n...                                  
  --------------------------------------------------------------------------

Connectors
----------

  Type                            Name      Description
  ------------------------------- --------- ----------------
  replaceable package Medium                

Modelica definition
-------------------

    model HeatExchangerSimulation 
      "simulation for the heat exchanger model"

    extends Modelica.Icons.Example;

    replaceable package Medium =
          Modelica.Media.Water.ConstantPropertyLiquidWater;
    //replaceable package Medium = Modelica.Media.Water.StandardWater;
    //package Medium = Modelica.Media.Incompressible.Examples.Essotherm650;
      Modelica.Fluid.Examples.HeatExchanger.BaseClasses.BasicHX HEX(
        c_wall=500,
        use_T_start=true,
        nNodes=20,
        length=2,
        m_flow_start_1=0.2,
        m_flow_start_2=0.2,
        k_wall=100,
        energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial,
        massDynamics=Modelica.Fluid.Types.Dynamics.SteadyStateInitial,
        s_wall=0.005,
        crossArea_1=4.5e-4,
        crossArea_2=4.5e-4,
        perimeter_1=0.075,
        perimeter_2=0.075,
        area_h_1=0.075*2*20,
        area_h_2=0.075*2*20,
        rho_wall=900,
        redeclare package Medium_1 =
            Medium,
        redeclare package Medium_2 =
            Medium,
        redeclare model HeatTransfer_1 =
            Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer
            (                                                                   alpha0=
               1000),
        redeclare model HeatTransfer_2 =
            Modelica.Fluid.Pipes.BaseClasses.HeatTransfer.ConstantFlowHeatTransfer
            (alpha0=200),
        Twall_start=300,
        dT=10,
        T_start_1=304,
        T_start_2=300);

      Modelica.Fluid.Sources.Boundary_pT ambient2(nPorts=1,
        p=1e5,
        T=280,
        redeclare package Medium = Medium);
      Modelica.Fluid.Sources.Boundary_pT ambient1(nPorts=1,
        p=1e5,
        T=300,
        redeclare package Medium = Medium);
      Modelica.Fluid.Sources.MassFlowSource_T massFlowRate2(nPorts=1,
        m_flow=0.2,
        T=360,
        redeclare package Medium = Medium,
        use_m_flow_in=true,
        use_T_in=false,
        use_X_in=false);
      Modelica.Fluid.Sources.MassFlowSource_T massFlowRate1(nPorts=1,
        T=300,
        m_flow=0.5,
        redeclare package Medium = Medium);
      Modelica.Blocks.Sources.Ramp Ramp1(
        startTime=50,
        duration=5,
        height=-1,
        offset=0.5);
      inner Modelica.Fluid.System system;
    equation 
      connect(massFlowRate1.ports[1], HEX.port_a1);
      connect(HEX.port_b1, ambient1.ports[1]);
      connect(Ramp1.y, massFlowRate2.m_flow_in);
      connect(massFlowRate2.ports[1], HEX.port_b2);
      connect(HEX.port_a2, ambient2.ports[1]);
    end HeatExchangerSimulation;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:10 2010.
