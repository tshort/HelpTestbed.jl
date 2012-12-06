% Modelica.Magnetic.FluxTubes.Examples
% 
% 

[Modelica.Magnetic.FluxTubes](Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes).Examples
====================================================================================================

**Illustration of component usage with simple models of various
devices**

Information
-----------

::

::

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image4](Modelica.Magnetic.FluxTubes.Examples.S Inductor with
  aturatedInductorS.png)                           saturation in the
  [SaturatedInductor](Modelica_Magnetic_FluxTubes_ ferromagnetic core
  Examples.html#Modelica.Magnetic.FluxTubes.Exampl 
  es.SaturatedInductor)                            

  ![image5](Modelica.Magnetic.FluxTubes.Examples.M Two translatory
  ovingCoilActuatorS.png)                          electrodynamic actuator
  [MovingCoilActuator](Modelica_Magnetic_FluxTubes models of different
  _Examples_MovingCoilActuator.html#Modelica.Magne modelling depth and
  tic.FluxTubes.Examples.MovingCoilActuator)       their comparison

  ![image6](Modelica.Magnetic.FluxTubes.Examples.M Two models of a
  ovingCoilActuatorS.png)                          reluctance actuator of
  [SolenoidActuator](Modelica_Magnetic_FluxTubes_E different modelling
  xamples_SolenoidActuator.html#Modelica.Magnetic. depth and their
  FluxTubes.Examples.SolenoidActuator)             comparison and usage

  ![image7](Modelica.Magnetic.FluxTubes.Examples.U Utilities to be used in
  tilitiesS.png)                                   examples
  [Utilities](Modelica_Magnetic_FluxTubes_Examples 
  _Utilities.html#Modelica.Magnetic.FluxTubes.Exam 
  ples.Utilities)                                  
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Magnetic.FluxTubes.Examples.SaturatedInductorI.png) [Modelica.Magnetic.FluxTubes.Examples](Modelica_Magnetic_FluxTubes_Examples.html#Modelica.Magnetic.FluxTubes.Examples).SaturatedInductor
===============================================================================================================================================================================================================

**Inductor with saturation in the ferromagnetic core**

Information
-----------

::

This model demonstrates the effects of non-linear magnetisation
characteristics of soft magnetic materials (hysteresis neglected). A
sinusoidal voltage is applied to an inductor with a closed ferromagnetic
core of rectangular shape. Set the **tolerance** to **1e-7**, **simulate
for 0.1 s** and plot for example:

    coil.i vs. time           // non-harmonic current due to saturation of the core material
    r_mFe.mu_r vs. r_mFe.B    // relative permeability vs. flux density inside core
    r_mFe.B vs. r_mFe.H       // magnetisation curve B(H); hysteresis neglected

The magnetisation characteristics of the flux tube element representing
the ferromagnetic core can easily be changed from simplified linear
behaviour (nonLinearPermeability set to false and R\_mFe.mu\_rConst set
to a positive value, preferably mu\_rConst \>\> 1) to non-linear
behaviour (e.g., selection of one of the electric sheets in
[Material.SoftMagnetic](Modelica_Magnetic_FluxTubes_Material_SoftMagnetic.html#Modelica.Magnetic.FluxTubes.Material.SoftMagnetic)
with nonLinearPermeability set to true). This enables for convenient
inital design of magnetic circuits with linear material characteristics
prior to simulation with non-linear behaviour.

### Note

If the supply voltage has a zero-crossing when applied to the inductor
at time t=0 (i.e., source.phase set to zero instead of π/2), then the
inrush current that is typical for switching of inductive loads can be
observed.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Modelica definition
-------------------

    model SaturatedInductor 
      "Inductor with saturation in the ferromagnetic core"
      extends Modelica.Icons.Example;

      Modelica.Magnetic.FluxTubes.Basic.Ground ground_m;
      Modelica.Electrical.Analog.Sources.SineVoltage source(
        freqHz=50,
        phase=pi/2,
        V=230*sqrt(2)) "Voltage applied to inductor";
      Modelica.Electrical.Analog.Basic.Resistor r(R=7.5) "Inductor coil resistance";
      Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverter coil(
                                    N=600, i(fixed=true)) "Inductor coil";
      Basic.ConstantReluctance r_mLeak(R_m=1.2e6) "Constant leakage reluctance";
      Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Cuboid r_mAirPar(
        a=0.025,
        b=0.025,
        nonLinearPermeability=false,
        mu_rConst=1,
        l=0.0001) 
        "Reluctance of small parasitic air gap (ferromagnetic core packeted from single sheets)";
      Modelica.Magnetic.FluxTubes.Shapes.FixedShape.Cuboid r_mFe(
        mu_rConst=1000,
        a=0.025,
        b=0.025,
        nonLinearPermeability=true,
        l=4*0.065,
        material=Modelica.Magnetic.FluxTubes.Material.SoftMagnetic.ElectricSheet.M350_50A()) 
        "Reluctance of ferromagnetic inductor core";
      Modelica.Electrical.Analog.Basic.Ground ground;

    equation 
      connect(source.p, r.p);
      connect(r.n, coil.p);
      connect(source.n, coil.n);
      connect(coil.port_p, r_mLeak.port_p);
      connect(r_mLeak.port_p, r_mAirPar.port_p);
      connect(r_mAirPar.port_n, r_mFe.port_p);
      connect(r_mFe.port_n, r_mLeak.port_n);
      connect(r_mFe.port_n, coil.port_n);
    connect(ground.p, source.n);
    connect(ground_m.port, r_mFe.port_n);
    end SaturatedInductor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:48 2010.
