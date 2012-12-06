========================================================
Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction
========================================================

`Modelica.Fluid.Pipes.BaseClasses.WallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction>`_.NoFriction
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**No pipe wall friction, no static head**

Information
~~~~~~~~~~~

::

This component sets the pressure loss due to wall friction to zero,
i.e., it allows to switch off pipe wall friction.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages),
`PartialWallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction>`_
(Partial wall friction characteristic (base package of all wall friction
characteristics)).

Package Content
~~~~~~~~~~~~~~~

Name

Description

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate\_dp|
`massFlowRate\_dp <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dp>`_

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss\_m\_flow|
`pressureLoss\_m\_flow <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss_m_flow>`_

Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp
= f(m\_flow), due to wall friction

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate\_dp\_staticHead|
`massFlowRate\_dp\_staticHead <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dp_staticHead>`_

Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head

|Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss\_m\_flow\_staticHead|
`pressureLoss\_m\_flow\_staticHead <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss_m_flow_staticHead>`_

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

|image4| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction>`_.massFlowRate\_dp
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      assert(false, "function massFlowRate_dp (option: from_dp=true)
    cannot be used for WallFriction.NoFriction. Use instead
    function pressureLoss_m_flow (option: from_dp=false)");
    end massFlowRate_dp;

--------------

|image5| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction>`_.pressureLoss\_m\_flow
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
      dp := 0;
    end pressureLoss_m_flow;

--------------

|image6| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction>`_.massFlowRate\_dp\_staticHead
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

    algorithm 
      assert(false, "function massFlowRate_dp (option: from_dp=true)
    cannot be used for WallFriction.NoFriction. Use instead
    function pressureLoss_m_flow (option: from_dp=false)");
    end massFlowRate_dp_staticHead;

--------------

|image7| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_NoFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction>`_.pressureLoss\_m\_flow\_staticHead
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

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

    /* To include only static head:
    protected
      Real dp_grav_a = g_times_height_ab*rho_a
        "Static head if mass flows in design direction (a to b)";
      Real dp_grav_b = g_times_height_ab*rho_b
        "Static head if mass flows against design direction (b to a)";
    */
    algorithm 
    //  dp := Utilities.regStep(m_flow, dp_grav_a, dp_grav_a, m_flow_small);
      dp := 0;
      assert(abs(g_times_height_ab) < Modelica.Constants.small,
       "WallFriction.NoFriction does not consider static head and cannot be used with height_ab<>0!");
    end pressureLoss_m_flow_staticHead;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:14
2010.

.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate\_dp| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss\_m\_flow| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate\_dp\_staticHead| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.pressureLoss\_m\_flow\_staticHead| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |image4| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dpI.png
.. |image5| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dpI.png
.. |image6| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dpI.png
.. |image7| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.NoFriction.massFlowRate_dpI.png
