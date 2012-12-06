=====================================================
Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar
=====================================================

`Modelica.Fluid.Pipes.BaseClasses.WallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction>`_.Laminar
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Pipe wall friction in the laminar regime (linear correlation)**

Information
~~~~~~~~~~~

::

This component defines only the laminar region of wall friction: dp =
k\*m\_flow, where "k" depends on density and dynamic viscosity. The
roughness of the wall does not have an influence on the laminar flow and
therefore argument roughness is ignored. Since this is a linear
relationship, the occuring systems of equations are usually much simpler
(e.g., either linear instead of non-linear). By using nominal values for
density and dynamic viscosity, the systems of equations can still
further be reduced.

In
`UsersGuide <Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.WallFriction>`_
the complete friction regime is illustrated. This component describes
only the **Hagen-Poiseuille** equation.

::

Extends from
`PartialWallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction>`_
(Partial wall friction characteristic (base package of all wall friction
characteristics)).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate\_dp|
`massFlowRate\_dp <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate_dp>`_

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.pressureLoss\_m\_flow|
`pressureLoss\_m\_flow <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.pressureLoss_m_flow>`_

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate\_dp\_staticHead|
`massFlowRate\_dp\_staticHead <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate_dp_staticHead>`_

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.pressureLoss\_m\_flow\_staticHead|
`pressureLoss\_m\_flow\_staticHead <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.pressureLoss_m_flow_staticHead>`_

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

--------------

|image4| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar>`_.massFlowRate\_dp
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction**

Information
~~~~~~~~~~~

::

::

Extends from
` <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dp>`_
(Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                            | Name        | Default   | Description                                                                                                |
+=================================================================================+=============+===========+============================================================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | dp          |           | Pressure loss (dp = port\_a.p - port\_b.p) [Pa]                                                            |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_a      |           | Density at port\_a [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_b      |           | Density at port\_b [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_a       |           | Dynamic viscosity at port\_a (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_b       |           | Dynamic viscosity at port\_b (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | length      |           | Length of pipe [m]                                                                                         |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                   | diameter    |           | Inner (hydraulic) diameter of pipe [m]                                                                     |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | roughness   | 2.5e-5    | Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use\_roughness = false) [m]   |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | dp\_small   | 1         | Turbulent flow if \|dp\| >= dp\_small (dummy if use\_dp\_small = false) [Pa]                               |
+---------------------------------------------------------------------------------+-------------+-----------+------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-------------------------------------------------+
| Type                                                                    | Name      | Description                                     |
+=========================================================================+===========+=================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | m\_flow   | Mass flow rate from port\_a to port\_b [kg/s]   |
+-------------------------------------------------------------------------+-----------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends massFlowRate_dp 
      "Return mass flow rate m_flow as function of pressure loss dp, i.e., m_flow = f(dp), due to wall friction"

    algorithm 
      m_flow :=dp*Modelica.Constants.pi*diameter^4*(rho_a + rho_b)/(128*length*(mu_a + mu_b));
    end massFlowRate_dp;

--------------

|image5| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar>`_.pressureLoss\_m\_flow
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction**

Information
~~~~~~~~~~~

::

::

Extends from
` <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss_m_flow>`_
(Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                            | Name             | Default   | Description                                                                                                |
+=================================================================================+==================+===========+============================================================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow          |           | Mass flow rate from port\_a to port\_b [kg/s]                                                              |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_a           |           | Density at port\_a [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_b           |           | Density at port\_b [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_a            |           | Dynamic viscosity at port\_a (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_b            |           | Dynamic viscosity at port\_b (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | length           |           | Length of pipe [m]                                                                                         |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                   | diameter         |           | Inner (hydraulic) diameter of pipe [m]                                                                     |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | roughness        | 2.5e-5    | Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use\_roughness = false) [m]   |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow\_small   | 0.01      | Turbulent flow if \|m\_flow\| >= m\_flow\_small (dummy if use\_m\_flow\_small = false) [kg/s]              |
+---------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------------+
| Type                                                            | Name   | Description                                       |
+=================================================================+========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp     | Pressure loss (dp = port\_a.p - port\_b.p) [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends pressureLoss_m_flow 
      "Return pressure loss dp as function of mass flow rate m_flow, i.e., dp = f(m_flow), due to wall friction"

    algorithm 
      dp := m_flow*128*length*(mu_a + mu_b)/(Modelica.Constants.pi*diameter^4*(rho_a + rho_b));
    end pressureLoss_m_flow;

--------------

|image6| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar>`_.massFlowRate\_dp\_staticHead
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head**

Information
~~~~~~~~~~~

::

::

Extends from
` <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dp_staticHead>`_
(Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                            | Name                   | Default   | Description                                                                                                |
+=================================================================================+========================+===========+============================================================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | dp                     |           | Pressure loss (dp = port\_a.p - port\_b.p) [Pa]                                                            |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_a                 |           | Density at port\_a [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_b                 |           | Density at port\_b [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_a                  |           | Dynamic viscosity at port\_a (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_b                  |           | Dynamic viscosity at port\_b (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | length                 |           | Length of pipe [m]                                                                                         |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                   | diameter               |           | Inner (hydraulic) diameter of pipe [m]                                                                     |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| Real                                                                            | g\_times\_height\_ab   |           | Gravity times (Height(port\_b) - Height(port\_a))                                                          |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | roughness              | 2.5e-5    | Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use\_roughness = false) [m]   |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | dp\_small              | 1         | Turbulent flow if \|dp\| >= dp\_small (dummy if use\_dp\_small = false) [Pa]                               |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-------------------------------------------------+
| Type                                                                    | Name      | Description                                     |
+=========================================================================+===========+=================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | m\_flow   | Mass flow rate from port\_a to port\_b [kg/s]   |
+-------------------------------------------------------------------------+-----------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends massFlowRate_dp_staticHead 
      "Return mass flow rate m_flow as function of pressure loss dp, i.e., m_flow = f(dp), due to wall friction and static head"

    protected 
      Real k0inv = Modelica.Constants.pi*diameter^4/(128*length) "Constant factor";

      Real dp_grav_a = g_times_height_ab*rho_a 
        "Static head if mass flows in design direction (a to b)";
      Real dp_grav_b = g_times_height_ab*rho_b 
        "Static head if mass flows against design direction (b to a)";

      Real dm_flow_ddp_fric_a = k0inv*rho_a/mu_a 
        "Slope of mass flow rate over dp if flow in design direction (a to b)";
      Real dm_flow_ddp_fric_b = k0inv*rho_b/mu_b 
        "Slope of mass flow rate over dp if flow against design direction (b to a)";

      Real dp_a=max(dp_grav_a,dp_grav_b)+dp_small 
        "Upper end of regularization domain of the m_flow(dp) relation";
      Real dp_b=min(dp_grav_a,dp_grav_b)-dp_small 
        "Lower end of regularization domain of the m_flow(dp) relation";

      SI.MassFlowRate m_flow_a "Value at upper end of regularization domain";
      SI.MassFlowRate m_flow_b "Value at lower end of regularization domain";

      // Properly define zero mass flow conditions
      SI.MassFlowRate m_flow_zero = 0;
      SI.Pressure dp_zero = (dp_grav_a + dp_grav_b)/2;
      Real dm_flow_ddp_fric_zero;
    algorithm 
    /*
      dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
         = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
         = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
         = 2*c0/(pi*D_Re^3) * mu/d * m_flow
         = k0 * mu/d * m_flow
      k0 = 2*c0/(pi*D_Re^3)
    */

      if dp>=dp_a then
        // Positive flow outside regularization
        m_flow := dm_flow_ddp_fric_a*(dp-dp_grav_a);
      elseif dp<=dp_b then
        // Negative flow outside regularization
        m_flow := dm_flow_ddp_fric_b*(dp-dp_grav_b);
      else
        m_flow_a := dm_flow_ddp_fric_a*(dp_a - dp_grav_a);
        m_flow_b := dm_flow_ddp_fric_b*(dp_b - dp_grav_b);

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
    /*
      m_flow := if dp<dp_b then dm_flow_ddp_b*(dp-dp_grav_b) else
                  (if dp>dp_a then dm_flow_ddp_a*(dp-dp_grav_a) else
                    Modelica.Fluid.Utilities.regFun3(dp, dp_b, dp_a, dm_flow_ddp_b*(dp_b - dp_grav_b), dm_flow_ddp_a*(dp_a - dp_grav_a), dm_flow_ddp_b, dm_flow_ddp_a));
    */
    end massFlowRate_dp_staticHead;

--------------

|image7| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar <Modelica_Fluid_Pipes_BaseClasses_WallFriction_Laminar.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar>`_.pressureLoss\_m\_flow\_staticHead
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction and static head**

Information
~~~~~~~~~~~

::

::

Extends from
` <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss_m_flow_staticHead>`_
(Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction and static head).

Inputs
~~~~~~

+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                                            | Name                   | Default   | Description                                                                                                |
+=================================================================================+========================+===========+============================================================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow                |           | Mass flow rate from port\_a to port\_b [kg/s]                                                              |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_a                 |           | Density at port\_a [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_b                 |           | Density at port\_b [kg/m3]                                                                                 |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_a                  |           | Dynamic viscosity at port\_a (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | mu\_b                  |           | Dynamic viscosity at port\_b (dummy if use\_mu = false) [Pa.s]                                             |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | length                 |           | Length of pipe [m]                                                                                         |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                   | diameter               |           | Inner (hydraulic) diameter of pipe [m]                                                                     |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| Real                                                                            | g\_times\_height\_ab   |           | Gravity times (Height(port\_b) - Height(port\_a))                                                          |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                       | roughness              | 2.5e-5    | Absolute roughness of pipe, with a default for a smooth steel pipe (dummy if use\_roughness = false) [m]   |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow\_small         | 0.01      | Turbulent flow if \|m\_flow\| >= m\_flow\_small (dummy if use\_m\_flow\_small = false) [kg/s]              |
+---------------------------------------------------------------------------------+------------------------+-----------+------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------------+
| Type                                                            | Name   | Description                                       |
+=================================================================+========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp     | Pressure loss (dp = port\_a.p - port\_b.p) [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    redeclare function extends pressureLoss_m_flow_staticHead 
      "Return pressure loss dp as function of mass flow rate m_flow, i.e., dp = f(m_flow), due to wall friction and static head"

    protected 
      Real k0 = 128*length/(Modelica.Constants.pi*diameter^4) "Constant factor";

      Real dp_grav_a = g_times_height_ab*rho_a 
        "Static head if mass flows in design direction (a to b)";
      Real dp_grav_b = g_times_height_ab*rho_b 
        "Static head if mass flows against design direction (b to a)";

      Real ddp_dm_flow_a = k0*mu_a/rho_a 
        "Slope of dp over mass flow rate if flow in design direction (a to b)";
      Real ddp_dm_flow_b = k0*mu_b/rho_b 
        "Slope of dp over mass flow rate if flow against design direction (b to a)";

      Real m_flow_a=if dp_grav_a >= dp_grav_b then m_flow_small else m_flow_small + (dp_grav_b-dp_grav_a)/ddp_dm_flow_a 
        "Upper end of regularization domain of the dp(m_flow) relation";
      Real m_flow_b=if dp_grav_a >= dp_grav_b then -m_flow_small else -m_flow_small - (dp_grav_b - dp_grav_a)/ddp_dm_flow_b 
        "Lower end of regularization domain of the dp(m_flow) relation";

      SI.Pressure dp_a "Value at upper end of regularization domain";
      SI.Pressure dp_b "Value at lower end of regularization domain";

      // Properly define zero mass flow conditions
      SI.MassFlowRate m_flow_zero = 0;
      SI.Pressure dp_zero = (dp_grav_a + dp_grav_b)/2;
      Real ddp_dm_flow_zero;
    algorithm 
    /*
      dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
         = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
         = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
         = 2*c0/(pi*D_Re^3) * mu/d * m_flow
         = k0 * mu/d * m_flow
      k0 = 2*c0/(pi*D_Re^3)
    */

      if m_flow>=m_flow_a then
        // Positive flow outside regularization
        dp := (ddp_dm_flow_a*m_flow + dp_grav_a);
      elseif m_flow<=m_flow_b then
        // Negative flow outside regularization
        dp := (ddp_dm_flow_b*m_flow + dp_grav_b);
      else
        // Regularization parameters
        dp_a := ddp_dm_flow_a*m_flow_a + dp_grav_a;
        dp_b := ddp_dm_flow_b*m_flow_b + dp_grav_b;
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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:14
2010.

.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate\_dp| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.pressureLoss\_m\_flow| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate\_dp\_staticHead| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.pressureLoss\_m\_flow\_staticHead| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |image4| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate_dpI.png
.. |image5| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate_dpI.png
.. |image6| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate_dpI.png
.. |image7| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.Laminar.massFlowRate_dpI.png
