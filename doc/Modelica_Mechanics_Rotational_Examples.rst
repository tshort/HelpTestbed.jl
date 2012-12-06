======================================
Modelica.Mechanics.Rotational.Examples
======================================

`Modelica.Mechanics.Rotational <Modelica_Mechanics_Rotational.html#Modelica.Mechanics.Rotational>`_.Examples
------------------------------------------------------------------------------------------------------------

**Demonstration examples of the components of this package**

Information
~~~~~~~~~~~

::

This package contains example models to demonstrate the usage of the
Modelica.Mechanics.Rotational package. Open the models and simulate them
according to the provided description in the models.

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| Name                                                                                                                                                                               | Description                                                            |
+====================================================================================================================================================================================+========================================================================+
| |image12| `First <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.First>`_                                                                      | First example: simple drive train                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image13| `FirstGrounded <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.FirstGrounded>`_                                                      | First example: simple drive train with grounded elments                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image14| `Friction <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.Friction>`_                                                                | Drive train with clutch and brake                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image15| `CoupledClutches <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.CoupledClutches>`_                                                  | Drive train with 3 dynamically coupled clutches                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image16| `LossyGearDemo1 <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.LossyGearDemo1>`_                                                    | Example to show that gear efficiency may lead to stuck motion          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image17| `LossyGearDemo2 <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.LossyGearDemo2>`_                                                    | Example to show combination of LossyGear and BearingFriction           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image18| `LossyGearDemo3 <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.LossyGearDemo3>`_                                                    | Example that failed in the previous version of the LossyGear version   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image19| `ElasticBearing <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.ElasticBearing>`_                                                    | Example to show possible usage of support flange                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image20| `Backlash <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.Backlash>`_                                                                | Example to demonstrate backlash                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image21| `RollingWheel <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.RollingWheel>`_                                                        | Demonstrate coupling Rotational - Translational                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image22| `HeatLosses <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.HeatLosses>`_                                                            | Demonstrate the modeling of heat losses                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+
| |image23| `SimpleGearShift <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples.SimpleGearShift>`_                                                  | Simple Gearshift                                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------+

--------------

|image24| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.First
----------------------------------------------------------------------------------------------------------------------------------------------

**First example: simple drive train**

.. figure:: Modelica.Mechanics.Rotational.Examples.FirstD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.First

   Modelica.Mechanics.Rotational.Examples.First

Information
~~~~~~~~~~~

::

The drive train consists of a motor inertia which is driven by a
sine-wave motor torque. Via a gearbox the rotational energy is
transmitted to a load inertia. Elasticity in the gearbox is modeled by a
spring element. A linear damper is used to model the damping in the
gearbox bearing.

Note, that a force component (like the damper of this example) which is
acting between a shaft and the housing has to be fixed in the housing on
one side via component Fixed.

Simulate for 1 second and plot the following variables:
 angular velocities of inertias inertia2 and 3: inertia2.w, inertia3.w

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| Type                                                              | Name        | Default   | Description                         |
+===================================================================+=============+===========+=====================================+
| `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_         | amplitude   | 10        | Amplitude of driving torque [N.m]   |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      | 5         | Frequency of driving torque [Hz]    |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_       | Jmotor      | 0.1       | Motor inertia [kg.m2]               |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_       | Jload       | 2         | Load inertia [kg.m2]                |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| Real                                                              | ratio       | 10        | Gear ratio                          |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| Real                                                              | damping     | 10        | Damping in bearing of gear          |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model First "First example: simple drive train"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Torque amplitude=10 "Amplitude of driving torque";
      parameter SI.Frequency freqHz=5 "Frequency of driving torque";
      parameter SI.Inertia Jmotor(min=0)=0.1 "Motor inertia";
      parameter SI.Inertia Jload(min=0)=2 "Load inertia";
      parameter Real ratio=10 "Gear ratio";
      parameter Real damping=10 "Damping in bearing of gear";

      Rotational.Components.Fixed fixed;
      Rotational.Sources.Torque torque(useSupport=true);
      Rotational.Components.Inertia inertia1(        J=Jmotor);
      Rotational.Components.IdealGear idealGear(        ratio=ratio, useSupport=
           true);
      Rotational.Components.Inertia inertia2(        J=2,
        phi(fixed=true, start=0),
        w(fixed=true));
      Rotational.Components.Spring spring(        c=1.e4,
        phi_rel(fixed=true));
      Rotational.Components.Inertia inertia3(        J=Jload, w(fixed=true));
      Rotational.Components.Damper damper(        d=damping);
      Modelica.Blocks.Sources.Sine sine(amplitude=amplitude, freqHz=freqHz);
    equation 
      connect(inertia1.flange_b, idealGear.flange_a);
      connect(idealGear.flange_b, inertia2.flange_a);
      connect(inertia2.flange_b, spring.flange_a);
      connect(spring.flange_b, inertia3.flange_a);
      connect(damper.flange_a, inertia2.flange_b);
      connect(damper.flange_b, fixed.flange);
      connect(sine.y, torque.tau);
      connect(torque.support, fixed.flange);
      connect(idealGear.support, fixed.flange);
      connect(torque.flange, inertia1.flange_a);
    end First;

--------------

|image25| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.FirstGrounded
------------------------------------------------------------------------------------------------------------------------------------------------------

**First example: simple drive train with grounded elments**

.. figure:: Modelica.Mechanics.Rotational.Examples.FirstGroundedD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.FirstGrounded

   Modelica.Mechanics.Rotational.Examples.FirstGrounded

Information
~~~~~~~~~~~

::

The drive train consists of a motor inertia which is driven by a
sine-wave motor torque. Via a gearbox the rotational energy is
transmitted to a load inertia. Elasticity in the gearbox is modeled by a
spring element. A linear damper is used to model the damping in the
gearbox bearing.

Note, that a force component (like the damper of this example) which is
acting between a shaft and the housing has to be fixed in the housing on
one side via component Fixed.

Simulate for 1 second and plot the following variables:
 angular velocities of inertias inertia2 and 3: inertia2.w, inertia3.w

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| Type                                                              | Name        | Default   | Description                         |
+===================================================================+=============+===========+=====================================+
| `Torque <Modelica_SIunits.html#Modelica.SIunits.Torque>`_         | amplitude   | 10        | Amplitude of driving torque [N.m]   |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      | 5         | Frequency of driving torque [Hz]    |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_       | Jmotor      | 0.1       | Motor inertia [kg.m2]               |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Inertia <Modelica_SIunits.html#Modelica.SIunits.Inertia>`_       | Jload       | 2         | Load inertia [kg.m2]                |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| Real                                                              | ratio       | 10        | Gear ratio                          |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+
| Real                                                              | damping     | 10        | Damping in bearing of gear          |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FirstGrounded 
      "First example: simple drive train with grounded elments"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      parameter Modelica.SIunits.Torque amplitude=10 "Amplitude of driving torque";
      parameter SI.Frequency freqHz=5 "Frequency of driving torque";
      parameter SI.Inertia Jmotor(min=0)=0.1 "Motor inertia";
      parameter SI.Inertia Jload(min=0)=2 "Load inertia";
      parameter Real ratio=10 "Gear ratio";
      parameter Real damping=10 "Damping in bearing of gear";

      Rotational.Components.Fixed fixed;
      Rotational.Sources.Torque torque(useSupport=false);
      Rotational.Components.Inertia inertia1(        J=Jmotor);
      Rotational.Components.IdealGear idealGear(ratio=ratio, useSupport=false);
      Rotational.Components.Inertia inertia2(        J=2,
        phi(fixed=true, start=0),
        w(fixed=true));
      Rotational.Components.Spring spring(        c=1.e4,
        phi_rel(fixed=true));
      Rotational.Components.Inertia inertia3(        J=Jload, w(fixed=true));
      Rotational.Components.Damper damper(        d=damping);
      Modelica.Blocks.Sources.Sine sine(amplitude=amplitude, freqHz=freqHz);
    equation 
      connect(inertia1.flange_b, idealGear.flange_a);
      connect(idealGear.flange_b, inertia2.flange_a);
      connect(inertia2.flange_b, spring.flange_a);
      connect(spring.flange_b, inertia3.flange_a);
      connect(damper.flange_a, inertia2.flange_b);
      connect(damper.flange_b, fixed.flange);
      connect(sine.y, torque.tau);
      connect(torque.flange, inertia1.flange_a);
    end FirstGrounded;

--------------

|image26| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.Friction
-------------------------------------------------------------------------------------------------------------------------------------------------

**Drive train with clutch and brake**

.. figure:: Modelica.Mechanics.Rotational.Examples.FrictionD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.Friction

   Modelica.Mechanics.Rotational.Examples.Friction

Information
~~~~~~~~~~~

::

This drive train contains a frictional **clutch** and a **brake**.
Simulate the system for 1 second using the following initial values
(defined already in the model):

::

       inertia1.w =  90 (or brake.w)
       inertia2.w =  90
       inertia3.w = 100

Plot the output signals

::

       tMotor      Torque of motor
       tClutch     Torque in clutch
       tBrake      Torque in brake
       tSpring     Torque in spring

as well as the absolute angular velocities of the three inertia
components (inertia1.w, inertia2.w, inertia3.w).

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+--------------------------+
| Type                                                    | Name        | Default   | Description              |
+=========================================================+=============+===========+==========================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0.5       | Start time of step [s]   |
+---------------------------------------------------------+-------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Friction "Drive train with clutch and brake"
      import Modelica.Constants.pi;
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      parameter SI.Time startTime=0.5 "Start time of step";
      output SI.Torque tMotor = torque.tau "Driving torque of inertia3";
      output SI.Torque tClutch = clutch.tau "Friction torque of clutch";
      output SI.Torque tBrake = brake.tau "Friction torque of brake";
      output SI.Torque tSpring = spring.tau "Spring torque";

      Rotational.Sources.Torque torque(useSupport=true);
      Rotational.Components.Inertia inertia3(
        J=1,
        phi(
          start=0,
          fixed=true,
          displayUnit="deg"),
        w(start=100,
          fixed=true,
          displayUnit="rad/s"));
      Rotational.Components.Clutch clutch(        fn_max=160);
      Rotational.Components.Inertia inertia2(
        J=0.05,
        phi(start=0, fixed=true),
        w(start=90, fixed=true));
      Rotational.Components.SpringDamper spring(        c=160, d=1);
      Rotational.Components.Inertia inertia1(
        J=1,
        phi(start=0, fixed=true),
        w(start=90, fixed=true));
      Rotational.Components.Brake brake(        fn_max=1600, useSupport=true);
      Modelica.Blocks.Sources.Constant const(k=1);
      Modelica.Blocks.Sources.Step step(startTime=startTime);
      Modelica.Blocks.Sources.Step step2(
        height=-1,
        offset=1,
        startTime=startTime);
      Modelica.Blocks.Sources.Sine sine(amplitude=200, freqHz=50/pi);
      Modelica.Blocks.Math.Product product;
      Rotational.Components.Fixed fixed;
    equation 
      connect(torque.flange, inertia3.flange_a);
      connect(inertia3.flange_b, clutch.flange_a);
      connect(clutch.flange_b, inertia2.flange_a);
      connect(inertia2.flange_b, spring.flange_a);
      connect(spring.flange_b, brake.flange_a);
      connect(brake.flange_b, inertia1.flange_a);
      connect(sine.y, product.u1);
      connect(step2.y, product.u2);
      connect(product.y, torque.tau);
      connect(const.y, clutch.f_normalized);
      connect(step.y, brake.f_normalized);
      connect(torque.support, fixed.flange);
      connect(brake.support, fixed.flange);
    end Friction;

--------------

|image27| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.CoupledClutches
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Drive train with 3 dynamically coupled clutches**

.. figure:: Modelica.Mechanics.Rotational.Examples.CoupledClutchesD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.CoupledClutches

   Modelica.Mechanics.Rotational.Examples.CoupledClutches

Information
~~~~~~~~~~~

::

This example demonstrates how variable structure drive trains are
handeled. The drive train consists of 4 inertias and 3 clutches, where
the clutches are controlled by input signals. The system has 2^3=8
different configurations and 3^3 = 27 different states (every clutch may
be in forward sliding, backward sliding or locked mode when the relative
angular velocity is zero). By invoking the clutches at different time
instances, the switching of the configurations can be studied.

Simulate the system for 1.2 seconds with the following initial values:
 J1.w = 10.

Plot the following variables:
 angular velocities of inertias (J1.w, J2.w, J3.w, J4.w), frictional
torques of clutches (clutchX.tau), frictional mode of clutches
(clutchX.mode) where mode = -1/0/+1 means backward sliding, locked,
forward sliding.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| Type                                                              | Name     | Default   | Description                                         |
+===================================================================+==========+===========+=====================================================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz   | 0.2       | Frequency of sine function to invoke clutch1 [Hz]   |
+-------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | T2       | 0.4       | Time when clutch2 is invoked [s]                    |
+-------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | T3       | 0.9       | Time when clutch3 is invoked [s]                    |
+-------------------------------------------------------------------+----------+-----------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CoupledClutches 
      "Drive train with 3 dynamically coupled clutches"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      parameter SI.Frequency freqHz=0.2 
        "Frequency of sine function to invoke clutch1";
      parameter SI.Time T2=0.4 "Time when clutch2 is invoked";
      parameter SI.Time T3=0.9 "Time when clutch3 is invoked";

      Rotational.Components.Inertia J1(
        J=1,
        phi(fixed=true, start=0),
        w(start=10, fixed=true));
      Rotational.Sources.Torque torque(useSupport=true);
      Rotational.Components.Clutch clutch1(        peak=1.1, fn_max=20);
      Modelica.Blocks.Sources.Sine sin1(amplitude=10, freqHz=5);
      Modelica.Blocks.Sources.Step step1(startTime=T2);
      Rotational.Components.Inertia J2(        J=1,
        phi(fixed=true, start=0),
        w(fixed=true));
      Rotational.Components.Clutch clutch2(        peak=1.1, fn_max=20);
      Rotational.Components.Inertia J3(        J=1,
        phi(fixed=true, start=0),
        w(fixed=true));
      Rotational.Components.Clutch clutch3(        peak=1.1, fn_max=20);
      Rotational.Components.Inertia J4(        J=1,
        phi(fixed=true, start=0),
        w(fixed=true));
      Modelica.Blocks.Sources.Sine sin2(
        amplitude=1,
        freqHz=freqHz,
        phase=1.57);
      Modelica.Blocks.Sources.Step step2(startTime=T3);
      Rotational.Components.Fixed fixed;
    equation 
      connect(torque.flange, J1.flange_a);
      connect(J1.flange_b, clutch1.flange_a);
      connect(clutch1.flange_b, J2.flange_a);
      connect(J2.flange_b, clutch2.flange_a);
      connect(clutch2.flange_b, J3.flange_a);
      connect(J3.flange_b, clutch3.flange_a);
      connect(clutch3.flange_b, J4.flange_a);
      connect(sin1.y, torque.tau);
      connect(sin2.y, clutch1.f_normalized);
      connect(step1.y, clutch2.f_normalized);
      connect(step2.y, clutch3.f_normalized);
      connect(fixed.flange, torque.support);
    end CoupledClutches;

--------------

|image28| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.LossyGearDemo1
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Example to show that gear efficiency may lead to stuck motion**

.. figure:: Modelica.Mechanics.Rotational.Examples.LossyGearDemo1D.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.LossyGearDemo1

   Modelica.Mechanics.Rotational.Examples.LossyGearDemo1

Information
~~~~~~~~~~~

::

This model contains two inertias which are connected by an ideal gear
where the friction between the teeth of the gear is modeled in a
physical meaningful way (friction may lead to stuck mode which locks the
motion of the gear). The friction is defined by an efficiency factor (=
0.5) for forward and backward driving condition leading to a torque
dependent friction loss. Simulate for about 0.5 seconds. The friction in
the gear will take all modes (forward and backward rolling, as well as
stuck).

You may plot:

::

    Inertia1.w,
    Inertia2.w : angular velocities of inertias
    powerLoss  : power lost in the gear
    gear.mode  :  1 = forward rolling
                  0 = stuck (w=0)
                 -1 = backward rolling

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LossyGearDemo1 
      "Example to show that gear efficiency may lead to stuck motion"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      SI.Power PowerLoss=
        gear.flange_a.tau*der(gear.flange_a.phi) + gear.flange_b.tau*der(gear.flange_b.phi) 
        "Power lost in the gear";
      Rotational.Components.LossyGear gear(ratio=2, lossTable=[0, 0.5, 0.5, 0, 0],
        useSupport=true);
      Rotational.Components.Inertia Inertia1(J=1);
      Rotational.Components.Inertia Inertia2(        J=1.5,
        phi(fixed=true, start=0),
        w(fixed=true));
      Rotational.Sources.Torque torque1(useSupport=true);
      Rotational.Sources.Torque torque2(useSupport=true);
      Modelica.Blocks.Sources.Sine DriveSine(amplitude=10, freqHz=1);
      Modelica.Blocks.Sources.Ramp load(
        height=5,
        duration=2,
        offset=-10);
      Rotational.Components.Fixed fixed;
    equation 
      connect(Inertia1.flange_b, gear.flange_a);
      connect(gear.flange_b, Inertia2.flange_a);
      connect(torque1.flange, Inertia1.flange_a);
      connect(torque2.flange, Inertia2.flange_b);
      connect(DriveSine.y, torque1.tau);
      connect(load.y, torque2.tau);
      connect(fixed.flange, gear.support);
      connect(fixed.flange, torque1.support);
      connect(fixed.flange, torque2.support);
    end LossyGearDemo1;

--------------

|image29| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.LossyGearDemo2
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Example to show combination of LossyGear and BearingFriction**

.. figure:: Modelica.Mechanics.Rotational.Examples.LossyGearDemo2D.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.LossyGearDemo2

   Modelica.Mechanics.Rotational.Examples.LossyGearDemo2

Information
~~~~~~~~~~~

::

This model contains bearing friction and gear friction (= efficiency).
If both friction models are stuck, there is no unique solution. Still a
reliable Modelica simulator, such as Dymola, should be able to handle
this situation.

Simulate for about 0.5 seconds. The friction elements are in all modes
(forward and backward rolling, as well as stuck).

You may plot:

::

    Inertia1.w,
    Inertia2.w          : angular velocities of inertias
    powerLoss           : power lost in the gear
    bearingFriction.mode:  1 = forward rolling
                           0 = stuck (w=0)
                          -1 = backward rolling
    gear.mode           :  1 = forward rolling
                           0 = stuck (w=0)
                          -1 = backward rolling

Note: This combination of LossyGear and BearingFriction is not
recommended to use, as component LossyGear includes the functionality of
component BearingFriction (only *peak* not supported).

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LossyGearDemo2 
      "Example to show combination of LossyGear and BearingFriction"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Example;
      SI.Power PowerLoss=
        gear.flange_a.tau*der(gear.flange_a.phi) + gear.flange_b.tau*der(gear.flange_b.phi) 
        "Power lost in the gear";

      Rotational.Components.LossyGear gear(ratio=2, lossTable=[0, 0.5, 0.5, 0, 0],
        useSupport=true);
      Rotational.Components.Inertia Inertia1(J=1);
      Rotational.Components.Inertia Inertia2(        J=1.5,
        phi(fixed=true, start=0),
        w(fixed=true));
      Rotational.Sources.Torque torque1(useSupport=true);
      Rotational.Sources.Torque torque2(useSupport=true);
      Modelica.Blocks.Sources.Sine DriveSine(amplitude=10, freqHz=1);
      Modelica.Blocks.Sources.Ramp load(
        height=5,
        duration=2,
        offset=-10);
      Rotational.Components.BearingFriction bearingFriction(        tau_pos=[0, 0.5; 1, 1],
          useSupport=true);
      Rotational.Components.Fixed fixed;
    equation 
      connect(torque2.flange, Inertia2.flange_b);
      connect(Inertia2.flange_a, gear.flange_b);
      connect(gear.flange_a, Inertia1.flange_b);
      connect(Inertia1.flange_a, bearingFriction.flange_b);
      connect(bearingFriction.flange_a, torque1.flange);
      connect(DriveSine.y, torque1.tau);
      connect(load.y, torque2.tau);
      connect(gear.support, fixed.flange);
      connect(fixed.flange, torque2.support);
      connect(fixed.flange, bearingFriction.support);
      connect(torque1.support, fixed.flange);
    end LossyGearDemo2;

--------------

|image30| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.LossyGearDemo3
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Example that failed in the previous version of the LossyGear version**

.. figure:: Modelica.Mechanics.Rotational.Examples.LossyGearDemo3D.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.LossyGearDemo3

   Modelica.Mechanics.Rotational.Examples.LossyGearDemo3

Information
~~~~~~~~~~~

::

This example demonstrates a situation where the driving side of the
LossyGear model is not obvious. The version of LossyGear up to version
3.1 of package Modelica failed in this case (no convergence of the event
iteration).

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model LossyGearDemo3 
      "Example that failed in the previous version of the LossyGear version"
      import SI = Modelica.SIunits;

      extends Modelica.Icons.Example;

      Modelica.Mechanics.Rotational.Components.LossyGear gear(
                                ratio=
                                  1, lossTable=[0,0.25,0.25,0.625,2.5],
        useSupport=false);
      Modelica.Mechanics.Rotational.Components.Inertia Inertia1(
                                             w(start=10), J=0.001);
      Modelica.Mechanics.Rotational.Sources.Torque torque1(
                                        useSupport=false);
      Modelica.Mechanics.Rotational.Sources.Torque torque2(
                                        useSupport=false);
      Modelica.Blocks.Sources.Step step(
                        height=0);
      Modelica.Blocks.Sources.Step step1(
        startTime=0.5,
        height=1,
        offset=0);
      Modelica.Mechanics.Rotational.Components.Inertia Inertia2(
                                                          J=0.001,
        phi(fixed=true, start=0),
        w(start=10, fixed=true));
    equation 
      connect(Inertia1.flange_b,gear. flange_a);
      connect(torque1.flange,Inertia1.   flange_a);
      connect(step.y,torque1. tau);
      connect(gear.flange_b,Inertia2. flange_a);
      connect(Inertia2.flange_b,torque2.flange);
      connect(step1.y, torque2.tau);
    end LossyGearDemo3;

--------------

|image31| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.ElasticBearing
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Example to show possible usage of support flange**

.. figure:: Modelica.Mechanics.Rotational.Examples.ElasticBearingD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.ElasticBearing

   Modelica.Mechanics.Rotational.Examples.ElasticBearing

Information
~~~~~~~~~~~

::

This model demonstrates the usage of the bearing flange. The gearbox is
not connected rigidly to the ground, but by a spring-damper-system. This
allows examination of the gearbox housing dynamics.

Simulate for about 10 seconds and plot the angular velocities of the
inertias ``housing.w``, ``shaft.w`` and ``load.w``.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ElasticBearing 
      "Example to show possible usage of support flange"
      extends Modelica.Icons.Example;
      Rotational.Components.Inertia shaft(        phi(fixed=true, start=0), w(
            fixed=true),
        J=1);
      Rotational.Components.Inertia load(        J=50,
        w(fixed=true));
      Rotational.Components.Spring spring(        c=1e3, phi_rel(fixed=true));
      Rotational.Components.Fixed fixed;
      Rotational.Components.SpringDamper springDamper(        c=1e5, d=5,
        phi_rel(fixed=true),
        w_rel(fixed=true));
      Rotational.Sources.Torque torque(useSupport=true);
      Modelica.Blocks.Sources.Ramp ramp(              duration=5, height=100);
      Rotational.Components.IdealGear idealGear(        ratio=3, useSupport=
            true);
      Rotational.Components.Inertia housing(
                      J=5);
    equation 
      connect(torque.flange, shaft.flange_a);
      connect(spring.flange_b, load.flange_a);
      connect(springDamper.flange_a, fixed.flange);
      connect(shaft.flange_b, idealGear.flange_a);
      connect(idealGear.flange_b, spring.flange_a);
      connect(idealGear.support, housing.flange_b);
      connect(housing.flange_a, springDamper.flange_b);
      connect(ramp.y, torque.tau);
      connect(fixed.flange, torque.support);
    end ElasticBearing;

--------------

|image32| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.Backlash
-------------------------------------------------------------------------------------------------------------------------------------------------

**Example to demonstrate backlash**

.. figure:: Modelica.Mechanics.Rotational.Examples.BacklashD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.Backlash

   Modelica.Mechanics.Rotational.Examples.Backlash

Information
~~~~~~~~~~~

::

This model demonstrates the effect of a backlash on eigenfrequency, and
also that the damping torque does not lead to unphysical pulling torques
(since the ElastoBacklash model takes care of it).

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Backlash "Example to demonstrate backlash"
      extends Modelica.Icons.Example;
      Rotational.Components.Fixed fixed1;
      Rotational.Components.SpringDamper springDamper(c=20E3, d=50,
        phi_nominal=1);
      Rotational.Components.Inertia inertia1(J=5,
        w(fixed=true, start=0),
        phi(
          fixed=true,
          displayUnit="deg",
          start=1.570796326794897));
      Rotational.Components.Fixed fixed2;
      Rotational.Components.ElastoBacklash elastoBacklash(
        c=20E3,
        d=50,
        b(displayUnit="deg") = 0.7853981633974483,
        phi_nominal=1);
      Rotational.Components.Inertia inertia2(J=5,
        w(fixed=true, start=0),
        phi(
          fixed=true,
          start=1.570796326794897,
          displayUnit="deg"));
    equation 
      connect(springDamper.flange_b, inertia1.flange_a);
      connect(elastoBacklash.flange_b, inertia2.flange_a);
      connect(fixed1.flange, springDamper.flange_a);
      connect(fixed2.flange, elastoBacklash.flange_a);
    end Backlash;

--------------

|image33| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.RollingWheel
-----------------------------------------------------------------------------------------------------------------------------------------------------

**Demonstrate coupling Rotational - Translational**

.. figure:: Modelica.Mechanics.Rotational.Examples.RollingWheelD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.RollingWheel

   Modelica.Mechanics.Rotational.Examples.RollingWheel

Information
~~~~~~~~~~~

::

This model demonstrates the coupling between rotational and
translational components:
 A torque (step) accelerates both the inertia (of the wheel) and the
mass (of the vehicle).
 Du to a speed dependent force (like driving resistance), we find an
eqilibrium at 5 m/s after approx. 5 s.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model RollingWheel "Demonstrate coupling Rotational - Translational"
      extends Modelica.Icons.Example;
      Rotational.Components.IdealRollingWheel idealRollingWheel(radius=1);
      Rotational.Components.Inertia inertia(J=1);
      Rotational.Sources.TorqueStep torqueStep(
        stepTorque=10,
        offsetTorque=0,
        startTime=0.1,
        useSupport=false);
      Translational.Components.Mass mass(L=0, m=1);
      Translational.Sources.QuadraticSpeedDependentForce
        quadraticSpeedDependentForce(
        f_nominal=-10,
        ForceDirection=false,
        v_nominal=5);
    equation 

      connect(torqueStep.flange, inertia.flange_a);
      connect(inertia.flange_b, idealRollingWheel.flangeR);
      connect(idealRollingWheel.flangeT, mass.flange_a);
      connect(quadraticSpeedDependentForce.flange, mass.flange_b);
    end RollingWheel;

--------------

|image34| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.HeatLosses
---------------------------------------------------------------------------------------------------------------------------------------------------

**Demonstrate the modeling of heat losses**

.. figure:: Modelica.Mechanics.Rotational.Examples.HeatLossesD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.HeatLosses

   Modelica.Mechanics.Rotational.Examples.HeatLosses

Information
~~~~~~~~~~~

::

This model demonstrates how to model the dissipated power of a drive
train, by enabling the heatPort of all components and connecting these
heatPorts via a convection element to the environment. The total heat
flow generated by the elements of the drive train and transported to the
environment is present in variable convection.fluid.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model HeatLosses "Demonstrate the modeling of heat losses"
       extends Modelica.Icons.Example;
      Blocks.Sources.Sine sine(freqHz=5, amplitude=20);
      Sources.Torque torque;
      Components.Inertia inertia1(J=2,
        phi(fixed=true, start=0),
        w(fixed=true, start=0));
      Components.Damper damper(useHeatPort=true, d=10);
      Components.Fixed fixed;
      Thermal.HeatTransfer.Components.Convection convection;
      Thermal.HeatTransfer.Celsius.FixedTemperature TAmbient(T=25) 
        "Ambient temperature";
      Blocks.Sources.Constant const(k=20);
      Components.SpringDamper springDamper(
        c=1e4,
        d=20,
        useHeatPort=true);
      Components.Inertia inertia2(J=2,
        phi(fixed=true, start=0),
        w(fixed=true, start=0));
      Components.ElastoBacklash elastoBacklash(
        c=1e5,
        d=100,
        useHeatPort=true,
        b(displayUnit="rad") = 0.001);
      Components.Inertia inertia3(J=2,
        phi(fixed=true, start=0),
        w(fixed=true, start=0));
      Components.BearingFriction bearingFriction(useHeatPort=true);
      Components.Spring spring3(c=1e4);
      Components.Inertia inertia4(J=2,
        phi(fixed=true, start=0),
        w(fixed=true, start=0));
      Components.LossyGear lossyGear(
        ratio=2,
        lossTable=[0,0.8,0.8,1,1; 1,0.7,0.7,2,2],
        useHeatPort=true);
      Components.Clutch clutch(useHeatPort=true, fn_max=10,
        phi_rel(fixed=true),
        w_rel(fixed=true));
      Components.Inertia inertia5(J=2);
      Blocks.Sources.Sine sine2(              freqHz=0.2, amplitude=1);
      Components.Inertia inertia6(J=2);
      Components.OneWayClutch oneWayClutch(
        phi_rel(fixed=true),
        w_rel(fixed=true),
        startForward(fixed=true),
        stuck(fixed=true),
        fn_max=1,
        useHeatPort=true);
      Components.Brake brake(fn_max=2, useHeatPort=true);
    equation 

      connect(sine.y, torque.tau);
      connect(torque.flange, inertia1.flange_a);
      connect(inertia1.flange_b, damper.flange_b);
      connect(damper.flange_a, fixed.flange);
      connect(damper.heatPort, convection.solid);
      connect(TAmbient.port, convection.fluid);
      connect(const.y, convection.Gc);
      connect(inertia1.flange_b, springDamper.flange_a);
      connect(springDamper.heatPort, convection.solid);
      connect(springDamper.flange_b, inertia2.flange_a);
      connect(elastoBacklash.flange_a, inertia2.flange_b);
      connect(elastoBacklash.heatPort, convection.solid);
      connect(elastoBacklash.flange_b, inertia3.flange_a);
      connect(inertia3.flange_b, bearingFriction.flange_a);
      connect(convection.solid, bearingFriction.heatPort);
      connect(spring3.flange_b, inertia4.flange_a);
      connect(bearingFriction.flange_b, spring3.flange_a);
      connect(inertia4.flange_b, lossyGear.flange_a);
      connect(lossyGear.heatPort, convection.solid);
      connect(lossyGear.flange_b, clutch.flange_a);
      connect(clutch.heatPort, convection.solid);
      connect(clutch.flange_b, inertia5.flange_a);
      connect(sine2.y, clutch.f_normalized);
      connect(inertia5.flange_b, oneWayClutch.flange_a);
      connect(oneWayClutch.flange_b, inertia6.flange_a);
      connect(sine2.y, oneWayClutch.f_normalized);
      connect(inertia6.flange_b, brake.flange_a);
      connect(sine2.y, brake.f_normalized);
      connect(oneWayClutch.heatPort, convection.solid);
      connect(brake.heatPort, convection.solid);

    end HeatLosses;

--------------

|image35| `Modelica.Mechanics.Rotational.Examples <Modelica_Mechanics_Rotational_Examples.html#Modelica.Mechanics.Rotational.Examples>`_.SimpleGearShift
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Simple Gearshift**

.. figure:: Modelica.Mechanics.Rotational.Examples.SimpleGearShiftD.png
   :align: center
   :alt: Modelica.Mechanics.Rotational.Examples.SimpleGearShift

   Modelica.Mechanics.Rotational.Examples.SimpleGearShift

Information
~~~~~~~~~~~

::

This model shows how an automatic gear shift is built up from a
planetary gear, a brake and a clutch.

-  In the beginning, the clutch is free and the brake fixes the ring of
   the planetary. Thus we obtain a gearRatio = 1/(1 + planetary.ratio).
-  At time = 2 s, the brake frees the ring of the planetary, whereas the
   clutch blocks the ring and the sun. Thus we obtain a gearRatio = 1.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SimpleGearShift "Simple Gearshift"
      extends Modelica.Icons.Example;
      output Modelica.SIunits.AngularVelocity wEngine=engine.w "Speed of engine";
      output Modelica.SIunits.AngularVelocity wLoad = load.w "Speed of load";
      output Real gearRatio = wLoad/max(wEngine, 1E-6) "gear ratio load/engine";
      Modelica.Mechanics.Rotational.Sources.TorqueStep torqueStep(
        offsetTorque=0,
        startTime=0.5,
        stepTorque=20);
      Modelica.Mechanics.Rotational.Components.Inertia engine(J=1);
      Modelica.Mechanics.Rotational.Components.IdealPlanetary idealPlanetary(ratio=75/
            50);
      Modelica.Mechanics.Rotational.Components.Inertia load(J=10);
      Modelica.Mechanics.Rotational.Sources.QuadraticSpeedDependentTorque
        quadraticSpeedDependentTorque(
        w_nominal(displayUnit="rpm")=10.471975511966, tau_nominal=-20);
      Modelica.Mechanics.Rotational.Components.Clutch clutch(cgeo=2, fn_max=100);
      Modelica.Mechanics.Rotational.Components.Brake brake(cgeo=2, fn_max=100);
      Modelica.Blocks.Math.Feedback feedback;
      Modelica.Blocks.Sources.Constant const1(k=1);
      Modelica.Blocks.Sources.Ramp ramp(
        height=1,
        offset=0,
        startTime=2,
        duration=0.1);
    equation 
      connect(torqueStep.flange, engine.flange_a);
      connect(quadraticSpeedDependentTorque.flange, load.flange_b);
      connect(feedback.y, brake.f_normalized);
      connect(engine.flange_b, idealPlanetary.sun);
      connect(idealPlanetary.sun, clutch.flange_a);
      connect(idealPlanetary.ring, clutch.flange_b);
      connect(idealPlanetary.ring, brake.flange_a);
      connect(idealPlanetary.carrier, load.flange_a);
      connect(const1.y, feedback.u1);
      connect(feedback.u2, clutch.f_normalized);
      connect(ramp.y, clutch.f_normalized);
    end SimpleGearShift;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:44
2010.

.. |Modelica.Mechanics.Rotational.Examples.First| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.FirstGrounded| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.Friction| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.CoupledClutches| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.LossyGearDemo1| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.LossyGearDemo2| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.LossyGearDemo3| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.ElasticBearing| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.Backlash| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.RollingWheel| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.HeatLosses| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |Modelica.Mechanics.Rotational.Examples.SimpleGearShift| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image12| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image13| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image14| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image15| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image16| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image17| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image18| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image19| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image20| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image21| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image22| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image23| image:: Modelica.Mechanics.Rotational.Examples.FirstS.png
.. |image24| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image25| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image26| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image27| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image28| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image29| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image30| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image31| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image32| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image33| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image34| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
.. |image35| image:: Modelica.Mechanics.Rotational.Examples.FirstI.png
