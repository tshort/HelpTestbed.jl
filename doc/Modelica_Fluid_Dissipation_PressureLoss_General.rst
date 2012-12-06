===============================================
Modelica.Fluid.Dissipation.PressureLoss.General
===============================================

`Modelica.Fluid.Dissipation.PressureLoss <Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss>`_.General
-----------------------------------------------------------------------------------------------------------------------------------------

**Package for generic pressure loss calculations**

Information
~~~~~~~~~~~

::

General
^^^^^^^

General pressure loss for ideal gas
'''''''''''''''''''''''''''''''''''

Calculation of a generic pressure loss for an **ideal gas** using mean
density. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_idealGas>`_.

Generic pressure loss depending on density and viscosity
''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density, nominal dynamic viscosity) at an
operation point via interpolation. This generic function considers the
pressure loss law via a pressure loss exponent and the influence of
density and dynamic viscosity on pressure loss. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalDensityViscosity>`_.

Generic pressure loss depending on density
''''''''''''''''''''''''''''''''''''''''''

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density) via interpolation from an operation
point. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalPressureLossLawDensity>`_.

Generic pressure loss depending on pressure loss coefficient
''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

Calculation of a generic pressure loss in dependence of a pressure loss
coefficient. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_pressureLossCoefficient>`_.

Generic pressure loss depending on volume flow rate
'''''''''''''''''''''''''''''''''''''''''''''''''''

Calculation of a generic pressure loss with linear or quadratic
dependence on volume flow rate. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                        | Description                                                                                                                                                        |
+=============================================================================================================================================================================================================================================================================================+====================================================================================================================================================================+
| |image20| `dp\_idealGas\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DP>`_                                                                                                                                         | Generic pressure loss \| calculate pressure loss \| ideal gas \| mean density                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image21| `dp\_idealGas\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_MFLOW>`_                                                                                                                                   | Generic pressure loss \| calculate mass flow rate \| ideal gas \| mean density                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image22| `dp\_idealGas\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_con>`_                                                                                                                                | Input record for function dp\_idealGas\_DP and dp\_idealGas\_MFLOW                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image23| `dp\_idealGas\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_var>`_                                                                                                                                | Input record for function dp\_idealGas\_DP and dp\_idealGas\_MFLOW                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image24| `dp\_nominalDensityViscosity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DP>`_                                                                                                           | Generic pressure loss \| calculate mass flow rate \| nominal operation point \| pressure loss law (exponent) \| density and dynamic viscosity dependence           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image25| `dp\_nominalDensityViscosity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_MFLOW>`_                                                                                                     | Generic pressure loss \| calculate M\_FLOW (compressible) \| nominal operation point \| pressure loss law (exponent) \| density and dynamic viscosity dependence   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image26| `dp\_nominalDensityViscosity\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_con>`_                                                                                                  | Output record for function dp\_nominalDensityViscosity\_DP and dp\_nominalDensityViscosity\_MFLOW                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image27| `dp\_nominalDensityViscosity\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_var>`_                                                                                                  | Output record for function dp\_nominalDensityViscosity\_DP and dp\_nominalDensityViscosity\_MFLOW                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image28| `dp\_nominalPressureLossLawDensity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DP>`_                                                                                               | Generic pressure loss \| calculate pressure loss \| nominal operation point \| pressure loss law (coefficient and exponent) \| density dependence                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image29| `dp\_nominalPressureLossLawDensity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_MFLOW>`_                                                                                         | Generic pressure loss \| calculate mass flow rate \| nominal operation point \| pressure loss law (coefficient and exponent) \| density dependence                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image30| `dp\_nominalPressureLossLawDensity\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_con>`_                                                                                      | Input record for function dp\_nominalPressureLossLawDensity\_DP and dp\_nominalPressureLossLawDensity\_MFLOW                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image31| `dp\_nominalPressureLossLawDensity\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_var>`_                                                                                      | Input record for function dp\_nominalPressureLossLawDensity\_DP and dp\_nominalPressureLossLawDensity\_MFLOW                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image32| `dp\_pressureLossCoefficient\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DP>`_                                                                                                           | Generic pressure loss \| calculate pressure loss \| pressure loss coefficient (zeta\_TOT)                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image33| `dp\_pressureLossCoefficient\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_MFLOW>`_                                                                                                     | Generic pressure loss \| calculate mass flow rate \| pressure loss coefficient (zeta\_TOT)                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image34| `dp\_pressureLossCoefficient\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_con>`_                                                                                                  | Input record for function dp\_pressureLossCoefficient\_DP and dp\_pressureLossCoefficient\_MFLOW                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image35| `dp\_pressureLossCoefficient\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_var>`_                                                                                                  | Input record for function dp\_pressureLossCoefficient\_DP and dp\_pressureLossCoefficient\_MFLOW                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image36| `dp\_volumeFlowRate\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP>`_                                                                                                                             | Generic pressure loss \| calculate pressure loss \| quadratic function (dp=a\*V\_flow^2 + b\*V\_flow)                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image37| `dp\_volumeFlowRate\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW>`_                                                                                                                       | Generic pressure loss \| calculate mass flow rate \| quadratic function (dp=a\*V\_flow^2 + b\*V\_flow)                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image38| `dp\_volumeFlowRate\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con>`_                                                                                                                    | Input record for function dp\_volumeFlowRate\_DP and dp\_volumeFlowRate\_MFLOW                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image39| `dp\_volumeFlowRate\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var>`_                                                                                                                    | Input record for function dp\_volumeFlowRate\_DP and dp\_volumeFlowRate\_MFLOW                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_idealGas\_DP
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate pressure loss \| ideal gas \| mean
density**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss for an **ideal gas** using mean
density.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_idealGas\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_idealGas>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| Type                                                                                                                                                 | Name      | Default   | Description                                  |
+======================================================================================================================================================+===========+===========+==============================================+
| Constant inputs                                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| `dp\_idealGas\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_con>`_   | IN\_con   |           | Input record for function dp\_idealGas\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| Variable inputs                                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| `dp\_idealGas\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_var>`_   | IN\_var   |           | Input record for function dp\_idealGas\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| Input                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                | m\_flow   |           | Mass flow rate [kg/s]                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------+
| Type                                                            | Name   | Description                                 |
+=================================================================+========+=============================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_idealGas\_DP [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_idealGas_DP 
      "Generic pressure loss | calculate pressure loss | ideal gas | mean density"

      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;
      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_con
        IN_con "Input record for function dp_idealGas_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_var
        IN_var "Input record for function dp_idealGas_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_idealGas_DP";

    protected 
      Real Km_internal=IN_con.Km "Coefficient for pressure loss";

      SI.Density rho_internal=IN_var.p_m/(IN_con.R_s*IN_var.T_m) "Mean density";
      SI.VolumeFlowRate V_flow=m_flow/rho_internal "Volume flow rate [m3/s]";
      SI.VolumeFlowRate V_flow_min=(IN_con.R_s/Km_internal)^(1/IN_con.exp)*
          rho_internal^(1/IN_con.exp - 1)*IN_con.dp_smooth^(1/IN_con.exp) 
        "Start of approximation for decreasing volume flow rate";

      //Documentation

    algorithm 
      DP := (Km_internal/IN_con.R_s)*(rho_internal)^(IN_con.exp - 1)*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              V_flow,
              V_flow_min,
              IN_con.exp);
    end dp_idealGas_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_idealGas\_MFLOW
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate mass flow rate \| ideal gas \| mean
density**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss for an **ideal gas** using mean
density.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
`dp\_idealGas\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DP>`_
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_idealGas>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------+
| Type                                                                                                                                                 | Name      | Default   | Description                                     |
+======================================================================================================================================================+===========+===========+=================================================+
| Constant inputs                                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------+
| `dp\_idealGas\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_con>`_   | IN\_con   |           | Input record for function dp\_idealGas\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------+
| Variable inputs                                                                                                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------+
| `dp\_idealGas\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_var>`_   | IN\_var   |           | Input record for function dp\_idealGas\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------+
| Input                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                        | dp        |           | Pressure loss [Pa]                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+--------------------------------------------------+
| Type                                                                    | Name      | Description                                      |
+=========================================================================+===========+==================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_idealGas\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_idealGas_MFLOW 
      "Generic pressure loss | calculate mass flow rate | ideal gas | mean density"

      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;
      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_con
        IN_con "Input record for function dp_idealGas_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_var
        IN_var "Input record for function dp_idealGas_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_idealGas_MFLOW";

    protected 
      Real Km_internal=IN_con.Km "Coefficient for pressure loss";

      SI.Density rho_internal=IN_var.p_m/(IN_con.R_s*IN_var.T_m) "Mean density";

      //Documentation

    algorithm 
      M_FLOW := (IN_con.R_s/Km_internal)^(1/IN_con.exp)*(rho_internal)^(1/
        IN_con.exp)*Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              IN_con.dp_smooth,
              1/IN_con.exp);
    end dp_idealGas_MFLOW;

--------------

|image40| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_idealGas\_IN\_con
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_idealGas\_DP and dp\_idealGas\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_idealGas\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DP>`_
and
`dp\_idealGas\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_con>`_
(Base record for generic pressure loss function \| ideal gas \| mean
density).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+
| Type                                                                                    | Name         | Default   | Description                                                  |
+=========================================================================================+==============+===========+==============================================================+
| Generic variables                                                                       |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+
| Real                                                                                    | exp          | 2         | Exponent of pressure loss law                                |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+
| Real                                                                                    | Km           | 6824.86   | Coefficient for pressure loss law [(Pa)^2/{(kg/s)^exp\*K}]   |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+
| Fluid properties                                                                        |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | R\_s         |           | Specific gas constant of ideal gas [J/(kg.K)]                |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+
| Linearisation                                                                           |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                           | dp\_smooth   | 1         | Start linearisation for smaller pressure loss [Pa]           |
+-----------------------------------------------------------------------------------------+--------------+-----------+--------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_idealGas_IN_con 
      "Input record for function dp_idealGas_DP and dp_idealGas_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_con;

      //linearisation
      SI.Pressure dp_smooth(min=Modelica.Constants.eps) = 1 
        "Start linearisation for smaller pressure loss";


    end dp_idealGas_IN_con;

--------------

|image41| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_idealGas\_IN\_var
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_idealGas\_DP and dp\_idealGas\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_idealGas\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DP>`_
and
`dp\_idealGas\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_var>`_
(Base record for generic pressure loss function \| ideal gas \| mean
density).

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

    record dp_idealGas_IN_var 
      "Input record for function dp_idealGas_DP and dp_idealGas_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_var;


    end dp_idealGas_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalDensityViscosity\_DP
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate mass flow rate \| nominal operation
point \| pressure loss law (exponent) \| density and dynamic viscosity
dependence**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density, nominal dynamic viscosity) at an
operation point via interpolation. This generic function considers the
pressure loss law via a pressure loss exponent and the influence of
density and dynamic viscosity on pressure loss.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_nominalDensityViscosity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalDensityViscosity>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------+
| Type                                                                                                                                                                               | Name      | Default   | Description                                                 |
+====================================================================================================================================================================================+===========+===========+=============================================================+
| Constant inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------+
| `dp\_nominalDensityViscosity\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_con>`_   | IN\_con   |           | Input record for function dp\_nominalDensityViscosity\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------+
| Variable inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------+
| `dp\_nominalDensityViscosity\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_var>`_   | IN\_var   |           | Input record for function dp\_nominalDensityViscosity\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------+
| Input                                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                                              | m\_flow   |           | Mass flow rate [kg/s]                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+------------------------------------------------------------+
| Type                                                            | Name   | Description                                                |
+=================================================================+========+============================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_nominalDensityViscosity\_DP [Pa]   |
+-----------------------------------------------------------------+--------+------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_nominalDensityViscosity_DP 
      "Generic pressure loss | calculate mass flow rate | nominal operation point | pressure loss law (exponent) | density and dynamic viscosity dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_con
        IN_con "Input record for function dp_nominalDensityViscosity_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_var
        IN_var "Input record for function dp_nominalDensityViscosity_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_nominalDensityViscosity_DP";

    protected 
      SI.MassFlowRate m_flow_smooth=(max(1, 0.01*IN_con.dp_nom)*IN_var.rho/IN_con.rho_nom
          *(1/IN_var.eta*IN_con.eta_nom)^(IN_con.exp_eta)*(1/IN_con.m_flow_nom))^(1
          /IN_con.exp) "Start of approximation for decreasing mass flow rate";

      //Documentation

    algorithm 
      DP := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              m_flow_smooth,
              IN_con.exp)*(IN_var.eta/IN_con.eta_nom)^IN_con.exp_eta*IN_con.rho_nom
        /IN_var.rho*IN_con.dp_nom*(1/IN_con.m_flow_nom)^(IN_con.exp) else 
        m_flow/IN_con.m_flow_nom*(IN_var.eta/IN_con.eta_nom)^IN_con.exp_eta*
        IN_con.rho_nom/IN_var.rho*IN_con.dp_nom;
    end dp_nominalDensityViscosity_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalDensityViscosity\_MFLOW
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate M\_FLOW (compressible) \| nominal
operation point \| pressure loss law (exponent) \| density and dynamic
viscosity dependence**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density, nominal dynamic viscosity) at an
operation point via interpolation. This generic function considers the
pressure loss law via a pressure loss exponent and the influence of
density and dynamic viscosity on pressure loss.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
`dp\_genericDensityViscosity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DP>`_
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalDensityViscosity>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| Type                                                                                                                                                                               | Name      | Default   | Description                                                    |
+====================================================================================================================================================================================+===========+===========+================================================================+
| Constant inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| `dp\_nominalDensityViscosity\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_con>`_   | IN\_con   |           | Input record for function dp\_nominalDensityViscosity\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| Variable inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| `dp\_nominalDensityViscosity\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_var>`_   | IN\_var   |           | Input record for function dp\_nominalDensityViscosity\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| Input                                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                                      | dp        |           | Pressure loss [Pa]                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-----------------------------------------------------------------+
| Type                                                                    | Name      | Description                                                     |
+=========================================================================+===========+=================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_nominalDensityViscosity\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_nominalDensityViscosity_MFLOW 
      "Generic pressure loss | calculate M_FLOW (compressible) | nominal operation point | pressure loss law (exponent) | density and dynamic viscosity dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_con
        IN_con "Input record for function dp_nominalDensityViscosity_MFLOW";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_var
        IN_var "Input record for function dp_nominalDensityViscosity_MFLOW";

      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW 
        "Output for function dp_nominalDensityViscosity_MFLOW";

      //Documentation

    algorithm 
      M_FLOW := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              0.01*IN_con.dp_nom,
              1/IN_con.exp)*(IN_con.eta_nom/IN_var.eta)^(IN_con.exp_eta/
        IN_con.exp)*(1/IN_con.dp_nom*IN_var.rho/IN_con.rho_nom)^(1/IN_con.exp)
        *IN_con.m_flow_nom else dp/IN_con.dp_nom*(IN_con.eta_nom/IN_var.eta)^
        (IN_con.exp_eta)*IN_var.rho/IN_con.rho_nom*IN_con.m_flow_nom;
    end dp_nominalDensityViscosity_MFLOW;

--------------

|image42| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalDensityViscosity\_IN\_con
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Output record for function dp\_nominalDensityViscosity\_DP and
dp\_nominalDensityViscosity\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_nominalDensityViscosity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DP>`_
and
`dp\_nominalDensityViscosity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity>`_
(Base record for generic pressure loss function).

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

    record dp_nominalDensityViscosity_IN_con 
      "Output record for function dp_nominalDensityViscosity_DP and dp_nominalDensityViscosity_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity;

    end dp_nominalDensityViscosity_IN_con;

--------------

|image43| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalDensityViscosity\_IN\_var
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Output record for function dp\_nominalDensityViscosity\_DP and
dp\_nominalDensityViscosity\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_nominalDensityViscosity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DP>`_
and
`dp\_nominalDensityViscosity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss>`_
(Base record for fluid properties for pressure loss).

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

    record dp_nominalDensityViscosity_IN_var 
      "Output record for function dp_nominalDensityViscosity_DP and dp_nominalDensityViscosity_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;

    end dp_nominalDensityViscosity_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalPressureLossLawDensity\_DP
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate pressure loss \| nominal operation
point \| pressure loss law (coefficient and exponent) \| density
dependence**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density) via interpolation from an operation
point. This generic function considers the pressure loss law via a
nominal pressure loss (dp\_nom), a pressure loss coefficient (zeta\_TOT)
and a pressure loss law exponent (exp) as well as the influence of
density on pressure loss.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_nominalPressureLossLawDensity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalPressureLossLawDensity>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                                                                                           | Name      | Default   | Description                                                       |
+================================================================================================================================================================================================+===========+===========+===================================================================+
| Constant inputs                                                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `dp\_nominalPressureLossLawDensity\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_con>`_   | IN\_con   |           | Input record for function dp\_nominalPressureLossLawDensity\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Variable inputs                                                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `dp\_nominalPressureLossLawDensity\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_var>`_   | IN\_var   |           | Input record for function dp\_nominalPressureLossLawDensity\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                                                          | m\_flow   |           | Mass flow rate [kg/s]                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------------------------------------+
| Type                                                            | Name   | Description                                                               |
+=================================================================+========+===========================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_nominalPressureLossLawDensity\_yesAJac\_DP [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_nominalPressureLossLawDensity_DP 
      "Generic pressure loss | calculate pressure loss | nominal operation point | pressure loss law (coefficient and exponent) | density dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_con
        IN_con "Input record for function dp_nominalPressureLossLawDensity_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_var
        IN_var "Input record for function dp_nominalPressureLossLawDensity_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP 
        "Output for function dp_nominalPressureLossLawDensity_yesAJac_DP";

    protected 
      Real exp_density=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                1 - IN_con.exp else 1 "Exponent of density fraction (rho/rho_nom)";
      SI.MassFlowRate m_flow_nom=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                IN_con.m_flow_nom else IN_var.rho*IN_con.V_flow_nom 
        "Nominal mean flow velocity at operation point";

      SI.MassFlowRate m_flow_linear=(0.01*(IN_con.zeta_TOT_nom/IN_var.zeta_TOT)*(
          IN_con.rho_nom/IN_var.rho)^(exp_density)*(IN_con.A_cross/IN_con.A_cross_nom)
          ^(IN_con.exp)*IN_con.m_flow_nom)^(1/IN_con.exp) 
        "Start of approximation for decreasing mass flow rate";

      //Documentation

    algorithm 
      DP := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              m_flow_linear,
              IN_con.exp)*IN_con.dp_nom*(IN_var.zeta_TOT/IN_con.zeta_TOT_nom)
        *(IN_var.rho/IN_con.rho_nom)^(exp_density)*(IN_con.A_cross_nom/IN_con.A_cross)
        ^(IN_con.exp)*(1/IN_con.m_flow_nom)^(IN_con.exp) else IN_con.dp_nom*(
        IN_var.zeta_TOT/IN_con.zeta_TOT_nom)*(IN_var.rho/IN_con.rho_nom)^(
        exp_density)*(IN_con.A_cross_nom/IN_con.A_cross)^(1)*(m_flow/IN_con.m_flow_nom)
        ^(1);

    end dp_nominalPressureLossLawDensity_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalPressureLossLawDensity\_MFLOW
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate mass flow rate \| nominal operation
point \| pressure loss law (coefficient and exponent) \| density
dependence**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density) via interpolation from an operation
point. This generic function considers the pressure loss law via a
nominal pressure loss (dp\_nom), a pressure loss coefficient (zeta\_TOT)
and a pressure loss law exponent (exp) as well as the influence of
density on pressure loss.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
`dp\_nominalPressurelosslawDensity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DP>`_
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalPressureLossLawDensity>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| Type                                                                                                                                                                                           | Name      | Default   | Description                                                          |
+================================================================================================================================================================================================+===========+===========+======================================================================+
| Constant inputs                                                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| `dp\_nominalPressureLossLawDensity\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_con>`_   | IN\_con   |           | Input record for function dp\_nominalPressureLossLawDensity\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| Variable inputs                                                                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| `dp\_nominalPressureLossLawDensity\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_var>`_   | IN\_var   |           | Input record for function dp\_nominalPressureLossLawDensity\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| Input                                                                                                                                                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                                                  | dp        |           | Pressure loss [Pa]                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------+
| Type                                                                    | Name      | Description                                                           |
+=========================================================================+===========+=======================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_nominalPressurelosslawDensity\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_nominalPressureLossLawDensity_MFLOW 
      "Generic pressure loss | calculate mass flow rate | nominal operation point | pressure loss law (coefficient and exponent) | density dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_con
        IN_con "Input record for function dp_nominalPressureLossLawDensity_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_var
        IN_var "Input record for function dp_nominalPressureLossLawDensity_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW 
        "Output for function dp_nominalPressurelosslawDensity_MFLOW";

    protected 
      Real exp_density=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                1 - IN_con.exp else 1 "Exponent of density fraction (rho/rho_nom)";
      SI.MassFlowRate m_flow_nom=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                IN_con.m_flow_nom else IN_var.rho*IN_con.V_flow_nom 
        "Nominal mean flow velocity at operation point";

      //Documentation

    algorithm 
      M_FLOW := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              0.01*IN_con.dp_nom,
              1/IN_con.exp)*IN_con.m_flow_nom*(IN_con.A_cross/IN_con.A_cross_nom)
        *(IN_con.rho_nom/IN_var.rho)^(exp_density/IN_con.exp)*((1/IN_con.dp_nom)
        *(IN_con.zeta_TOT_nom/IN_var.zeta_TOT))^(1/IN_con.exp) else IN_con.m_flow_nom
        *(IN_con.A_cross/IN_con.A_cross_nom)*(IN_con.rho_nom/IN_var.rho)^(
        exp_density/1)*((dp/IN_con.dp_nom)*(IN_con.zeta_TOT_nom/IN_var.zeta_TOT))
        ^(1/1);
    end dp_nominalPressureLossLawDensity_MFLOW;

--------------

|image44| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalPressureLossLawDensity\_IN\_con
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_nominalPressureLossLawDensity\_DP and
dp\_nominalPressureLossLawDensity\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_nominalPressureLosslawDensity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DP>`_
and
`dp\_nominalPressureLosslawDensity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_con>`_
(Base record for generic pressure loss function).

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

    record dp_nominalPressureLossLawDensity_IN_con 
      "Input record for function dp_nominalPressureLossLawDensity_DP and dp_nominalPressureLossLawDensity_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_con;

    end dp_nominalPressureLossLawDensity_IN_con;

--------------

|image45| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_nominalPressureLossLawDensity\_IN\_var
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_nominalPressureLossLawDensity\_DP and
dp\_nominalPressureLossLawDensity\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_nominalPressureLosslawDensity\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DP>`_
and
`dp\_nominalPressureLosslawDensity\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_var>`_
(Base record for generic pressure loss function).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+
| Type                                                                                                                                              | Name        | Default   | Description                     |
+===================================================================================================================================================+=============+===========+=================================+
| Generic variables                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+
| `PressureLossCoefficient <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossCoefficient>`_   | zeta\_TOT   | 0.2       | Pressure loss coefficient [1]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+
| Fluid properties                                                                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                       | rho         |           | Density of fluid [kg/m3]        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_nominalPressureLossLawDensity_IN_var 
      "Input record for function dp_nominalPressureLossLawDensity_DP and dp_nominalPressureLossLawDensity_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_var;

      //fluid property variables
      SI.Density rho "Density of fluid";

    end dp_nominalPressureLossLawDensity_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_pressureLossCoefficient\_DP
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate pressure loss \| pressure loss
coefficient (zeta\_TOT)**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss in dependence of a pressure loss
coefficient.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_pressureLossCoefficient\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_pressureLossCoefficient>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| Type                                                                                                                                                                               | Name      | Default   | Description                                        |
+====================================================================================================================================================================================+===========+===========+====================================================+
| Constant inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| `dp\_pressureLossCoefficient\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_con>`_   | IN\_con   |           | Input record for dp\_pressureLossCoefficient\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| Variable inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| `dp\_pressureLossCoefficient\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_var>`_   | IN\_var   |           | Input record for dp\_pressureLossCoefficient\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| Input                                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                                              | m\_flow   |           | Mass flow rate [kg/s]                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+------------------------------------------------------------+
| Type                                                            | Name   | Description                                                |
+=================================================================+========+============================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_pressureLossCoefficient\_DP [Pa]   |
+-----------------------------------------------------------------+--------+------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_pressureLossCoefficient_DP 
      "Generic pressure loss | calculate pressure loss | pressure loss coefficient (zeta_TOT)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_con
        IN_con "Input record for dp_pressureLossCoefficient_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_var
        IN_var "Input record for dp_pressureLossCoefficient_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_pressureLossCoefficient_DP";

      //Documentation

    algorithm 
      DP := 0.5*IN_var.zeta_TOT*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              (IN_con.dp_smooth/(0.5*IN_var.zeta_TOT*IN_var.rho))^0.5*IN_var.rho
          *IN_con.A_cross,
              2)/(IN_var.rho*(IN_con.A_cross)^2);
    end dp_pressureLossCoefficient_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_pressureLossCoefficient\_MFLOW
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate mass flow rate \| pressure loss
coefficient (zeta\_TOT)**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss in dependence of a pressure loss
coefficient.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
`dp\_pressureLossCoefficient\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DP>`_
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_pressureLossCoefficient>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| Type                                                                                                                                                                               | Name      | Default   | Description                                                    |
+====================================================================================================================================================================================+===========+===========+================================================================+
| Constant inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| `dp\_pressureLossCoefficient\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_con>`_   | IN\_con   |           | Input record for function dp\_pressureLossCoefficient\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| Variable inputs                                                                                                                                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| `dp\_pressureLossCoefficient\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_var>`_   | IN\_var   |           | Input record for function dp\_pressureLossCoefficient\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| Input                                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                                      | dp        |           | Pressure loss [Pa]                                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+------------------------------------------------------------------+
| Type                                                                    | Name      | Description                                                      |
+=========================================================================+===========+==================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_pressureLossCoefficientt\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_pressureLossCoefficient_MFLOW 
      "Generic pressure loss | calculate mass flow rate | pressure loss coefficient (zeta_TOT)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_con
        IN_con "Input record for function dp_pressureLossCoefficient_MFLOW";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_var
        IN_var "Input record for function dp_pressureLossCoefficient_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW 
        "Output for function dp_pressureLossCoefficientt_MFLOW";

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*IN_con.A_cross*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              IN_con.dp_smooth,
              0.5)/(0.5*IN_var.zeta_TOT*IN_var.rho)^0.5;
    end dp_pressureLossCoefficient_MFLOW;

--------------

|image46| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_pressureLossCoefficient\_IN\_con
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_pressureLossCoefficient\_DP and
dp\_pressureLossCoefficient\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_pressureLossCoefficient\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DP>`_
and
`dp\_pressureLossCoefficient\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_MFLOW>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+--------------+----------------------------------+---------------------------------------------------------+
| Type                                                            | Name         | Default                          | Description                                             |
+=================================================================+==============+==================================+=========================================================+
| Generic variables                                               |
+-----------------------------------------------------------------+--------------+----------------------------------+---------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_           | A\_cross     | Modelica.Constants.pi\*0.1^2/4   | Cross sectional area [m2]                               |
+-----------------------------------------------------------------+--------------+----------------------------------+---------------------------------------------------------+
| Linearisation                                                   |
+-----------------------------------------------------------------+--------------+----------------------------------+---------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp\_smooth   | 1                                | Start linearisation for decreasing pressure loss [Pa]   |
+-----------------------------------------------------------------+--------------+----------------------------------+---------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_pressureLossCoefficient_IN_con 
      "Input record for function dp_pressureLossCoefficient_DP and dp_pressureLossCoefficient_MFLOW"
      extends Modelica.Icons.Record;

      //generic variables
      SI.Area A_cross=Modelica.Constants.pi*0.1^2/4 "Cross sectional area";

      //linearisation
      SI.Pressure dp_smooth=1 "Start linearisation for decreasing pressure loss";

    end dp_pressureLossCoefficient_IN_con;

--------------

|image47| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_pressureLossCoefficient\_IN\_var
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_pressureLossCoefficient\_DP and
dp\_pressureLossCoefficient\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_pressureLossCoefficient\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DP>`_
and
`dp\_pressureLossCoefficient\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_MFLOW>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+---------------------------------+
| Type                                                                                                                                              | Name        | Default       | Description                     |
+===================================================================================================================================================+=============+===============+=================================+
| Generic variables                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+---------------------------------+
| `PressureLossCoefficient <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.PressureLossCoefficient>`_   | zeta\_TOT   | 0.02\*1/0.1   | Pressure loss coefficient [1]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+---------------------------------+
| FluidProperties                                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+---------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                       | rho         |               | Density of fluid [kg/m3]        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+-------------+---------------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_pressureLossCoefficient_IN_var 
      "Input record for function dp_pressureLossCoefficient_DP and dp_pressureLossCoefficient_MFLOW"
      extends Modelica.Icons.Record;

      //generic variables
      TYP.PressureLossCoefficient zeta_TOT=0.02*1/0.1 "Pressure loss coefficient";

      //fluid property variables
      SI.Density rho "Density of fluid";

    end dp_pressureLossCoefficient_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_volumeFlowRate\_DP
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate pressure loss \| quadratic function
(dp=a\*V\_flow^2 + b\*V\_flow)**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss with linear or quadratic
dependence on volume flow rate. The function can be used to calculate
pressure loss at known mass flow rate **or** mass flow rate at known
pressure loss.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_volumeFlowRate\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                                        |
+==================================================================================================================================================================+===========+===========+====================================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| `dp\_volumeFlowRate\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con>`_   | IN\_con   |           | Input record for function dp\_volumeFlowRate\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| `dp\_volumeFlowRate\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var>`_   | IN\_var   |           | Input record for function dp\_volumeFlowRate\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| Input                                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                            | m\_flow   |           | Mass flow rate [kg/s]                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------------+
| Type                                                            | Name   | Description                                       |
+=================================================================+========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_volumeFlowRate\_DP [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_volumeFlowRate_DP 
      "Generic pressure loss | calculate pressure loss | quadratic function (dp=a*V_flow^2 + b*V_flow)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con
        IN_con "Input record for function dp_volumeFlowRate_DP";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var
        IN_var "Input record for function dp_volumeFlowRate_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_volumeFlowRate_DP";

    protected 
      Real a=max(Modelica.Constants.eps, abs(IN_con.a));
      Real b=max(Modelica.Constants.eps, abs(IN_con.b));

      SI.VolumeFlowRate V_flow=m_flow/max(Modelica.Constants.eps, IN_var.rho) 
        "Volume flow rate";
      SI.Pressure dp_min=IN_con.dp_min 
        "Start of approximation for decreasing pressure loss";
      SI.VolumeFlowRate V_flow_smooth=if IN_con.a > 0 then -(b/(2*a) + ((-b/(2*a))^
          2 + dp_min/a)^0.5) else dp_min/b 
        "Start of approximation for decreasing volume flow rate";

      //Documentation

    algorithm 
      DP := a*Dissipation.Utilities.Functions.General.SmoothPower(
              V_flow,
              V_flow_smooth,
              2) + b*V_flow;
    end dp_volumeFlowRate_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_volumeFlowRate\_MFLOW
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure loss \| calculate mass flow rate \| quadratic
function (dp=a\*V\_flow^2 + b\*V\_flow)**

Information
~~~~~~~~~~~

::

Calculation of a generic pressure loss with linear or quadratic
dependence on volume flow rate. The function can be used to calculate
pressure loss at known mass flow rate **or** mass flow rate at known
pressure loss.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
`dp\_volumeFlowRate\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP>`_
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate>`_.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                                           |
+==================================================================================================================================================================+===========+===========+=======================================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `dp\_volumeFlowRate\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con>`_   | IN\_con   |           | Input record for function dp\_volumeFlowRate\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `dp\_volumeFlowRate\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var>`_   | IN\_var   |           | Input record for function dp\_volumeFlowRate\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Input                                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                    | dp        |           | Pressure loss [Pa]                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+--------------------------------------------------------+
| Type                                                                    | Name      | Description                                            |
+=========================================================================+===========+========================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_volumeFlowRate\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_volumeFlowRate_MFLOW 
      "Generic pressure loss | calculate mass flow rate | quadratic function (dp=a*V_flow^2 + b*V_flow)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con
        IN_con "Input record for function dp_volumeFlowRate_MFLOW";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var
        IN_var "Input record for function dp_volumeFlowRate_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_volumeFlowRate_MFLOW";

    protected 
      Real a=max(Modelica.Constants.eps, abs(IN_con.a));
      Real b=max(Modelica.Constants.eps, abs(IN_con.b));

      SI.Pressure dp_min=IN_con.dp_min 
        "Start of approximation for decreasing pressure loss";

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*(-b/(2*a) +
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              (b/(2*a))^2 + (1/a)*dp,
              (b/(2*a))^2 + (1/a)*dp_min,
              0.5));
    end dp_volumeFlowRate_MFLOW;

--------------

|image48| `Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_volumeFlowRate\_IN\_con
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_volumeFlowRate\_DP and
dp\_volumeFlowRate\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_volumeFlowRate\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP>`_
and
`dp\_volumeFlowRate\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW>`_
(Base record for generic pressure loss function \| quadratic function
(dp=a\*Vdot^2 + b\*Vdot)).

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

    record dp_volumeFlowRate_IN_con 
      "Input record for function dp_volumeFlowRate_DP and dp_volumeFlowRate_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW;

      SI.Pressure dp_min=0.1 "Start of approximation for decreasing pressure loss";


    end dp_volumeFlowRate_IN_con;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.General <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General>`_.dp\_volumeFlowRate\_IN\_var
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_volumeFlowRate\_DP and
dp\_volumeFlowRate\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_volumeFlowRate\_DP <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP>`_
and
`dp\_volumeFlowRate\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW>`_.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                          | Name   | Default   | Description                |
+===============================================================+========+===========+============================+
| Fluid properties                                              |
+---------------------------------------------------------------+--------+-----------+----------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho    |           | Density of fluid [kg/m3]   |
+---------------------------------------------------------------+--------+-----------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_volumeFlowRate_IN_var 
      "Input record for function dp_volumeFlowRate_DP and dp_volumeFlowRate_MFLOW"

      SI.Density rho "Density of fluid";

    end dp_volumeFlowRate_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:22
2010.

.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_idealGas\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_idealGas\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_idealGas\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_idealGas\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalDensityViscosity\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalDensityViscosity\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalDensityViscosity\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalDensityViscosity\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalPressureLossLawDensity\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalPressureLossLawDensity\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalPressureLossLawDensity\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_nominalPressureLossLawDensity\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_pressureLossCoefficient\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_pressureLossCoefficient\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_pressureLossCoefficient\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_pressureLossCoefficient\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_volumeFlowRate\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_volumeFlowRate\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_volumeFlowRate\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.General.dp\_volumeFlowRate\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_varS.png
.. |image20| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DPS.png
.. |image21| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DPS.png
.. |image22| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conS.png
.. |image23| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conS.png
.. |image24| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DPS.png
.. |image25| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DPS.png
.. |image26| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conS.png
.. |image27| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conS.png
.. |image28| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DPS.png
.. |image29| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DPS.png
.. |image30| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conS.png
.. |image31| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conS.png
.. |image32| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DPS.png
.. |image33| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DPS.png
.. |image34| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conS.png
.. |image35| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conS.png
.. |image36| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DPS.png
.. |image37| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DPS.png
.. |image38| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_conS.png
.. |image39| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_varS.png
.. |image40| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conI.png
.. |image41| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conI.png
.. |image42| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conI.png
.. |image43| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conI.png
.. |image44| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conI.png
.. |image45| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conI.png
.. |image46| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conI.png
.. |image47| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conI.png
.. |image48| image:: Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_conI.png
