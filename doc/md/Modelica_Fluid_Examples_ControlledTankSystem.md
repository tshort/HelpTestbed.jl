% Modelica.Fluid.Examples.ControlledTankSystem
% 
% 

[Modelica.Fluid.Examples](Modelica_Fluid_Examples.html#Modelica.Fluid.Examples).ControlledTankSystem
====================================================================================================

**Tank system with controller, start/stop/shut operation and diagram
animation**

Information
-----------

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                  Description
  ----------------------------------------------------- ------------------
  ![image2](Modelica.Fluid.Examples.Tanks.ThreeTanksS.p Demonstrating the
  ng)                                                   controller of a
  [ControlledTanks](Modelica_Fluid_Examples_ControlledT tank
  ankSystem.html#Modelica.Fluid.Examples.ControlledTank filling/emptying
  System.ControlledTanks)                               system

  ![image3](Modelica.Fluid.Examples.ControlledTankSyste 
  m.UtilitiesS.png)                                     
  [Utilities](Modelica_Fluid_Examples_ControlledTankSys 
  tem_Utilities.html#Modelica.Fluid.Examples.Controlled 
  TankSystem.Utilities)                                 
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Fluid.Examples.ControlledTankSystem.ControlledTanksI.png) [Modelica.Fluid.Examples.ControlledTankSystem](Modelica_Fluid_Examples_ControlledTankSystem.html#Modelica.Fluid.Examples.ControlledTankSystem).ControlledTanks
===========================================================================================================================================================================================================================================

**Demonstrating the controller of a tank filling/emptying system**

Information
-----------

::

With this example, the controller of a tank filling/emptying system is
demonstrated.

The basic operation is to fill and empty the two tanks:

1.  Valve 1 is opened and tank 1 is filled.
2.  When tank 1 reaches its fill level limit, valve 1 is closed.
3.  After a waiting time, valve 2 is opened and the fluid flows from
    tank 1 into tank 2.
4.  When tank 1 reaches its minimum level, valve 2 is closed.
5.  After a waiting time, valve 3 is opened and the fluid flows out of
    tank 2
6.  When tank 2 reaches its minimum level, valve 3 is closed

The above "normal" process can be influenced by three buttons:

-   Button **start** starts the above process. When this button is
    pressed after a "stop" or "shut" operation, the process operation
    continues.
-   Button **stop** stops the above process by closing all valves. Then,
    the controller waits for further input (either "start" or "shut"
    operation).
-   Button **shut** is used to shutdown the process, by emptying at once
    both tanks by opening valve 2 and valve 3. When this is achieved,
    the process goes back to its start configuration where all 3 valves
    are closed. Clicking on "start", restarts the process.

The demo-run uses the following button presses:

-   Button **start** pressed at 20 s.
-   Button **stop** pressed at 220 s
-   Button **start** pressed at 280 s
-   Button **stop** pressed at 650 s
-   Button **shut** pressed at 700 s
-   Simulate for 900 s

This example is based on

Dressler I. (2004):
  ~ **Code Generation From JGrafchart to Modelica**. Master thesis,
    supervisor: Karl-Erik Arzen, Department of Automatic Control, Lund
    Institute of Technology, Lund, Sweden, March 30, 2004

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Modelica definition
-------------------

    model ControlledTanks 
      "Demonstrating the controller of a tank filling/emptying system"
      extends Modelica.Icons.Example;
      package Medium = Modelica.Media.Water.ConstantPropertyLiquidWater;

      Modelica.Fluid.Examples.ControlledTankSystem.Utilities.TankController
        tankController(
        waitTime=50,
        maxLevel=0.9*tank1.height,
        minLevel=0.01);
      Modelica.Fluid.Examples.ControlledTankSystem.Utilities.RadioButton start(
                                                             reset={stop.on,shut.on},
          buttonTimeTable={20,280});
      Modelica.Fluid.Examples.ControlledTankSystem.Utilities.RadioButton stop(
                                                            reset={start.on,shut.on},
          buttonTimeTable={220,650});
      Modelica.Fluid.Examples.ControlledTankSystem.Utilities.RadioButton shut(
                                                            reset={start.on,stop.on},
          buttonTimeTable={700});
      Modelica.Fluid.Valves.ValveDiscrete valve1(                     redeclare 
          package Medium = Medium,
        m_flow_nominal=40,
        dp_nominal=100000);
      Modelica.Fluid.Vessels.OpenTank tank1(
        level_start=0.05,
        redeclare package Medium = Medium,
        crossArea=6,
        height=4,
        nPorts=2,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
              diameter=0.2,
              height=4,
              zeta_out=0,
              zeta_in=1),Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
              diameter=0.2,
              height=0,
              zeta_out=0,
              zeta_in=1)});
      Modelica.Blocks.Sources.RealExpression level1(y=tank1.level);
      Modelica.Fluid.Valves.ValveDiscrete valve2(        redeclare package Medium
          = Medium,
        dp_nominal(displayUnit="Pa") = 1,
        m_flow_nominal=100);
      Modelica.Fluid.Valves.ValveDiscrete valve3(        redeclare package Medium
          = Medium,
        dp_nominal(displayUnit="Pa") = 1,
        m_flow_nominal=10);
      Modelica.Fluid.Vessels.OpenTank tank2(
        level_start=0.05,
        redeclare package Medium = Medium,
        height=5,
        crossArea=6,
        nPorts=2,
        portsData={Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
              diameter=0.2,
              height=5,
              zeta_out=0,
              zeta_in=1),Modelica.Fluid.Vessels.BaseClasses.VesselPortsData(
              diameter=0.2,
              height=0,
              zeta_out=0,
              zeta_in=1)});
      Modelica.Fluid.Sources.Boundary_pT ambient1(redeclare package Medium =
            Medium,nPorts=1,
        p=system.p_ambient,
        T=system.T_ambient);
      Modelica.Blocks.Sources.RealExpression level2(y=tank2.level);
      Modelica.Fluid.Sources.Boundary_pT source(redeclare package Medium =
            Medium, p=2.5e6,nPorts=1,
        T=system.T_ambient);
      inner Modelica.Fluid.System system;
    equation 
      connect(shut.on, tankController.shut);
      connect(stop.on, tankController.stop);
      connect(start.on, tankController.start);
      connect(tankController.valve1, valve1.open);
      connect(level1.y, tankController.level1);
      connect(tankController.valve2, valve2.open);
      connect(tankController.valve3, valve3.open);
      connect(level2.y, tankController.level2);

      connect(source.ports[1], valve1.port_a);
      connect(valve3.port_b, ambient1.ports[1]);
      connect(tank2.ports[2], valve3.port_a);
      connect(valve2.port_b, tank2.ports[1]);
      connect(valve1.port_b, tank1.ports[1]);
      connect(tank1.ports[2], valve2.port_a);
    end ControlledTanks;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:56 2010.
