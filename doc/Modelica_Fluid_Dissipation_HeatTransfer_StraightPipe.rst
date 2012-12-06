====================================================
Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe
====================================================

`Modelica.Fluid.Dissipation.HeatTransfer <Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer>`_.StraightPipe
----------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Straight pipe
^^^^^^^^^^^^^

Laminar flow
''''''''''''

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar
fluid flow. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_laminar>`_.

Turbulent flow
''''''''''''''

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe for a hydrodynamically developed turbulent fluid flow at
uniform wall temperature **or** uniform heat flux with neglecting **or**
considering of pressure loss influence. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_turbulent>`_.

Overall flow
''''''''''''

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar and
turbulent fluid flow with neglect **or** consideration of pressure loss
influence. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_overall>`_.

Overall two phase flow
''''''''''''''''''''''

Calculation of local **two phase** heat transfer coefficient
**kc\_2ph**for (horizontal/vertical) **boiling** or (horizontal)
**condensation** for an overall flow regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_twoPhaseOverall>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                        | Description                                                                                                                                                                                    |
+=============================================================================================================================================================================================================================================================================+================================================================================================================================================================================================+
| |image15| `kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar>`_                                                                                                                        | Mean heat transfer coefficient of straight pipe \| uniform wall temperature or uniform heat flux \| hydrodynamically developed or undeveloped laminar flow regime                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image16| `kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC>`_                                                                                                                 | Mean heat transfer coefficient of straight pipe \| uniform wall temperature or uniform heat flux \| hydrodynamically developed or undeveloped laminar flow regime                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image17| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_con>`_                                                                                                        | Input record for function kc\_laminar and kc\_laminar\_KC                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image18| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_var>`_                                                                                                        | Input record for function kc\_laminar and kc\_laminar\_KC                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image19| `kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall>`_                                                                                                                        | Mean heat transfer coefficient of straight pipe \| uniform wall temperature or uniform heat flux \| hydrodynamically developed or undeveloped overall flow regime\| pressure loss dependence   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image20| `kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_KC>`_                                                                                                                 | Mean heat transfer coefficient of straight pipe \| uniform wall temperature or uniform heat flux \| hydrodynamically developed or undeveloped overall flow regime\| pressure loss dependence   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image21| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_con>`_                                                                                                        | Input record for function kc\_overall and kc\_overall\_KC                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image22| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var>`_                                                                                                        | Input record for function kc\_overall and kc\_overall\_KC                                                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image23| `kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent>`_                                                                                                                    | Mean heat transfer coefficient of straight pipe \| hydrodynamically developed turbulent flow regime \| pressure loss dependence                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image24| `kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC>`_                                                                                                             | Mean heat transfer coefficient of straight pipe \| hydrodynamically developed turbulent flow regime \| pressure loss dependence                                                                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image25| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con>`_                                                                                                    | Input record for function kc\_turbulent and kc\_turbulent\_KC                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image26| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_var>`_                                                                                                    | Input record for function kc\_turbulent and kc\_turbulent\_KC                                                                                                                                  |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image27| `kc\_twoPhaseOverall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC>`_                                                                                                 | Local two phase heat transfer coefficient of straight pipe \| horizontal or vertical boiling \| horizontal condensation                                                                        |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image28| `kc\_twoPhaseOverall\_KC\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_con>`_                                                                                 | Input record for function kc\_twoPhaseOverall\_KC                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| |image29| `kc\_twoPhaseOverall\_KC\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_var>`_                                                                                 | Input record for function kc\_twoPhaseOverall\_KC                                                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_laminar
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of straight pipe \| uniform wall
temperature or uniform heat flux \| hydrodynamically developed or
undeveloped laminar flow regime**

Information
~~~~~~~~~~~

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar
fluid flow. Note that additionally a failure status is observed in this
function to check if the intended boundary conditions are fulfilled.
`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_laminar>`_
.

::

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                             |
+==============================================================================================================================================================+===========+===========+=========================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_con>`_   | IN\_con   |           | Input record for function kc\_laminar   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_var>`_   | IN\_var   |           | Input record for function kc\_laminar   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| Type                                                                                              | Name            | Description                                                                              |
+===================================================================================================+=================+==========================================================================================+
| Output                                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc              | Convective heat transfer coefficient [W/(m2.K)]                                          |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `PrandtlNumber <Modelica_SIunits.html#Modelica.SIunits.PrandtlNumber>`_                           | Pr              | Prandl number [1]                                                                        |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_                         | Re              | Reynolds number [1]                                                                      |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `NusseltNumber <Modelica_SIunits.html#Modelica.SIunits.NusseltNumber>`_                           | Nu              | Nusselt number [1]                                                                       |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| Real                                                                                              | failureStatus   | 0== boundary conditions fulfilled \| 1== failure >> check if still meaningfull results   |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_laminar 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped laminar flow regime"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_var
        IN_var "Input record for function kc_laminar";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      Real MIN=Modelica.Constants.eps;

      Real laminar=2e3 "Maximum Reynolds number of laminar flow regime";
      Real prandtlMax=1000 "Maximum Prandtl number";
      Real prandtlMin=0.6 "Minimum Prandtl number";

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";

      //failure status
      Real fstatus[2] "check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

      //failure status
      fstatus[1] := if Re > laminar then 1 else 0;
      fstatus[2] := if Pr > prandtlMax or Pr < prandtlMin then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_laminar;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_laminar\_KC
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of straight pipe \| uniform wall
temperature or uniform heat flux \| hydrodynamically developed or
undeveloped laminar flow regime**

Information
~~~~~~~~~~~

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar
fluid flow. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_laminar>`_
.

::

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                 |
+==============================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_con>`_   | IN\_con   |           | Input record for function kc\_laminar\_KC   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_var>`_   | IN\_var   |           | Input record for function kc\_laminar\_KC   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------+
| Type                                                                                              | Name   | Description                                      |
+===================================================================================================+========+==================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc     | Output for function kc\_laminar\_KC [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_laminar_KC 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped laminar flow regime"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_var
        IN_var "Input record for function kc_laminar_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_laminar_KC";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";

      Real Nu0=if IN_con.target == TYP.UWTuDFF or IN_con.target == TYP.UWTuUFF then 
                0.7 else if IN_con.target == TYP.UHFuDFF or IN_con.target == TYP.UHFuUFF then 
                0.6 else 0 "Help variable for mean Nusselt number";
      Real Nu1=if IN_con.target == TYP.UWTuDFF or IN_con.target == TYP.UWTuUFF then 
                3.66 else if IN_con.target == TYP.UHFuDFF or IN_con.target == TYP.UHFuUFF then 
                4.364 else 0 "Help variable for mean Nusselt number";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN,
          IN_var.eta));
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));

      SI.NusseltNumber Nu2=if IN_con.target == TYP.UWTuDFF or IN_con.target == TYP.UWTuUFF then 
                1.615*(Re*Pr*IN_con.d_hyd/IN_con.L)^(1/3) else if IN_con.target ==
          TYP.UHFuDFF or IN_con.target == TYP.UHFuUFF then 1.953*(Re*Pr*IN_con.d_hyd
          /IN_con.L)^(1/3) else 0 "Help variable for mean Nusselt number";
      SI.NusseltNumber Nu3=if IN_con.target == TYP.UWTuUFF then (2/(1 + 22*Pr))^(1/
          6)*(Re*Pr*IN_con.d_hyd/IN_con.L)^0.5 else if IN_con.target == TYP.UHFuUFF then 
                1.953*(Re*Pr*IN_con.d_hyd/IN_con.L)^(1/3) else 0 
        "Help variable for mean Nusselt number";

      SI.NusseltNumber Nu=(Nu1^3 + Nu0^3 + (Nu2 - Nu0)^3 + Nu3^3)^(1/3) 
        "Mean Nusselt number";

      //Documentation
    algorithm 
      kc := Nu*IN_var.lambda/max(MIN, IN_con.d_hyd);
    end kc_laminar_KC;

--------------

|image30| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_laminar\_IN\_con
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar>`_
and
`kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC>`_.

::

Extends from
`Utilities.Records.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.StraightPipe>`_
(Input for straight pipe).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------+
| Type                                                                                                                                        | Name     | Default                           | Description                                  |
+=============================================================================================================================================+==========+===================================+==============================================+
| Straight pipe                                                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                               | d\_hyd   | 0.1                               | Hydraulic diameter [m]                       |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                   | L        | 1                                 | Length [m]                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------+
| Choices                                                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------+
| `HeatTransferBoundary <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary>`_   | target   | Dissipation.Utilities.Types....   | Choice of heat transfer boundary condition   |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_laminar_IN_con 
      "Input record for function kc_laminar and kc_laminar_KC"
      extends Utilities.Records.HeatTransfer.StraightPipe;

        //choices
      Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary target=Dissipation.Utilities.Types.HeatTransferBoundary.UWTuDFF 
        "Choice of heat transfer boundary condition";

    end kc_laminar_IN_con;

--------------

|image31| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_laminar\_IN\_var
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar>`_
and
`kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var>`_
(Input record for function kc\_overall and kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name      | Default   | Description                                                       |
+=============================================================================================================================+===========+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp        |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta       |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda    |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho       |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                       | m\_flow   |           | [kg/s]                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_laminar_IN_var 
      "Input record for function kc_laminar and kc_laminar_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var;

    end kc_laminar_IN_var;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_overall
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of straight pipe \| uniform wall
temperature or uniform heat flux \| hydrodynamically developed or
undeveloped overall flow regime\| pressure loss dependence**

Information
~~~~~~~~~~~

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped overall
fluid flow with neglect **or** consideration of pressure loss influence.
Note that additionally a failure status is observed in this function to
check if the intended boundary conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_overall>`_
.

::

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                             |
+==============================================================================================================================================================+===========+===========+=========================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_con>`_   | IN\_con   |           | Input record for function kc\_overall   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var>`_   | IN\_var   |           | Input record for function kc\_overall   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| Type                                                                                              | Name            | Description                                                                              |
+===================================================================================================+=================+==========================================================================================+
| Output                                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc              | Convective heat transfer coefficient [W/(m2.K)]                                          |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `PrandtlNumber <Modelica_SIunits.html#Modelica.SIunits.PrandtlNumber>`_                           | Pr              | Prandl number [1]                                                                        |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_                         | Re              | Reynolds number [1]                                                                      |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `NusseltNumber <Modelica_SIunits.html#Modelica.SIunits.NusseltNumber>`_                           | Nu              | Nusselt number [1]                                                                       |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| Real                                                                                              | failureStatus   | 0== boundary conditions fulfilled \| 1== failure >> check if still meaningfull results   |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_overall 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped overall flow regime| pressure loss dependence"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_con
        IN_con "Input record for function kc_overall";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var
        IN_var "Input record for function kc_overall";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";

      //failure status
      Real fstatus[3] "Check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

      //failure status
      if IN_con.roughness == TYP.Neglected then
        if Re < 2e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      elseif IN_con.roughness == TYP.Considered then
        if Re < 1e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      else
        assert(true, "No choice of roughness is selected");
      end if;
      fstatus[2] := if Pr < 0.6 or Pr > 1e3 then 1 else 0;
      fstatus[3] := if IN_con.d_hyd/max(MIN, IN_con.L) > 1 then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_overall;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_overall\_KC
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of straight pipe \| uniform wall
temperature or uniform heat flux \| hydrodynamically developed or
undeveloped overall flow regime\| pressure loss dependence**

Information
~~~~~~~~~~~

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped overall
fluid flow with neglect **or** consideration of pressure loss
influence.`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_overall>`_
.

::

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                                         | Name      | Default   | Description                                 |
+==============================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_con>`_   | IN\_con   |           | Input record for function kc\_overall\_KC   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var>`_   | IN\_var   |           | Input record for function kc\_overall\_KC   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------+
| Type                                                                                              | Name   | Description                                      |
+===================================================================================================+========+==================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc     | Output for function kc\_overall\_KC [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_overall_KC 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped overall flow regime| pressure loss dependence"
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_con
        IN_con "Input record for function kc_overall_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var
        IN_var "Input record for function kc_overall_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_overall_KC";

    protected 
      Real MIN=Modelica.Constants.eps;
      Real laminar=2200 "Maximum Reynolds number for laminar regime";
      Real turbulent=1e4 "Minimum Reynolds number for turbulent regime";

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN,
          IN_var.eta));
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));

      //Documentation
    algorithm 
      kc := SMOOTH(
              laminar,
              turbulent,
              Re)*Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC(IN_con,
        IN_var) + SMOOTH(
              turbulent,
              laminar,
              Re)*Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC(
        IN_con, IN_var);

    end kc_overall_KC;

--------------

|image32| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_overall\_IN\_con
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_overall and kc\_overall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall>`_
and
`kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_KC>`_.

::

Extends from
`kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con>`_
(Input record for function kc\_turbulent and kc\_turbulent\_KC).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| Type                                                                                                                                        | Name        | Default                           | Description                                            |
+=============================================================================================================================================+=============+===================================+========================================================+
| Choices                                                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `HeatTransferBoundary <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary>`_   | target      | Dissipation.Utilities.Types....   | Choice of heat transfer boundary condition             |
+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Roughness <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Roughness>`_                         | roughness   | Dissipation.Utilities.Types....   | Choice of considering surface roughness                |
+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| Straight pipe                                                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                               | d\_hyd      | 0.1                               | Hydraulic diameter [m]                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                   | L           | 1                                 | Length [m]                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                   | K           | 0                                 | Roughness (average height of surface asperities) [m]   |
+---------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_overall_IN_con 
      "Input record for function kc_overall and kc_overall_KC"

        //choices
      Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary target=Dissipation.Utilities.Types.HeatTransferBoundary.UWTuDFF 
        "Choice of heat transfer boundary condition";

      extends kc_turbulent_IN_con;

    end kc_overall_IN_con;

--------------

|image33| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_overall\_IN\_var
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_overall and kc\_overall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall>`_
and
`kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties>`_
(Base record for fluid properties).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name      | Default   | Description                                                       |
+=============================================================================================================================+===========+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp        |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta       |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda    |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho       |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                       | m\_flow   |           | [kg/s]                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_overall_IN_var 
      "Input record for function kc_overall and kc_overall_KC"
      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;

    end kc_overall_IN_var;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_turbulent
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of straight pipe \| hydrodynamically
developed turbulent flow regime \| pressure loss dependence**

Information
~~~~~~~~~~~

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe for a hydrodynamically developed turbulent fluid flow at
uniform wall temperature **or** uniform heat flux with neglecting **or**
considering of pressure loss influence. Note that additionally a failure
status is observed in this function to check if the intended boundary
conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_turbulent>`_
.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                               |
+==================================================================================================================================================================+===========+===========+===========================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con>`_   | IN\_con   |           | Input record for function kc\_turbulent   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_var>`_   | IN\_var   |           | Input record for function kc\_turbulent   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| Type                                                                                              | Name            | Description                                                                              |
+===================================================================================================+=================+==========================================================================================+
| Output                                                                                            |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc              | Convective heat transfer coefficient [W/(m2.K)]                                          |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `PrandtlNumber <Modelica_SIunits.html#Modelica.SIunits.PrandtlNumber>`_                           | Pr              | Prandl number [1]                                                                        |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_                         | Re              | Reynolds number [1]                                                                      |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| `NusseltNumber <Modelica_SIunits.html#Modelica.SIunits.NusseltNumber>`_                           | Nu              | Nusselt number [1]                                                                       |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+
| Real                                                                                              | failureStatus   | 0== boundary conditions fulfilled \| 1== failure >> check if still meaningfull results   |
+---------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_turbulent 
      "Mean heat transfer coefficient of straight pipe | hydrodynamically developed turbulent flow regime | pressure loss dependence"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con
        IN_con "Input record for function kc_turbulent";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_var
        IN_var "Input record for function kc_turbulent";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/(IN_var.rho*A_cross) "Mean velocity";

      //failure status
      Real fstatus[3] "check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

      //failure status
      if IN_con.roughness == TYP.Neglected then
        if Re < 2e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      elseif IN_con.roughness == TYP.Considered then
        if Re < 1e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      else
        assert(true, "No choice of roughness is selected");
      end if;
      fstatus[2] := if Pr <= 0.6 or Pr >= 1e3 then 1 else 0;
      fstatus[3] := if IN_con.d_hyd/max(MIN, IN_con.L) > 1 then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_turbulent;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_turbulent\_KC
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of straight pipe \| hydrodynamically
developed turbulent flow regime \| pressure loss dependence**

Information
~~~~~~~~~~~

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe for a hydrodynamically developed turbulent fluid flow at
uniform wall temperature **or** uniform heat flux with neglecting **or**
considering of pressure loss influence. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_turbulent>`_
.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                                   |
+==================================================================================================================================================================+===========+===========+===============================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con>`_   | IN\_con   |           | Input record for function kc\_turbulent\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_var>`_   | IN\_var   |           | Input record for function kc\_turbulent\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+----------------------------------------------------+
| Type                                                                                              | Name   | Description                                        |
+===================================================================================================+========+====================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc     | Output for function kc\_turbulent\_KC [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_turbulent_KC 
      "Mean heat transfer coefficient of straight pipe | hydrodynamically developed turbulent flow regime | pressure loss dependence"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con
        IN_con "Input record for function kc_turbulent_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_var
        IN_var "Input record for function kc_turbulent_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_turbulent_KC";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/(IN_var.rho*A_cross) "Mean velocity";
      SI.ReynoldsNumber Re=max(2.6, IN_var.rho*velocity*IN_con.d_hyd/IN_var.eta);
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/IN_var.lambda);

      Real zeta=abs(1/max(MIN, 1.8*Modelica.Math.log10(abs(Re)) - 1.5)^2) 
        "Pressure loss coefficient";

      //Documentation
    algorithm 
      kc := if IN_con.roughness == TYP.Neglected then abs(IN_var.lambda/IN_con.d_hyd)
        *0.023*Re^0.8*Pr^(1/3) else if IN_con.roughness == TYP.Considered then abs(
        IN_var.lambda/IN_con.d_hyd)*(abs(zeta)/8)*abs(Re)*abs(Pr)/(1 + 12.7*(abs(
        zeta)/8)^0.5*(abs(Pr)^(2/3) - 1))*(1 + (IN_con.d_hyd/IN_con.L)^(2/3)) else 
        0;
    end kc_turbulent_KC;

--------------

|image34| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_turbulent\_IN\_con
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent>`_
and
`kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC>`_.

::

Extends from
`Utilities.Records.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.StraightPipe>`_
(Input for straight pipe).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| Type                                                                                                                  | Name        | Default                           | Description                                            |
+=======================================================================================================================+=============+===================================+========================================================+
| Straight pipe                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                         | d\_hyd      | 0.1                               | Hydraulic diameter [m]                                 |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                             | L           | 1                                 | Length [m]                                             |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                             | K           | 0                                 | Roughness (average height of surface asperities) [m]   |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| Choices                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+
| `Roughness <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Roughness>`_   | roughness   | Dissipation.Utilities.Types....   | Choice of considering surface roughness                |
+-----------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_turbulent_IN_con 
      "Input record for function kc_turbulent and kc_turbulent_KC"
      extends Utilities.Records.HeatTransfer.StraightPipe;

      Modelica.Fluid.Dissipation.Utilities.Types.Roughness roughness=Dissipation.Utilities.Types.Roughness.Considered 
        "Choice of considering surface roughness";

      SI.Length K=0 "Roughness (average height of surface asperities)";

    end kc_turbulent_IN_con;

--------------

|image35| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_turbulent\_IN\_var
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent>`_
and
`kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var>`_
(Input record for function kc\_overall and kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name      | Default   | Description                                                       |
+=============================================================================================================================+===========+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp        |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta       |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda    |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho       |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                       | m\_flow   |           | [kg/s]                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_turbulent_IN_var 
      "Input record for function kc_turbulent and kc_turbulent_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var;

    end kc_turbulent_IN_var;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_twoPhaseOverall\_KC
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Local two phase heat transfer coefficient of straight pipe \|
horizontal or vertical boiling \| horizontal condensation**

Information
~~~~~~~~~~~

::

Calculation of local **two phase** heat transfer coefficient
**kc\_2ph**for (horizontal/vertical) **boiling** or (horizontal)
**condensation** for an overall flow regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_twoPhaseOverall>`_
.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------+
| Type                                                                                                                                                                                | Name      | Default   | Description   |
+=====================================================================================================================================================================================+===========+===========+===============+
| Constant inputs                                                                                                                                                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------+
| `kc\_twoPhaseOverall\_KC\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_con>`_   | IN\_con   |           |               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------+
| Variable inputs                                                                                                                                                                     |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------+
| `kc\_twoPhaseOverall\_KC\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_var>`_   | IN\_var   |           |               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------------+
| Type                                                                                              | Name   | Description                                            |
+===================================================================================================+========+========================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc     | Local two phase heat transfer coefficient [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------+--------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_twoPhaseOverall_KC 
      "Local two phase heat transfer coefficient of straight pipe | horizontal or vertical boiling | horizontal condensation"
      //SOURCE_1: Bejan,A.: HEAT TRANSFER HANDBOOK, Wiley, 2003.
      //SOURCE_2: Gungor, K.E. and R.H.S. Winterton: A general correlation for flow boiling in tubes and annuli, Int.J. Heat Mass Transfer, Vol.29, p.351-358, 1986.

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_con
        IN_con;
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_var
        IN_var;

      //output variables
      output SI.CoefficientOfHeatTransfer kc 
        "Local two phase heat transfer coefficient";

    protected 
      Real MIN=Modelica.Constants.eps;

      //Documentation
    algorithm 
      kc := if IN_con.target == Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilHor then 
        Modelica.Fluid.Dissipation.Utilities.Functions.HeatTransfer.TwoPhase.kc_twoPhase_boilingHorizontal_KC(
        IN_con, IN_var) else if IN_con.target == Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilVer then 
        Modelica.Fluid.Dissipation.Utilities.Functions.HeatTransfer.TwoPhase.kc_twoPhase_boilingVertical_KC(
        IN_con, IN_var) else if IN_con.target == Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.CondHor then 
        Modelica.Fluid.Dissipation.Utilities.Functions.HeatTransfer.TwoPhase.kc_twoPhase_condensationHorizontal_KC(
        IN_con, IN_var) else MIN;
    end kc_twoPhaseOverall_KC;

--------------

|image36| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_twoPhaseOverall\_KC\_IN\_con
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_twoPhaseOverall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_twoPhaseOverall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT\_IN\_con <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_con>`_
(Base record for two phase heat transfer coefficient).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name        | Default                           | Description                                                                    |
+=========================================================================================================================================================+=============+===================================+================================================================================+
| Choices                                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `TwoPhaseHeatTransferTarget <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget>`_   | target      | Modelica.Fluid.Dissipation.U...   | Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Geometry                                                                                                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                                   | A\_cross    | Modelica.Constants.pi\*0.1^2/4    | Cross sectional area [m2]                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                               | perimeter   | Modelica.Constants.pi\*0.1        | Wettet perimeter [m]                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Fluid properties                                                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `MolarMass <Modelica_SIunits.html#Modelica.SIunits.MolarMass>`_                                                                                         | MM          | 0.018015268                       | Molar mass of fluid [kg/mol]                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                           | p\_crit     |                                   | Critical pressure of fluid [Pa]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_twoPhaseOverall_KC_IN_con 
      "Input record for function kc_twoPhaseOverall_KC"
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_con;

    end kc_twoPhaseOverall_KC_IN_con;

--------------

|image37| `Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe>`_.kc\_twoPhaseOverall\_KC\_IN\_var
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_twoPhaseOverall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_twoPhaseOverall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT\_IN\_var <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_var>`_
(Base record for two phase heat transfer coefficient).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name        | Default                           | Description                                                                    |
+=========================================================================================================================================================+=============+===================================+================================================================================+
| Choices                                                                                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `TwoPhaseHeatTransferTarget <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget>`_   | target      | Modelica.Fluid.Dissipation.U...   | Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Fluid properties                                                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_                               | cp\_l       |                                   | Specific heat capacity of liquid [J/(kg.K)]                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                                                     | lambda\_l   |                                   | Thermal conductivity of liquid [W/(m.K)]                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_g      |                                   | Density of gas [kg/m3]                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_l      |                                   | Density of liquid [kg/m3]                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | eta\_g      |                                   | Dynamic viscosity of gas [Pa.s]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | eta\_l      |                                   | Dynamic viscosity of liquid [Pa.s]                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                           | pressure    |                                   | Mean pressure of fluid [Pa]                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_                                                                           | dh\_lg      |                                   | Evaporation enthalpy of fluid [J/kg]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Input                                                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                   | m\_flow     |                                   | Mass flow rate [kg/s]                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| `HeatFlux <Modelica_SIunits.html#Modelica.SIunits.HeatFlux>`_                                                                                           | qdot\_A     | 0                                 | Heat flux at boiling [W/m2]                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+
| Real                                                                                                                                                    | x\_flow     | 0                                 | Mass flow rate quality                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_twoPhaseOverall_KC_IN_var 
      "Input record for function kc_twoPhaseOverall_KC"
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_var;

    end kc_twoPhaseOverall_KC_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:21
2010.

.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_laminar| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminarS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_laminar\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminarS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_laminar\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_laminar\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overallS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overallS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_turbulent| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulentS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_turbulent\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulentS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_turbulent\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_turbulent\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_twoPhaseOverall\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KCS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_twoPhaseOverall\_KC\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_twoPhaseOverall\_KC\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conS.png
.. |image15| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminarS.png
.. |image16| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminarS.png
.. |image17| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conS.png
.. |image18| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conS.png
.. |image19| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overallS.png
.. |image20| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overallS.png
.. |image21| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conS.png
.. |image22| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conS.png
.. |image23| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulentS.png
.. |image24| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulentS.png
.. |image25| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conS.png
.. |image26| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conS.png
.. |image27| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KCS.png
.. |image28| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conS.png
.. |image29| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conS.png
.. |image30| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conI.png
.. |image31| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conI.png
.. |image32| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conI.png
.. |image33| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conI.png
.. |image34| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conI.png
.. |image35| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conI.png
.. |image36| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conI.png
.. |image37| image:: Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conI.png
