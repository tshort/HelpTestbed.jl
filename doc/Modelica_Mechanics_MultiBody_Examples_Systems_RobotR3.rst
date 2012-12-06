=====================================================
Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3
=====================================================

`Modelica.Mechanics.MultiBody.Examples.Systems <Modelica_Mechanics_MultiBody_Examples_Systems.html#Modelica.Mechanics.MultiBody.Examples.Systems>`_.RobotR3
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Library to demonstrate robot system models based on the Manutec r3
robot**

Information
~~~~~~~~~~~

::

This package contains models of the robot r3 of the company Manutec.
These models are used to demonstrate in which way complex robot models
might be built up by testing first the component models individually
before composing them together. Furthermore, it is shown how CAD data
can be used for animation.

.. figure:: ../Resources/Images/MultiBody/Examples/Systems/robot_kr15.bmp
   :align: center
   :alt: model Examples.Systems.RobotR3

   model Examples.Systems.RobotR3
The following models are available:

::

       oneAxis   Test one axis (controller, motor, gearbox).
       fullRobot Test complete robot model.

The r3 robot is no longer manufactured. In fact the company Manutec does
no longer exist. The parameters of this robot have been determined by
measurements in the laboratory of DLR. The measurement procedure is
described in:

::

       Tuerk S. (1990): Zur Modellierung der Dynamik von Robotern mit
           rotatorischen Gelenken. Fortschrittberichte VDI, Reihe 8, Nr. 211,
           VDI-Verlag 1990.

The robot model is described in detail in

::

       Otter M. (1995): Objektorientierte Modellierung mechatronischer
           Systeme am Beispiel geregelter Roboter. Dissertation,
           Fortschrittberichte VDI, Reihe 20, Nr. 147, VDI-Verlag 1995.
           This report can be downloaded as compressed postscript file
           from: http://www.robotic.dlr.de/Martin.Otter.

The path planning is performed in a simple way by using essentially the
Modelica.Mechanics.Rotational.KinematicPTP block. A user defines a path
by start and end angle of every axis. A path is planned such that all
axes are moving as fast as possible under the given restrictions of
maximum joint speeds and maximum joint accelerations. The actual r3
robot from Manutec had a different path planning strategy. Todays path
planning algorithms from robot companies are much more involved.

In order to get a nice animation, CAD data from a KUKA robot is used,
since CAD data of the original r3 robot was not available. The KUKA CAD
data was derived from public data of KUKA available at:
`http://www.kuka-roboter.de/english/produkte/cad/low\_payloads.html <http://www.kuka-roboter.de/english/produkte/cad/low_payloads.html>`_.
Since dimensions of the corresponding KUKA robot are similar but not
identical to the r3 robot, the data of the r3 robot (such as arm
lengths) have been modified, such that it matches the CAD data.

In this model, a simplified P-PI cascade controller for every axes is
used. The parameters have been manually adjusted by simulations. The
original r3 controllers are more complicated. The reason to use
simplified controllers is to have a simpler demo.

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                        | Description                                                                                      |
+=============================================================================================================================================================================================================================+==================================================================================================+
| |image3| `oneAxis <Modelica_Mechanics_MultiBody_Examples_Systems_RobotR3.html#Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxis>`_                                                                              | Model of one axis of robot (controller, motor, gearbox) with simple load                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image4| `fullRobot <Modelica_Mechanics_MultiBody_Examples_Systems_RobotR3.html#Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.fullRobot>`_                                                                          | 6 degree of freedom robot with path planning, controllers, motors, brakes, gears and mechanics   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+
| |image5| `Components <Modelica_Mechanics_MultiBody_Examples_Systems_RobotR3_Components.html#Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.Components>`_                                                             | Library of components of the robot                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------+

--------------

|image6| `Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3 <Modelica_Mechanics_MultiBody_Examples_Systems_RobotR3.html#Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3>`_.oneAxis
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Model of one axis of robot (controller, motor, gearbox) with simple
load**

.. figure:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxisD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxis

   Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxis

Information
~~~~~~~~~~~

::

With this model one axis of the r3 robot is checked. The mechanical
structure is replaced by a simple load inertia.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| Type                                                                                  | Name          | Default   | Description                                                                          |
+=======================================================================================+===============+===========+======================================================================================+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                 | mLoad         | 15        | Mass of load [kg]                                                                    |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| Real                                                                                  | kp            | 5         | Gain of position controller of axis 2                                                |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| Real                                                                                  | ks            | 0.5       | Gain of speed controller of axis 2                                                   |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | Ts            | 0.05      | Time constant of integrator of speed controller of axis 2 [s]                        |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| Real                                                                                  | startAngle    | 0         | Start angle of axis 2 [deg]                                                          |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| Real                                                                                  | endAngle      | 120       | End angle of axis 2 [deg]                                                            |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | swingTime     | 0.5       | Additional time after reference motion is in rest before simulation is stopped [s]   |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_           | refSpeedMax   | 3         | Maximum reference speed [rad/s]                                                      |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+
| `AngularAcceleration <Modelica_SIunits.html#Modelica.SIunits.AngularAcceleration>`_   | refAccMax     | 10        | Maximum reference acceleration [rad/s2]                                              |
+---------------------------------------------------------------------------------------+---------------+-----------+--------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model oneAxis 
      "Model of one axis of robot (controller, motor, gearbox) with simple load"

      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      parameter SI.Mass mLoad(min=0)=15 "Mass of load";
      parameter Real kp=5 "Gain of position controller of axis 2";
      parameter Real ks=0.5 "Gain of speed controller of axis 2";
      parameter SI.Time Ts=0.05 
        "Time constant of integrator of speed controller of axis 2";
      parameter Real startAngle(unit="deg") = 0 "Start angle of axis 2";
      parameter Real endAngle(unit="deg") = 120 "End angle of axis 2";

      parameter SI.Time swingTime=0.5 
        "Additional time after reference motion is in rest before simulation is stopped";
      parameter SI.AngularVelocity refSpeedMax=3 "Maximum reference speed";
      parameter SI.AngularAcceleration refAccMax=10 
        "Maximum reference acceleration";

      Components.AxisType1 axis(
        w=5500,
        ratio=210,
        c=8,
        cd=0.01,
        Rv0=0.5,
        Rv1=(0.1/130),
        kp=kp,
        ks=ks,
        Ts=Ts);
      Modelica.Mechanics.Rotational.Components.Inertia load(
                                                 J=1.3*mLoad);
      Components.PathPlanning1 pathPlanning(
        swingTime=swingTime,
        angleBegDeg=startAngle,
        angleEndDeg=endAngle,
        speedMax=refSpeedMax,
        accMax=refAccMax);
    protected 
      Components.ControlBus controlBus;
    equation 
      connect(axis.flange, load.flange_a);
      connect(pathPlanning.controlBus, controlBus);
      connect(controlBus.axisControlBus1, axis.axisControlBus);
    end oneAxis;

--------------

|image7| `Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3 <Modelica_Mechanics_MultiBody_Examples_Systems_RobotR3.html#Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3>`_.fullRobot
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**6 degree of freedom robot with path planning, controllers, motors,
brakes, gears and mechanics**

.. figure:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.fullRobotD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.fullRobot

   Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.fullRobot

Information
~~~~~~~~~~~

::

This is a detailed model of the robot. For animation CAD data is used.
Translate and simulate with the default settings (default simulation
time = 3 s). Use command script
"modelica://Modelica/Resources/Scripts/Dymola/Mechanics/MultiBody/Examples/Systems/fullRobotPlot.mos"
to plot variables.

.. figure:: ../Resources/Images/MultiBody/Examples/Systems/r3_fullRobot.png
   :align: center
   :alt: model Examples.Loops.Systems.RobotR3.fullRobot

   model Examples.Loops.Systems.RobotR3.fullRobot
::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Type                                                                                  | Name             | Default                 | Description                                                                          |
+=======================================================================================+==================+=========================+======================================================================================+
| `Mass <Modelica_SIunits.html#Modelica.SIunits.Mass>`_                                 | mLoad            | 15                      | Mass of load [kg]                                                                    |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Position <Modelica_SIunits.html#Modelica.SIunits.Position>`_                         | rLoad[3]         | {0.1,0.25,0.1}          | Distance from last flange to load mass [m]                                           |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_                 | g                | 9.81                    | Gravity acceleration [m/s2]                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | refStartTime     | 0                       | Start time of reference motion [s]                                                   |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | refSwingTime     | 0.5                     | Additional time after reference motion is in rest before simulation is stopped [s]   |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| **Reference**                                                                         |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| startAngles                                                                           |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | startAngle1      | -60                     | Start angle of axis 1 [deg]                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | startAngle2      | 20                      | Start angle of axis 2 [deg]                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | startAngle3      | 90                      | Start angle of axis 3 [deg]                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | startAngle4      | 0                       | Start angle of axis 4 [deg]                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | startAngle5      | -110                    | Start angle of axis 5 [deg]                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | startAngle6      | 0                       | Start angle of axis 6 [deg]                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| endAngles                                                                             |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | endAngle1        | 60                      | End angle of axis 1 [deg]                                                            |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | endAngle2        | -70                     | End angle of axis 2 [deg]                                                            |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | endAngle3        | -35                     | End angle of axis 3 [deg]                                                            |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | endAngle4        | 45                      | End angle of axis 4 [deg]                                                            |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | endAngle5        | 110                     | End angle of axis 5 [deg]                                                            |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | endAngle6        | 45                      | End angle of axis 6 [deg]                                                            |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Limits                                                                                |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_           | refSpeedMax[6]   | {3,1.5,5,3.1,3.1,4.1}   | Maximum reference speeds of all joints [rad/s]                                       |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `AngularAcceleration <Modelica_SIunits.html#Modelica.SIunits.AngularAcceleration>`_   | refAccMax[6]     | {15,15,15,60,60,60}     | Maximum reference accelerations of all joints [rad/s2]                               |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| **Controller**                                                                        |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Axis 1                                                                                |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | kp1              | 5                       | Gain of position controller                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | ks1              | 0.5                     | Gain of speed controller                                                             |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | Ts1              | 0.05                    | Time constant of integrator of speed controller [s]                                  |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Axis 2                                                                                |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | kp2              | 5                       | Gain of position controller                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | ks2              | 0.5                     | Gain of speed controller                                                             |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | Ts2              | 0.05                    | Time constant of integrator of speed controller [s]                                  |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Axis 3                                                                                |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | kp3              | 5                       | Gain of position controller                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | ks3              | 0.5                     | Gain of speed controller                                                             |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | Ts3              | 0.05                    | Time constant of integrator of speed controller [s]                                  |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Axis 4                                                                                |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | kp4              | 5                       | Gain of position controller                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | ks4              | 0.5                     | Gain of speed controller                                                             |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | Ts4              | 0.05                    | Time constant of integrator of speed controller [s]                                  |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Axis 5                                                                                |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | kp5              | 5                       | Gain of position controller                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | ks5              | 0.5                     | Gain of speed controller                                                             |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | Ts5              | 0.05                    | Time constant of integrator of speed controller [s]                                  |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Axis 6                                                                                |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | kp6              | 5                       | Gain of position controller                                                          |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| Real                                                                                  | ks6              | 0.5                     | Gain of speed controller                                                             |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                 | Ts6              | 0.05                    | Time constant of integrator of speed controller [s]                                  |
+---------------------------------------------------------------------------------------+------------------+-------------------------+--------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model fullRobot 
      "6 degree of freedom robot with path planning, controllers, motors, brakes, gears and mechanics"
      extends Modelica.Icons.Example;

      import SI = Modelica.SIunits;

      parameter SI.Mass mLoad(min=0) = 15 "Mass of load";
      parameter SI.Position rLoad[3]={0.1,0.25,0.1} 
        "Distance from last flange to load mass";
      parameter SI.Acceleration g=9.81 "Gravity acceleration";
      parameter SI.Time refStartTime=0 "Start time of reference motion";
      parameter SI.Time refSwingTime=0.5 
        "Additional time after reference motion is in rest before simulation is stopped";

      parameter Real startAngle1(unit="deg") = -60 "Start angle of axis 1";
      parameter Real startAngle2(unit="deg") = 20 "Start angle of axis 2";
      parameter Real startAngle3(unit="deg") = 90 "Start angle of axis 3";
      parameter Real startAngle4(unit="deg") = 0 "Start angle of axis 4";
      parameter Real startAngle5(unit="deg") = -110 "Start angle of axis 5";
      parameter Real startAngle6(unit="deg") = 0 "Start angle of axis 6";

      parameter Real endAngle1(unit="deg") = 60 "End angle of axis 1";
      parameter Real endAngle2(unit="deg") = -70 "End angle of axis 2";
      parameter Real endAngle3(unit="deg") = -35 "End angle of axis 3";
      parameter Real endAngle4(unit="deg") = 45 "End angle of axis 4";
      parameter Real endAngle5(unit="deg") = 110 "End angle of axis 5";
      parameter Real endAngle6(unit="deg") = 45 "End angle of axis 6";

      parameter SI.AngularVelocity refSpeedMax[6]={3,1.5,5,3.1,3.1,4.1} 
        "Maximum reference speeds of all joints";
      parameter SI.AngularAcceleration refAccMax[6]={15,15,15,60,60,60} 
        "Maximum reference accelerations of all joints";

      parameter Real kp1=5 "Gain of position controller";
      parameter Real ks1=0.5 "Gain of speed controller";
      parameter SI.Time Ts1=0.05 "Time constant of integrator of speed controller";
      parameter Real kp2=5 "Gain of position controller";
      parameter Real ks2=0.5 "Gain of speed controller";
      parameter SI.Time Ts2=0.05 "Time constant of integrator of speed controller";
      parameter Real kp3=5 "Gain of position controller";
      parameter Real ks3=0.5 "Gain of speed controller";
      parameter SI.Time Ts3=0.05 "Time constant of integrator of speed controller";
      parameter Real kp4=5 "Gain of position controller";
      parameter Real ks4=0.5 "Gain of speed controller";
      parameter SI.Time Ts4=0.05 "Time constant of integrator of speed controller";
      parameter Real kp5=5 "Gain of position controller";
      parameter Real ks5=0.5 "Gain of speed controller";
      parameter SI.Time Ts5=0.05 "Time constant of integrator of speed controller";
      parameter Real kp6=5 "Gain of position controller";
      parameter Real ks6=0.5 "Gain of speed controller";
      parameter SI.Time Ts6=0.05 "Time constant of integrator of speed controller";
      Components.MechanicalStructure mechanics(
        mLoad=mLoad,
        rLoad=rLoad,
        g=g);
      Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.Components.PathPlanning6
        pathPlanning(
        naxis=6,
        angleBegDeg={startAngle1,startAngle2,startAngle3,startAngle4,startAngle5,
            startAngle6},
        angleEndDeg={endAngle1,endAngle2,endAngle3,endAngle4,endAngle5,endAngle6},
        speedMax=refSpeedMax,
        accMax=refAccMax,
        startTime=refStartTime,
        swingTime=refSwingTime);

      RobotR3.Components.AxisType1 axis1(
        w=4590,
        ratio=-105,
        c=43,
        cd=0.005,
        Rv0=0.4,
        Rv1=(0.13/160),
        kp=kp1,
        ks=ks1,
        Ts=Ts1);
      RobotR3.Components.AxisType1 axis2(
        w=5500,
        ratio=210,
        c=8,
        cd=0.01,
        Rv1=(0.1/130),
        Rv0=0.5,
        kp=kp2,
        ks=ks2,
        Ts=Ts2);

      RobotR3.Components.AxisType1 axis3(
        w=5500,
        ratio=60,
        c=58,
        cd=0.04,
        Rv0=0.7,
        Rv1=(0.2/130),
        kp=kp3,
        ks=ks3,
        Ts=Ts3);
      RobotR3.Components.AxisType2 axis4(
        k=0.2365,
        w=6250,
        D=0.55,
        J=1.6e-4,
        ratio=-99,
        Rv0=21.8,
        Rv1=9.8,
        peak=26.7/21.8,
        kp=kp4,
        ks=ks4,
        Ts=Ts4);
      RobotR3.Components.AxisType2 axis5(
        k=0.2608,
        w=6250,
        D=0.55,
        J=1.8e-4,
        ratio=79.2,
        Rv0=30.1,
        Rv1=0.03,
        peak=39.6/30.1,
        kp=kp5,
        ks=ks5,
        Ts=Ts5);
      RobotR3.Components.AxisType2 axis6(
        k=0.0842,
        w=7400,
        D=0.27,
        J=4.3e-5,
        ratio=-99,
        Rv0=10.9,
        Rv1=3.92,
        peak=16.8/10.9,
        kp=kp6,
        ks=ks6,
        Ts=Ts6);
    protected 
      Components.ControlBus controlBus;
    equation 
      connect(axis2.flange, mechanics.axis2);
      connect(axis1.flange, mechanics.axis1);
      connect(axis3.flange, mechanics.axis3);
      connect(axis4.flange, mechanics.axis4);
      connect(axis5.flange, mechanics.axis5);
      connect(axis6.flange, mechanics.axis6);
      connect(controlBus, pathPlanning.controlBus);
      connect(controlBus.axisControlBus1, axis1.axisControlBus);

      connect(controlBus.axisControlBus2, axis2.axisControlBus);

      connect(controlBus.axisControlBus3, axis3.axisControlBus);

      connect(controlBus.axisControlBus4, axis4.axisControlBus);
      connect(controlBus.axisControlBus5, axis5.axisControlBus);
      connect(controlBus.axisControlBus6, axis6.axisControlBus);
    end fullRobot;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:20
2010.

.. |Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxis| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxisS.png
.. |Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.fullRobot| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxisS.png
.. |Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.Components| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.ComponentsS.png
.. |image3| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxisS.png
.. |image4| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxisS.png
.. |image5| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.ComponentsS.png
.. |image6| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxisI.png
.. |image7| image:: Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.oneAxisI.png
