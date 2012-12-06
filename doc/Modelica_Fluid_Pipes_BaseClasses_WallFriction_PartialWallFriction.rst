=================================================================
Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction
=================================================================

`Modelica.Fluid.Pipes.BaseClasses.WallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction>`_.PartialWallFriction
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial wall friction characteristic (base package of all wall
friction characteristics)**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                                                   | Description                                                                                                                  |
+========================================================================================================================================================================================================================================================================================================================+==============================================================================================================================+
| use\_mu=true                                                                                                                                                                                                                                                                                                           | = true, if mu\_a/mu\_b are used in function, otherwise value is not used                                                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| use\_roughness=true                                                                                                                                                                                                                                                                                                    | = true, if roughness is used in function, otherwise value is not used                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| use\_dp\_small=true                                                                                                                                                                                                                                                                                                    | = true, if dp\_small is used in function, otherwise value is not used                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| use\_m\_flow\_small=true                                                                                                                                                                                                                                                                                               | = true, if m\_flow\_small is used in function, otherwise value is not used                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| dp\_is\_zero=false                                                                                                                                                                                                                                                                                                     | = true, if no wall friction is present, i.e., dp = 0 (function massFlowRate\_dp() cannot be used)                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| |image4| `massFlowRate\_dp <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dp>`_                                                                                                                                | Return mass flow rate m\_flow as function of pressure loss dp, i.e., m\_flow = f(dp), due to wall friction                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| |image5| `massFlowRate\_dp\_staticHead <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dp_staticHead>`_                                                                                                         | Return mass flow rate m\_flow as function of pressure loss dp, i.e., m\_flow = f(dp), due to wall friction and static head   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| |image6| `pressureLoss\_m\_flow <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss_m_flow>`_                                                                                                                       | Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp = f(m\_flow), due to wall friction                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+
| |image7| `pressureLoss\_m\_flow\_staticHead <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss_m_flow_staticHead>`_                                                                                                | Return pressure loss dp as function of mass flow rate m\_flow, i.e., dp = f(m\_flow), due to wall friction and static head   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      constant Boolean use_mu = true 
      "= true, if mu_a/mu_b are used in function, otherwise value is not used";

::

      constant Boolean use_roughness = true 
      "= true, if roughness is used in function, otherwise value is not used";

::

      constant Boolean use_dp_small = true 
      "= true, if dp_small is used in function, otherwise value is not used";

::

      constant Boolean use_m_flow_small = true 
      "= true, if m_flow_small is used in function, otherwise value is not used";

::

      constant Boolean dp_is_zero = false 
      "= true, if no wall friction is present, i.e., dp = 0 (function massFlowRate_dp() cannot be used)";

--------------

|image8| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction>`_.massFlowRate\_dp
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

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

--------------

|image9| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction>`_.massFlowRate\_dp\_staticHead
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate m\_flow as function of pressure loss dp, i.e.,
m\_flow = f(dp), due to wall friction and static head**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

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

--------------

|image10| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction>`_.pressureLoss\_m\_flow
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

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

--------------

|image11| `Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction <Modelica_Fluid_Pipes_BaseClasses_WallFriction_PartialWallFriction.html#Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction>`_.pressureLoss\_m\_flow\_staticHead
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure loss dp as function of mass flow rate m\_flow, i.e.,
dp = f(m\_flow), due to wall friction and static head**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:14
2010.

.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate\_dp| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate\_dp\_staticHead| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss\_m\_flow| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.pressureLoss\_m\_flow\_staticHead| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |image4| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |image5| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |image6| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |image7| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpS.png
.. |image8| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png
.. |image9| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png
.. |image10| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png
.. |image11| image:: Modelica.Fluid.Pipes.BaseClasses.WallFriction.PartialWallFriction.massFlowRate_dpI.png
