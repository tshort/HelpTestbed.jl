===============================================
Modelica.Fluid.Dissipation.PressureLoss.Orifice
===============================================

`Modelica.Fluid.Dissipation.PressureLoss <Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss>`_.Orifice
-----------------------------------------------------------------------------------------------------------------------------------------

**Package for pressure loss calculation of orifices**

Information
~~~~~~~~~~~

::

Orifice
^^^^^^^

Sudden change
'''''''''''''

Calculation of the local pressure loss at a sudden change of the cross
sectional areas (sudden expansion or sudden contraction) with sharp
corners at turbulent flow regime for incompressible and single-phase
fluid flow through arbitrary shaped cross sectional area (square,
circular, etc.) considering a smooth surface. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_suddenChange>`_.

Thick edged orifice
'''''''''''''''''''

Calculation of pressure loss in thick edged orifices with sharp corners
at overall flow regime for incompressible and single-phase fluid flow
through an arbitrary shaped cross sectional area (square, circular,
etc.) considering constant influence of surface roughness. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                    | Description                                                                                                                                                                                                     |
+=========================================================================================================================================================================================================================================================+=================================================================================================================================================================================================================+
| |image8| `dp\_suddenChange\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DP>`_                                                                                              | Pressure loss of orifice with sudden change in cross sectional area \| calculate pressure loss \| turbulent flow regime \| smooth surface \| arbitrary cross sectional area \| without buffles \| sharp edge    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image9| `dp\_suddenChange\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_MFLOW>`_                                                                                        | Pressure loss of orifice with sudden change in cross sectional area \| calculate mass flow rate \| turbulent flow regime \| smooth surface \| arbitrary cross sectional area \| without buffles \| sharp edge   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image10| `dp\_suddenChange\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_con>`_                                                                                    | Input record for function dp\_suddenChange\_DP and dp\_suddenChange\_MFLOW                                                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image11| `dp\_suddenChange\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_var>`_                                                                                    | Input record for function dp\_suddenChange\_DP and dp\_suddenChange\_MFLOW                                                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image12| `dp\_thickEdgedOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP>`_                                                                                   | Pressure loss of thick and sharp edged orifice \| calculate pressure loss \| overall flow regime \| constant influence of friction \| arbitrary cross sectional area                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image13| `dp\_thickEdgedOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW>`_                                                                             | Pressure loss of thick and sharp edged orifice \| calculate mass flow rate \| overall flow regime \| constant influence of friction \| arbitrary cross sectional area                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image14| `dp\_thickEdgedOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con>`_                                                                          | Input record for function dp\_thickEdgedOverall\_DP and dp\_thickEdgedOverall\_MFLOW                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image15| `dp\_thickEdgedOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var>`_                                                                          | Input record for function dp\_thickEdgedOverall\_DP and dp\_thickEdgedOverall\_MFLOW                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_suddenChange\_DP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of orifice with sudden change in cross sectional area \|
calculate pressure loss \| turbulent flow regime \| smooth surface \|
arbitrary cross sectional area \| without buffles \| sharp edge**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_DP

   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_DP

Information
~~~~~~~~~~~

::

Calculation of the local pressure loss at a sudden change of the cross
sectional areas (sudden expansion or sudden contraction) with sharp
corners at turbulent flow regime for incompressible and single-phase
fluid flow through arbitrary shaped cross sectional area (square,
circular, etc.) considering a smooth surface. The flow direction
determines the type of the transition. In case of the design flow a
sudden expansion will be considered. At flow reversal a sudden
contraction will be considered.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_suddenChange\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_suddenChange>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeSuddenChangeSection\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeSuddenChangeSection_d>`_
(Geometry figure for orifice with sudden change of cross sectional
area).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                      |
+==============================================================================================================================================================+===========+===========+==================================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `dp\_suddenChange\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_con>`_   | IN\_con   |           | Input record for function dp\_suddenChange\_DP   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `dp\_suddenChange\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_var>`_   | IN\_var   |           | Input record for function dp\_suddenChange\_DP   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| Input                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                        | m\_flow   |           | Mass flow rate [kg/s]                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+-------------------------------------------------+
| Type                                                            | Name   | Description                                     |
+=================================================================+========+=================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_suddenChange\_DP [Pa]   |
+-----------------------------------------------------------------+--------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_suddenChange_DP 
      "Pressure loss of orifice with sudden change in cross sectional area | calculate pressure loss | turbulent flow regime | smooth surface | arbitrary cross sectional area | without buffles | sharp edge"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Orifice;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeSuddenChangeSection_d;

      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_con
        IN_con "Input record for function dp_suddenChange_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_var
        IN_var "Input record for function dp_suddenChange_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_suddenChange_DP";

    protected 
      Real MIN=Modelica.Constants.eps;
      SI.ReynoldsNumber Re_min=1 "Minimum Reynolds number for linear smoothing";
      //restriction of local resistance coefficient zeta_LOC >> numerical improvement
      TYP.LocalResistanceCoefficient zeta_LOC_min=1e-3 
        "Minimal local resistance coefficient";

      SI.Area A_1=max(MIN, min(IN_con.A_1, IN_con.A_2)) 
        "Small cross sectional area of orifice";
      SI.Area A_2=max(MIN, max(IN_con.A_1, IN_con.A_2)) 
        "Large cross sectional area of orifice";
      SI.Length C_1=max(MIN, min(IN_con.C_1, IN_con.C_2)) 
        "Perimeter of small cross sectional area of orifice";
      SI.Length C_2=max(MIN, max(IN_con.C_1, IN_con.C_2)) 
        "perimeter of large cross sectional area of orifice";
      SI.Diameter d_hyd=4*A_1/C_1 
        "Hydraulic diameter of small cross sectional area of orifice";

      //sudden expansion  :  SOURCE_1, section 4, diagram 4-1, page 208
      //assumption of Re >= 3.3e3 for sudden expansion
      TYP.LocalResistanceCoefficient zeta_LOC_exp=max(zeta_LOC_min, (1 - A_1/A_2)^2);

      //sudden contraction:  SOURCE_1, section 4, diagram 4-9, page 216 / 217
      //assumption of Re >= 1.0e4 for sudden contraction
      TYP.LocalResistanceCoefficient zeta_LOC_con=max(zeta_LOC_min, 0.5*(1 - A_1/
          A_2)^0.75);

      SI.Velocity velocity_1=m_flow/(IN_var.rho*A_1) 
        "Mean velocity in smaller cross sectional area";

      //determine Reynolds number for small cross sectional area of orifice
      SI.ReynoldsNumber Re=IN_var.rho*d_hyd*velocity_1/IN_var.eta;

      //actual local resistance coefficient
      TYP.LocalResistanceCoefficient zeta_LOC=zeta_LOC_exp*SMOOTH(
          Re_min,
          0,
          Re) + zeta_LOC_con*SMOOTH(
          -Re_min,
          0,
          Re) + zeta_LOC_min*SMOOTH(
          0,
          Re_min,
          abs(Re));

      //Documentation

    algorithm 
      DP := zeta_LOC*IN_var.rho/2*(IN_var.eta/IN_var.rho/d_hyd)^2*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              Re,
              Re_min,
              2);

    end dp_suddenChange_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_suddenChange\_MFLOW
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of orifice with sudden change in cross sectional area \|
calculate mass flow rate \| turbulent flow regime \| smooth surface \|
arbitrary cross sectional area \| without buffles \| sharp edge**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_MFLOW

   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_MFLOW

Information
~~~~~~~~~~~

::

Calculation of the local pressure loss at a sudden change of the cross
sectional areas (sudden expansion or sudden contraction) with sharp
corners at turbulent flow regime for incompressible and single-phase
fluid flow through arbitrary shaped cross sectional area (square,
circular, etc.) considering a smooth surface. The flow direction
determines the type of the transition. In case of the design flow a
sudden expansion will be considered. At flow reversal a sudden
contraction will be considered.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
`dp\_suddenChange\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DP>`_
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_suddenChange>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeSuddenChangeSection\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeSuddenChangeSection_d>`_
(Geometry figure for orifice with sudden change of cross sectional
area).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                         |
+==============================================================================================================================================================+===========+===========+=====================================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| `dp\_suddenChange\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_con>`_   | IN\_con   |           | Input record for function dp\_suddenChange\_MFLOW   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| `dp\_suddenChange\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_var>`_   | IN\_var   |           | Input record for function dp\_suddenChange\_MFLOW   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| Input                                                                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                | dp        |           | Pressure loss [Pa]                                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+------------------------------------------------------+
| Type                                                                    | Name      | Description                                          |
+=========================================================================+===========+======================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_suddenChange\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_suddenChange_MFLOW 
      "Pressure loss of orifice with sudden change in cross sectional area | calculate mass flow rate | turbulent flow regime | smooth surface | arbitrary cross sectional area | without buffles | sharp edge"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Orifice;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeSuddenChangeSection_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_con
        IN_con "Input record for function dp_suddenChange_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_var
        IN_var "Input record for function dp_suddenChange_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_suddenChange_MFLOW";

    protected 
      Real MIN=Modelica.Constants.eps;
      SI.Pressure dp_min=1 "Pressure loss for linear smoothing";
      //restriction of local resistance coefficient zeta_LOC >> numerical improvement
      TYP.LocalResistanceCoefficient zeta_LOC_min=1e-3 
        "Minimal local resistance coefficient";

      SI.Area A_1=max(MIN, min(IN_con.A_1, IN_con.A_2)) 
        "Small cross sectional area of orifice";
      SI.Area A_2=max(MIN, max(IN_con.A_1, IN_con.A_2)) 
        "Large cross sectional area of orifice";

      //sudden expansion  :  SOURCE_1, section 4, diagram 4-1, page 208
      //assumption of Re >= 3.3e3 for sudden expansion
      TYP.LocalResistanceCoefficient zeta_LOC_exp=max(zeta_LOC_min, (1 - A_1/A_2)^2);

      //sudden contraction:  SOURCE_1, section 4, diagram 4-9, page 216 / 217
      //assumption of Re >= 1.0e4 for sudden contraction
      TYP.LocalResistanceCoefficient zeta_LOC_con=max(zeta_LOC_min, 0.5*(1 - A_1/
          A_2)^0.75);

      //actual local resistance coefficient
      TYP.LocalResistanceCoefficient zeta_LOC=max(zeta_LOC_min, zeta_LOC_exp*SMOOTH(
          dp_min,
          0,
          dp) + zeta_LOC_con*SMOOTH(
          -dp_min,
          0,
          dp)) + zeta_LOC_min*SMOOTH(
          0,
          dp_min,
          abs(dp));

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*A_1*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              dp_min,
              0.5)*(max(MIN, 2/(IN_var.rho*zeta_LOC)))^0.5;
    end dp_suddenChange_MFLOW;

--------------

|image16| `Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_suddenChange\_IN\_con
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_suddenChange\_DP and
dp\_suddenChange\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss functions
`dp\_suddenChange\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DP>`_
and
`dp\_suddenChange\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.SuddenChange <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.SuddenChange>`_
(Input for sudden change of diameter).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| Type                                                        | Name   | Default        | Description                                  |
+=============================================================+========+================+==============================================+
| Orifice                                                     |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | A\_1   | PI\*0.01^2/4   | Small cross sectional area of orifice [m2]   |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | A\_2   | A\_1           | Large cross sectional area of orifice [m2]   |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | C\_1   | PI\*0.01       | Small perimeter of orifice [m]               |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | C\_2   | C\_1           | Large perimeter of orifice [m]               |
+-------------------------------------------------------------+--------+----------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_suddenChange_IN_con 
      "Input record for function dp_suddenChange_DP and dp_suddenChange_MFLOW"

      //orifice variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.SuddenChange;

    end dp_suddenChange_IN_con;

--------------

|image17| `Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_suddenChange\_IN\_var
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_suddenChange\_DP and
dp\_suddenChange\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss functions
`dp\_suddenChange\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DP>`_
and
`dp\_suddenChange\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_MFLOW>`_.

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

    record dp_suddenChange_IN_var 
      "Input record for function dp_suddenChange_DP and dp_suddenChange_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;

    end dp_suddenChange_IN_var;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_thickEdgedOverall\_DP
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of thick and sharp edged orifice \| calculate pressure
loss \| overall flow regime \| constant influence of friction \|
arbitrary cross sectional area**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_DP

   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_DP

Information
~~~~~~~~~~~

::

Calculation of pressure loss in thick edged orifices with sharp corners
at overall flow regime for incompressible and single-phase fluid flow
through an arbitrary shaped cross sectional area (square, circular,
etc.) considering constant influence of surface roughness.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_thickEdgedOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeThickEdged\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeThickEdged_d>`_
(Geometry figure for orifice with thick edged vena contraction).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Type                                                                                                                                                                   | Name      | Default   | Description                                           |
+========================================================================================================================================================================+===========+===========+=======================================================+
| Constant inputs                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `dp\_thickEdgedOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con>`_   | IN\_con   |           | Input record for function dp\_thickEdgedOverall\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Variable inputs                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `dp\_thickEdgedOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var>`_   | IN\_var   |           | Input record for function dp\_thickEdgedOverall\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Input                                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                                  | m\_flow   |           | Mass flow rate [kg/s]                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+------------------------------------------------------+
| Type                                                            | Name   | Description                                          |
+=================================================================+========+======================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_thickEdgedOverall\_DP [Pa]   |
+-----------------------------------------------------------------+--------+------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_thickEdgedOverall_DP 
      "Pressure loss of thick and sharp edged orifice | calculate pressure loss | overall flow regime | constant influence of friction  | arbitrary cross sectional area"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Orifice;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeThickEdged_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con
        IN_con "Input record for function dp_thickEdgedOverall_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var
        IN_var "Input record for function dp_thickEdgedOverall_DP";

      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_thickEdgedOverall_DP";

    protected 
      Real MIN=Modelica.Constants.eps;

      TYP.DarcyFrictionFactor lambda_FRI=0.02 
        "Assumption for darcy friction factor in vena contraction according to SOURCE_1";
      SI.ReynoldsNumber Re_min=1;
      SI.ReynoldsNumber Re_lim=1e3 "Limitation for laminar regime if dp is target";

      SI.Area A_0=IN_con.A_0 "Cross sectional area of vena contraction";
      SI.Area A_1=IN_con.A_1 "Cross sectional area of large cross sectional area";
      SI.Diameter d_hyd_0=max(MIN, 4*A_0/IN_con.C_0) 
        "Hydraulic diameter of vena contraction";
      SI.Diameter d_hyd_1=max(MIN, 4*A_1/IN_con.C_1) 
        "Hydraulic diameter of large cross sectional area";
      SI.Length l=IN_con.L "Length of vena contraction";
      SI.Length l_bar=IN_con.L/d_hyd_0;

      //SOURCE_1, section 4, diagram 4-15, page 222:
      Real phi=0.25 + 0.535*min(l_bar, 2.4)^8/(0.05 + min(l_bar, 2.4)^8);
      Real tau=(max(2.4 - l_bar, 0))*10^(-phi);

      TYP.PressureLossCoefficient zeta_TOT_1=max(MIN, (0.5*(1 - A_0/A_1)^0.75 + tau
          *(1 - A_0/A_1)^1.375 + (1 - A_0/A_1)^2 + lambda_FRI*l/d_hyd_0)*(A_1/A_0)^
          2) 
        "Pressure loss coefficient w.r.t. to flow velocity in large cross sectional area";
      SI.Velocity v_0=m_flow/(IN_var.rho*A_0) "Mean velocity in vena contraction";
      SI.ReynoldsNumber Re=IN_var.rho*v_0*d_hyd_0/max(MIN, IN_var.eta) 
        "Reynolds number in vena contraction";

      //Documentation

    algorithm 
      DP := zeta_TOT_1*IN_var.rho/2*(IN_var.eta/IN_var.rho/d_hyd_1)^2*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              Re,
              Re_min,
              2)*(d_hyd_1/d_hyd_0*A_0/A_1)^2;
    end dp_thickEdgedOverall_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_thickEdgedOverall\_MFLOW
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of thick and sharp edged orifice \| calculate mass flow
rate \| overall flow regime \| constant influence of friction \|
arbitrary cross sectional area**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_MFLOW

   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_MFLOW

Information
~~~~~~~~~~~

::

Calculation of pressure loss in thick edged orifices with sharp corners
at overall flow regime for incompressible and single-phase fluid flow
through an arbitrary shaped cross sectional area (square, circular,
etc.) considering constant influence of surface roughness.

Generally this function is numerically best used for the **compressible
case**, where the pressure loss (dp) is known (out of pressures as state
variable) in the used model and the corresponding mass flow rate
(M\_FLOW) has to be calculated. On the other hand the function
`dp\_thickEdgedOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP>`_
is numerically best used for the **incompressible case** if the mass
flow rate (m\_flow) is known (as state variable) and the pressure loss
(DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeThickEdged\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeThickEdged_d>`_
(Geometry figure for orifice with thick edged vena contraction).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------+
| Type                                                                                                                                                                   | Name      | Default   | Description                                              |
+========================================================================================================================================================================+===========+===========+==========================================================+
| Constant inputs                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------+
| `dp\_thickEdgedOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con>`_   | IN\_con   |           | Input record for function dp\_thickEdgedOverall\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------+
| Variable inputs                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------+
| `dp\_thickEdgedOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var>`_   | IN\_var   |           | Input record for function dp\_thickEdgedOverall\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------+
| Input                                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                          | dp        |           | Pressure loss [Pa]                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-----------------------------------------------------------+
| Type                                                                    | Name      | Description                                               |
+=========================================================================+===========+===========================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | M\_FLOW   | Output for function dp\_thickEdgedOverall\_MFLOW [kg/s]   |
+-------------------------------------------------------------------------+-----------+-----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_thickEdgedOverall_MFLOW 
      "Pressure loss of thick and sharp edged orifice | calculate mass flow rate | overall flow regime | constant influence of friction  | arbitrary cross sectional area"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Orifice;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.OrificeThickEdged_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con
        IN_con "Input record for function dp_thickEdgedOverall_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var
        IN_var "Input record for function dp_thickEdgedOverall_MFLOW";

      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW 
        "Output for function dp_thickEdgedOverall_MFLOW";

    protected 
      Real MIN=Modelica.Constants.eps;
      TYP.DarcyFrictionFactor lambda_FRI=0.02 
        "Assumption for darcy friction factor in vena contraction according to SOURCE_1";
      SI.ReynoldsNumber Re_lim=1e3 "Limitation for laminar regime if dp is target";

      SI.Area A_0=IN_con.A_0 "Cross sectional area of vena contraction";
      SI.Area A_1=IN_con.A_1 "Large cross sectional area";
      SI.Diameter d_hyd_0=max(MIN, 4*A_0/IN_con.C_0) 
        "Hydraulic diameter of vena contraction";
      SI.Diameter d_hyd_1=max(MIN, 4*A_1/IN_con.C_1) 
        "Hydraulic diameter of large cross sectional area";
      SI.Length l=IN_con.L "Length of vena contraction";
      SI.Length l_bar=IN_con.L/d_hyd_0;

      //SOURCE_1, section 4, diagram 4-15, page 222:
      Real phi=0.25 + 0.535*min(l_bar, 2.4)^8/(0.05 + min(l_bar, 2.4)^8);
      Real tau=(max(2.4 - l_bar, 0))*10^(-phi);

      TYP.PressureLossCoefficient zeta_TOT_1=max(MIN, (0.5*(1 - A_0/A_1)^0.75 + tau
          *(1 - A_0/A_1)^1.375 + (1 - A_0/A_1)^2 + lambda_FRI*l/d_hyd_0)*(A_1/A_0)^
          2) 
        "Pressure loss coefficient w.r.t. to flow velocity in large cross sectional area";

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*A_1*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              IN_con.dp_smooth,
              0.5)/(0.5*IN_var.rho*zeta_TOT_1)^0.5;
    end dp_thickEdgedOverall_MFLOW;

--------------

|image18| `Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_thickEdgedOverall\_IN\_con
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_thickEdgedOverall\_DP and
dp\_thickEdgedOverall\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss functions
`dp\_thickEdgedOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP>`_
and
`dp\_thickEdgedOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Orifice <Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Orifice>`_
(Input for orifice).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| Type                                                            | Name         | Default        | Description                                             |
+=================================================================+==============+================+=========================================================+
| Orifice                                                         |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_           | A\_0         | 0.1\*A\_1      | Cross sectional area of vena contraction [m2]           |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | C\_0         | 0.1\*C\_1      | Perimeter of vena contraction [m]                       |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_           | A\_1         | PI\*0.01^2/4   | Large cross sectional area of orifice [m2]              |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | C\_1         | PI\*0.01       | Large perimeter of orifice [m]                          |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L            | 1e-3           | Length of vena contraction [m]                          |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| Linearisation                                                   |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp\_smooth   | 1              | Start linearisation for decreasing pressure loss [Pa]   |
+-----------------------------------------------------------------+--------------+----------------+---------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_thickEdgedOverall_IN_con 
      "Input record for function dp_thickEdgedOverall_DP and dp_thickEdgedOverall_MFLOW"

      //orifice variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Orifice;

      //linearisation
      SI.Pressure dp_smooth(min=Modelica.Constants.eps) = 1 
        "Start linearisation for decreasing pressure loss";

    end dp_thickEdgedOverall_IN_con;

--------------

|image19| `Modelica.Fluid.Dissipation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice>`_.dp\_thickEdgedOverall\_IN\_var
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_thickEdgedOverall\_DP and
dp\_thickEdgedOverall\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss functions
`dp\_thickEdgedOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP>`_
and
`dp\_thickEdgedOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW>`_.

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

    record dp_thickEdgedOverall_IN_var 
      "Input record for function dp_thickEdgedOverall_DP and dp_thickEdgedOverall_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;

    end dp_thickEdgedOverall_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:22
2010.

.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_suddenChange\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp\_thickEdgedOverall\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_conS.png
.. |image8| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DPS.png
.. |image9| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_DPS.png
.. |image10| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_conS.png
.. |image11| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_conS.png
.. |image12| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DPS.png
.. |image13| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DPS.png
.. |image14| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_conS.png
.. |image15| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_conS.png
.. |image16| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_conI.png
.. |image17| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_suddenChange_IN_conI.png
.. |image18| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_conI.png
.. |image19| image:: Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_conI.png
