% Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent
% 
% 

[Modelica.Fluid.Pipes.BaseClasses.WallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction).LaminarAndQuadraticTurbulent
==============================================================================================================================================================================

**Pipe wall friction in the laminar and quadratic turbulent regime
(simple characteristic)**

Information
-----------

::

This component defines the quadratic turbulent regime of wall friction:
dp = k\*m\_flow\*|m\_flow|, where "k" depends on density and the
roughness of the pipe and is no longer a function of the Reynolds
number. This relationship is only valid for large Reynolds numbers. At
Re=4000, a polynomial is constructed that approaches the constant λ (for
large Reynolds-numbers) at Re=4000 smoothly and has a derivative at zero
mass flow rate that is identical to laminar wall friction.

::

Extends from
[PartialWallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction)
(Partial wall friction characteristic (base package of all wall friction
characteristics)).

Package Content
---------------

Name

Description

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate\_dp](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[massFlowRate\_dp](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate_dp)

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.pressureLoss\_m\_flow](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[pressureLoss\_m\_flow](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.pressureLoss_m_flow)

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate\_dp\_staticHead](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[massFlowRate\_dp\_staticHead](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate_dp_staticHead)

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.pressureLoss\_m\_flow\_staticHead](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[pressureLoss\_m\_flow\_staticHead](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.pressureLoss_m_flow_staticHead)

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction and static head

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.Internal](Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.InternalS.png)
[Internal](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.Internal)

Functions to calculate mass flow rate from friction pressure drop and
vice versa

Inherited

use\_mu=true

= true, if mu\_a/mu\_b are used in function, otherwise value is not used

use\_roughness=true

= true, if roughness is used in function, otherwise value is not used

use\_dp\_small=true

= true, if dp\_small is used in function, otherwise value is not used

use\_m\_flow\_small=true

= true, if m\_flow\_small is used in function, otherwise value is not
used

dp\_is\_zero=false

= true, if no wall friction is present, i.e., dp = 0 (function
massFlowRate\_dp() cannot be used)

* * * * *

![image5](Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent).massFlowRate\_dp
====================================================================================================================================================================================================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction**

Information
-----------

::

::

Extends from
[](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dp)
(Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction).

Inputs
------

  -------------------------------------------------------------------------
  Type                        Name Def Description
                                   aul 
                                   t   
  --------------------------- ---- --- ------------------------------------
  [Pressure](Modelica_SIunits dp       Pressure loss (dp = port\_a.p -
  .html#Modelica.SIunits.Pres          port\_b.p) [Pa]
  sure)                                

  [Density](Modelica_SIunits. rho\     Density at port\_a [kg/m3]
  html#Modelica.SIunits.Densi _a       
  ty)                                  

  [Density](Modelica_SIunits. rho\     Density at port\_b [kg/m3]
  html#Modelica.SIunits.Densi _b       
  ty)                                  

  [DynamicViscosity](Modelica mu\_     Dynamic viscosity at port\_a (dummy
  _SIunits.html#Modelica.SIun a        if use\_mu = false) [Pa.s]
  its.DynamicViscosity)                

  [DynamicViscosity](Modelica mu\_     Dynamic viscosity at port\_b (dummy
  _SIunits.html#Modelica.SIun b        if use\_mu = false) [Pa.s]
  its.DynamicViscosity)                

  [Length](Modelica_SIunits.h leng     Length of pipe [m]
  tml#Modelica.SIunits.Length th       
  )                                    

  [Diameter](Modelica_SIunits diam     Inner (hydraulic) diameter of pipe
  .html#Modelica.SIunits.Diam eter     [m]
  eter)                                

  [Length](Modelica_SIunits.h roug 2.5 Absolute roughness of pipe, with a
  tml#Modelica.SIunits.Length hnes e-5 default for a smooth steel pipe
  )                           s        (dummy if use\_roughness = false)
                                       [m]

  [AbsolutePressure](Modelica dp\_ 1   Turbulent flow if |dp| \>= dp\_small
  _SIunits.html#Modelica.SIun smal     (dummy if use\_dp\_small = false)
  its.AbsolutePressure)       l        [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [MassFlowRate](Modelica_SIunits.html#Mo m\_flo Mass flow rate from
  delica.SIunits.MassFlowRate)            w      port\_a to port\_b [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends massFlowRate_dp 
      "Return mass flow rate m_flow as function of pressure loss dp, i.e., m_flow = f(dp), due to wall friction"
      import Modelica.Math;
    protected 
      constant Real pi=Modelica.Constants.pi;
      constant Real Re_turbulent = 4000 "Start of turbulent regime";
      Real zeta;
      Real k0;
      Real k_inv;
      Real yd0 "Derivative of m_flow=m_flow(dp) at zero";
      SI.AbsolutePressure dp_turbulent;
    algorithm 
    /*
    Turbulent region:
       Re = m_flow*(4/pi)/(D_Re*mu)
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
       m_flow_turbulent = (pi/4)*D_Re*mu*Re_turbulent
       dp_turbulent     =  k/rho *(D_Re*mu*pi/4)^2 * Re_turbulent^2

       The start of the turbulent region is computed with mean values
       of dynamic viscosity mu and density rho. Otherwise, one has
       to introduce different "delta" values for both flow directions.
       In order to simplify the approach, only one delta is used.

    Laminar region:
       dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
          = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
          = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
          = 2*c0/(pi*D_Re^3) * mu/rho * m_flow
          = k0 * mu/rho * m_flow
       k0 = 2*c0/(pi*D_Re^3)

       In order that the derivative of dp=f(m_flow) is continuous
       at m_flow=0, the mean values of mu and d are used in the
       laminar region: mu/rho = (mu_a + mu_b)/(rho_a + rho_b)
       If data.zetaLaminarKnown = false then mu_a and mu_b are potentially zero
       (because dummy values) and therefore the division is only performed
       if zetaLaminarKnown = true.
    */
      assert(roughness > 1.e-10,
             "roughness > 0 required for quadratic turbulent wall friction characteristic");
      zeta   := (length/diameter)/(2*Math.log10(3.7 /(roughness/diameter)))^2;
      k0     := 128*length/(pi*diameter^4);
      k_inv  := (pi*diameter*diameter)^2/(8*zeta);
      yd0    := (rho_a + rho_b)/(k0*(mu_a + mu_b));
      dp_turbulent := ((mu_a + mu_b)*diameter*pi/8)^2*Re_turbulent^2/(k_inv*(rho_a+rho_b)/2);
      m_flow := Modelica.Fluid.Utilities.regRoot2(dp, dp_turbulent, rho_a*k_inv, rho_b*k_inv,
                                                  use_yd0=true, yd0=yd0);
    end massFlowRate_dp;

* * * * *

![image6](Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent).pressureLoss\_m\_flow
=========================================================================================================================================================================================================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction**

Information
-----------

::

::

Extends from
[](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss_m_flow)
(Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction).

Inputs
------

  -------------------------------------------------------------------------
  Type                       Name   Def Description
                                    aul 
                                    t   
  -------------------------- ------ --- -----------------------------------
  [MassFlowRate](Modelica_SI m\_flo     Mass flow rate from port\_a to
  units.html#Modelica.SIunit w          port\_b [kg/s]
  s.MassFlowRate)                       

  [Density](Modelica_SIunits rho\_a     Density at port\_a [kg/m3]
  .html#Modelica.SIunits.Den            
  sity)                                 

  [Density](Modelica_SIunits rho\_b     Density at port\_b [kg/m3]
  .html#Modelica.SIunits.Den            
  sity)                                 

  [DynamicViscosity](Modelic mu\_a      Dynamic viscosity at port\_a (dummy
  a_SIunits.html#Modelica.SI            if use\_mu = false) [Pa.s]
  units.DynamicViscosity)               

  [DynamicViscosity](Modelic mu\_b      Dynamic viscosity at port\_b (dummy
  a_SIunits.html#Modelica.SI            if use\_mu = false) [Pa.s]
  units.DynamicViscosity)               

  [Length](Modelica_SIunits. length     Length of pipe [m]
  html#Modelica.SIunits.Leng            
  th)                                   

  [Diameter](Modelica_SIunit diamet     Inner (hydraulic) diameter of pipe
  s.html#Modelica.SIunits.Di er         [m]
  ameter)                               

  [Length](Modelica_SIunits. roughn 2.5 Absolute roughness of pipe, with a
  html#Modelica.SIunits.Leng ess    e-5 default for a smooth steel pipe
  th)                                   (dummy if use\_roughness = false)
                                        [m]

  [MassFlowRate](Modelica_SI m\_flo 0.0 Turbulent flow if |m\_flow| \>=
  units.html#Modelica.SIunit w\_sma 1   m\_flow\_small (dummy if
  s.MassFlowRate)            ll         use\_m\_flow\_small = false) [kg/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Pressure](Modelica_SIunits.html#Mode dp    Pressure loss (dp = port\_a.p
  lica.SIunits.Pressure)                      - port\_b.p) [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends pressureLoss_m_flow 
      "Return pressure loss dp as function of mass flow rate m_flow, i.e., dp = f(m_flow), due to wall friction"
      import Modelica.Math;

    protected 
      constant Real pi=Modelica.Constants.pi;
      constant Real Re_turbulent = 4000 "Start of turbulent regime";
      Real zeta;
      Real k0;
      Real k;
      Real yd0 "Derivative of dp = f(m_flow) at zero";
      SI.MassFlowRate m_flow_turbulent 
        "The turbulent region is: |m_flow| >= m_flow_turbulent";

    algorithm 
    /*
    Turbulent region:
       Re = m_flow*(4/pi)/(D_Re*mu)
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
       m_flow_turbulent = (pi/4)*D_Re*mu*Re_turbulent
       dp_turbulent     =  k/rho *(D_Re*mu*pi/4)^2 * Re_turbulent^2

       The start of the turbulent region is computed with mean values
       of dynamic viscosity mu and density rho. Otherwise, one has
       to introduce different "delta" values for both flow directions.
       In order to simplify the approach, only one delta is used.

    Laminar region:
       dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
          = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
          = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
          = 2*c0/(pi*D_Re^3) * mu/rho * m_flow
          = k0 * mu/rho * m_flow
       k0 = 2*c0/(pi*D_Re^3)

       In order that the derivative of dp=f(m_flow) is continuous
       at m_flow=0, the mean values of mu and d are used in the
       laminar region: mu/rho = (mu_a + mu_b)/(rho_a + rho_b)
    */
      assert(roughness > 1.e-10,
             "roughness > 0 required for quadratic turbulent wall friction characteristic");
      zeta := (length/diameter)/(2*Math.log10(3.7 /(roughness/diameter)))^2;
      k0   := 128*length/(pi*diameter^4);
      k    := 8*zeta/(pi*diameter*diameter)^2;
      yd0  := k0*(mu_a + mu_b)/(rho_a + rho_b);
      m_flow_turbulent :=(pi/8)*diameter*(mu_a + mu_b)*Re_turbulent;
      dp :=Modelica.Fluid.Utilities.regSquare2(m_flow, m_flow_turbulent, k/rho_a, k/rho_b,
                                               use_yd0=true, yd0=yd0);
    end pressureLoss_m_flow;

* * * * *

![image7](Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent).massFlowRate\_dp\_staticHead
================================================================================================================================================================================================================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head**

Information
-----------

::

::

Extends from
[](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dp_staticHead)
(Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head).

Inputs
------

  ------------------------------------------------------------------------
  Type                      Name    Def Description
                                    aul 
                                    t   
  ------------------------- ------- --- ----------------------------------
  [Pressure](Modelica_SIuni dp          Pressure loss (dp = port\_a.p -
  ts.html#Modelica.SIunits.             port\_b.p) [Pa]
  Pressure)                             

  [Density](Modelica_SIunit rho\_a      Density at port\_a [kg/m3]
  s.html#Modelica.SIunits.D             
  ensity)                               

  [Density](Modelica_SIunit rho\_b      Density at port\_b [kg/m3]
  s.html#Modelica.SIunits.D             
  ensity)                               

  [DynamicViscosity](Modeli mu\_a       Dynamic viscosity at port\_a
  ca_SIunits.html#Modelica.             (dummy if use\_mu = false) [Pa.s]
  SIunits.DynamicViscosity)             

  [DynamicViscosity](Modeli mu\_b       Dynamic viscosity at port\_b
  ca_SIunits.html#Modelica.             (dummy if use\_mu = false) [Pa.s]
  SIunits.DynamicViscosity)             

  [Length](Modelica_SIunits length      Length of pipe [m]
  .html#Modelica.SIunits.Le             
  ngth)                                 

  [Diameter](Modelica_SIuni diamete     Inner (hydraulic) diameter of pipe
  ts.html#Modelica.SIunits. r           [m]
  Diameter)                             

  Real                      g\_time     Gravity times (Height(port\_b) -
                            s\_heig     Height(port\_a))
                            ht\_ab      

  [Length](Modelica_SIunits roughne 2.5 Absolute roughness of pipe, with a
  .html#Modelica.SIunits.Le ss      e-5 default for a smooth steel pipe
  ngth)                                 (dummy if use\_roughness = false)
                                        [m]

  [AbsolutePressure](Modeli dp\_sma 1   Turbulent flow if |dp| \>=
  ca_SIunits.html#Modelica. ll          dp\_small (dummy if use\_dp\_small
  SIunits.AbsolutePressure)             = false) [Pa]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [MassFlowRate](Modelica_SIunits.html#Mo m\_flo Mass flow rate from
  delica.SIunits.MassFlowRate)            w      port\_a to port\_b [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends massFlowRate_dp_staticHead 
      "Return mass flow rate m_flow as function of pressure loss dp, i.e., m_flow = f(dp), due to wall friction and static head"
      import Modelica.Math;

    protected 
      Real Delta = roughness/diameter "Relative roughness";
      SI.ReynoldsNumber Re1 = 745*exp(if Delta <= 0.0065 then 1 else 0.0065/Delta) 
        "Boundary between laminar regime and transition";
      constant SI.ReynoldsNumber Re2 = 4000 
        "Boundary between transition and turbulent regime";

      SI.Pressure dp_a 
        "Upper end of regularization domain of the m_flow(dp) relation";
      SI.Pressure dp_b 
        "Lower end of regularization domain of the m_flow(dp) relation";

      SI.MassFlowRate m_flow_a "Value at upper end of regularization domain";
      SI.MassFlowRate m_flow_b "Value at lower end of regularization domain";

      SI.MassFlowRate dm_flow_ddp_fric_a 
        "Derivative at upper end of regularization domain";
      SI.MassFlowRate dm_flow_ddp_fric_b 
        "Derivative at lower end of regularization domain";

      SI.Pressure dp_grav_a = g_times_height_ab*rho_a 
        "Static head if mass flows in design direction (a to b)";
      SI.Pressure dp_grav_b = g_times_height_ab*rho_b 
        "Static head if mass flows against design direction (b to a)";

      // Properly define zero mass flow conditions
      SI.MassFlowRate m_flow_zero = 0;
      SI.Pressure dp_zero = (dp_grav_a + dp_grav_b)/2;
      Real dm_flow_ddp_fric_zero;
    algorithm 
      assert(roughness > 1.e-10,
        "roughness > 0 required for quadratic turbulent wall friction characteristic");

      dp_a := max(dp_grav_a, dp_grav_b)+dp_small;
      dp_b := min(dp_grav_a, dp_grav_b)-dp_small;

      if dp>=dp_a then
        // Positive flow outside regularization
        m_flow := Internal.m_flow_of_dp_fric(dp - dp_grav_a, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta);
      elseif dp<=dp_b then
        // Negative flow outside regularization
        m_flow := Internal.m_flow_of_dp_fric(dp-dp_grav_b, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta);
      else
        // Regularization parameters
        (m_flow_a, dm_flow_ddp_fric_a) := Internal.m_flow_of_dp_fric(dp_a-dp_grav_a, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta);
        (m_flow_b, dm_flow_ddp_fric_b) := Internal.m_flow_of_dp_fric(dp_b-dp_grav_b, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta);
        // Include a properly defined zero mass flow point
        // Obtain a suitable slope from the linear section slope c (value of m_flow is overwritten later)
        (m_flow, dm_flow_ddp_fric_zero) := Utilities.regFun3(dp_zero, dp_b, dp_a, m_flow_b, m_flow_a, dm_flow_ddp_fric_b, dm_flow_ddp_fric_a);
        // Do regularization
        if dp>dp_zero then
          m_flow := Utilities.regFun3(dp, dp_zero, dp_a, m_flow_zero, m_flow_a, dm_flow_ddp_fric_zero, dm_flow_ddp_fric_a);
        else
          m_flow := Utilities.regFun3(dp, dp_b, dp_zero, m_flow_b, m_flow_zero, dm_flow_ddp_fric_b, dm_flow_ddp_fric_zero);
        end if;
      end if;
    end massFlowRate_dp_staticHead;

* * * * *

![image8](Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_LaminarAndQuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.LaminarAndQuadraticTurbulent).pressureLoss\_m\_flow\_staticHead
=====================================================================================================================================================================================================================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction and static head**

Information
-----------

::

::

Extends from
[](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss_m_flow_staticHead)
(Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction and static head).

Inputs
------

  ------------------------------------------------------------------------
  Type                      Name    Def Description
                                    aul 
                                    t   
  ------------------------- ------- --- ----------------------------------
  [MassFlowRate](Modelica_S m\_flow     Mass flow rate from port\_a to
  Iunits.html#Modelica.SIun             port\_b [kg/s]
  its.MassFlowRate)                     

  [Density](Modelica_SIunit rho\_a      Density at port\_a [kg/m3]
  s.html#Modelica.SIunits.D             
  ensity)                               

  [Density](Modelica_SIunit rho\_b      Density at port\_b [kg/m3]
  s.html#Modelica.SIunits.D             
  ensity)                               

  [DynamicViscosity](Modeli mu\_a       Dynamic viscosity at port\_a
  ca_SIunits.html#Modelica.             (dummy if use\_mu = false) [Pa.s]
  SIunits.DynamicViscosity)             

  [DynamicViscosity](Modeli mu\_b       Dynamic viscosity at port\_b
  ca_SIunits.html#Modelica.             (dummy if use\_mu = false) [Pa.s]
  SIunits.DynamicViscosity)             

  [Length](Modelica_SIunits length      Length of pipe [m]
  .html#Modelica.SIunits.Le             
  ngth)                                 

  [Diameter](Modelica_SIuni diamete     Inner (hydraulic) diameter of pipe
  ts.html#Modelica.SIunits. r           [m]
  Diameter)                             

  Real                      g\_time     Gravity times (Height(port\_b) -
                            s\_heig     Height(port\_a))
                            ht\_ab      

  [Length](Modelica_SIunits roughne 2.5 Absolute roughness of pipe, with a
  .html#Modelica.SIunits.Le ss      e-5 default for a smooth steel pipe
  ngth)                                 (dummy if use\_roughness = false)
                                        [m]

  [MassFlowRate](Modelica_S m\_flow 0.0 Turbulent flow if |m\_flow| \>=
  Iunits.html#Modelica.SIun \_small 1   m\_flow\_small (dummy if
  its.MassFlowRate)                     use\_m\_flow\_small = false)
                                        [kg/s]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Pressure](Modelica_SIunits.html#Mode dp    Pressure loss (dp = port\_a.p
  lica.SIunits.Pressure)                      - port\_b.p) [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    redeclare function extends pressureLoss_m_flow_staticHead 
      "Return pressure loss dp as function of mass flow rate m_flow, i.e., dp = f(m_flow), due to wall friction and static head"
      import Modelica.Math;

    protected 
      Real Delta = roughness/diameter "Relative roughness";
      SI.ReynoldsNumber Re1 = 745*exp(if Delta <= 0.0065 then 1 else 0.0065/Delta) 
        "Boundary between laminar regime and transition";
      constant SI.ReynoldsNumber Re2 = 4000 
        "Boundary between transition and turbulent regime";

      SI.MassFlowRate m_flow_a 
        "Upper end of regularization domain of the dp(m_flow) relation";
      SI.MassFlowRate m_flow_b 
        "Lower end of regularization domain of the dp(m_flow) relation";

      SI.Pressure dp_a "Value at upper end of regularization domain";
      SI.Pressure dp_b "Value at lower end of regularization domain";

      SI.Pressure dp_grav_a = g_times_height_ab*rho_a 
        "Static head if mass flows in design direction (a to b)";
      SI.Pressure dp_grav_b = g_times_height_ab*rho_b 
        "Static head if mass flows against design direction (b to a)";

      Real ddp_dm_flow_a 
        "Derivative of pressure drop with mass flow rate at m_flow_a";
      Real ddp_dm_flow_b 
        "Derivative of pressure drop with mass flow rate at m_flow_b";

      // Properly define zero mass flow conditions
      SI.MassFlowRate m_flow_zero = 0;
      SI.Pressure dp_zero = (dp_grav_a + dp_grav_b)/2;
      Real ddp_dm_flow_zero;

    algorithm 
      assert(roughness > 1.e-10,
        "roughness > 0 required for quadratic turbulent wall friction characteristic");

      m_flow_a := if dp_grav_a<dp_grav_b then 
        Internal.m_flow_of_dp_fric(dp_grav_b - dp_grav_a, rho_a, rho_b, mu_a, mu_b, length, diameter,  Re1, Re2, Delta)+m_flow_small else 
        m_flow_small;
      m_flow_b := if dp_grav_a<dp_grav_b then 
        Internal.m_flow_of_dp_fric(dp_grav_a - dp_grav_b, rho_a, rho_b, mu_a, mu_b, length, diameter,  Re1, Re2, Delta)-m_flow_small else 
        -m_flow_small;

      if m_flow>=m_flow_a then
        // Positive flow outside regularization
        dp := Internal.dp_fric_of_m_flow(m_flow, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta) + dp_grav_a;
      elseif m_flow<=m_flow_b then
        // Negative flow outside regularization
        dp := Internal.dp_fric_of_m_flow(m_flow, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta) + dp_grav_b;
      else
        // Regularization parameters
        (dp_a, ddp_dm_flow_a) := Internal.dp_fric_of_m_flow(m_flow_a, rho_a, rho_b, mu_a, mu_b, length, diameter,  Re1, Re2, Delta);
        dp_a := dp_a + dp_grav_a "Adding dp_grav to dp_fric to get dp";
        (dp_b, ddp_dm_flow_b) := Internal.dp_fric_of_m_flow(m_flow_b, rho_a, rho_b, mu_a, mu_b, length, diameter,  Re1, Re2, Delta);
        dp_b := dp_b + dp_grav_b "Adding dp_grav to dp_fric to get dp";
        // Include a properly defined zero mass flow point
        // Obtain a suitable slope from the linear section slope c (value of dp is overwritten later)
        (dp, ddp_dm_flow_zero) := Utilities.regFun3(m_flow_zero, m_flow_b, m_flow_a, dp_b, dp_a, ddp_dm_flow_b, ddp_dm_flow_a);
        // Do regularization
        if m_flow>m_flow_zero then
          dp := Utilities.regFun3(m_flow, m_flow_zero, m_flow_a, dp_zero, dp_a, ddp_dm_flow_zero, ddp_dm_flow_a);
        else
          dp := Utilities.regFun3(m_flow, m_flow_b, m_flow_zero, dp_b, dp_zero, ddp_dm_flow_b, ddp_dm_flow_zero);
        end if;
      end if;
    end pressureLoss_m_flow_staticHead;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:15 2010.
