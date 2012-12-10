% Modelica.Fluid.Pipes.BaseClasses.WallFriction
% 
% 

[Modelica.Fluid.Pipes.BaseClasses](Modelica_Fluid_Pipes_BaseClasses.html#Modelica.Fluid.Pipes.BaseClasses).WallFriction
=======================================================================================================================

**Different variants for pressure drops due to pipe wall friction**

Information
-----------

::

This package provides functions to compute pressure losses due to **wall
friction** in a pipe. Every correlation is defined by a package that is
derived by inheritance from the package
WallFriction.PartialWallFriction. The details of the underlying pipe
wall friction model are described in the
[UsersGuide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.WallFriction).
Basically, different variants of the equation

    dp = λ(Re,D)*(L/D)*ρ*v*|v|/2

are used, where the friction loss factor λ is shown in the next figure:

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image7](Modelica.Fluid.Pipes.BaseClasses.WallFr Partial wall friction
  iction.PartialWallFrictionS.png)                  characteristic (base
  [PartialWallFriction](Modelica_Fluid_Pipes_BaseCl package of all wall
  asses_WallFriction_PartialWallFriction.html#Model friction
  ica.Fluid.Pipes.BaseClasses.WallFriction.PartialW characteristics)
  allFriction)                                      

  ![image8](Modelica.Fluid.Pipes.BaseClasses.WallFr No pipe wall friction,
  iction.PartialWallFrictionS.png)                  no static head
  [NoFriction](Modelica_Fluid_Pipes_BaseClasses_Wal 
  lFriction_NoFriction.html#Modelica.Fluid.Pipes.Ba 
  seClasses.WallFriction.NoFriction)                

  ![image9](Modelica.Fluid.Pipes.BaseClasses.WallFr Pipe wall friction in
  iction.PartialWallFrictionS.png)                  the laminar regime
  [Laminar](Modelica_Fluid_Pipes_BaseClasses_WallFr (linear correlation)
  iction_Laminar.html#Modelica.Fluid.Pipes.BaseClas 
  ses.WallFriction.Laminar)                         

  ![image10](Modelica.Fluid.Pipes.BaseClasses.WallF Pipe wall friction in
  riction.PartialWallFrictionS.png)                 the quadratic
  [QuadraticTurbulent](Modelica_Fluid_Pipes_BaseCla turbulent regime
  sses_WallFriction_QuadraticTurbulent.html#Modelic (simple
  a.Fluid.Pipes.BaseClasses.WallFriction.QuadraticT characteristic, mu not
  urbulent)                                         used)

  ![image11](Modelica.Fluid.Pipes.BaseClasses.WallF Pipe wall friction in
  riction.PartialWallFrictionS.png)                 the laminar and
  [LaminarAndQuadraticTurbulent](Modelica_Fluid_Pip quadratic turbulent
  es_BaseClasses_WallFriction_LaminarAndQuadraticTu regime (simple
  rbulent.html#Modelica.Fluid.Pipes.BaseClasses.Wal characteristic)
  lFriction.LaminarAndQuadraticTurbulent)           

  ![image12](Modelica.Fluid.Pipes.BaseClasses.WallF Pipe wall friction in
  riction.PartialWallFrictionS.png)                 the whole regime
  [Detailed](Modelica_Fluid_Pipes_BaseClasses_WallF (detailed
  riction_Detailed.html#Modelica.Fluid.Pipes.BaseCl characteristic)
  asses.WallFriction.Detailed)                      

  ![image13](Modelica.Fluid.Pipes.BaseClasses.WallF Pressure loss in pipe
  riction.TestWallFrictionAndGravityS.png)          due to wall friction
  [TestWallFrictionAndGravity](Modelica_Fluid_Pipes and gravity (only for
  _BaseClasses_WallFriction.html#Modelica.Fluid.Pip test purposes; if
  es.BaseClasses.WallFriction.TestWallFrictionAndGr needed use
  avity)                                            Pipes.StaticPipe
                                                    instead)
  ------------------------------------------------------------------------

* * * * *

![image14](Modelica.Fluid.Pipes.BaseClasses.WallFriction.TestWallFrictionAndGravityI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction).TestWallFrictionAndGravity
======================================================================================================================================================================================================================================================================

**Pressure loss in pipe due to wall friction and gravity (only for test
purposes; if needed use Pipes.StaticPipe instead)**

Information
-----------

::

This model describes pressure losses due to **wall friction** in a pipe
and due to gravity. It is assumed that no mass or energy is stored in
the pipe. Correlations of different complexity and validity can be
seleted via the replaceable package **WallFriction** (see parameter menu
below). The details of the pipe wall friction model are described in the
[UsersGuide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.WallFriction).
Basically, different variants of the equation

    dp = λ(Re,D)*(L/D)*ρ*v*|v|/2

are used, where the friction loss factor λ is shown in the next figure:

By default, the correlations are computed with media data at the actual
time instant. In order to reduce non-linear equation systems, parameter
**use\_nominal** provides the option to compute the correlations with
constant media values at the desired operating point. This might
speed-up the simulation and/or might give a more robust simulation.

::

Extends from
[Modelica.Fluid.Interfaces.PartialTwoPortTransport](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport)
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
----------

  --------------------------------------------------------------------------
  Type                     Name                 Default Description
  ------------------------ -------------------- ------- --------------------
  replaceable package      [PartialMedium](Mode Medium  
  Medium                   lica_Media_Interface in the  
                           s_PartialMedium.html compone 
                           #Modelica.Media.Inte nt      
                           rfaces.PartialMedium         
                           )                            

  [Length](Modelica_SIunit length                       Length of pipe [m]
  s.html#Modelica.SIunits.                              
  Length)                                               

  [Diameter](Modelica_SIun diameter                     Inner (hydraulic)
  its.html#Modelica.SIunit                              diameter of pipe [m]
  s.Diameter)                                           

  [Length](Modelica_SIunit height\_ab           0.0     Height(port\_b) -
  s.html#Modelica.SIunits.                              Height(port\_a) [m]
  Length)                                               

  [Length](Modelica_SIunit roughness            2.5e-5  Absolute roughness
  s.html#Modelica.SIunits.                              of pipe (default =
  Length)                                               smooth steel pipe)
                                                        [m]

  Boolean                  use\_nominal         false   = true, if
                                                        mu\_nominal and
                                                        rho\_nominal are
                                                        used, otherwise
                                                        computed from medium

  [DynamicViscosity](Model mu\_nominal          Medium. Nominal dynamic
  ica_SIunits.html#Modelic                      dynamic viscosity (e.g.,
  a.SIunits.DynamicViscosi                      Viscosi mu\_liquidWater =
  ty)                                           ty(Medi 1e-3, mu\_air =
                                                ...     1.8e-5) [Pa.s]

  [Density](Modelica_SIuni rho\_nominal         Medium. Nominal density
  ts.html#Modelica.SIunits                      density (e.g.,
  .Density)                                     \_pTX(M rho\_liquidWater =
                                                edium.p 995, rho\_air = 1.2)
                                                \_...   [kg/m3]

  **Assumptions**                                       

  Boolean                  allowFlowReversal    system. = true to allow flow
                                                allowFl reversal, false
                                                owRever restricts to design
                                                sal     direction (port\_a
                                                        -\> port\_b)

  **Advanced**                                          

  [AbsolutePressure](Model dp\_start            0.01\*s Guess value of dp =
  ica_Media_Interfaces_Par                      ystem.p port\_a.p -
  tialMedium.html#Modelica                      \_start port\_b.p [Pa]
  .Media.Interfaces.Partia                              
  lMedium.AbsolutePressure                              
  )                                                     

  [MassFlowRate](Modelica_ m\_flow\_start       system. Guess value of
  Media_Interfaces_Partial                      m\_flow m\_flow =
  Medium.html#Modelica.Med                      \_start port\_a.m\_flow
  ia.Interfaces.PartialMed                              [kg/s]
  ium.MassFlowRate)                                     

  [MassFlowRate](Modelica_ m\_flow\_small       system. Small mass flow rate
  Media_Interfaces_Partial                      m\_flow for regularization
  Medium.html#Modelica.Med                      \_small of zero flow [kg/s]
  ia.Interfaces.PartialMed                              
  ium.MassFlowRate)                                     

  Boolean                  show\_Re             false   = true, if Reynolds
                                                        number is included
                                                        for plotting

  Boolean                  from\_dp             true    = true, use m\_flow
                                                        = f(dp), otherwise
                                                        dp = f(m\_flow)

  [AbsolutePressure](Model dp\_small            system. Within
  ica_SIunits.html#Modelic                      dp\_sma regularization if
  a.SIunits.AbsolutePressu                      ll      |dp| < dp\_small
  re)                                                   (may be wider for
                                                        large
                                                        discontinuities in
                                                        static head) [Pa]

  Diagnostics                                           

  Boolean                  show\_T              true    = true, if
                                                        temperatures at
                                                        port\_a and port\_b
                                                        are computed

  Boolean                  show\_V\_flow        true    = true, if volume
                                                        flow rate at
                                                        inflowing port is
                                                        computed
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Inter port Fluid connector a (positive
  faces.html#Modelica.Fluid.Interface \_a  design flow direction is from
  s.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inter port Fluid connector b (positive
  faces.html#Modelica.Fluid.Interface \_b  design flow direction is from
  s.FluidPort_b)                           port\_a to port\_b)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model TestWallFrictionAndGravity 
      "Pressure loss in pipe due to wall friction and gravity (only for test purposes; if needed use Pipes.StaticPipe instead)"
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;

      replaceable package WallFriction =
        Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent
        constrainedby 
        Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction 
        "Characteristic of wall friction";

      parameter SI.Length length "Length of pipe";
      parameter SI.Diameter diameter "Inner (hydraulic) diameter of pipe";
      parameter SI.Length height_ab = 0.0 "Height(port_b) - Height(port_a)";
      parameter SI.Length roughness(min=0) = 2.5e-5 
        "Absolute roughness of pipe (default = smooth steel pipe)";

      parameter Boolean use_nominal = false 
        "= true, if mu_nominal and rho_nominal are used, otherwise computed from medium";
      parameter SI.DynamicViscosity mu_nominal = Medium.dynamicViscosity(
                                                     Medium.setState_pTX(
                                                         Medium.p_default, Medium.T_default, Medium.X_default)) 
        "Nominal dynamic viscosity (e.g., mu_liquidWater = 1e-3, mu_air = 1.8e-5)";
      parameter SI.Density rho_nominal = Medium.density_pTX(Medium.p_default, Medium.T_default, Medium.X_default) 
        "Nominal density (e.g., rho_liquidWater = 995, rho_air = 1.2)";

      parameter Boolean show_Re = false 
        "= true, if Reynolds number is included for plotting";
      parameter Boolean from_dp=true 
        " = true, use m_flow = f(dp), otherwise dp = f(m_flow)";
      parameter SI.AbsolutePressure dp_small = system.dp_small 
        "Within regularization if |dp| < dp_small (may be wider for large discontinuities in static head)";
      SI.ReynoldsNumber Re = Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber_m_flow(
                                                             m_flow, noEvent(if m_flow>0 then mu_a else mu_b), diameter) if 
           show_Re "Reynolds number of pipe flow";

    protected 
      SI.DynamicViscosity mu_a = if not WallFriction.use_mu then 1.e-10 else 
                                  (if use_nominal then mu_nominal else Medium.dynamicViscosity(state_a));
      SI.DynamicViscosity mu_b = if not WallFriction.use_mu then 1.e-10 else 
                                  (if use_nominal then mu_nominal else Medium.dynamicViscosity(state_b));
      SI.Density rho_a = if use_nominal then rho_nominal else Medium.density(state_a);
      SI.Density rho_b = if use_nominal then rho_nominal else Medium.density(state_b);

      Real g_times_height_ab(final unit="m2/s2") = system.g*height_ab 
        "Gravitiy times height_ab = dp_grav/d";

      // Currently not in use (means to widen the regularization domain in case of large difference in static head)
      final parameter Boolean use_x_small_staticHead = false 
        "Use dp_/m_flow_small_staticHead only if static head actually exists";
                                                             /*abs(height_ab)>0*/
      SI.AbsolutePressure dp_small_staticHead = noEvent(max(dp_small, 0.015*abs(g_times_height_ab*(rho_a-rho_b)))) 
        "Heuristic for large discontinuities in static head";
      SI.MassFlowRate m_flow_small_staticHead = noEvent(max(m_flow_small, (-5.55e-7*(rho_a+rho_b)/2+5.5e-4)*abs(g_times_height_ab*(rho_a-rho_b)))) 
        "Heuristic for large discontinuities in static head";

    equation 
      if from_dp and not WallFriction.dp_is_zero then
        m_flow = WallFriction.massFlowRate_dp_staticHead(dp, rho_a, rho_b, mu_a, mu_b, length, diameter,
          g_times_height_ab, roughness, if use_x_small_staticHead then dp_small_staticHead else dp_small);
      else
        dp = WallFriction.pressureLoss_m_flow_staticHead(m_flow, rho_a, rho_b, mu_a, mu_b, length, diameter,
          g_times_height_ab, roughness, if use_x_small_staticHead then m_flow_small_staticHead else m_flow_small);
      end if;

      // Energy balance, considering change of potential energy
      port_a.h_outflow = inStream(port_b.h_outflow) + system.g*height_ab;
      port_b.h_outflow = inStream(port_a.h_outflow) - system.g*height_ab;

    end TestWallFrictionAndGravity;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:14 2010.
