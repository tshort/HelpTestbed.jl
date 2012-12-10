% Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components
% 
% 

[Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator](Modelica_Magnetic_FluxTubes_Examples_MovingCoilActuator.html#Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator).Components
==========================================================================================================================================================================================

**Components to be used in examples**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image2](Modelica.Magnetic.FluxTubes.Examples.MovingC Detailed actuator
  oilActuator.Components.PermeanceActuatorS.png)         model for rough
  [PermeanceActuator](Modelica_Magnetic_FluxTubes_Exampl magnetic design
  es_MovingCoilActuator_Components.html#Modelica.Magneti of actuator and
  c.FluxTubes.Examples.MovingCoilActuator.Components.Per system simulation
  meanceActuator)                                        

  ![image3](Modelica.Magnetic.FluxTubes.Examples.MovingC Simple
  oilActuator.Components.ConstantActuatorS.png)          behavioural
  [ConstantActuator](Modelica_Magnetic_FluxTubes_Example actuator model
  s_MovingCoilActuator_Components.html#Modelica.Magnetic for system
  .FluxTubes.Examples.MovingCoilActuator.Components.Cons simulation
  tantActuator)                                          
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components.PermeanceActuatorI.png) [Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components](Modelica_Magnetic_FluxTubes_Examples_MovingCoilActuator_Components.html#Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components).PermeanceActuator
=======================================================================================================================================================================================================================================================================================================================================

**Detailed actuator model for rough magnetic design of actuator and
system simulation**

Information
-----------

::

In the
[ConstantActuator](Modelica_Magnetic_FluxTubes_Examples_MovingCoilActuator_Components.html#Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components.ConstantActuator)
model the force F is strictly proportional to the current i as indicated
by the converter constant c. However, there is an additional non-linear
force component in such an actuator that is due to the dependency of the
coil inductance L on the armature position x. The inductance increases
as the armature moves into the stator. The total force is

    1  2 dL

> F = - i -- + c i
>   ~ 2 dx
>
Both force components are properly considered with a simple permeance
model as shown in the figures below. Figure (a) illustrates the
dimensions of the axisymmetric moving coil actuator that are needed in
the permeance model. Figure (b) shows partitioning into flux tubes and
the permanent magnetic field without current. G\_ma and G\_mb both are
the permeances resulting from a series connection of the permaent magnet
and air gap sections. The field plot of the coil-imposed mmf is shown in
figure (c) without the permanent magnetic mmf (H\_cB=0). The placement
of the magnetic network components in figure (d) retains the geometric
structure of the actuator. In figure (e), the permeance model is
restructured and thus simplified.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Nam Default   Description
                                       e             
  ------------------------------------ --- --------- ----------------------
  Real                                 N   140       Number of turns

  [Resistance](Modelica_SIunits.html#M R   2.86      Coil resistance [Ohm]
  odelica.SIunits.Resistance)                        

  [Radius](Modelica_SIunits.html#Model r\_ 12.5e-3   Radius of
  ica.SIunits.Radius)                  cor           ferromagnetic stator
                                       e             core [m]

  [Length](Modelica_SIunits.html#Model l\_ 3.5e-3    Radial thickness of
  ica.SIunits.Length)                  PM            permanent magnet ring
                                                     [m]

  [Length](Modelica_SIunits.html#Model t   0.02      Axial length of
  ica.SIunits.Length)                                permanent magnet ring
                                                     and air gap
                                                     respectively [m]

  [Length](Modelica_SIunits.html#Model l\_ 3e-3      Total radial length of
  ica.SIunits.Length)                  air           armature air gap [m]

  [Length](Modelica_SIunits.html#Model l\_ 4e-3      Radial thickness of
  ica.SIunits.Length)                  FeO           outer back iron (for
                                       ut            estimation of leakage
                                                     permeance) [m]

  ![image6](../Magnetic/modelica://Mod               
  elica/Resources/Images/Magnetic/Flux               
  Tubes/Examples/MovingCoilActuator/Mo               
  vingCoilActuator_dimensions.png)                   

  Material                                           

  [BaseData](Modelica_Magnetic_FluxTub mat Modelica. Ferromagnetic material
  es_Material_HardMagnetic.html#Modeli eri Magnetic. characteristics
  ca.Magnetic.FluxTubes.Material.HardM al  FluxTubes 
  agnetic.BaseData)                        ....      

  Armature and stopper                               

  [Mass](Modelica_SIunits.html#Modelic m\_ 0.012     Mass of armature [kg]
  a.SIunits.Mass)                      a             

  [TranslationalSpringConstant](Modeli c   1e11      Spring stiffness
  ca_SIunits.html#Modelica.SIunits.Tra               between impact
  nslationalSpringConstant)                          partners [N/m]

  [TranslationalDampingConstant](Model d   400       Damping coefficient
  ica_SIunits.html#Modelica.SIunits.Tr               between impact
  anslationalDampingConstant)                        partners [N.s/m]

  [Position](Modelica_SIunits.html#Mod x\_ -4e-3     Position of stopper at
  elica.SIunits.Position)              min           minimum armature
                                                     position [m]

  [Position](Modelica_SIunits.html#Mod x\_ 4e-3      Position of stopper at
  elica.SIunits.Position)              max           maximum armature
                                                     position [m]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name  Description
  ------------------------------------------------------- ----- -----------
  [PositivePin](Modelica_Electrical_Analog_Interfaces.htm p     Electrical
  l#Modelica.Electrical.Analog.Interfaces.PositivePin)          connector

  [NegativePin](Modelica_Electrical_Analog_Interfaces.htm n     Electrical
  l#Modelica.Electrical.Analog.Interfaces.NegativePin)          connector

  [Flange\_b](Modelica_Mechanics_Translational_Interfaces flang Flange of
  .html#Modelica.Mechanics.Translational.Interfaces.Flang e     component
  e_b)                                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PermeanceActuator 
      "Detailed actuator model for rough magnetic design of actuator and system simulation"

      parameter Real N = 140 "Number of turns";
      parameter SI.Resistance R = 2.86 "Coil resistance";

      parameter SI.Radius r_core = 12.5e-3 "Radius of ferromagnetic stator core";

      parameter SI.Length l_PM = 3.5e-3 "Radial thickness of permanent magnet ring";
      parameter SI.Length t = 0.02 
        "Axial length of permanent magnet ring and air gap respectively";

      parameter SI.Length l_air = 3e-3 "Total radial length of armature air gap";

      parameter SI.Length l_FeOut = 4e-3 
        "Radial thickness of outer back iron (for estimation of leakage permeance)";

      parameter Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData
        material=
        Modelica.Magnetic.FluxTubes.Material.HardMagnetic.BaseData() 
        "Ferromagnetic material characteristics";

      parameter SI.Mass m_a = 0.012 "Mass of armature";

      parameter SI.TranslationalSpringConstant c=
            1e11 "Spring stiffness between impact partners";
      parameter SI.TranslationalDampingConstant d=
            400 "Damping coefficient between impact partners";
      parameter SI.Position x_min=-4e-3 
        "Position of stopper at minimum armature position";
      parameter SI.Position x_max=4e-3 
        "Position of stopper at maximum armature position";

      SI.Position x(start = x_min, stateSelect=StateSelect.prefer) 
        "Armature position, alias for flange position";

      SI.Inductance L "Coil inductance";

      Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifference
        mmf_PM(
        final V_m=material.H_cB*l_PM) "Permanent magnet's magnetomotive force";

      Modelica.Magnetic.FluxTubes.Examples.Utilities.TranslatoryArmatureAndStopper
        armature(
        final L=0,
        final m=m_a,
        final c=c,
        final d=d,
        n=2,
        final x_max=x_max,
        final x_min=x_min) 
        "Inertia of moving coil + coil carrier; stoppers at end of stroke range";
      Modelica.Electrical.Analog.Basic.Resistor r(final R=R);

      Basic.Ground ground;
      Modelica.Magnetic.FluxTubes.Basic.ElectroMagneticConverter coil(
                                    final N=N);
      Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderRadialFlux
        g_ma(
        final dlBydx=1,
        final l=t/2 + x,
        final r_i=r_core,
        final r_o=r_core + l_air + l_PM,
        final mu_r=1.05,
        final useSupport=false);
      Modelica.Magnetic.FluxTubes.Shapes.Force.HollowCylinderRadialFlux
        g_mb(
        final r_i=r_core,
        final r_o=r_core + l_air + l_PM,
        final dlBydx=-1,
        final l=t/2 - x,
        final mu_r=1.05,
        final useSupport=false);
      Modelica.Magnetic.FluxTubes.Shapes.Leakage.CoaxCylindersEndFaces
        g_mLeak1(
        final r_1=r_core + l_air + l_PM,
        final r_2=r_core + l_air + l_PM + l_FeOut,
        final r_0=r_core) 
        "Leakgage between coaxial end planes of ferromagnetic stator core and outer back iron";
      Modelica.Magnetic.FluxTubes.Shapes.Leakage.HalfCylinder g_mLeak2(
        final l=2*pi*(r_core + (l_air + l_PM)/2)) 
        "Leakgage between edges of ferromagnetic stator core and outer back iron";

      Modelica.Electrical.Analog.Interfaces.PositivePin p "Electrical connector";
      Modelica.Electrical.Analog.Interfaces.NegativePin n "Electrical connector";
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange 
        "Flange of component";
    equation 
      x = flange.s;
      L = coil.N^2 * (g_ma.G_m + g_mLeak1.G_m + g_mLeak2.G_m);

      connect(armature.flange_b, flange);
      connect(r.p, p);
      connect(armature.flange_a,g_mb. flange);
      connect(g_mb.flange,g_ma. flange);
      connect(g_mLeak1.port_n, g_ma.port_n);
      connect(g_mLeak2.port_n, g_ma.port_n);
      connect(g_ma.port_n, coil.port_p);
      connect(coil.port_n, g_mb.port_n);
      connect(g_mb.port_n, mmf_PM.port_p);
      connect(mmf_PM.port_p, g_mLeak2.port_p);
      connect(mmf_PM.port_p, g_mLeak1.port_p);
      connect(g_ma.port_p, mmf_PM.port_n);
      connect(mmf_PM.port_n, g_mb.port_p);
      connect(r.n, coil.p);
      connect(coil.n, n);
    connect(ground.port, g_mb.port_n);
    end PermeanceActuator;

* * * * *

![image7](Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components.ConstantActuatorI.png) [Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components](Modelica_Magnetic_FluxTubes_Examples_MovingCoilActuator_Components.html#Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components).ConstantActuator
=====================================================================================================================================================================================================================================================================================================================================

**Simple behavioural actuator model for system simulation**

Information
-----------

::

Similar to rotational DC-Motors, the electro-mechanical energy
conversion of translatory electrodynamic actuators and generators of
moving coil and moving magnet type can be described with the following
two converter equations:

    F = c * i

> V\_i = c \* v

with electrodynamic or *Lorentz* force F, converter constant c, current
i, induced back-emf V\_i and armature velocity v. The model is very
similar to the well-known behavioural model of a rotational one-phase
DC-Machine, except that it is for translatory motion. For a moving coil
actuator with a coil inside an air gap with flux density B and a total
wire length l inside the magnetic field, the converter constant becomes

    c = B * l.

The converter constant c as well as coil resistance R and inductance L
are assumed to be known, e.g., from measurements or catalogue data.
Hence this model is well-suited for system simulation together with
neighbouring subsystems, but not for actuator design, where the motor
constant is to be found on base of the magnetic circuit's geometry,
material properties and winding data. See
[PermeanceActuator](Modelica_Magnetic_FluxTubes_Examples_MovingCoilActuator_Components.html#Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.Components.PermeanceActuator)
for a more accurate model of this actuator that is based on a magnetic
network. Due to identical connectors, both models can be used in system
simulation, e.g. to simulate a stroke as demonstrated in
[ArmatureStroke](Modelica_Magnetic_FluxTubes_Examples_MovingCoilActuator.html#Modelica.Magnetic.FluxTubes.Examples.MovingCoilActuator.ArmatureStroke).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name Defa Description
                                                 ult  
  ----------------------------------------- ---- ---- ---------------------
  [ElectricalForceConstant](Modelica_SIunit k    3.88 Converter constant
  s.html#Modelica.SIunits.ElectricalForceCo           [N/A]
  nstant)                                             

  [Resistance](Modelica_SIunits.html#Modeli R    2.86 Coil resistance [Ohm]
  ca.SIunits.Resistance)                              

  [Inductance](Modelica_SIunits.html#Modeli L    0.00 Coil inductance at
  ca.SIunits.Inductance)                         51   mid-stroke [H]

  Armature and stopper                                

  [Mass](Modelica_SIunits.html#Modelica.SIu m\_a 0.01 Armature mass [kg]
  nits.Mass)                                     2    

  [TranslationalSpringConstant](Modelica_SI c    1e11 Spring stiffness
  units.html#Modelica.SIunits.Translational           between impact
  SpringConstant)                                     partners [N/m]

  [TranslationalDampingConstant](Modelica_S d    400  Damping coefficient
  Iunits.html#Modelica.SIunits.Translationa           between impact
  lDampingConstant)                                   partners [N.s/m]

  [Position](Modelica_SIunits.html#Modelica x\_m -4e- Minimum armature
  .SIunits.Position)                        in   3    position [m]

  [Position](Modelica_SIunits.html#Modelica x\_m 4e-3 Maximum armature
  .SIunits.Position)                        ax        position [m]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name  Description
  ------------------------------------------------------- ----- -----------
  [PositivePin](Modelica_Electrical_Analog_Interfaces.htm p     Electrical
  l#Modelica.Electrical.Analog.Interfaces.PositivePin)          connector

  [NegativePin](Modelica_Electrical_Analog_Interfaces.htm n     Electrical
  l#Modelica.Electrical.Analog.Interfaces.NegativePin)          connector

  [Flange\_b](Modelica_Mechanics_Translational_Interfaces flang Flange of
  .html#Modelica.Mechanics.Translational.Interfaces.Flang e     component
  e_b)                                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantActuator 
      "Simple behavioural actuator model for system simulation"

      parameter SI.ElectricalForceConstant k = 3.88 "Converter constant";
      parameter SI.Resistance R = 2.86 "Coil resistance";
      parameter SI.Inductance L = 0.0051 "Coil inductance at mid-stroke";
      parameter SI.Mass m_a = 0.012 "Armature mass";
      parameter Modelica.SIunits.TranslationalSpringConstant c=
            1e11 "Spring stiffness between impact partners";
      parameter Modelica.SIunits.TranslationalDampingConstant d=
            400 "Damping coefficient between impact partners";
      parameter SI.Position x_min = -4e-3 "Minimum armature position";
      parameter SI.Position x_max = 4e-3 "Maximum armature position";

      SI.Position x(start=x_min, stateSelect=StateSelect.prefer) 
        "Armature position, alias for flange position";

      Modelica.Electrical.Analog.Basic.Resistor r(final R=R) "Coil resistance";
      Modelica.Magnetic.FluxTubes.Examples.Utilities.TranslatoryArmatureAndStopper
        armature(
        final m=m_a,
        final x_max=x_max,
        final x_min=x_min,
        final L=0,
        final c=c,
        final d=d,
        n=2) "Armature inertia with stoppers at end of stroke range";

      Modelica.Electrical.Analog.Basic.Inductor l(final L=L) "Coil inductance";
      Modelica.Electrical.Analog.Basic.TranslationalEMF
        electroTranslationalConverter( final k=k);
      Modelica.Electrical.Analog.Interfaces.PositivePin p "Electrical connector";
      Modelica.Electrical.Analog.Interfaces.NegativePin n "Electrical connector";
      Modelica.Mechanics.Translational.Interfaces.Flange_b flange 
        "Flange of component";
    equation 
      flange.s = x;

      connect(r.p, p);
      connect(l.p,r. n);
      connect(armature.flange_b, flange);
      connect(l.n, electroTranslationalConverter.p);
      connect(n, electroTranslationalConverter.n);
      connect(electroTranslationalConverter.flange, armature.flange_a);
    end ConstantActuator;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:49 2010.
