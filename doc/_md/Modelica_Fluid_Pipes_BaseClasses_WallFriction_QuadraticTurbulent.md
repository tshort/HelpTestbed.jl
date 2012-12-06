% Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent
% 
% 

[Modelica.Fluid.Pipes.BaseClasses.WallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction).QuadraticTurbulent
====================================================================================================================================================================

**Pipe wall friction in the quadratic turbulent regime (simple
characteristic, mu not used)**

Information
-----------

::

This component defines only the quadratic turbulent regime of wall
friction: dp = k\*m\_flow\*|m\_flow|, where "k" depends on density and
the roughness of the pipe and is no longer a function of the Reynolds
number. This relationship is only valid for large Reynolds numbers.

In
[UsersGuide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.WallFriction)
the complete friction regime is illustrated. This component describes
only the asymptotic behaviour for large Reynolds numbers, i.e., the
values at the right ordinate where λ is constant.

::

Extends from
[PartialWallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction)
(Partial wall friction characteristic (base package of all wall friction
characteristics)).

Package Content
---------------

Name

Description

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate\_dp](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[massFlowRate\_dp](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate_dp)

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.pressureLoss\_m\_flow](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[pressureLoss\_m\_flow](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.pressureLoss_m_flow)

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate\_dp\_staticHead](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[massFlowRate\_dp\_staticHead](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate_dp_staticHead)

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.pressureLoss\_m\_flow\_staticHead](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png)
[pressureLoss\_m\_flow\_staticHead](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.pressureLoss_m_flow_staticHead)

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction and static head

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

![image4](Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent).massFlowRate\_dp
============================================================================================================================================================================================================================================================================================================================

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
      constant Real pi = Modelica.Constants.pi;
      Real zeta;
      Real k_inv;
    algorithm 
      /*
       dp = 0.5*zeta*d*v*|v|
          = 0.5*zeta*d*1/(d*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/d * m_flow * |m_flow|
          = k/d * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      assert(roughness > 1.e-10,
             "roughness > 0 required for quadratic turbulent wall friction characteristic");
      zeta  := (length/diameter)/(2*Math.log10(3.7 /(roughness/diameter)))^2;
      k_inv := (pi*diameter*diameter)^2/(8*zeta);
      m_flow := Modelica.Fluid.Utilities.regRoot2(dp, dp_small, rho_a*k_inv, rho_b*k_inv);
    end massFlowRate_dp;

* * * * *

![image5](Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent).pressureLoss\_m\_flow
=================================================================================================================================================================================================================================================================================================================================

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
      constant Real pi = Modelica.Constants.pi;
      Real zeta;
      Real k;
    algorithm 
      /*
       dp = 0.5*zeta*d*v*|v|
          = 0.5*zeta*d*1/(d*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/d * m_flow * |m_flow|
          = k/d * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      assert(roughness > 1.e-10,
             "roughness > 0 required for quadratic turbulent wall friction characteristic");
      zeta := (length/diameter)/(2*Math.log10(3.7 /(roughness/diameter)))^2;
      k    := 8*zeta/(pi*diameter*diameter)^2;
      dp   := Modelica.Fluid.Utilities.regSquare2(m_flow, m_flow_small, k/rho_a, k/rho_b);
    end pressureLoss_m_flow;

* * * * *

![image6](Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent).massFlowRate\_dp\_staticHead
========================================================================================================================================================================================================================================================================================================================================

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
      constant Real pi = Modelica.Constants.pi;
      Real zeta = (length/diameter)/(2*Math.log10(3.7 /(roughness/diameter)))^2;
      Real k_inv = (pi*diameter*diameter)^2/(8*zeta);

      SI.Pressure dp_grav_a = g_times_height_ab*rho_a 
        "Static head if mass flows in design direction (a to b)";
      SI.Pressure dp_grav_b = g_times_height_ab*rho_b 
        "Static head if mass flows against design direction (b to a)";

      Real k1 = rho_a*k_inv "Factor in m_flow =  sqrt(k1*(dp-dp_grav_a))";
      Real k2 = rho_b*k_inv "Factor in m_flow = -sqrt(k2*|dp-dp_grav_b|)";

      Real dp_a=max(dp_grav_a,dp_grav_b)+dp_small 
        "Upper end of regularization domain of the m_flow(dp) relation";
      Real dp_b=min(dp_grav_a,dp_grav_b)-dp_small 
        "Lower end of regularization domain of the m_flow(dp) relation";

      SI.MassFlowRate m_flow_a "Value at upper end of regularization domain";
      SI.MassFlowRate m_flow_b "Value at lower end of regularization domain";

      SI.MassFlowRate dm_flow_ddp_fric_a 
        "Derivative at upper end of regularization domain";
      SI.MassFlowRate dm_flow_ddp_fric_b 
        "Derivative at lower end of regularization domain";

      // Properly define zero mass flow conditions
      SI.MassFlowRate m_flow_zero = 0;
      SI.Pressure dp_zero = (dp_grav_a + dp_grav_b)/2;
      Real dm_flow_ddp_fric_zero;
    algorithm 
      /*
       dp = 0.5*zeta*d*v*|v|
          = 0.5*zeta*d*1/(d*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/d * m_flow * |m_flow|
          = k/d * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      assert(roughness > 1.e-10,
             "roughness > 0 required for quadratic turbulent wall friction characteristic");

      if dp>=dp_a then
        // Positive flow outside regularization
        m_flow := sqrt(k1*(dp-dp_grav_a));
      elseif dp<=dp_b then
        // Negative flow outside regularization
        m_flow := -sqrt(k2*abs(dp-dp_grav_b));
      else
        m_flow_a := sqrt(k1*(dp_a - dp_grav_a));
        m_flow_b := -sqrt(k2*abs(dp_b - dp_grav_b));

        dm_flow_ddp_fric_a := k1/(2*sqrt(k1*(dp_a - dp_grav_a)));
        dm_flow_ddp_fric_b := k2/(2*sqrt(k2*abs(dp_b - dp_grav_b)));
    /*  dm_flow_ddp_fric_a := if abs(dp_a - dp_grav_a)>0 then k1/(2*sqrt(k1*(dp_a - dp_grav_a))) else  Modelica.Constants.inf);
        dm_flow_ddp_fric_b := if abs(dp_b - dp_grav_b)>0 then k2/(2*sqrt(k2*abs(dp_b - dp_grav_b))) else Modelica.Constants.inf; */

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

![image7](Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent](Modelica_Fluid_Pipes_BaseClasses_WallFriction_QuadraticTurbulent.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.QuadraticTurbulent).pressureLoss\_m\_flow\_staticHead
=============================================================================================================================================================================================================================================================================================================================================

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
      constant Real pi = Modelica.Constants.pi;
      Real zeta = (length/diameter)/(2*Math.log10(3.7 /(roughness/diameter)))^2;
      Real k = 8*zeta/(pi*diameter*diameter)^2;

      SI.Pressure dp_grav_a = g_times_height_ab*rho_a 
        "Static head if mass flows in design direction (a to b)";
      SI.Pressure dp_grav_b = g_times_height_ab*rho_b 
        "Static head if mass flows against design direction (b to a)";

      Real k1 = k/rho_a "If m_flow >= 0 then dp = k1*m_flow^2 + dp_grav_a";
      Real k2 = k/rho_b "If m_flow < 0 then dp = -k2*m_flow^2 + dp_grav_b";

      Real m_flow_a=if dp_grav_a >= dp_grav_b then m_flow_small else m_flow_small + sqrt((dp_grav_b - dp_grav_a)/k1) 
        "Upper end of regularization domain of the dp(m_flow) relation";
      Real m_flow_b=if dp_grav_a >= dp_grav_b then -m_flow_small else -m_flow_small - sqrt((dp_grav_b - dp_grav_a)/k2) 
        "Lower end of regularization domain of the dp(m_flow) relation";

      SI.Pressure dp_a "Value at upper end of regularization domain";
      SI.Pressure dp_b "Value at lower end of regularization domain";

      Real ddp_dm_flow_a 
        "Derivative of pressure drop with mass flow rate at m_flow_a";
      Real ddp_dm_flow_b 
        "Derivative of pressure drop with mass flow rate at m_flow_b";

      // Properly define zero mass flow conditions
      SI.MassFlowRate m_flow_zero = 0;
      SI.Pressure dp_zero = (dp_grav_a + dp_grav_b)/2;
      Real ddp_dm_flow_zero;

    algorithm 
      /*
       dp = 0.5*zeta*d*v*|v|
          = 0.5*zeta*d*1/(d*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/d * m_flow * |m_flow|
          = k/d * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      assert(roughness > 1.e-10,
             "roughness > 0 required for quadratic turbulent wall friction characteristic");

      if m_flow>=m_flow_a then
        // Positive flow outside regularization
        dp := (k1*m_flow^2 + dp_grav_a);
      elseif m_flow<=m_flow_b then
        // Negative flow outside regularization
        dp := (-k2*m_flow^2 + dp_grav_b);
      else
        // Regularization parameters
        dp_a := k1*m_flow_a^2 + dp_grav_a;
        ddp_dm_flow_a := 2*k1*m_flow_a;
        dp_b := -k2*m_flow_b^2 + dp_grav_b;
        ddp_dm_flow_b := -2*k2*m_flow_b;
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
