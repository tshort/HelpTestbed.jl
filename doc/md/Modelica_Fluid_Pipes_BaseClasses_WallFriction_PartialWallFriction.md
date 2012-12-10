% Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction
% 
% 

[Modelica.Fluid.Pipes.BaseClasses.WallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction).PartialWallFriction
=====================================================================================================================================================================

**Partial wall friction characteristic (base package of all wall
friction characteristics)**

Information
-----------

::

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                Description
  --------------------------------------------------- --------------------
  use\_mu=true                                        = true, if
                                                      mu\_a/mu\_b are used
                                                      in function,
                                                      otherwise value is
                                                      not used

  use\_roughness=true                                 = true, if roughness
                                                      is used in function,
                                                      otherwise value is
                                                      not used

  use\_dp\_small=true                                 = true, if dp\_small
                                                      is used in function,
                                                      otherwise value is
                                                      not used

  use\_m\_flow\_small=true                            = true, if
                                                      m\_flow\_small is
                                                      used in function,
                                                      otherwise value is
                                                      not used

  dp\_is\_zero=false                                  = true, if no wall
                                                      friction is present,
                                                      i.e., dp = 0
                                                      (function
                                                      massFlowRate\_dp()
                                                      cannot be used)

  ![image4](Modelica.Fluid.Pipes.BaseClasses.WallFric Return mass flow
  tion.PartialWallFriction.massFlowRate_dpS.png)      rate m\_flow as
  [massFlowRate\_dp](Modelica_Fluid_Pipes_BaseClasses function of pressure
  _WallFriction_PartialWallFriction.html#Modelica.Flu loss dp, i.e.,
  id.Pipes.BaseClasses.WallFriction.PartialWallFricti m\_flow = f(dp), due
  on.massFlowRate_dp)                                 to wall friction

  ![image5](Modelica.Fluid.Pipes.BaseClasses.WallFric Return mass flow
  tion.PartialWallFriction.massFlowRate_dpS.png)      rate m\_flow as
  [massFlowRate\_dp\_staticHead](Modelica_Fluid_Pipes function of pressure
  _BaseClasses_WallFriction_PartialWallFriction.html# loss dp, i.e.,
  Modelica.Fluid.Pipes.BaseClasses.WallFriction.Parti m\_flow = f(dp), due
  alWallFriction.massFlowRate_dp_staticHead)          to wall friction and
                                                      static head

  ![image6](Modelica.Fluid.Pipes.BaseClasses.WallFric Return pressure loss
  tion.PartialWallFriction.massFlowRate_dpS.png)      dp as function of
  [pressureLoss\_m\_flow](Modelica_Fluid_Pipes_BaseCl mass flow rate
  asses_WallFriction_PartialWallFriction.html#Modelic m\_flow, i.e., dp =
  a.Fluid.Pipes.BaseClasses.WallFriction.PartialWallF f(m\_flow), due to
  riction.pressureLoss_m_flow)                        wall friction

  ![image7](Modelica.Fluid.Pipes.BaseClasses.WallFric Return pressure loss
  tion.PartialWallFriction.massFlowRate_dpS.png)      dp as function of
  [pressureLoss\_m\_flow\_staticHead](Modelica_Fluid_ mass flow rate
  Pipes_BaseClasses_WallFriction_PartialWallFriction. m\_flow, i.e., dp =
  html#Modelica.Fluid.Pipes.BaseClasses.WallFriction. f(m\_flow), due to
  PartialWallFriction.pressureLoss_m_flow_staticHead) wall friction and
                                                      static head
  ------------------------------------------------------------------------

Types and constants
-------------------

    constant Boolean use_mu = true 
    "= true, if mu_a/mu_b are used in function, otherwise value is not used";

    constant Boolean use_roughness = true 
    "= true, if roughness is used in function, otherwise value is not used";

    constant Boolean use_dp_small = true 
    "= true, if dp_small is used in function, otherwise value is not used";

    constant Boolean use_m_flow_small = true 
    "= true, if m_flow_small is used in function, otherwise value is not used";

    constant Boolean dp_is_zero = false 
    "= true, if no wall friction is present, i.e., dp = 0 (function massFlowRate_dp() cannot be used)";

* * * * *

![image8](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction).massFlowRate\_dp
================================================================================================================================================================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function massFlowRate_dp 
      "Return mass flow rate m_flow as function of pressure loss dp, i.e., m_flow = f(dp), due to wall friction"
      extends Modelica.Icons.Function;

      input SI.Pressure dp "Pressure loss (dp = port_a.p - port_b.p)";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a 
        "Dynamic viscosity at port_a (dummy if use_mu = false)";
      input SI.DynamicViscosity mu_b 
        "Dynamic viscosity at port_b (dummy if use_mu = false)";
      input SI.Length length "Length of pipe";
      input SI.Diameter diameter "Inner (hydraulic) diameter of pipe";
      input SI.Length roughness(min=0) = 2.5e-5 
        "Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use_roughness = false)";
      input SI.AbsolutePressure dp_small = 1 
        "Turbulent flow if |dp| >= dp_small (dummy if use_dp_small = false)";

      output SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
    end massFlowRate_dp;

* * * * *

![image9](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction).massFlowRate\_dp\_staticHead
============================================================================================================================================================================================================================================================================================================================================

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function massFlowRate_dp_staticHead 
      "Return mass flow rate m_flow as function of pressure loss dp, i.e., m_flow = f(dp), due to wall friction and static head"
      extends Modelica.Icons.Function;

      input SI.Pressure dp "Pressure loss (dp = port_a.p - port_b.p)";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a 
        "Dynamic viscosity at port_a (dummy if use_mu = false)";
      input SI.DynamicViscosity mu_b 
        "Dynamic viscosity at port_b (dummy if use_mu = false)";
      input SI.Length length "Length of pipe";
      input SI.Diameter diameter "Inner (hydraulic) diameter of pipe";
      input Real g_times_height_ab 
        "Gravity times (Height(port_b) - Height(port_a))";
      input SI.Length roughness(min=0) = 2.5e-5 
        "Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use_roughness = false)";
      input SI.AbsolutePressure dp_small=1 
        "Turbulent flow if |dp| >= dp_small (dummy if use_dp_small = false)";

      output SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
    end massFlowRate_dp_staticHead;

* * * * *

![image10](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction).pressureLoss\_m\_flow
======================================================================================================================================================================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function pressureLoss_m_flow 
      "Return pressure loss dp as function of mass flow rate m_flow, i.e., dp = f(m_flow), due to wall friction"
      extends Modelica.Icons.Function;

      input SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a 
        "Dynamic viscosity at port_a (dummy if use_mu = false)";
      input SI.DynamicViscosity mu_b 
        "Dynamic viscosity at port_b (dummy if use_mu = false)";
      input SI.Length length "Length of pipe";
      input SI.Diameter diameter "Inner (hydraulic) diameter of pipe";
      input SI.Length roughness(min=0) = 2.5e-5 
        "Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use_roughness = false)";
      input SI.MassFlowRate m_flow_small = 0.01 
        "Turbulent flow if |m_flow| >= m_flow_small (dummy if use_m_flow_small = false)";
      output SI.Pressure dp "Pressure loss (dp = port_a.p - port_b.p)";

    end pressureLoss_m_flow;

* * * * *

![image11](Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png) [Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction](Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction).pressureLoss\_m\_flow\_staticHead
==================================================================================================================================================================================================================================================================================================================================================

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction and static head**

Information
-----------

::

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

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

    replaceable partial function pressureLoss_m_flow_staticHead 
      "Return pressure loss dp as function of mass flow rate m_flow, i.e., dp = f(m_flow), due to wall friction and static head"
              extends Modelica.Icons.Function;

      input SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a 
        "Dynamic viscosity at port_a (dummy if use_mu = false)";
      input SI.DynamicViscosity mu_b 
        "Dynamic viscosity at port_b (dummy if use_mu = false)";
      input SI.Length length "Length of pipe";
      input SI.Diameter diameter "Inner (hydraulic) diameter of pipe";
      input Real g_times_height_ab 
        "Gravity times (Height(port_b) - Height(port_a))";
      input SI.Length roughness(min=0) = 2.5e-5 
        "Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use_roughness = false)";
      input SI.MassFlowRate m_flow_small = 0.01 
        "Turbulent flow if |m_flow| >= m_flow_small (dummy if use_m_flow_small = false)";
      output SI.Pressure dp "Pressure loss (dp = port_a.p - port_b.p)";

    end pressureLoss_m_flow_staticHead;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:14 2010.
