% Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed
% 
% 

[Modelica.Fluid.Pipes.BaseClasses.WallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction).Detailed
==========================================================================================================================================================

**Pipe wall friction in the whole regime (detailed characteristic)**

Information
-----------

::

This component defines the complete regime of wall friction. The details
are described in the
[UsersGuide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.WallFriction).
The functional relationship of the friction loss factor λ is displayed
in the next figure. Function massFlowRate\_dp() defines the "red curve"
("Swamee and Jain"), where as function pressureLoss\_m\_flow() defines
the "blue curve" ("Colebrook-White"). The two functions are inverses
from each other and give slightly different results in the transition
region between Re = 1500 .. 4000, in order to get explicit equations
without solving a non-linear equation.

Additionally to wall friction, this component properly implements static
head. With respect to the latter, two cases can be distinguished. In the
case shown next, the change of elevation with the path from a to b has
the opposite sign of the change of density.

In the case illustrated second, the change of elevation with the path
from a to b has the same sign of the change of density.

::

Extends from
[PartialWallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction)
(Partial wall friction characteristic (base package of all wall friction
characteristics)).

Package Content
---------------

Name

Description

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate\_dp](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpS.png)
[massFlowRate\_dp](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dp)

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.pressureLoss\_m\_flow](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpS.png)
[pressureLoss\_m\_flow](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.pressureLoss_m_flow)

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate\_dp\_staticHead](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpS.png)
[massFlowRate\_dp\_staticHead](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dp_staticHead)

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.pressureLoss\_m\_flow\_staticHead](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpS.png)
[pressureLoss\_m\_flow\_staticHead](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.pressureLoss_m_flow_staticHead)

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction and static head

![Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.InternalS.png)
[Internal](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed_Internal.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.Internal)

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

![image5](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed).massFlowRate\_dp
====================================================================================================================================================================================================================================================================================

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
      Real Delta = roughness/diameter "Relative roughness";
      SI.ReynoldsNumber Re1 = (745*Math.exp(if Delta <= 0.0065 then 1 else 0.0065/Delta))^0.97 
        "Re leaving laminar curve";
      SI.ReynoldsNumber Re2 = 4000 "Re entering turbulent curve";
      SI.DynamicViscosity mu "Upstream viscosity";
      SI.Density rho "Upstream density";
      SI.ReynoldsNumber Re "Reynolds number";
      Real lambda2 "Modified friction coefficient (= lambda*Re^2)";

      function interpolateInRegion2
         input Real Re_turbulent;
         input SI.ReynoldsNumber Re1;
         input SI.ReynoldsNumber Re2;
         input Real Delta;
         input Real lambda2;
         output SI.ReynoldsNumber Re;
        // point lg(lambda2(Re1)) with derivative at lg(Re1)
      protected 
        Real x1=Math.log10(64*Re1);
        Real y1=Math.log10(Re1);
        Real yd1=1;

        // Point lg(lambda2(Re2)) with derivative at lg(Re2)
        Real aux1=(0.5/Math.log(10))*5.74*0.9;
        Real aux2=Delta/3.7 + 5.74/Re2^0.9;
        Real aux3=Math.log10(aux2);
        Real L2=0.25*(Re2/aux3)^2;
        Real aux4=2.51/sqrt(L2) + 0.27*Delta;
        Real aux5=-2*sqrt(L2)*Math.log10(aux4);
        Real x2=Math.log10(L2);
        Real y2=Math.log10(aux5);
        Real yd2=0.5 + (2.51/Math.log(10))/(aux5*aux4);

        // Constants: Cubic polynomial between lg(Re1) and lg(Re2)
        Real diff_x=x2 - x1;
        Real m=(y2 - y1)/diff_x;
        Real c2=(3*m - 2*yd1 - yd2)/diff_x;
        Real c3=(yd1 + yd2 - 2*m)/(diff_x*diff_x);
        Real lambda2_1=64*Re1;
        Real dx;
      algorithm 
         dx := Math.log10(lambda2/lambda2_1);
         Re := Re1*(lambda2/lambda2_1)^(1 + dx*(c2 + dx*c3));
      end interpolateInRegion2;

    algorithm 
      // Determine upstream density, upstream viscosity, and lambda2
      rho     := if dp >= 0 then rho_a else rho_b;
      mu      := if dp >= 0 then mu_a else mu_b;
      lambda2 := abs(dp)*2*diameter^3*rho/(length*mu*mu);

      // Determine Re under the assumption of laminar flow
      Re := lambda2/64;

      // Modify Re, if turbulent flow
      if Re > Re1 then
         Re :=-2*sqrt(lambda2)*Math.log10(2.51/sqrt(lambda2) + 0.27*Delta);
         if Re < Re2 then
            Re := interpolateInRegion2(Re, Re1, Re2, Delta, lambda2);
         end if;
      end if;

      // Determine mass flow rate
      m_flow := (pi*diameter/4)*mu*(if dp >= 0 then Re else -Re);
    end massFlowRate_dp;

* * * * *

![image6](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed).pressureLoss\_m\_flow
=========================================================================================================================================================================================================================================================================================

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
      Real Delta = roughness/diameter "Relative roughness";
      SI.ReynoldsNumber Re1 = 745*Math.exp(if Delta <= 0.0065 then 1 else 0.0065/Delta) 
        "Re leaving laminar curve";
      SI.ReynoldsNumber Re2 = 4000 "Re entering turbulent curve";
      SI.DynamicViscosity mu "Upstream viscosity";
      SI.Density rho "Upstream density";
      SI.ReynoldsNumber Re "Reynolds number";
      Real lambda2 "Modified friction coefficient (= lambda*Re^2)";

      function interpolateInRegion2
         input SI.ReynoldsNumber Re;
         input SI.ReynoldsNumber Re1;
         input SI.ReynoldsNumber Re2;
         input Real Delta;
         output Real lambda2;
        // point lg(lambda2(Re1)) with derivative at lg(Re1)
      protected 
        Real x1 = Math.log10(Re1);
        Real y1 = Math.log10(64*Re1);
        Real yd1=1;

        // Point lg(lambda2(Re2)) with derivative at lg(Re2)
        Real aux1=(0.5/Math.log(10))*5.74*0.9;
        Real aux2=Delta/3.7 + 5.74/Re2^0.9;
        Real aux3=Math.log10(aux2);
        Real L2=0.25*(Re2/aux3)^2;
        Real aux4=2.51/sqrt(L2) + 0.27*Delta;
        Real aux5=-2*sqrt(L2)*Math.log10(aux4);
        Real x2 =  Math.log10(Re2);
        Real y2 =  Math.log10(L2);
        Real yd2 = 2 + 4*aux1/(aux2*aux3*(Re2)^0.9);

        // Constants: Cubic polynomial between lg(Re1) and lg(Re2)
        Real diff_x=x2 - x1;
        Real m=(y2 - y1)/diff_x;
        Real c2=(3*m - 2*yd1 - yd2)/diff_x;
        Real c3=(yd1 + yd2 - 2*m)/(diff_x*diff_x);
        Real dx;
      algorithm 
         dx := Math.log10(Re/Re1);
         lambda2 := 64*Re1*(Re/Re1)^(1 + dx*(c2 + dx*c3));
      end interpolateInRegion2;
    algorithm 
      // Determine upstream density and upstream viscosity
      rho     :=if m_flow >= 0 then rho_a else rho_b;
      mu      :=if m_flow >= 0 then mu_a else mu_b;

      // Determine Re, lambda2 and pressure drop
      Re :=(4/pi)*abs(m_flow)/(diameter*mu);
      lambda2 := if Re <= Re1 then 64*Re else 
                (if Re >= Re2 then 0.25*(Re/Math.log10(Delta/3.7 + 5.74/Re^0.9))^2 else 
                 interpolateInRegion2(Re, Re1, Re2, Delta));
      dp :=length*mu*mu/(2*rho*diameter*diameter*diameter)*
           (if m_flow >= 0 then lambda2 else -lambda2);
    end pressureLoss_m_flow;

* * * * *

![image7](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed).massFlowRate\_dp\_staticHead
================================================================================================================================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head**

Information
-----------

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

    protected 
      Real Delta = roughness/diameter "Relative roughness";
      SI.ReynoldsNumber Re "Reynolds number";
      SI.ReynoldsNumber Re1 = (745*exp(if Delta <= 0.0065 then 1 else 0.0065/Delta))^0.97 
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
      dp_a := max(dp_grav_a, dp_grav_b)+dp_small;
      dp_b := min(dp_grav_a, dp_grav_b)-dp_small;

      if dp>=dp_a then
        // Positive flow outside regularization
        m_flow := Internal.m_flow_of_dp_fric(dp-dp_grav_a, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta);
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

![image8](Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed](Modelica_Fluid_Pipes_BaseClasses_WallFriction_Detailed.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Detailed).pressureLoss\_m\_flow\_staticHead
=====================================================================================================================================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction and static head**

Information
-----------

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
      m_flow_a := if dp_grav_a<dp_grav_b then 
        Internal.m_flow_of_dp_fric(dp_grav_b - dp_grav_a, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta)+m_flow_small else 
        m_flow_small;
      m_flow_b := if dp_grav_a<dp_grav_b then 
        Internal.m_flow_of_dp_fric(dp_grav_a - dp_grav_b, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta)-m_flow_small else 
        -m_flow_small;

      if m_flow>=m_flow_a then
        // Positive flow outside regularization
        dp := Internal.dp_fric_of_m_flow(m_flow, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta) + dp_grav_a;
      elseif m_flow<=m_flow_b then
        // Negative flow outside regularization
        dp := Internal.dp_fric_of_m_flow(m_flow, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta) + dp_grav_b;
      else
        // Regularization parameters
        (dp_a, ddp_dm_flow_a) := Internal.dp_fric_of_m_flow(m_flow_a, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta);
        dp_a := dp_a + dp_grav_a "Adding dp_grav to dp_fric to get dp";
        (dp_b, ddp_dm_flow_b) := Internal.dp_fric_of_m_flow(m_flow_b, rho_a, rho_b, mu_a, mu_b, length, diameter, Re1, Re2, Delta);
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
