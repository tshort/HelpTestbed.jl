====================================================
Modelica.Fluid.Dissipation.PressureLoss.StraightPipe
====================================================

`Modelica.Fluid.Dissipation.PressureLoss <Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss>`_.StraightPipe
----------------------------------------------------------------------------------------------------------------------------------------------

**Package for pressure loss calculation of straight pipes**

Information
~~~~~~~~~~~

::

Straight Pipe
^^^^^^^^^^^^^

Laminar flow
''''''''''''

Calculation of pressure loss in a straight pipe for **laminar** flow
regime of single-phase fluid flow only. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_laminar>`_.

Turbulent flow
''''''''''''''

Calculation of pressure loss in a straight pipe for **turbulent** flow
regime of single-phase fluid flow only considering surface roughness.
`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent>`_.

Overall flow
''''''''''''

Calculation of pressure loss in a straight pipe for **laminar or
turbulent** flow regime of single-phase fluid flow only considering
surface roughness. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall>`_.

Two phase overall flow
''''''''''''''''''''''

Calculation of pressure loss for **two phase flow** in a horizontal
**or** vertical straight pipe for an overall flow regime considering
frictional, momentum and geodetic pressure loss. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_twoPhaseOverall>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                             | Description                                                                                                     |
+==================================================================================================================================================================================================================================================================+=================================================================================================================+
| |image15| `dp\_laminar\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DP>`_                                                                                                      | Pressure loss of straight pipe \| calculate pressure loss\| laminar flow regime (Hagen-Poiseuille)              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image16| `dp\_laminar\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW>`_                                                                                                | Pressure loss of straight pipe \| calculate mass flow rate \| laminar flow regime (Hagen-Poiseuille)            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image17| `dp\_laminar\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_con>`_                                                                                             | Input record for function dp\_laminar\_DP and dp\_laminar\_MFLOW                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image18| `dp\_laminar\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_var>`_                                                                                             | Input record for function dp\_laminar\_DP and dp\_laminar\_MFLOW                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image19| `dp\_overall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP>`_                                                                                                      | Pressure loss of straight pipe \| calculate pressure loss \| overall flow regime \| surface roughness           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image20| `dp\_overall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW>`_                                                                                                | Pressure loss of straight pipe \| calculate mass flow rate \| overall flow regime \| surface roughness          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image21| `dp\_overall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_con>`_                                                                                             | Input record for function dp\_overall\_DP and dp\_overall\_MFLOW                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image22| `dp\_overall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var>`_                                                                                             | Input record for function dp\_overall\_DP and dp\_overall\_MFLOW                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image23| `dp\_turbulent\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP>`_                                                                                                  | Pressure loss of straight pipe \| calculate pressure loss \| turbulent flow regime \| surface roughness         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image24| `dp\_turbulent\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW>`_                                                                                            | Pressure loss of straight pipe \| calculate mass flow rate \| turbulent flow regime \| surface roughness        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image25| `dp\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_con>`_                                                                                         | Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image26| `dp\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_var>`_                                                                                         | Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image27| `dp\_twoPhaseOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DP>`_                                                                                      | Pressure loss of straight pipe for two phase flow \| calculate (frictional, momentum, geodetic) pressure loss   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image28| `dp\_twoPhaseOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_con>`_                                                                             | Input record for function dp\_twoPhaseOverall\_DP                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+
| |image29| `dp\_twoPhaseOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_var>`_                                                                             | Input record for function dp\_twoPhaseOverall\_DP                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_laminar\_DP
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of straight pipe \| calculate pressure loss\| laminar
flow regime (Hagen-Poiseuille)**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_DP

   Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_DP

Information
~~~~~~~~~~~

::

Calculation of pressure loss in a straight pipe for **laminar** flow
regime of an incompressible and single-phase fluid flow only.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_laminar\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_laminar>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                 |
+==============================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `dp\_laminar\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_con>`_   | IN\_con   |           | Input record for function dp\_laminar\_DP   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `dp\_laminar\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_var>`_   | IN\_var   |           | Input record for function dp\_laminar\_DP   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Input                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                        | m\_flow   |           | Mass flow rate [kg/s]                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                            | Name   | Description                                |
+=================================================================+========+============================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_laminar\_DP [Pa]   |
+-----------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_laminar_DP 
      "Pressure loss of straight pipe | calculate pressure loss| laminar flow regime (Hagen-Poiseuille)"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.

      import FD = Modelica.Fluid.Dissipation.PressureLoss.StraightPipe;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_con
        IN_con "Input record for function dp_laminar_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_var
        IN_var "Input record for function dp_laminar_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_laminar_DP";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=IN_con.d_hyd "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";

      SI.Velocity velocity=m_flow/max(MIN, IN_var.rho*A_cross) "Mean velocity";

      //Documentation

    algorithm 
      DP := 32*IN_var.eta*velocity*IN_con.L/d_hyd^2;
    end dp_laminar_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_laminar\_MFLOW
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of straight pipe \| calculate mass flow rate \| laminar
flow regime (Hagen-Poiseuille)**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_MFLOW

   Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_MFLOW

Information
~~~~~~~~~~~

::

Calculation of pressure loss in a straight pipe for **laminar** flow
regime of an incompressible and single-phase fluid flow only.

Generally this function is numerically best used for the **compressible
case**, where the pressure loss (dp) is known (out of pressures as state
variable) in the used model and the corresponding mass flow rate
(M\_FLOW) has to be calculated. On the other hand the function
`dp\_laminar\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DP>`_
is numerically best used for the **incompressible case** if the mass
flow rate (m\_flow) is known (as state variable) and the pressure loss
(DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_laminar>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                    |
+==============================================================================================================================================================+===========+===========+================================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| `dp\_laminar\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_con>`_   | IN\_con   |           | Input record for function dp\_laminar\_MFLOW   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| `dp\_laminar\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_var>`_   | IN\_var   |           | Input record for function dp\_laminar\_MFLOW   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| Input                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                | dp        |           | Pressure loss [Pa]                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-------------------------------------------------+
| Type                                                                    | Name      | Description                                     |
+=========================================================================+===========+=================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_laminar\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_laminar_MFLOW 
      "Pressure loss of straight pipe | calculate mass flow rate | laminar flow regime (Hagen-Poiseuille)"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.

      import FD = Modelica.Fluid.Dissipation.PressureLoss.StraightPipe;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_con
        IN_con "Input record for function dp_laminar_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_var
        IN_var "Input record for function dp_laminar_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_laminar_MFLOW";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=max(MIN, IN_con.d_hyd) "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*A_cross*(dp*d_hyd^2/(32*IN_var.eta*IN_con.L));
    end dp_laminar_MFLOW;

--------------

|image30| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_laminar\_IN\_con
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_laminar\_DP and dp\_laminar\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_laminar\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DP>`_
and
`dp\_laminar\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW>`_.

::

Extends from
`Utilities.Records.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.StraightPipe>`_
(Input for straight pipe).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+-----------+--------------------------+
| Type                                                            | Name     | Default   | Description              |
+=================================================================+==========+===========+==========================+
| Straight pipe                                                   |
+-----------------------------------------------------------------+----------+-----------+--------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1       | Hydraulic diameter [m]   |
+-----------------------------------------------------------------+----------+-----------+--------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L        | 1         | Length [m]               |
+-----------------------------------------------------------------+----------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_laminar_IN_con 
      "Input record for function dp_laminar_DP and dp_laminar_MFLOW"
      extends Utilities.Records.PressureLoss.StraightPipe;


    end dp_laminar_IN_con;

--------------

|image31| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_laminar\_IN\_var
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_laminar\_DP and dp\_laminar\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_laminar\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DP>`_
and
`dp\_laminar\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var>`_
(Input record for function dp\_overall\_DP and dp\_overall\_MFLOW).

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

    record dp_laminar_IN_var 
      "Input record for function dp_laminar_DP and dp_laminar_MFLOW"

      extends Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var;


    end dp_laminar_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_overall\_DP
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of straight pipe \| calculate pressure loss \| overall
flow regime \| surface roughness**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_DP

   Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_DP

Information
~~~~~~~~~~~

::

Calculation of pressure loss in a straight pipe for **overall** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_overall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                 |
+==============================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `dp\_overall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_con>`_   | IN\_con   |           | Input record for function dp\_overall\_DP   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `dp\_overall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var>`_   | IN\_var   |           | Input record for function dp\_overall\_DP   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Input                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                        | m\_flow   |           | Mass flow rate [kg/s]                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                            | Name   | Description                                |
+=================================================================+========+============================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_overall\_DP [Pa]   |
+-----------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_overall_DP 
      "Pressure loss of straight pipe | calculate pressure loss | overall flow regime | surface roughness"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.StraightPipe;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_con
        IN_con "Input record for function dp_overall_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var
        IN_var "Input record for function dp_overall_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_overall_DP";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=max(MIN, IN_con.d_hyd) "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      Real k=max(MIN, abs(IN_con.K)/IN_con.d_hyd) "Relative roughness";
      SI.Length perimeter=PI*IN_con.d_hyd "Perimeter";

      //SOURCE_1: p.81, fig. 2-3, sec 21-22: definition of flow regime boundaries
      SI.ReynoldsNumber Re_lam_min=1e3 "Minimum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_lam_max=2090*(1/max(0.007, k))^0.0635 
        "Maximum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(Re_lam_min, 754*
          Modelica.Math.exp(if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      SI.ReynoldsNumber Re=
          Modelica.Fluid.Dissipation.Utilities.Functions.General.ReynoldsNumber(
          A_cross,
          perimeter,
          IN_var.rho,
          IN_var.eta,
          m_flow);

      //Documentation

    algorithm 
      DP := SMOOTH(
              Re_lam_min,
              Re_lam_max,
              Re)*Dissipation.PressureLoss.StraightPipe.dp_laminar_DP(
              IN_con,
              IN_var,
              m_flow) + SMOOTH(
              Re_lam_max,
              Re_lam_min,
              Re)*Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP(
              IN_con,
              IN_var,
              m_flow);
    end dp_overall_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_overall\_MFLOW
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of straight pipe \| calculate mass flow rate \| overall
flow regime \| surface roughness**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_MFLOW

   Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_MFLOW

Information
~~~~~~~~~~~

::

Calculation of pressure loss in a straight pipe for **overall** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the **compressible
case**, where the pressure loss (dp) is known (out of pressures as state
variable) in the used model and the corresponding mass flow rate
(M\_FLOW) has to be calculated. On the other hand the function
`dp\_overall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP>`_
is numerically best used for the **incompressible case** if the mass
flow rate (m\_flow) is known (as state variable) and the pressure loss
(DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                    |
+==============================================================================================================================================================+===========+===========+================================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| `dp\_overall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_con>`_   | IN\_con   |           | Input record for function dp\_overall\_MFLOW   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| `dp\_overall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var>`_   | IN\_var   |           | Input record for function dp\_overall\_MFLOW   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| Input                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                | dp        |           | Pressure loss [Pa]                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+------------------------------------------------+
| Type                                                                    | Name      | Description                                    |
+=========================================================================+===========+================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output of function dp\_overall\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_overall_MFLOW 
      "Pressure loss of straight pipe | calculate mass flow rate | overall flow regime | surface roughness"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.StraightPipe;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_con
        IN_con "Input record for function dp_overall_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var
        IN_var "Input record for function dp_overall_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output of function dp_overall_MFLOW";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=max(MIN, IN_con.d_hyd) "Hydraulic diameter";
      SI.Area A_cross=max(MIN, PI*IN_con.d_hyd^2/4) "Circular cross sectional area";
      Real k=max(MIN, abs(IN_con.K)/IN_con.d_hyd) "Relative roughness";

      //SOURCE_1: p.81, fig. 2-3, sec 21-22: definition of flow regime boundaries
      SI.ReynoldsNumber Re_lam_min=1e3 "Minimum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_lam_max=2090*(1/max(0.007, k))^0.0635 
        "Maximum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_turb_min=4e3 
        "Minimum Reynolds number for turbulent regime";

      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(Re_lam_min, 754*
          Modelica.Math.exp(if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      //determining darcy friction factor out of pressure loss calulation for straight pipe:
      //dp = lambda_FRI*L/d_hyd*(rho/2)*velocity^2 and assuming lambda_FRI == lambda_FRI_calc/Re^2
      TYP.DarcyFrictionFactor lambda_FRI_calc=2*abs(dp)*d_hyd^3*IN_var.rho/(IN_con.L
          *IN_var.eta^2) "Adapted Darcy friction factor";

      //SOURCE_3: p.Lab 1, eq. 5: determine Re assuming laminar regime (Blasius)
      SI.ReynoldsNumber Re_lam=lambda_FRI_calc/64 
        "Reynolds number assuming laminar regime";

      //SOURCE_3: p.Lab 2, eq. 10: determine Re assuming turbulent regime (Colebrook-White)
      SI.ReynoldsNumber Re_turb=if IN_con.roughness == 1 then (max(MIN,
          lambda_FRI_calc)/0.3164)^(1/1.75) else -2*sqrt(max(lambda_FRI_calc, MIN))
          *Modelica.Math.log10(2.51/sqrt(max(lambda_FRI_calc, MIN)) + k/3.7) 
        "Reynolds number assuming turbulent regime";

      //determine actual flow regime
      SI.ReynoldsNumber Re_check=if Re_lam < Re_lam_leave then Re_lam else Re_turb;
      //determine Re for transition regime
      SI.ReynoldsNumber Re_trans=if Re_lam >= Re_lam_leave then 
          Modelica.Fluid.Dissipation.Utilities.Functions.General.CubicInterpolation_DP(
          Re_check,
          Re_lam_leave,
          Re_turb_min,
          k,
          lambda_FRI_calc) else 0;
      //determine actual Re
      SI.ReynoldsNumber Re=if Re_lam < Re_lam_leave then Re_lam else if Re_turb >
          Re_turb_min then Re_turb else Re_trans;

      //Documentation

    algorithm 
      M_FLOW := SMOOTH(
              Re_lam_min,
              Re_turb,
              Re)*Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW(
              IN_con,
              IN_var,
              dp) + SMOOTH(
              Re_turb,
              Re_lam_min,
              Re)*Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW(
              IN_con,
              IN_var,
              dp);
    end dp_overall_MFLOW;

--------------

|image32| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_overall\_IN\_con
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_overall\_DP and dp\_overall\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_overall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP>`_
and
`dp\_overall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW>`_.

::

Extends from
`dp\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_con>`_
(Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| Type                                                                                                                  | Name        | Default                           | Description                                            |
+=======================================================================================================================+=============+===================================+========================================================+
| Straight pipe                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Roughness <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Roughness>`_   | roughness   | Dissipation.Utilities.Types....   | Choice of considering surface roughness                |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                         | d\_hyd      | 0.1                               | Hydraulic diameter [m]                                 |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                             | L           | 1                                 | Length [m]                                             |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                             | K           | 0                                 | Roughness (average height of surface asperities) [m]   |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_overall_IN_con 
      "Input record for function dp_overall_DP and dp_overall_MFLOW"

      //straight pipe variables
      extends dp_turbulent_IN_con;


    end dp_overall_IN_con;

--------------

|image33| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_overall\_IN\_var
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_overall\_DP and dp\_overall\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_overall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP>`_
and
`dp\_overall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW>`_.

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

    record dp_overall_IN_var 
      "Input record for function dp_overall_DP and dp_overall_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;


    end dp_overall_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_turbulent\_DP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of straight pipe \| calculate pressure loss \| turbulent
flow regime \| surface roughness**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_DP

   Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_DP

Information
~~~~~~~~~~~

::

Calculation of pressure loss in a straight pipe for **turbulent** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_turbulent\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                                   |
+==================================================================================================================================================================+===========+===========+===============================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `dp\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_con>`_   | IN\_con   |           | Input record for function dp\_turbulent\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `dp\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_var>`_   | IN\_var   |           | Input record for function dp\_turbulent\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Input                                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                            | m\_flow   |           | Mass flow rate [kg/s]                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+----------------------------------------------+
| Type                                                            | Name   | Description                                  |
+=================================================================+========+==============================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_turbulent\_DP [Pa]   |
+-----------------------------------------------------------------+--------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_turbulent_DP 
      "Pressure loss of straight pipe | calculate pressure loss | turbulent flow regime | surface roughness"

      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //SOURCE_2: Miller, D.S.: INTERNAL FLOW SYSTEMS, 2nd edition, 1984.
      //SOURCE_3: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002.
      import FD = Modelica.Fluid.Dissipation.PressureLoss.StraightPipe;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_con
        IN_con "Input record for function dp_turbulent_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_var
        IN_var "Input record for function dp_turbulent_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_turbulent_DP";

    protected 
      type TYP1 = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;

      SI.ReynoldsNumber Re_min=1;
      SI.Velocity v_min=Re_min*IN_var.eta/(IN_var.rho*IN_con.d_hyd);

      SI.Diameter d_hyd=IN_con.d_hyd "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      Real k=max(MIN, abs(IN_con.K)/IN_con.d_hyd) "Relative roughness";

      //SOURCE_1: p.81, fig. 2-3, sec 21-22: definition of flow regime boundaries
      SI.ReynoldsNumber Re_lam_min=1e3 "Minimum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_lam_max=2090*(1/max(0.007, k))^0.0635 
        "Maximum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_turb_min=4e3 
        "Minimum Reynolds number for turbulent regime";

      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(Re_lam_min, 754*
          Modelica.Math.exp(if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      SI.Velocity velocity=m_flow/(IN_var.rho*A_cross) "Mean velocity";
      SI.ReynoldsNumber Re=max(Re_min, IN_var.rho*abs(velocity)*d_hyd/IN_var.eta);

      //SOURCE_2: p.191, eq. 8.4: determining darcy friction factor
      //assuming lambda_FRI == lambda_FRI_calc/Re^2
      TYP.DarcyFrictionFactor lambda_FRI_smooth=0.3164*Re^(1.75) 
        "Darcy friction factor neglecting surface roughness (Blasius)";
      //here with lambda_FRI_rough == lambda_FRI*Re^2
      TYP.DarcyFrictionFactor lambda_FRI_rough=0.25*(max(Re, Re_lam_leave)/
          Modelica.Math.log10(k/3.7 + 5.74/max(Re, Re_lam_leave)^0.9))^2 
        "Darcy friction factor considering surface roughness";
      TYP.DarcyFrictionFactor lambda_FRI=if IN_con.roughness == TYP1.Neglected then 
                lambda_FRI_smooth else lambda_FRI_rough "Darcy friction factor";
      TYP.DarcyFrictionFactor lambda_FRI_calc=if Re < Re_lam_leave then 64/Re else 
          if Re > Re_turb_min then lambda_FRI/Re^2 else 
          Modelica.Fluid.Dissipation.Utilities.Functions.General.CubicInterpolation_MFLOW(
          Re,
          Re_lam_leave,
          Re_turb_min,
          k)/Re^2 "Darcy friction factor";

      TYP.PressureLossCoefficient zeta_TOT=lambda_FRI_calc*IN_con.L/d_hyd 
        "Pressure loss coefficient";

      //Documentation

    algorithm 
      DP := zeta_TOT*(IN_var.rho/2)*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              velocity,
              v_min,
              2);
    end dp_turbulent_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_turbulent\_MFLOW
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of straight pipe \| calculate mass flow rate \|
turbulent flow regime \| surface roughness**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_MFLOW

   Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_MFLOW

Information
~~~~~~~~~~~

::

Calculation of pressure loss in a straight pipe for **turbulent** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
`dp\_turbulent\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP>`_
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                                      |
+==================================================================================================================================================================+===========+===========+==================================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `dp\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_con>`_   | IN\_con   |           | Input record for function dp\_turbulent\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `dp\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_var>`_   | IN\_var   |           | Input record for function dp\_turbulent\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| Input                                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                    | dp        |           | Pressure loss [Pa]                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-------------------------+
| Type                                                                    | Name      | Description             |
+=========================================================================+===========+=========================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Mass flow rate [kg/s]   |
+-------------------------------------------------------------------------+-----------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_turbulent_MFLOW 
      "Pressure loss of straight pipe | calculate mass flow rate | turbulent flow regime | surface roughness"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //SOURCE_2: Miller, D.S.: INTERNAL FLOW SYSTEMS, 2nd edition, 1984.
      //SOURCE_3: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002.

      import FD = Modelica.Fluid.Dissipation.PressureLoss.StraightPipe;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;
      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_con
        IN_con "Input record for function dp_turbulent_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_var
        IN_var "Input record for function dp_turbulent_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Mass flow rate";

    protected 
      type TYP1 = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;
      SI.ReynoldsNumber Re_min=1;

      SI.Diameter d_hyd=max(MIN, IN_con.d_hyd) "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      Real k=max(MIN, abs(IN_con.K)/IN_con.d_hyd) "Relative roughness";

      //SOURCE_1: p.81, fig. 2-3, sec 21-22: definition of flow regime boundaries
      SI.ReynoldsNumber Re_lam_min=1e3 "Minimum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_lam_max=2090*(1/max(0.007, k))^0.0635 
        "Maximum Reynolds number for laminar regime";
      SI.ReynoldsNumber Re_turb_min=4e3 
        "Minimum Reynolds number for turbulent regime";

      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(Re_lam_min, 754*
          Modelica.Math.exp(if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      //determining darcy friction factor out of pressure loss calulation for straight pipe:
      //dp = lambda_FRI*L/d_hyd*(rho/2)*velocity^2 and assuming lambda_FRI == lambda_FRI_calc/Re^2
      TYP.DarcyFrictionFactor lambda_FRI_calc=2*abs(dp)*d_hyd^3*IN_var.rho/(IN_con.L
          *IN_var.eta^2) "Adapted Darcy friction factor";

      //SOURCE_3: p.Lab 1, eq. 5: determine Re assuming laminar regime (Hagen-Poiseuille)
      SI.ReynoldsNumber Re_lam=lambda_FRI_calc/64 
        "Reynolds number assuming laminar regime";

      //SOURCE_3: p.Lab 2, eq. 10: determine Re assuming turbulent regime (Colebrook-White)
      SI.ReynoldsNumber Re_turb=if IN_con.roughness == TYP1.Neglected then (max(MIN,
          lambda_FRI_calc)/0.3164)^(1/1.75) else -2*sqrt(max(lambda_FRI_calc, MIN))
          *Modelica.Math.log10(2.51/sqrt(max(lambda_FRI_calc, MIN)) + k/3.7) 
        "Reynolds number assuming turbulent regime";

      //determine actual flow regime
      SI.ReynoldsNumber Re_check=if Re_lam < Re_lam_leave then Re_lam else Re_turb;
      //determine Re for transition regime
      SI.ReynoldsNumber Re_trans=if Re_lam >= Re_lam_leave then 
          Modelica.Fluid.Dissipation.Utilities.Functions.General.CubicInterpolation_DP(
          Re_check,
          Re_lam_leave,
          Re_turb_min,
          k,
          lambda_FRI_calc) else 0;
      //determine actual Re
      SI.ReynoldsNumber Re=if Re_lam < Re_lam_leave then Re_lam else if Re_turb >
          Re_turb_min then Re_turb else Re_trans;

      //determine velocity
      SI.Velocity velocity=(if dp >= 0 then Re else -Re)*IN_var.eta/(IN_var.rho*
          d_hyd) "Mean velocity";

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*A_cross*velocity;
    end dp_turbulent_MFLOW;

--------------

|image34| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_turbulent\_IN\_con
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_turbulent\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP>`_
and
`dp\_turbulent\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW>`_.

::

Extends from
`Utilities.Records.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.StraightPipe>`_
(Input for straight pipe).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| Type                                                                                                                  | Name        | Default                           | Description                                            |
+=======================================================================================================================+=============+===================================+========================================================+
| Straight pipe                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Roughness <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Roughness>`_   | roughness   | Dissipation.Utilities.Types....   | Choice of considering surface roughness                |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                         | d\_hyd      | 0.1                               | Hydraulic diameter [m]                                 |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                             | L           | 1                                 | Length [m]                                             |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                             | K           | 0                                 | Roughness (average height of surface asperities) [m]   |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_turbulent_IN_con 
      "Input record for function dp_turbulent_DP and dp_turbulent_MFLOW"

      Modelica.Fluid.Dissipation.Utilities.Types.Roughness roughness=Dissipation.Utilities.Types.Roughness.Neglected 
        "Choice of considering surface roughness";

      extends Utilities.Records.PressureLoss.StraightPipe;

        SI.Length K=0 "Roughness (average height of surface asperities)";

    end dp_turbulent_IN_con;

--------------

|image35| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_turbulent\_IN\_var
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_turbulent\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP>`_
and
`dp\_turbulent\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var>`_
(Input record for function dp\_overall\_DP and dp\_overall\_MFLOW).

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

    record dp_turbulent_IN_var 
      "Input record for function dp_turbulent_DP and dp_turbulent_MFLOW"

      extends Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var;

    end dp_turbulent_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_twoPhaseOverall\_DP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of straight pipe for two phase flow \| calculate
(frictional, momentum, geodetic) pressure loss**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_twoPhaseOverall\_DP

   Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_twoPhaseOverall\_DP

Information
~~~~~~~~~~~

::

Calculation of pressure loss for **two phase flow** in a horizontal
**or** vertical straight pipe for an overall flow regime considering
frictional, momentum and geodetic pressure loss.

Generally the pressure loss for two phase flow in a horizontal or a
vertical straight pipe can be calculated for the following fluid flow
regimes:

**Horizontal fluid flow** [(a) bubble flow, (b) stratified flow, (c)
wavy flow, (d) slug flow, (e) annular flow]:

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/StraightPipe/pic_twoPhaseFlowRegimes_horizontal.png
   :align: center
   :alt: pic\_twoPhaseFlowRegimes\_horizontal

   pic\_twoPhaseFlowRegimes\_horizontal
**Vertical fluid flow** [(a) bubble flow, (b) plug slug flow, (c) foam
flow, (d) annular streak flow, (e) annular flow]:

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/StraightPipe/pic_twoPhaseFlowRegimes_vertical.png
   :align: center
   :alt: pic\_twoPhaseFlowRegimes\_vertical

   pic\_twoPhaseFlowRegimes\_vertical
`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_twoPhaseOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                                         | Name      | Default   | Description                                         |
+==============================================================================================================================================================================+===========+===========+=====================================================+
| Constant inputs                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| `dp\_twoPhaseOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_con>`_   | IN\_con   |           | Input record for function dp\_twoPhaseOverall\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| Variable inputs                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| `dp\_twoPhaseOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_var>`_   | IN\_var   |           | Input record for function dp\_twoPhaseOverall\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| Input                                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                                        | m\_flow   |           | Mass flow rate [kg/s]                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------+
| Type                                                            | Name   | Description                    |
+=================================================================+========+================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Two phase pressure loss [Pa]   |
+-----------------------------------------------------------------+--------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_twoPhaseOverall_DP 
      "Pressure loss of straight pipe for two phase flow | calculate (frictional, momentum, geodetic) pressure loss"
      //SOURCE_1: Friedel,L.:IMPROVED FRICTION PRESSURE DROP CORRELATIONS FOR HORIZONTAL AND VERTICAL TWO PHASE PIPE FLOW, 3R International, Vol. 18, Issue 7, pp. 485-491, 1979
      //SOURCE_2: Chisholm,D.:PRESSURE GRADIENTS DUE TO FRICTION DURING THE FLOW OF EVAPORATING TWO-PHASE MIXTURES IN SMOOTH TUBES AND CHANNELS, Int. J. Heat Mass Transfer, Vol. 16, pp. 347-358, Pergamon Press 1973
      //SOURCE_3: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.
      //SOURCE 4: J.M. Jensen and H. Tummescheit. Moving boundary models for dynamic simulations of two-phase flows. In Proceedings of the 2nd International Modelica Conference, pp. 235-244, Oberpfaffenhofen, Germany, 2002. The Modelica Association.
      //SOURCE_5: Thome, J.R., Engineering Data Book 3, Swiss Federal Institute of Technology Lausanne (EPFL), 2009.

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_con
        IN_con "Input record for function dp_twoPhaseOverall_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_var
        IN_var "Input record for function dp_twoPhaseOverall_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Two phase pressure loss";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseFrictionalPressureLoss;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=max(MIN, IN_con.A_cross) "Cross sectional area";
      SI.Diameter d_hyd=max(MIN, 4*A_cross/max(MIN, IN_con.perimeter)) 
        "Hydraulic diameter";

      Real mdot_A=abs(m_flow)/A_cross "Mass flux";
      Real xflowEnd=min(1, max(0, abs(IN_var.x_flow_end))) 
        "Mass flow rate quality at end of length";
      Real xflowSta=min(1, max(0, abs(IN_var.x_flow_sta))) 
        "Mass flow rate quality at start of length";
      Real x_flow=(xflowEnd + xflowSta)/2 "Mean mass flow rate quality over length";

      //SOURCE_5: p.17-1 to 17-5, sec. 17.1 to 17.2: Considering cross sectional void fraction [epsilon=A_g/(A_g+A_l)]
      Real epsilon=
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.VoidFraction(
          IN_con.voidFractionApproach,
          true,
          IN_var.rho_g,
          IN_var.rho_l,
          x_flow) "Void fraction";

      //SOURCE_1: Considering frictional pressure loss w.r.t. to correlation of Friedel
      //SOURCE_2: Considering frictional pressrue loss w.r.t. to correlation of Chisholm
      SI.Pressure DP_fric=if IN_con.frictionalPressureLoss == TYP.Friedel then 
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseFriedel_DP(
          IN_con,
          IN_var,
          m_flow) else if IN_con.frictionalPressureLoss == TYP.Chisholm then 
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DP(
          IN_con,
          IN_var,
          m_flow) else 0 "Frictional pressure loss";

      //SOURCE_3: p.Lba 4, eq. 22: Considering momentum pressure loss assuming heterogeneous approach for two phase flow
      //Evaporation >> positive momentum pressure loss (assumed vice versa at condenstation)
      SI.Pressure DP_mom=if IN_con.momentumPressureLoss then 
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseMomentum_DP(
          IN_con.voidFractionApproach,
          IN_con.massFlowRateCorrection,
          IN_con.A_cross,
          IN_con.perimeter,
          IN_var.rho_g,
          IN_var.rho_l,
          IN_var.x_flow_end,
          IN_var.x_flow_sta,
          abs(m_flow)) else 0 "Momentum pressure loss";

      //SOURCE_3: p.Lbb 1, eq. 4: Considering geodetic pressure loss assuming constant void fraction for flow length
      SI.Pressure DP_geo=if IN_con.geodeticPressureLoss then 
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseGeodetic_DP(
          IN_con.voidFractionApproach,
          true,
          IN_con.length,
          IN_con.phi,
          IN_var.rho_g,
          IN_var.rho_l,
          IN_var.x_flow) else 0 "Geodetic pressure loss";

      //Documentation
    algorithm 
      DP := DP_fric + DP_mom + DP_geo;

    end dp_twoPhaseOverall_DP;

--------------

|image36| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_twoPhaseOverall\_IN\_con
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_twoPhaseOverall\_DP**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_twoPhaseOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DP>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con>`_
(Base record for two phase Flow).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Type                                                                                                                                                            | Name                     | Default                           | Description                                        |
+=================================================================================================================================================================+==========================+===================================+====================================================+
| Choices                                                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `TwoPhaseFrictionalPressureLoss <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseFrictionalPressureLoss>`_   | frictionalPressureLoss   | Dissipation.Utilities.Types....   | Choice of frictional pressure loss approach        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Roughness <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Roughness>`_                                             | voidFractionApproach     | Dissipation.Utilities.Types....   | Choice of void fraction approach                   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Boolean                                                                                                                                                         | momentumPressureLoss     | false                             | Considering momentum pressure loss                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Boolean                                                                                                                                                         | massFlowRateCorrection   | false                             | Consider heterogeneous mass flow rate correction   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Boolean                                                                                                                                                         | geodeticPressureLoss     | false                             | Considering geodetic pressure loss                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Geometry                                                                                                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                                           | A\_cross                 | PI\*0.1^2/4                       | Cross sectional area [m2]                          |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                                       | perimeter                | PI\*0.1                           | Wettet perimeter [m]                               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                                       | length                   | 1                                 | Length in fluid flow direction [m]                 |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                                                         | phi                      | 0                                 | Tilt angle to horizontal [rad]                     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_twoPhaseOverall_IN_con 
      "Input record for function dp_twoPhaseOverall_DP"

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseFrictionalPressureLoss
        frictionalPressureLoss=Dissipation.Utilities.Types.TwoPhaseFrictionalPressureLoss.Friedel 
        "Choice of frictional pressure loss approach";
      Modelica.Fluid.Dissipation.Utilities.Types.Roughness
        voidFractionApproach =                                                  Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous 
        "Choice of void fraction approach";

      Boolean momentumPressureLoss=false "Considering momentum pressure loss";
      Boolean massFlowRateCorrection=false 
        "Consider heterogeneous mass flow rate correction";
      Boolean geodeticPressureLoss=false "Considering geodetic pressure loss";

      extends Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con;
      SI.Angle phi=0 "Tilt angle to horizontal";


    end dp_twoPhaseOverall_IN_con;

--------------

|image37| `Modelica.Fluid.Dissipation.PressureLoss.StraightPipe <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe>`_.dp\_twoPhaseOverall\_IN\_var
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_twoPhaseOverall\_DP**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_twoPhaseOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DP>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var>`_
(Base record for two phase flow).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| Type                                                                            | Name           | Default                           | Description                                 |
+=================================================================================+================+===================================+=============================================+
| Fluid properties                                                                |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| Real                                                                            | x\_flow\_end   | 0                                 | Mass flow rate quality at end of length     |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| Real                                                                            | x\_flow\_sta   | 0                                 | Mass flow rate quality at start of length   |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_g         |                                   | Density of gas [kg/m3]                      |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho\_l         |                                   | Density of liquid [kg/m3]                   |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta\_g         |                                   | Dynamic viscosity of gas [Pa.s]             |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta\_l         |                                   | Dynamic viscosity of liquid [Pa.s]          |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| `SurfaceTension <Modelica_SIunits.html#Modelica.SIunits.SurfaceTension>`_       | sigma          |                                   | Surface tension [N/m]                       |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| Input                                                                           |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+
| Real                                                                            | x\_flow        | (x\_flow\_end + x\_flow\_sta)/2   | Mean mass flow rate quality over length     |
+---------------------------------------------------------------------------------+----------------+-----------------------------------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_twoPhaseOverall_IN_var 
      "Input record for function dp_twoPhaseOverall_DP"

      Real x_flow_end=0 "Mass flow rate quality at end of length";
      Real x_flow_sta=0 "Mass flow rate quality at start of length";
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var
        (                                                                           final 
          x_flow=(x_flow_end + x_flow_sta)/2);


    end dp_twoPhaseOverall_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:22
2010.

.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_laminar\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_turbulent\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_twoPhaseOverall\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_twoPhaseOverall\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_twoPhaseOverall\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conS.png
.. |image15| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPS.png
.. |image16| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DPS.png
.. |image17| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conS.png
.. |image18| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conS.png
.. |image19| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DPS.png
.. |image20| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DPS.png
.. |image21| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conS.png
.. |image22| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conS.png
.. |image23| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DPS.png
.. |image24| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DPS.png
.. |image25| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conS.png
.. |image26| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conS.png
.. |image27| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DPS.png
.. |image28| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conS.png
.. |image29| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conS.png
.. |image30| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conI.png
.. |image31| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conI.png
.. |image32| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conI.png
.. |image33| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conI.png
.. |image34| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conI.png
.. |image35| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conI.png
.. |image36| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conI.png
.. |image37| image:: Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conI.png
