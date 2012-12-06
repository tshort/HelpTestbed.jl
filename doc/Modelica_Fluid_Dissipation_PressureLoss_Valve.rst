=============================================
Modelica.Fluid.Dissipation.PressureLoss.Valve
=============================================

`Modelica.Fluid.Dissipation.PressureLoss <Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss>`_.Valve
---------------------------------------------------------------------------------------------------------------------------------------

**Package for pressure loss calculation of valves**

Information
~~~~~~~~~~~

::

Valve
^^^^^

Several geometries
''''''''''''''''''

Calculation of pressure loss for a valve with different geometries at
overall flow regime for incompressible and single-phase fluid flow in
dependence of its opening. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp_severalGeometryOverall>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                             | Description                                                                                       |
+==================================================================================================================================================================================================================================================================+===================================================================================================+
| |image4| `dp\_severalGeometryOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DP>`_                                                                                       | Pressure loss of valve \| calculate pressure loss \| several geometries \| overall flow regime    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image5| `dp\_severalGeometryOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_MFLOW>`_                                                                                 | Pressure loss of valve \| calculate mass flow rate \| several geometries \| overall flow regime   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image6| `dp\_severalGeometryOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_con>`_                                                                              | Input record for function dp\_severalGeometryOverall\_DP and dp\_severalGeometryOverall\_MFLOW    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+
| |image7| `dp\_severalGeometryOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_var>`_                                                                              | Input record for function dp\_severalGeometryOverall\_DP and dp\_severalGeometryOverall\_MFLOW    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.PressureLoss.Valve <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve>`_.dp\_severalGeometryOverall\_DP
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of valve \| calculate pressure loss \| several
geometries \| overall flow regime**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_DP

   Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_DP

Information
~~~~~~~~~~~

::

Calculation of pressure loss for a valve with different geometries at
overall flow regime for incompressible and single-phase fluid flow in
dependence of its opening.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
`dp\_severalGeometryOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_MFLOW>`_
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp_severalGeometryOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d>`_
(Icon for valve).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| Type                                                                                                                                                                         | Name      | Default   | Description                                                |
+==============================================================================================================================================================================+===========+===========+============================================================+
| Constant inputs                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| `dp\_severalGeometryOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_con>`_   | IN\_con   |           | Input record for function dp\_severalGeometryOverall\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| Variable inputs                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| `dp\_severalGeometryOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_var>`_   | IN\_var   |           | Input record for function dp\_severalGeometryOverall\_DP   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| Input                                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                                        | m\_flow   |           | Mass flow rate [kg/s]                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+----------------------+
| Type                                                            | Name   | Description          |
+=================================================================+========+======================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Pressure loss [Pa]   |
+-----------------------------------------------------------------+--------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_severalGeometryOverall_DP 
      "Pressure loss of valve | calculate pressure loss | several geometries | overall flow regime"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.Valve;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;
      import TYP = Modelica.Fluid.Dissipation.Utilities.Types;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_con
        IN_con "Input record for function dp_severalGeometryOverall_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_var
        IN_var "Input record for function dp_severalGeometryOverall_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Pressure loss";

    protected 
      type TYP1 =
          Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient;
      type TYP2 = Modelica.Fluid.Dissipation.Utilities.Types.ValveGeometry;

      Real MIN=Modelica.Constants.eps;

      SI.Area Av=if IN_con.valveCoefficient == TYP1.AV then IN_con.Av else if 
          IN_con.valveCoefficient == TYP1.KV then IN_con.Kv*27.7e-6 else if IN_con.valveCoefficient
           == TYP1.CV then IN_con.Cv*24e-6 else if IN_con.valveCoefficient == TYP1.OP then 
                IN_con.m_flow_nominal/max(MIN, IN_con.opening_nominal*(IN_con.rho_nominal
          *IN_con.dp_nominal)^0.5) else MIN "Av (metric) flow coefficient [Av]=m^2";

      TYP.PressureLossCoefficient zeta_bal=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(-3.8397*IN_var.opening + 2.9449) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Ball valves";
      TYP.PressureLossCoefficient zeta_dia=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(2.2596*exp(-1.8816*IN_var.opening)) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Diaphragm valves";
      TYP.PressureLossCoefficient zeta_but=SMOOTH(
          0.05,
          0,
          IN_var.opening)*619.81*exp(-7.3211*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Butterfly valves";
      TYP.PressureLossCoefficient zeta_gat=SMOOTH(
          0.05,
          0,
          IN_var.opening)*51.45*exp(-6.046*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Gate valves";
      TYP.PressureLossCoefficient zeta_slu=SMOOTH(
          0.05,
          0,
          IN_var.opening)*248.89*exp(-7.8265*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Sluice valves";

      TYP.PressureLossCoefficient zeta_TOT=if IN_con.geometry == TYP2.Ball then 
          zeta_bal else if IN_con.geometry == TYP2.Diaphragm then zeta_dia else if 
          IN_con.geometry == TYP2.Butterfly then zeta_but else if IN_con.geometry
           == TYP2.Gate then zeta_gat else if IN_con.geometry == TYP2.Sluice then 
          zeta_slu else 0 "Pressure loss coefficient of chosen valve";

      Real valveCharacteristic=(2/min(IN_con.zeta_TOT_max, max(MIN, max(IN_con.zeta_TOT_min,
          abs(zeta_TOT)))))^0.5 
        "Valve characteristic considering opening of chosen valve";

      SI.MassFlowRate m_flow_small=valveCharacteristic*Av*(IN_var.rho)^0.5*(IN_con.dp_small)
          ^0.5 "Mass flow rate at linearisation";

      //Documentation

    algorithm 
      DP := 1/((valveCharacteristic*Av)^2*IN_var.rho)*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              m_flow_small,
              2);

    end dp_severalGeometryOverall_DP;

--------------

`Modelica.Fluid.Dissipation.PressureLoss.Valve <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve>`_.dp\_severalGeometryOverall\_MFLOW
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss of valve \| calculate mass flow rate \| several
geometries \| overall flow regime**

.. figure:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_MFLOW

   Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_MFLOW

Information
~~~~~~~~~~~

::

Calculation of pressure loss for a valve with different geometries at
overall flow regime for incompressible and single-phase fluid flow in
dependence of its opening.

Generally this function is numerically best used for the **compressible
case**, where the pressure loss (dp) is known (out of pressures as state
variable) in the used model and the corresponding mass flow rate
(M\_FLOW) has to be calculated. On the other hand the function
`dp\_severalGeometryOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DP>`_
is numerically best used for the **incompressible case** if the mass
flow rate (m\_flow) is known (as state variable) and the pressure loss
(DP) has to be calculated. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp_severalGeometryOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d>`_
(Icon for valve).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------------------+
| Type                                                                                                                                                                         | Name      | Default   | Description                                                   |
+==============================================================================================================================================================================+===========+===========+===============================================================+
| Constant inputs                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------------------+
| `dp\_severalGeometryOverall\_IN\_con <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_con>`_   | IN\_con   |           | Input record for function dp\_severalGeometryOverall\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------------------+
| Variable inputs                                                                                                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------------------+
| `dp\_severalGeometryOverall\_IN\_var <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_var>`_   | IN\_var   |           | Input record for function dp\_severalGeometryOverall\_MFLOW   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------------------+
| Input                                                                                                                                                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                                                | dp        |           | Pressure loss [Pa]                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------------------------+

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

    function dp_severalGeometryOverall_MFLOW 
      "Pressure loss of valve | calculate mass flow rate | several geometries | overall flow regime"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.Valve;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;
      import TYP = Modelica.Fluid.Dissipation.Utilities.Types;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_con
        IN_con "Input record for function dp_severalGeometryOverall_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_var
        IN_var "Input record for function dp_severalGeometryOverall_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Mass flow rate";

    protected 
      type TYP1 =
          Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient;
      type TYP2 = Modelica.Fluid.Dissipation.Utilities.Types.ValveGeometry;

      Real MIN=Modelica.Constants.eps;

      SI.Area Av=if IN_con.valveCoefficient == TYP1.AV then IN_con.Av else if 
          IN_con.valveCoefficient == TYP1.KV then IN_con.Kv*27.7e-6 else if IN_con.valveCoefficient
           == TYP1.CV then IN_con.Cv*24e-6 else if IN_con.valveCoefficient == TYP1.OP then 
                IN_con.m_flow_nominal/max(MIN, IN_con.opening_nominal*(IN_con.rho_nominal
          *IN_con.dp_nominal)^0.5) else MIN "Av (metric) flow coefficient [Av]=m^2";

      TYP.PressureLossCoefficient zeta_bal=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(-3.8397*IN_var.opening + 2.9449) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Ball valves";
      TYP.PressureLossCoefficient zeta_dia=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(2.2596*exp(-1.8816*IN_var.opening)) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Diaphragm valves";
      TYP.PressureLossCoefficient zeta_but=SMOOTH(
          0.05,
          0,
          IN_var.opening)*619.81*exp(-7.3211*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Butterfly valves";
      TYP.PressureLossCoefficient zeta_gat=SMOOTH(
          0.05,
          0,
          IN_var.opening)*51.45*exp(-6.046*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Gate valves";
      TYP.PressureLossCoefficient zeta_slu=SMOOTH(
          0.05,
          0,
          IN_var.opening)*248.89*exp(-7.8265*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Sluice valves";

      TYP.PressureLossCoefficient zeta_TOT=if IN_con.geometry == TYP2.Ball then 
          zeta_bal else if IN_con.geometry == TYP2.Diaphragm then zeta_dia else if 
          IN_con.geometry == TYP2.Butterfly then zeta_but else if IN_con.geometry
           == TYP2.Gate then zeta_gat else if IN_con.geometry == TYP2.Sluice then 
          zeta_slu else 0 "Pressure loss coefficient of chosen valve";

      Real valveCharacteristic=(2/min(IN_con.zeta_TOT_max, max(MIN, max(IN_con.zeta_TOT_min,
          abs(zeta_TOT)))))^0.5 
        "Valve characteristic considering opening of chosen valve";

      //Documentation

    algorithm 
      M_FLOW := valveCharacteristic*Av*(IN_var.rho)^0.5*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              IN_con.dp_small,
              0.5);
    end dp_severalGeometryOverall_MFLOW;

--------------

|image8| `Modelica.Fluid.Dissipation.PressureLoss.Valve <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve>`_.dp\_severalGeometryOverall\_IN\_con
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_severalGeometryOverall\_DP and
dp\_severalGeometryOverall\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_severalGeometryOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DP>`_
and
`dp\_severalGeometryOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_MFLOW>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Type                                                                                                                                | Name               | Default                               | Description                                                     |
+=====================================================================================================================================+====================+=======================================+=================================================================+
| Valve                                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| `ValveGeometry <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.ValveGeometry>`_         | geometry           | Dissipation.Utilities.Types....       | Choice of geometry for valve                                    |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| `ValveCoefficient <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient>`_   | valveCoefficient   | Modelica.Fluid.Dissipation.U...       | Choice of valve coefficient                                     |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                | Av                 | PI\*0.1^2/4                           | Av (metric) flow coefficient [Av]=m^2                           |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                | Kv                 | Av/27.7e-6                            | Kv (metric) flow coefficient [Kv]=m^3/h                         |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                | Cv                 | Av/24.6e-6                            | Cv (US) flow coefficient [Cv]=USG/min                           |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                       | dp\_nominal        | 1e3                                   | Nominal pressure loss [Pa]                                      |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                               | m\_flow\_nominal   | opening\_nominal\*Av\*(rho\_nomi...   | Nominal mass flow rate [kg/s]                                   |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                         | rho\_nominal       | 1000                                  | Nominal inlet density [kg/m3]                                   |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                | opening\_nominal   | 0.5                                   | Nominal opening                                                 |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                | zeta\_TOT\_min     | 1e-3                                  | Minimal pressure loss coefficient at full opening               |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Real                                                                                                                                | zeta\_TOT\_max     | 1e8                                   | Maximum pressure loss coefficient at closed opening             |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| Linearisation                                                                                                                       |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                       | dp\_small          | 0.01\*dp\_nominal                     | Linearisation for a pressure loss smaller then dp\_small [Pa]   |
+-------------------------------------------------------------------------------------------------------------------------------------+--------------------+---------------------------------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_severalGeometryOverall_IN_con 
      "Input record for function dp_severalGeometryOverall_DP and dp_severalGeometryOverall_MFLOW"

      extends Modelica.Icons.Record;

      Modelica.Fluid.Dissipation.Utilities.Types.ValveGeometry geometry=Dissipation.Utilities.Types.ValveGeometry.Ball 
        "Choice of geometry for valve";
      Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient
        valveCoefficient=
          Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient.AV 
        "Choice of valve coefficient";

      //valve variables
      Real Av=PI*0.1^2/4 "Av (metric) flow coefficient [Av]=m^2";
      Real Kv=Av/27.7e-6 "Kv (metric) flow coefficient [Kv]=m^3/h";
      Real Cv=Av/24.6e-6 "Cv (US) flow coefficient [Cv]=USG/min";
      SI.Pressure dp_nominal=1e3 "Nominal pressure loss";
      SI.MassFlowRate m_flow_nominal=opening_nominal*Av*(rho_nominal*dp_nominal)^
          0.5 "Nominal mass flow rate";
      SI.Density rho_nominal=1000 "Nominal inlet density";
      Real opening_nominal=0.5 "Nominal opening";
      Real zeta_TOT_min=1e-3 "Minimal pressure loss coefficient at full opening";
      Real zeta_TOT_max=1e8 "Maximum pressure loss coefficient at closed opening";

      //numerical aspects
      SI.Pressure dp_small=0.01*dp_nominal 
        "Linearisation for a pressure loss smaller then dp_small";

    end dp_severalGeometryOverall_IN_con;

--------------

|image9| `Modelica.Fluid.Dissipation.PressureLoss.Valve <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve>`_.dp\_severalGeometryOverall\_IN\_var
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function dp\_severalGeometryOverall\_DP and
dp\_severalGeometryOverall\_MFLOW**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the pressure loss function
`dp\_severalGeometryOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DP>`_
and
`dp\_severalGeometryOverall\_MFLOW <Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_MFLOW>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Type                                                                            | Name      | Default   | Description                                           |
+=================================================================================+===========+===========+=======================================================+
| Valve                                                                           |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Real                                                                            | opening   | 1         | Opening of valve \| 0==closed and 1== fully openend   |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| Fluid properties                                                                |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_   | eta       |           | Dynamic viscosity of fluid [Pa.s]                     |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                     | rho       |           | Density of fluid [kg/m3]                              |
+---------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record dp_severalGeometryOverall_IN_var 
      "Input record for function dp_severalGeometryOverall_DP and dp_severalGeometryOverall_MFLOW"

      extends Modelica.Icons.Record;

      //valve variables
      Real opening=1 "Opening of valve | 0==closed and 1== fully openend";

      //fluid property variables
      SI.DynamicViscosity eta "Dynamic viscosity of fluid";
      SI.Density rho "Density of fluid";

    end dp_severalGeometryOverall_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_DP| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_MFLOW| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DPS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_IN\_con| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conS.png
.. |Modelica.Fluid.Dissipation.PressureLoss.Valve.dp\_severalGeometryOverall\_IN\_var| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conS.png
.. |image4| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DPS.png
.. |image5| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DPS.png
.. |image6| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conS.png
.. |image7| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conS.png
.. |image8| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conI.png
.. |image9| image:: Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conI.png
