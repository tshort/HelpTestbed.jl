=============================================
Modelica.Fluid.Dissipation.HeatTransfer.Plate
=============================================

`Modelica.Fluid.Dissipation.HeatTransfer <Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer>`_.Plate
---------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Even plate
^^^^^^^^^^

Laminar flow
''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** for
a laminar fluid flow over an even surface. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_laminar>`_
.

Turbulent flow
''''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** for
a hydrodynamically developed turbulent fluid flow over an even surface.
`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_turbulent>`_.

Overall flow
''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** for
an laminar and turbulent fluid flow over an even surface. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_overall>`_.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                      | Description                                                                                     |
+===========================================================================================================================================================================================================================+=================================================================================================+
| |image12| `kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar>`_                                                                                    | Mean heat transfer coefficient of plate \| laminar regime                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image13| `kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_KC>`_                                                                             | Mean heat transfer coefficient of plate \| laminar regime                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image14| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_con>`_                                                                    | Input record for function kc\_laminar and kc\_laminar\_KC                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image15| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_var>`_                                                                    | Input record for function kc\_laminar and kc\_laminar\_KC                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image16| `kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall>`_                                                                                    | Mean heat transfer coefficient of even plate \| overall regime \| constant wall temperature     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image17| `kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_KC>`_                                                                             | Mean heat transfer coefficient of even plate \| overall regime \| constant wall temperature     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image18| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con>`_                                                                    | Input record for function kc\_overall and function kc\_overall\_KC                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image19| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var>`_                                                                    | Input record for function kc\_overall and function kc\_overall\_KC                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image20| `kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent>`_                                                                                | Mean heat transfer coefficient of even plate \| turbulent regime \| constant wall temperature   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image21| `kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_KC>`_                                                                         | Mean heat transfer coefficient of even plate \| turbulent regime \| constant wall temperature   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image22| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_con>`_                                                                | Input record for function kc\_turbulent and kc\_turbulent\_KC                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+
| |image23| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_var>`_                                                                | Input record for function kc\_turbulent and kc\_turbulent\_KC                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_laminar
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of plate \| laminar regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar

   Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a laminar fluid flow over an even surface. Note that additionally a
failure status is observed in this function to check if the intended
boundary conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_laminar>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d>`_
(Geometry figure 1 for plate).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Type                                                                                                                                           | Name      | Default   | Description                             |
+================================================================================================================================================+===========+===========+=========================================+
| Constant inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_con>`_   | IN\_con   |           | Input record for function kc\_laminar   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Variable inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_var>`_   | IN\_var   |           | Input record for function kc\_laminar   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+

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
      "Mean heat transfer coefficient of plate | laminar regime"
      //SOURCE: VDI-Waermeatlas, Aufl. 9, Springer-Verlag, 2002, Section Gd 1
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar";
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_var
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

      Real laminar=1e5 "Maximum Reynolds number of laminar flow regime";
      Real prandtlMax=2000 "Maximum Prandtl number";
      Real prandtlMin=0.6 "Minimum Prandtl number";

      //failure status
      Real fstatus[2] "Check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda);
      Re := max(1e-3, abs(IN_var.rho*IN_var.velocity*IN_con.L/max(MIN, IN_var.eta)));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_KC(IN_con, IN_var);
      Nu := kc*IN_con.L/max(MIN, IN_var.lambda);

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

`Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_laminar\_KC
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of plate \| laminar regime**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar\_KC

   Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar\_KC

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a laminar fluid flow over an even surface. Generally this function is
numerically best used for the calculation of the mean convective heat
transfer coefficient **kc** at known fluid velocity. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_laminar>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d>`_
(Geometry figure 1 for plate).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                           | Name      | Default   | Description                                 |
+================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_laminar\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_con>`_   | IN\_con   |           | Input record for function kc\_laminar\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_laminar\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_var>`_   | IN\_var   |           | Input record for function kc\_laminar\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

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
      "Mean heat transfer coefficient of plate | laminar regime"
      //SOURCE: VDI-Waermeatlas, Aufl. 9, Springer-Verlag, 2002, Section Gd 1
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_var
        IN_var "Input record for function kc_laminar_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_laminar_KC";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Length L=max(MIN, IN_con.L);

      SI.SpecificHeatCapacityAtConstantPressure cp=IN_var.cp;
      SI.DynamicViscosity eta=max(MIN, IN_var.eta);
      SI.ThermalConductivity lambda=max(MIN, IN_var.lambda);
      SI.Density rho=IN_var.rho;

      SI.Velocity velocity=abs(IN_var.velocity) "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, rho*velocity*L/eta);
      SI.PrandtlNumber Pr=eta*cp/lambda;

      //Documentation
    algorithm 
      kc := (lambda/L)*(0.664*abs(Re)^0.5*Pr^(1/3));
    end kc_laminar_KC;

--------------

|image24| `Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_laminar\_IN\_con
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar>`_
and
`kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con>`_
(Input record for function kc\_overall and function kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                        | Name   | Default   | Description           |
+=============================================================+========+===========+=======================+
| Plate                                                       |
+-------------------------------------------------------------+--------+-----------+-----------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | L      | 1         | Length of plate [m]   |
+-------------------------------------------------------------+--------+-----------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_laminar_IN_con 
      "Input record for function kc_laminar and kc_laminar_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con;

    end kc_laminar_IN_con;

--------------

|image25| `Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_laminar\_IN\_var
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar>`_
and
`kc\_laminar\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var>`_
(Input record for function kc\_overall and function kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name       | Default   | Description                                                       |
+=============================================================================================================================+============+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp         |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta        |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda     |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho        |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                               | velocity   |           | [m/s]                                                             |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_laminar_IN_var 
      "Input record for function kc_laminar and kc_laminar_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var;

    end kc_laminar_IN_var;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_overall
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of even plate \| overall regime \|
constant wall temperature**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall

   Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a laminar or turbulent fluid flow over an even surface. Note that
additionally a failure status is observed in this function to check if
the intended boundary conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_overall>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d>`_
(Geometry figure 1 for plate).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Type                                                                                                                                           | Name      | Default   | Description                             |
+================================================================================================================================================+===========+===========+=========================================+
| Constant inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con>`_   | IN\_con   |           | Input record for function kc\_overall   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| Variable inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+
| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var>`_   | IN\_var   |           | Input record for function kc\_overall   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------+

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
      "Mean heat transfer coefficient of even plate | overall regime | constant wall temperature"
      //SOURCE: VDI-Waermeatlas, Aufl. 9, Springer-Verlag, 2002, Section Gd 1
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con
        IN_con "Input record for function kc_overall";
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var
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

      Real prandtlMax=2000 "Maximum Prandtl number";
      Real prandtlMin=0.6 "Minimum Prandtl number";
      Real reynoldsMax=1e7 "Maximum Reynolds number";
      Real reynoldsMin=1e1 "Minimum Reynolds number";

      //failure status
      Real fstatus[2] "Check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda);
      Re := max(1e-3, abs(IN_var.rho*IN_var.velocity*IN_con.L/max(MIN, IN_var.eta)));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_KC(IN_con, IN_var);
      Nu := kc*IN_con.L/max(MIN, IN_var.lambda);

      //failure status
      fstatus[1] := if Re > reynoldsMax or Re < reynoldsMin then 1 else 0;
      fstatus[2] := if Pr > prandtlMax or Pr < prandtlMin then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_overall;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_overall\_KC
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of even plate \| overall regime \|
constant wall temperature**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_KC

   Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_KC

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a laminar or turbulent fluid flow over an even surface. Generally this
function is numerically best used for the calculation of the mean
convective heat transfer coefficient **kc** at known fluid velocity.
`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_overall>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d>`_
(Geometry figure 1 for plate).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Type                                                                                                                                           | Name      | Default   | Description                                 |
+================================================================================================================================================+===========+===========+=============================================+
| Constant inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con>`_   | IN\_con   |           | Input record for function kc\_overall\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| Variable inputs                                                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+
| `kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var>`_   | IN\_var   |           | Input record for function kc\_overall\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+---------------------------------------------+

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
      "Mean heat transfer coefficient of even plate | overall regime | constant wall temperature"
      //SOURCE: VDI-Waermeatlas, Aufl. 9, Springer-Verlag, 2002, Section Gd 1
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con
        IN_con "Input record for function kc_overall_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var
        IN_var "Input record for function kc_overall_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_overall_KC";

    protected 
      SI.CoefficientOfHeatTransfer kc_lam=
          Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_KC(     IN_con, IN_var);
      SI.CoefficientOfHeatTransfer kc_turb=
          Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_KC(     IN_con, IN_var);

      //Documentation
    algorithm 
      kc := sqrt((kc_lam)^2 + (kc_turb)^2);
    end kc_overall_KC;

--------------

|image26| `Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_overall\_IN\_con
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_overall and function kc\_overall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall>`_
and
`kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.Plate <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.Plate>`_
(Input for plate).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                        | Name   | Default   | Description           |
+=============================================================+========+===========+=======================+
| Plate                                                       |
+-------------------------------------------------------------+--------+-----------+-----------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | L      | 1         | Length of plate [m]   |
+-------------------------------------------------------------+--------+-----------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_overall_IN_con 
      "Input record for function kc_overall and function kc_overall_KC"
      //plate variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.Plate;

    end kc_overall_IN_con;

--------------

|image27| `Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_overall\_IN\_var
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_overall and function kc\_overall\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_overall <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall>`_
and
`kc\_overall\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties>`_
(Base record for fluid properties).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name       | Default   | Description                                                       |
+=============================================================================================================================+============+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp         |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta        |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda     |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho        |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                               | velocity   |           | [m/s]                                                             |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_overall_IN_var 
      "Input record for function kc_overall and function kc_overall_KC"
      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;

      //input variable (fluid flow velocity)
      Modelica.SIunits.Velocity velocity;

    end kc_overall_IN_var;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_turbulent
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of even plate \| turbulent regime \|
constant wall temperature**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent

   Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a hydrodynamically developed turbulent fluid flow over an even surface.
Note that additionally a failure status is observed in this function to
check if the intended boundary conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_turbulent>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d>`_
(Geometry figure 1 for plate).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Type                                                                                                                                               | Name      | Default   | Description                               |
+====================================================================================================================================================+===========+===========+===========================================+
| Constant inputs                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_con>`_   | IN\_con   |           | Input record for function kc\_turbulent   |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Variable inputs                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_var>`_   | IN\_var   |           | Input record for function kc\_turbulent   |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+

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
      "Mean heat transfer coefficient of even plate | turbulent regime | constant wall temperature"
      //SOURCE: VDI-Waermeatlas, Aufl. 9, Springer-Verlag, 2002, Section Gd 1
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_con
        IN_con "Input record for function kc_turbulent";
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_var
        IN_var "Input record for function kc_turbulent";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      Real MIN=Modelica.Constants.eps;

      Real prandtlMax=2000 "Maximum Prandtl number";
      Real prandtlMin=0.6 "Minimum Prandtl number";
      Real reynoldsMax=1e7 "Maximum Reynolds number";
      Real reynoldsMin=5e5 "Minimum Reynolds number";

      //failure status
      Real fstatus[2] "Check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1e-3, abs(IN_var.rho*IN_var.velocity*IN_con.L/max(MIN, IN_var.eta)));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_KC(IN_con, IN_var);
      Nu := kc*IN_con.L/max(MIN, IN_var.lambda);

      //failure status
      fstatus[1] := if Re > reynoldsMax or Re < reynoldsMin then 1 else 0;
      fstatus[2] := if Pr > prandtlMax or Pr < prandtlMin then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_turbulent;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_turbulent\_KC
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean heat transfer coefficient of even plate \| turbulent regime \|
constant wall temperature**

.. figure:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent\_KC

   Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent\_KC

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
a hydrodynamically developed turbulent fluid flow over an even surface.
Generally this function is numerically best used for the calculation of
the mean convective heat transfer coefficient **kc** at known fluid
velocity. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_turbulent>`_
.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1\_d <Modelica_Fluid_Dissipation_Utilities_Icons_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d>`_
(Geometry figure 1 for plate).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Type                                                                                                                                               | Name      | Default   | Description                                   |
+====================================================================================================================================================+===========+===========+===============================================+
| Constant inputs                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_turbulent\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_con>`_   | IN\_con   |           | Input record for function kc\_turbulent\_KC   |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Variable inputs                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_turbulent\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_var>`_   | IN\_var   |           | Input record for function kc\_turbulent\_KC   |
+----------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+

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
      "Mean heat transfer coefficient of even plate | turbulent regime | constant wall temperature"
      //SOURCE: VDI-Waermeatlas, Aufl. 9, Springer-Verlag, 2002, Section Gd 1
      //Notation of equations according to SOURCE

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.HeatTransfer.Plate1_d;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_con
        IN_con "Input record for function kc_turbulent_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_var
        IN_var "Input record for function kc_turbulent_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_turbulent_KC";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Length L=max(MIN, IN_con.L);

      SI.SpecificHeatCapacityAtConstantPressure cp=IN_var.cp;
      SI.DynamicViscosity eta=IN_var.eta;
      SI.ThermalConductivity lambda=max(MIN, IN_var.lambda);
      SI.Density rho=IN_var.rho;

      SI.Velocity velocity=abs(IN_var.velocity) "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, abs(rho*velocity*L/eta));
      SI.PrandtlNumber Pr=abs(eta*cp/lambda);

      //Documentation
    algorithm 
      kc := abs((lambda/L))*(0.037*Re^0.8*Pr)/(1 + 2.443/(max(Re^0.1, 1e-6))*(Pr^(2
        /3) - 1));
    end kc_turbulent_KC;

--------------

|image28| `Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_turbulent\_IN\_con
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent>`_
and
`kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con>`_
(Input record for function kc\_overall and function kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+--------+-----------+-----------------------+
| Type                                                        | Name   | Default   | Description           |
+=============================================================+========+===========+=======================+
| Plate                                                       |
+-------------------------------------------------------------+--------+-----------+-----------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | L      | 1         | Length of plate [m]   |
+-------------------------------------------------------------+--------+-----------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_turbulent_IN_con 
      "Input record for function kc_turbulent and kc_turbulent_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_con;

    end kc_turbulent_IN_con;

--------------

|image29| `Modelica.Fluid.Dissipation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate>`_.kc\_turbulent\_IN\_var
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent>`_
and
`kc\_turbulent\_KC <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var>`_
(Input record for function kc\_overall and function kc\_overall\_KC).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name       | Default   | Description                                                       |
+=============================================================================================================================+============+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp         |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta        |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda     |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho        |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                               | velocity   |           | [m/s]                                                             |
+-----------------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_turbulent_IN_var 
      "Input record for function kc_turbulent and kc_turbulent_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_var;

    end kc_turbulent_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:20
2010.

.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_laminar\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overallS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overallS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_overall\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulentS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulentS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc\_turbulent\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_conS.png
.. |image12| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarS.png
.. |image13| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminarS.png
.. |image14| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_conS.png
.. |image15| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_conS.png
.. |image16| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overallS.png
.. |image17| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overallS.png
.. |image18| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_conS.png
.. |image19| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_conS.png
.. |image20| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulentS.png
.. |image21| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulentS.png
.. |image22| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_conS.png
.. |image23| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_conS.png
.. |image24| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_conI.png
.. |image25| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar_IN_conI.png
.. |image26| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_conI.png
.. |image27| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_overall_IN_conI.png
.. |image28| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_conI.png
.. |image29| image:: Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent_IN_conI.png
