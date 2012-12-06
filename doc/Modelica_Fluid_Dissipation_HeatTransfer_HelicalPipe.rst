===================================================
Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe
===================================================

`Modelica.Fluid.Dissipation.HeatTransfer <Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer>`_.HelicalPipe
---------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Helical pipe
^^^^^^^^^^^^

Laminar flow
''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** for
a helical pipe in the laminar flow regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_laminar>`_.

Turbulent flow
''''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe for turbulent flow regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_turbulent>`_.

Overall flow
''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe in a hydrodynamically developed laminar and turbulent flow
regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_overall>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                        | Description                                                                                          |
+=============================================================================================================================================================================================================================================+======================================================================================================+
| |image12| `kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar>`_                                                                                          | Mean heat transfer coefficient of helical pipe \| laminar flow regime                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image13| `kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_KC>`_                                                                                   | Mean heat transfer coefficient of helical pipe \| hydrodynamically developed laminar flow regime     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image14| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_con>`_                                                                          | Input record for function kc\_laminar and kc\_laminar\_KC                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image15| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_var>`_                                                                          | Input record for function kc\_laminar and kc\_laminar\_KC                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image16| `kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall>`_                                                                                          | Mean heat transfer coefficient of helical pipe \| overall flow regime                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image17| `kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_KC>`_                                                                                   | Mean heat transfer coefficient of helical pipe \| overall flow regime                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image18| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con>`_                                                                          | Input record for function kc\_overall and kc\_overall\_KC                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image19| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var>`_                                                                          | Input record for function kc\_overall and kc\_overall\_KC                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image20| `kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent>`_                                                                                      | Mean heat transfer coefficient of helical pipe \| hydrodynamically developed turbulent flow regime   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image21| `kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_KC>`_                                                                               | Mean heat transfer coefficient of helical pipe \| hydrodynamically developed turbulent flow regime   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image22| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_con>`_                                                                      | Input record for function kc\_turbulent and kc\_turbulent\_KC                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+
| |image23| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_var>`_                                                                      | Input record for function kc\_turbulent and kc\_turbulent\_KC                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_laminar
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of helical pipe \| laminar flow
regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar

   Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a helical pipe in the laminar flow regime. Note that additionally a
failure status is observed in this function to check if the intended
boundary conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_laminar>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d>`_
(Geometry figure for helical pipe).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Type                                                                                                                                                       | Name      | Default   | Description                             |
+============================================================================================================================================================+===========+===========+=========================================+
| Constant inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_con>`_   | IN\_con   |           | Input record for function kc\_laminar   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Variable inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_var>`_   | IN\_var   |           | Input record for function kc\_laminar   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+

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
      "Mean heat transfer coefficient of helical pipe | laminar flow regime"

      //SOURCE: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, section Gc1 - Gc2
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar";
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_var
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

      SI.Diameter d_hyd=IN_con.d_hyd "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      SI.Diameter d_s=IN_con.L/(IN_con.n_nt*PI) "Mean coil diameter";
      SI.Diameter d_w=sqrt(max(MIN, (d_s^2 - (IN_con.h/PI)^2))) 
        "Mean helical pipe diameter";
      SI.Diameter d_coil=max(d_w, d_w*(1 + (IN_con.h/(PI*d_w))^2)) 
        "Mean curvature diameter of helical pipe";
      SI.ReynoldsNumber Re_crit=2300*(1 + 8.6*(IN_con.d_hyd/d_coil)^0.45) 
        "Critical Reynolds number";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";

      //failure status
      Real fstatus[1] "Check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1, abs(IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta)));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

      //failure status
      fstatus[1] := if Re > Re_crit then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_laminar;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_laminar\_KC
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of helical pipe \| hydrodynamically
developed laminar flow regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar\_KC

   Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar\_KC

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a helical pipe in the laminar flow regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_laminar>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d>`_
(Geometry figure for helical pipe).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                                       | Name      | Default   | Description                                 |
+============================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_con>`_   | IN\_con   |           | Input record for function kc\_laminar\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_var>`_   | IN\_var   |           | Input record for function kc\_laminar\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

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
      "Mean heat transfer coefficient of helical pipe | hydrodynamically developed laminar flow regime"

      //SOURCE: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, section Gc1 - Gc2
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_var
        IN_var "Input record for function kc_laminar_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_laminar_KC";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=IN_con.d_hyd "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      SI.Diameter d_s=IN_con.L/(IN_con.n_nt*PI) "Mean coil diameter";
      SI.Diameter d_w=sqrt(max(MIN, (d_s^2 - (IN_con.h/PI)^2))) 
        "Mean helical pipe diameter";
      SI.Diameter d_coil=max(d_w, d_w*(1 + (IN_con.h/(PI*d_w))^2)) 
        "Mean curvature diameter of helical pipe";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";
      SI.ReynoldsNumber Re=max(1, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));

      Real m=0.5 + 0.2903*(IN_con.d_hyd/d_coil)^0.194 
        "Exponent for actual Reynolds number";

      //Documentation
    algorithm 
      kc := (IN_var.lambda/IN_con.d_hyd)*(3.66 + 0.08*(1 + 0.8*(IN_con.d_hyd/d_coil)
        ^0.9)*Re^(m)*Pr^(1/3));
    end kc_laminar_KC;

--------------

|image24| `Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_laminar\_IN\_con
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar>`_
and
`kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con>`_
(Input record for function kc\_overall and kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Type                                                            | Name     | Default   | Description                        |
+=================================================================+==========+===========+====================================+
| HelicalPipe                                                     |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Real                                                            | n\_nt    | 1         | Total number of turns              |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1       | Hydraulic diameter [m]             |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | h        | 0.01      | Distance between turns [m]         |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L        | 1         | Total length of helical pipe [m]   |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_laminar_IN_con 
      "Input record for function kc_laminar and kc_laminar_KC"

      extends Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con;

    end kc_laminar_IN_con;

--------------

|image25| `Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_laminar\_IN\_var
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar>`_
and
`kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var>`_
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

      extends Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var;

    end kc_laminar_IN_var;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_overall
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of helical pipe \| overall flow
regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall

   Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe in a hydrodynamically developed laminar and turbulent flow
regime. Note that additionally a failure status is observed in this
function to check if the intended boundary conditions are fulfilled.
`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_overall>`_
.

::



Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d>`_
(Geometry figure for helical pipe).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Type                                                                                                                                                       | Name      | Default   | Description                             |
+============================================================================================================================================================+===========+===========+=========================================+
| Constant inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con>`_   | IN\_con   |           | Input record for function kc\_overall   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Variable inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var>`_   | IN\_var   |           | Input record for function kc\_overall   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+

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
      "Mean heat transfer coefficient of helical pipe | overall flow regime"

      //SOURCE: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, section Gc1 - Gc2
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con
        IN_con "Input record for function kc_overall";
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var
        IN_var "Input record for function kc_overall";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(MIN, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);
    end kc_overall;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_overall\_KC
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of helical pipe \| overall flow
regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_KC

   Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_KC

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe in a hydrodynamically developed laminar and turbulent flow
regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_overall>`_
.

::


Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d>`_
(Geometry figure for helical pipe).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                                       | Name      | Default   | Description                                 |
+============================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con>`_   | IN\_con   |           | Input record for function kc\_overall\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var>`_   | IN\_var   |           | Input record for function kc\_overall\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

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
      "Mean heat transfer coefficient of helical pipe | overall flow regime"

      //SOURCE: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, section Gc1 - Gc2
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d;

      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con
        IN_con "Input record for function kc_overall_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var
        IN_var "Input record for function kc_overall_KC";
      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_overall_KC";

    protected 
      Real MIN=Modelica.Constants.eps;
      Real laminar=2e3 "Maximum Reynolds number for laminar regime";
      Real turbulent=2.2e4 "Minimum Reynolds number for turbulent regime";

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";
      SI.Diameter d_s=max(1e-6, IN_con.L/(IN_con.n_nt*PI)) "Mean coil diameter";
      SI.Diameter d_w=sqrt(max(MIN, abs(d_s^2 - (IN_con.h/PI)^2))) 
        "Mean helical pipe diameter";
      SI.Diameter d_coil=d_w*(1 + (IN_con.h/(PI*d_w))^2) 
        "Mean curvature diameter of helical pipe";
      SI.ReynoldsNumber Re_crit=min(4e3, 2300*(1 + 8.6*(IN_con.d_hyd/d_coil)^0.45)) 
        "Critical Reynolds number";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN,
          IN_var.eta));
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));

      //Documentation
    algorithm 
      kc := SMOOTH(
              Re_crit,
              turbulent,
              Re)*Dissipation.HeatTransfer.HelicalPipe.kc_laminar_KC(IN_con,
        IN_var) + SMOOTH(
              turbulent,
              Re_crit,
              Re)*Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_KC(IN_con,
        IN_var);
    end kc_overall_KC;

--------------

|image26| `Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_overall\_IN\_con
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_overall and kc\_overall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall>`_
and
`kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.HelicalPipe>`_
(Input for helical pipe).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Type                                                            | Name     | Default   | Description                        |
+=================================================================+==========+===========+====================================+
| HelicalPipe                                                     |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Real                                                            | n\_nt    | 1         | Total number of turns              |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1       | Hydraulic diameter [m]             |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | h        | 0.01      | Distance between turns [m]         |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L        | 1         | Total length of helical pipe [m]   |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_overall_IN_con 
      "Input record for function kc_overall and kc_overall_KC"

      //helical pipe variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.HelicalPipe;

    end kc_overall_IN_con;

--------------

|image27| `Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_overall\_IN\_var
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_overall and kc\_overall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall>`_
and
`kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_KC>`_.

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

`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_turbulent
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of helical pipe \| hydrodynamically
developed turbulent flow regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent

   Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe for turbulent flow regime. Note that additionally a failure
status is observed in this function to check if the intended boundary
conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_turbulent>`_
.

::


Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d>`_
(Geometry figure for helical pipe).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Type                                                                                                                                                           | Name      | Default   | Description                               |
+================================================================================================================================================================+===========+===========+===========================================+
| Constant inputs                                                                                                                                                |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_con>`_   | IN\_con   |           | Input record for function kc\_turbulent   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Variable inputs                                                                                                                                                |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_var>`_   | IN\_var   |           | Input record for function kc\_turbulent   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+

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
      "Mean heat transfer coefficient of helical pipe | hydrodynamically developed turbulent flow regime"

      //SOURCE: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, section Gc1 - Gc2
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_con
        IN_con "Input record for function  kc_turbulent";
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_var
        IN_var "Input record for function  kc_turbulent";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      Real MIN=Modelica.Constants.eps;

      Real turbulent=2.2e4 "Minimum Reynolds number for turbulent regime";

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";

      //failure status
      Real fstatus[1] "Check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/IN_var.lambda);
      Re := max(1e-3, abs(IN_var.rho*velocity*IN_con.d_hyd/IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

      //failure status
      fstatus[1] := if Re < turbulent then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_turbulent;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_turbulent\_KC
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of helical pipe \| hydrodynamically
developed turbulent flow regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent\_KC

   Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent\_KC

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** of a
helical pipe for turbulent flow regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HelicalPipe.kc_turbulent>`_
.

::


Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d>`_
(Geometry figure for helical pipe).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Type                                                                                                                                                           | Name      | Default   | Description                                   |
+================================================================================================================================================================+===========+===========+===============================================+
| Constant inputs                                                                                                                                                |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_con>`_   | IN\_con   |           | Input record for function kc\_turbulent\_KC   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Variable inputs                                                                                                                                                |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_var>`_   | IN\_var   |           | Input record for function kc\_turbulent\_KC   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+

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
      "Mean heat transfer coefficient of helical pipe | hydrodynamically developed turbulent flow regime"

      //SOURCE: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, section Gc1 - Gc2
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.HelicalPipe1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_con
        IN_con "Input record for function kc_turbulent_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_var
        IN_var "Input record for function kc_turbulent_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_turbulent_KC";

    protected 
      Real MIN=Modelica.Constants.eps;
      Real turbulent=2.2e4 "Minimum Reynolds number for turbulent regime";

      SI.Diameter d_hyd=IN_con.d_hyd "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      SI.Diameter d_s=IN_con.L/(IN_con.n_nt*PI) "Mean coil diameter";
      SI.Diameter d_w=sqrt(max(MIN, (d_s^2 - (IN_con.h/PI)^2))) 
        "Mean helical pipe diameter";
      SI.Diameter d_coil=max(d_w, d_w*(1 + (IN_con.h/(PI*d_w))^2)) 
        "Mean curvature diameter of helical pipe";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN,
          IN_var.eta));
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));

      Real zeta_TOT=0.3164*max(turbulent, Re)^(-0.25) + 0.03*sqrt(IN_con.d_hyd/
          d_coil) "Pressure loss coefficient";

      //Documentation
    algorithm 
      kc := (IN_var.lambda/IN_con.d_hyd)*(zeta_TOT/8)*Re*Pr/(1 + 12.7*sqrt(zeta_TOT
        /8)*(Pr^(2/3) - 1));
    end kc_turbulent_KC;

--------------

|image28| `Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_turbulent\_IN\_con
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent>`_
and
`kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con>`_
(Input record for function kc\_overall and kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Type                                                            | Name     | Default   | Description                        |
+=================================================================+==========+===========+====================================+
| HelicalPipe                                                     |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| Real                                                            | n\_nt    | 1         | Total number of turns              |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_   | d\_hyd   | 0.1       | Hydraulic diameter [m]             |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | h        | 0.01      | Distance between turns [m]         |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_       | L        | 1         | Total length of helical pipe [m]   |
+-----------------------------------------------------------------+----------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_turbulent_IN_con 
      "Input record for function kc_turbulent and kc_turbulent_KC"

      extends Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_con;

    end kc_turbulent_IN_con;

--------------

|image29| `Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe>`_.kc\_turbulent\_IN\_var
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent>`_
and
`kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var>`_
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

      extends Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_var;

    end kc_turbulent_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:20
2010.

.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_laminar\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overallS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overallS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_overall\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulentS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulentS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc\_turbulent\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_conS.png
.. |image12| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarS.png
.. |image13| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminarS.png
.. |image14| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_conS.png
.. |image15| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_conS.png
.. |image16| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overallS.png
.. |image17| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overallS.png
.. |image18| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_conS.png
.. |image19| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_conS.png
.. |image20| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulentS.png
.. |image21| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulentS.png
.. |image22| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_conS.png
.. |image23| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_conS.png
.. |image24| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_conI.png
.. |image25| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar_IN_conI.png
.. |image26| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_conI.png
.. |image27| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_overall_IN_conI.png
.. |image28| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_conI.png
.. |image29| image:: Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent_IN_conI.png
