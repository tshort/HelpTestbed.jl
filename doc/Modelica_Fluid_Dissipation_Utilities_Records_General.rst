====================================================
Modelica.Fluid.Dissipation.Utilities.Records.General
====================================================

`Modelica.Fluid.Dissipation.Utilities.Records <Modelica_Fluid_Dissipation_Utilities_Records.html#Modelica.Fluid.Dissipation.Utilities.Records>`_.General
--------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                 | Description                                                                                     |
+======================================================================================================================================================================================================================================================================================+=================================================================================================+
| |image13| `PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss>`_                                                                                                                              | Base record for fluid properties for pressure loss                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image14| `FluidProperties <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties>`_                                                                                                                        | Base record for fluid properties                                                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image15| `IdealGas\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_con>`_                                                                                                                             | Base record for generic pressure loss function \| ideal gas \| mean density                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image16| `IdealGas\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_var>`_                                                                                                                             | Base record for generic pressure loss function \| ideal gas \| mean density                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image17| `NominalDensityViscosity <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity>`_                                                                                                        | Base record for generic pressure loss function                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image18| `NominalPressureLossLawDensity\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_con>`_                                                                                   | Base record for generic pressure loss function                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image19| `NominalPressureLossLawDensity\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_var>`_                                                                                   | Base record for generic pressure loss function                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image20| `QuadraticVFLOW <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW>`_                                                                                                                          | Base record for generic pressure loss function \| quadratic function (dp=a\*Vdot^2 + b\*Vdot)   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image21| `TwoPhaseFlow\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con>`_                                                                                                                     | Base record for two phase Flow                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image22| `TwoPhaseFlow\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var>`_                                                                                                                     | Base record for two phase flow                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image23| `IdealGas <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas>`_                                                                                                                                      | Base record for generic pressure loss function \| ideal gas \| mean density                     |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image24| `NominalPressureLossLawDensity <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity>`_                                                                                            | Base record for generic pressure loss function                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image25| `TwoPhaseFlow <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow>`_                                                                                                                              | base record for two phase Flow                                                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+

--------------

|image26| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.PressureLoss
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for fluid properties for pressure loss**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+--------+-----------+-------------------------------------+
| Type                                                                            | Name   | Default   | Description                         |
+=================================================================================+========+===========+=====================================+
| Fluid properties                                                                |
+---------------------------------------------------------------------------------+--------+-----------+-------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta    |           | Dynamic viscosity of fluid [Pa.s]   |
+---------------------------------------------------------------------------------+--------+-----------+-------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho    |           | Density of fluid [kg/m3]            |
+---------------------------------------------------------------------------------+--------+-----------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record PressureLoss 
      "Base record for fluid properties for pressure loss"
      extends Modelica.Icons.Record;

      SI.DynamicViscosity eta "Dynamic viscosity of fluid";
      SI.Density rho "Density of fluid";
    end PressureLoss;

--------------

|image27| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.FluidProperties
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for fluid properties**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name     | Default   | Description                                                       |
+=============================================================================================================================+==========+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp       |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta      |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda   |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho      |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+----------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record FluidProperties "Base record for fluid properties"
      extends Modelica.Icons.Record;

      SI.SpecificHeatCapacityAtConstantPressure cp 
        "Specific heat capacity of fluid at constant pressure";

      SI.DynamicViscosity eta "Dynamic viscosity of fluid";

      SI.ThermalConductivity lambda "Thermal conductivity of fluid";

      SI.Density rho "Density of fluid";
    end FluidProperties;

--------------

|image28| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.IdealGas\_con
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function \| ideal gas \| mean
density**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Type                                                                                    | Name   | Default   | Description                                                  |
+=========================================================================================+========+===========+==============================================================+
| Generic variables                                                                       |
+-----------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Real                                                                                    | exp    | 2         | Exponent of pressure loss law                                |
+-----------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Real                                                                                    | Km     | 6824.86   | Coefficient for pressure loss law [(Pa)^2/{(kg/s)^exp\*K}]   |
+-----------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| Fluid properties                                                                        |
+-----------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | R\_s   |           | Specific gas constant of ideal gas [J/(kg.K)]                |
+-----------------------------------------------------------------------------------------+--------+-----------+--------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record IdealGas_con 
      "Base record for generic pressure loss function | ideal gas | mean density"
      extends Modelica.Icons.Record;

      Real exp=2 "Exponent of pressure loss law";
      SI.SpecificHeatCapacity R_s "Specific gas constant of ideal gas";
      Real Km=6824.86 "Coefficient for pressure loss law [(Pa)^2/{(kg/s)^exp*K}]";

    end IdealGas_con;

--------------

|image29| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.IdealGas\_var
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function \| ideal gas \| mean
density**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+-----------+-------------------------------------+
| Type                                                            | Name     | Default   | Description                         |
+=================================================================+==========+===========+=====================================+
| Fluid properties                                                |
+-----------------------------------------------------------------+----------+-----------+-------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_     | rho\_m   |           | Mean density of ideal gas [kg/m3]   |
+-----------------------------------------------------------------+----------+-----------+-------------------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_      | T\_m     |           | Mean temperature of ideal gas [K]   |
+-----------------------------------------------------------------+----------+-----------+-------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | p\_m     |           | Mean pressure of ideal gas [Pa]     |
+-----------------------------------------------------------------+----------+-----------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record IdealGas_var 
      "Base record for generic pressure loss function | ideal gas | mean density"
      extends Modelica.Icons.Record;

      SI.Density rho_m "Mean density of ideal gas";
      SI.Temp_K T_m "Mean temperature of ideal gas";
      SI.Pressure p_m "Mean pressure of ideal gas";

    end IdealGas_var;

--------------

|image30| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.NominalDensityViscosity
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+
| Type                                                                            | Name           | Default   | Description                                                                       |
+=================================================================================+================+===========+===================================================================================+
| Generic variables                                                               |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                   | dp\_nom        | 2         | Nominal pressure loss (at nominal values of mass flow rate and density) [Pa]      |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+
| Real                                                                            | exp            | 2         | Exponent of pressure loss law                                                     |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow\_nom   | 1         | Nominal mass flow rate (at nominal values of pressure loss and density) [kg/s]    |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_nom       |           | Nominal density (at nominal values of mass flow rate and pressure loss) [kg/m3]   |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+
| Real                                                                            | exp\_eta       | 1         | Exponent for dynamic viscosity dependence                                         |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta\_nom       |           | Dynamic viscosity at nominal pressure loss [Pa.s]                                 |
+---------------------------------------------------------------------------------+----------------+-----------+-----------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record NominalDensityViscosity 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      SI.Pressure dp_nom=2 
        "Nominal pressure loss (at nominal values of mass flow rate and density)";
      Real exp=2 "Exponent of pressure loss law";
      SI.MassFlowRate m_flow_nom=1 
        "Nominal mass flow rate (at nominal values of pressure loss and density)";
      SI.Density rho_nom 
        "Nominal density (at nominal values of mass flow rate and pressure loss)";
      Real exp_eta=1 "Exponent for dynamic viscosity dependence";
      SI.DynamicViscosity eta_nom "Dynamic viscosity at nominal pressure loss";

    end NominalDensityViscosity;

--------------

|image31| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.NominalPressureLossLawDensity\_con
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| Type                                                                                                                                              | Name             | Default                           | Description                                                                        |
+===================================================================================================================================================+==================+===================================+====================================================================================+
| Generic variables                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `MassOrVolumeFlowRate <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.MassOrVolumeFlowRate>`_         | target           | Dissipation.Utilities.Types....   | 1 == use nominal mass flow rate \| 2 == use nominal volume flow rate               |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                             | A\_cross         | A\_cross\_nom                     | Cross sectional area [m2]                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                             | A\_cross\_nom    | Modelica.Constants.pi\*0.1^2/4    | Nominal cross sectional area [m2]                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                     | dp\_nom          | 2                                 | Nominal pressure loss (at nominal values of mass flow rate and density) [Pa]       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                             | m\_flow\_nom     | 1                                 | Nominal mass flow rate (at nominal values of pressure loss and density) [kg/s]     |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| Real                                                                                                                                              | exp              | 2                                 | Exponent of pressure loss law                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                                                                         | V\_flow\_nom     | m\_flow\_nom/rho\_nom             | Nominal volume flow rate (at nominal values of pressure loss and density) [m3/s]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                       | rho\_nom         |                                   | Nominal density (at nominal values of mass flow rate and pressure loss) [kg/m3]    |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `PressureLossCoefficient <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossCoefficient>`_   | zeta\_TOT\_nom   | 0.02\*1/0.1                       | Nominal pressure loss coefficient (for nominal values) [1]                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record NominalPressureLossLawDensity_con 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      //NominalMassFlowRate
      Modelica.Fluid.Dissipation.Utilities.Types.MassOrVolumeFlowRate
        target =                                                             Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate 
        "1 == use nominal mass flow rate | 2 == use nominal volume flow rate";

      SI.Area A_cross=A_cross_nom "Cross sectional area";
      SI.Area A_cross_nom=Modelica.Constants.pi*0.1^2/4 
        "Nominal cross sectional area";

      SI.Pressure dp_nom=2 
        "Nominal pressure loss (at nominal values of mass flow rate and density)";
      SI.MassFlowRate m_flow_nom=1 
        "Nominal mass flow rate (at nominal values of pressure loss and density)";
      Real exp=2 "Exponent of pressure loss law";

      SI.VolumeFlowRate V_flow_nom=m_flow_nom/rho_nom 
        "Nominal volume flow rate (at nominal values of pressure loss and density)";
      SI.Density rho_nom 
        "Nominal density (at nominal values of mass flow rate and pressure loss)";

      Types.PressureLossCoefficient zeta_TOT_nom=0.02*1/0.1 
        "Nominal pressure loss coefficient (for nominal values)";

    end NominalPressureLossLawDensity_con;

--------------

|image32| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.NominalPressureLossLawDensity\_var
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+
| Type                                                                                                                                              | Name        | Default   | Description                     |
+===================================================================================================================================================+=============+===========+=================================+
| Generic variables                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+
| `PressureLossCoefficient <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossCoefficient>`_   | zeta\_TOT   | 0.2       | Pressure loss coefficient [1]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record NominalPressureLossLawDensity_var 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      TYP.PressureLossCoefficient zeta_TOT=0.2 "Pressure loss coefficient";

    end NominalPressureLossLawDensity_var;

--------------

|image33| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.QuadraticVFLOW
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function \| quadratic function
(dp=a\*Vdot^2 + b\*Vdot)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------+--------+-----------+-----------------------------------------------+
| Type                | Name   | Default   | Description                                   |
+=====================+========+===========+===============================================+
| Generic variables   |
+---------------------+--------+-----------+-----------------------------------------------+
| Real                | a      | 15        | Coefficient for quadratic term [(Pa.s2)/m6]   |
+---------------------+--------+-----------+-----------------------------------------------+
| Real                | b      | 0         | Coefficient for linear term [(Pa.s)/m3]       |
+---------------------+--------+-----------+-----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record QuadraticVFLOW 
      "Base record for generic pressure loss function | quadratic function (dp=a*Vdot^2 + b*Vdot)"

      extends Modelica.Icons.Record;

      Real a(unit="(Pa.s2)/m6") = 15 "Coefficient for quadratic term";
      Real b(unit="(Pa.s)/m3") = 0 "Coefficient for linear term";

    end QuadraticVFLOW;

--------------

|image34| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.TwoPhaseFlow\_con
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for two phase Flow**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+-------------+---------------+--------------------------------------+
| Type                                                        | Name        | Default       | Description                          |
+=============================================================+=============+===============+======================================+
| Geometry                                                    |
+-------------------------------------------------------------+-------------+---------------+--------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | A\_cross    | PI\*0.1^2/4   | Cross sectional area [m2]            |
+-------------------------------------------------------------+-------------+---------------+--------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | perimeter   | PI\*0.1       | Wettet perimeter [m]                 |
+-------------------------------------------------------------+-------------+---------------+--------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | length      | 1             | Length in fluid flow direction [m]   |
+-------------------------------------------------------------+-------------+---------------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record TwoPhaseFlow_con "Base record for two phase Flow"
      extends Modelica.Icons.Record;

      SI.Area A_cross=PI*0.1^2/4 "Cross sectional area";
      SI.Length perimeter=PI*0.1 "Wettet perimeter";
      SI.Length length=1 "Length in fluid flow direction";

    end TwoPhaseFlow_con;

--------------

|image35| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.TwoPhaseFlow\_var
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for two phase flow**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Type                                                                            | Name      | Default   | Description                               |
+=================================================================================+===========+===========+===========================================+
| Fluid properties                                                                |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_g    |           | Density of gas [kg/m3]                    |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_l    |           | Density of liquid [kg/m3]                 |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta\_g    |           | Dynamic viscosity of gas [Pa.s]           |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta\_l    |           | Dynamic viscosity of liquid [Pa.s]        |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `SurfaceTension <Modelica_SIunits.html#Modelica.SIunits.SurfaceTension>`_       | sigma     |           | Surface tension [N/m]                     |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Input                                                                           |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Real                                                                            | x\_flow   | 0         | Mean mass flow rate quality over length   |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record TwoPhaseFlow_var "Base record for two phase flow"
      extends Modelica.Icons.Record;

      SI.Density rho_g "Density of gas";
      SI.Density rho_l "Density of liquid";
      SI.DynamicViscosity eta_g "Dynamic viscosity of gas";
      SI.DynamicViscosity eta_l "Dynamic viscosity of liquid";
      SI.SurfaceTension sigma "Surface tension";

      //input variables
      Real x_flow=0 "Mean mass flow rate quality over length";
    end TwoPhaseFlow_var;

--------------

|image36| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.IdealGas
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function \| ideal gas \| mean
density**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| Type                                                                                    | Name     | Default                         | Description                                                  |
+=========================================================================================+==========+=================================+==============================================================+
| Generic variables                                                                       |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| Real                                                                                    | exp      | 2                               | Exponent of pressure loss law                                |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| Real                                                                                    | Km       | R\_s\*(2e3)/((10)^exp/rho\_m)   | Coefficient for pressure loss law [(Pa)^2/{(kg/s)^exp\*K}]   |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| Fluid properties                                                                        |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | R\_s     |                                 | Specific gas constant of ideal gas [J/(kg.K)]                |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                             | rho\_m   | p\_m/(R\_s\*T\_m)               | Mean density of ideal gas [kg/m3]                            |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| `Temp\_K <Modelica_SIunits.html#Modelica.SIunits.Temp_K>`_                              | T\_m     |                                 | Mean temperature of ideal gas [K]                            |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                           | p\_m     |                                 | Mean pressure of ideal gas [Pa]                              |
+-----------------------------------------------------------------------------------------+----------+---------------------------------+--------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record IdealGas 
      "Base record for generic pressure loss function | ideal gas | mean density"
      extends Modelica.Icons.Record;

      parameter Real exp(min=Modelica.Constants.eps) = 2 
        "Exponent of pressure loss law";
      parameter SI.SpecificHeatCapacity R_s(min=1) 
        "Specific gas constant of ideal gas";

      Real Km(min=Modelica.Constants.eps) = R_s*(2e3)/((10)^exp/rho_m) 
        "Coefficient for pressure loss law [(Pa)^2/{(kg/s)^exp*K}]";
      SI.Density rho_m=p_m/(R_s*T_m) "Mean density of ideal gas";
      SI.Temp_K T_m "Mean temperature of ideal gas";
      SI.Pressure p_m "Mean pressure of ideal gas";

    end IdealGas;

--------------

|image37| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.NominalPressureLossLawDensity
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base record for generic pressure loss function**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| Type                                                                                                                                              | Name             | Default                           | Description                                                                        |
+===================================================================================================================================================+==================+===================================+====================================================================================+
| Generic variables                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `MassOrVolumeFlowRate <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.MassOrVolumeFlowRate>`_         | target           | Dissipation.Utilities.Types....   | 1 == use nominal mass flow rate \| 2 == use nominal volume flow rate               |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                             | A\_cross         | A\_cross\_nom                     | Cross sectional area [m2]                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                             | A\_cross\_nom    | Modelica.Constants.pi\*0.1^2/4    | Nominal cross sectional area [m2]                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                     | dp\_nom          | 2                                 | Nominal pressure loss (at nominal values of mass flow rate and density) [Pa]       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                             | m\_flow\_nom     | 1                                 | Nominal mass flow rate (at nominal values of pressure loss and density) [kg/s]     |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| Real                                                                                                                                              | exp              | 2                                 | Exponent of pressure loss law                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `VolumeFlowRate <Modelica_SIunits.html#Modelica.SIunits.VolumeFlowRate>`_                                                                         | V\_flow\_nom     | m\_flow\_nom/rho\_nom             | Nominal volume flow rate (at nominal values of pressure loss and density) [m3/s]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                       | rho\_nom         |                                   | Nominal density (at nominal values of mass flow rate and pressure loss) [kg/m3]    |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `PressureLossCoefficient <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossCoefficient>`_   | zeta\_TOT        | zeta\_TOT\_nom                    | Pressure loss coefficient [1]                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+
| `PressureLossCoefficient <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossCoefficient>`_   | zeta\_TOT\_nom   | 0.02\*1/0.1                       | Nominal pressure loss coefficient (for nominal values) [1]                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record NominalPressureLossLawDensity 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      //NominalMassFlowRate
      Modelica.Fluid.Dissipation.Utilities.Types.MassOrVolumeFlowRate
        target =                                                             Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate 
        "1 == use nominal mass flow rate | 2 == use nominal volume flow rate";

      parameter SI.Area A_cross=A_cross_nom "Cross sectional area";
      parameter SI.Area A_cross_nom=Modelica.Constants.pi*0.1^2/4 
        "Nominal cross sectional area";

      parameter SI.Pressure dp_nom(min=Modelica.Constants.eps) = 2 
        "Nominal pressure loss (at nominal values of mass flow rate and density)";
      parameter SI.MassFlowRate m_flow_nom(min=Modelica.Constants.eps) = 1 
        "Nominal mass flow rate (at nominal values of pressure loss and density)";
      parameter Real exp(min=Modelica.Constants.eps) = 2 
        "Exponent of pressure loss law";

      SI.VolumeFlowRate V_flow_nom(min=Modelica.Constants.eps) = m_flow_nom/rho_nom 
        "Nominal volume flow rate (at nominal values of pressure loss and density)";
      SI.Density rho_nom(min=Modelica.Constants.eps) 
        "Nominal density (at nominal values of mass flow rate and pressure loss)";

      Types.PressureLossCoefficient zeta_TOT=zeta_TOT_nom 
        "Pressure loss coefficient";
      parameter Types.PressureLossCoefficient zeta_TOT_nom=0.02*1/0.1 
        "Nominal pressure loss coefficient (for nominal values)";

    end NominalPressureLossLawDensity;

--------------

|image38| `Modelica.Fluid.Dissipation.Utilities.Records.General <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General>`_.TwoPhaseFlow
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**base record for two phase Flow**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| Type                                                                            | Name     | Default   | Description                               |
+=================================================================================+==========+===========+===========================================+
| Fluid properties                                                                |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_l   |           | Density of liquid [kg/m3]                 |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_g   |           | Density of gas [kg/m3]                    |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta\_l   |           | Dynamic viscosity of liquid [Pa.s]        |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta\_g   |           | Dynamic viscosity of gas [Pa.s]           |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `MassFraction <Modelica_SIunits.html#Modelica.SIunits.MassFraction>`_           | x        | 0.5       | Vapour fraction [1]                       |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| `SurfaceTension <Modelica_SIunits.html#Modelica.SIunits.SurfaceTension>`_       | sigma    |           | Surface Tension [N/m]                     |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| others                                                                          |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+
| Real                                                                            | n        | 0.25      | Exponent in Blasius equation (0.2-0.25)   |
+---------------------------------------------------------------------------------+----------+-----------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record TwoPhaseFlow "base record for two phase Flow"
      extends Modelica.Icons.Record;

      SI.Density rho_l "Density of liquid";
      SI.Density rho_g "Density of gas";
      SI.DynamicViscosity eta_l "Dynamic viscosity of liquid";
      SI.DynamicViscosity eta_g "Dynamic viscosity of gas";
      SI.MassFraction x=0.5 "Vapour fraction";
      SI.SurfaceTension sigma "Surface Tension";
      Real n=0.25 "Exponent in Blasius equation (0.2-0.25)";
    end TwoPhaseFlow;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:25
2010.

.. |Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas\_con| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas\_var| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity\_con| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity\_var| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow\_con| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow\_var| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image13| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image14| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image15| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image16| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image17| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image18| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image19| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image20| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image21| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image22| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image23| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image24| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image25| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossS.png
.. |image26| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image27| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image28| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image29| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image30| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image31| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image32| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image33| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image34| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image35| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image36| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image37| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
.. |image38| image:: Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png
