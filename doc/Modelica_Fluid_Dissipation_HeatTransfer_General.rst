===============================================
Modelica.Fluid.Dissipation.HeatTransfer.General
===============================================

`Modelica.Fluid.Dissipation.HeatTransfer <Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer>`_.General
-----------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

General heat transfer
^^^^^^^^^^^^^^^^^^^^^

Approximated forced convection
''''''''''''''''''''''''''''''

Approximate calculation of the mean convective heat transfer coefficient
**kc** for forced convection with a fully developed fluid flow in a
turbulent regime. `See more
information. <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc_approxForcedConvection>`_

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                   | Description                                                                                                                                     |
+========================================================================================================================================================================================================================================================================+=================================================================================================================================================+
| |image4| `kc\_approxForcedConvection <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection>`_                                                                                                | Mean convective heat transfer coefficient for forced convection \| approximation \| turbulent regime \| hydrodynamically developed fluid flow   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
| |image5| `kc\_approxForcedConvection\_KC <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC>`_                                                                                         | Mean convective heat transfer coefficient for forced convection \| approximation \| turbulent regime \| hydrodynamically developed fluid flow   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
| |image6| `kc\_approxForcedConvection\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_con>`_                                                                                | Input record for function kc\_approxForcedConvection and kc\_approxForcedConvection\_KC                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+
| |image7| `kc\_approxForcedConvection\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_var>`_                                                                                | Input record for function kc\_approxForcedConvection and kc\_approxForcedConvection\_KC                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.General <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General>`_.kc\_approxForcedConvection
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean convective heat transfer coefficient for forced convection \|
approximation \| turbulent regime \| hydrodynamically developed fluid
flow**

Information
~~~~~~~~~~~

::

Approximate calculation of the mean convective heat transfer coefficient
**kc** for forced convection with a fully developed fluid flow in a
turbulent regime.

A detailled documentation for this convective heat transfer calculation
can be found in its underlying function
`kc\_approxForcedConvection\_KC <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC>`_
. Note that additionally a failure status is observed in this function
to check if the intended boundary conditions are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc_approxForcedConvection>`_
.

::

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------------+
| Type                                                                                                                                                                             | Name      | Default   | Description                                            |
+==================================================================================================================================================================================+===========+===========+========================================================+
| Constant inputs                                                                                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------------+
| `kc\_approxForcedConvection\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_con>`_   | IN\_con   |           | Input record for function kc\_approxForcedConvection   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------------+
| Variable inputs                                                                                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------------+
| `kc\_approxForcedConvection\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_var>`_   | IN\_var   |           | Input record for function kc\_approxForcedConvection   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------------+

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

    function kc_approxForcedConvection 
      "Mean convective heat transfer coefficient for forced convection | approximation | turbulent regime | hydrodynamically developed fluid flow"

      //SOURCE: A Bejan and A.D. Kraus. Heat Transfer handbook.John Wiley & Sons, 2nd edition, 2003. (p.424 ff)
      //Notation of equations according to SOURCE

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_con
        IN_con "Input record for function kc_approxForcedConvection";
      input Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_var
        IN_var "Input record for function kc_approxForcedConvection";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.kc_general;

      Real MIN=Modelica.Constants.eps;

      Real prandtlMax[3]={120,16700,500} "Maximum Prandtl number";
      Real prandtlMin[3]={0.7,0.7,1.5} "Minimum Prandtl number";
      Real reynoldsMax[3]={1.24e5,1e6,1e6} "Maximum Reynolds number";
      Real reynoldsMin[3]={2500,1e4,3e3} "Minimum Reynolds number";

      SI.Diameter d_hyd=max(MIN, 4*IN_con.A_cross/max(MIN, IN_con.perimeter)) 
        "Hydraulic diameter";

      //failure status
      Real fstatus[2] "Check of expected boundary conditions";

    algorithm 
      Pr := Modelica.Fluid.Dissipation.Utilities.Functions.General.PrandtlNumber(
              IN_var.cp,
              IN_var.eta,
              IN_var.lambda);
      Re := max(1, Modelica.Fluid.Dissipation.Utilities.Functions.General.ReynoldsNumber(
              IN_con.A_cross,
              IN_con.perimeter,
              IN_var.rho,
              IN_var.eta,
              abs(IN_var.m_flow))) "Reynolds number";
      kc := Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC(
        IN_con, IN_var);
      Nu := kc*d_hyd/max(MIN, IN_var.lambda);

      //failure status
      fstatus[1] := if IN_con.target == TYP.Rough then if Pr > prandtlMax[1] or Pr
         < prandtlMin[1] then 1 else 0 else if IN_con.target == TYP.Middle then if 
        Pr > prandtlMax[2] or Pr < prandtlMin[2] then 1 else 0 else if IN_con.target
         == TYP.Finest then if Pr > prandtlMax[3] or Pr < prandtlMin[3] then 1 else 
              0 else 0;
      fstatus[2] := if IN_con.target == TYP.Rough then if Re > reynoldsMax[1] or Re
         < reynoldsMin[1] then 1 else 0 else if IN_con.target == TYP.Middle then 
        if Re > reynoldsMax[2] or Re < reynoldsMin[2] then 1 else 0 else if IN_con.target
         == TYP.Finest then if Re > reynoldsMax[3] or Re < reynoldsMin[3] then 1 else 
              0 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;

    end kc_approxForcedConvection;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.General <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General>`_.kc\_approxForcedConvection\_KC
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Mean convective heat transfer coefficient for forced convection \|
approximation \| turbulent regime \| hydrodynamically developed fluid
flow**

Information
~~~~~~~~~~~

::

Approximate calculation of the mean convective heat transfer coefficient
**kc** for forced convection with a fully developed fluid flow in a
turbulent regime. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc_approxForcedConvection>`_
.

::

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| Type                                                                                                                                                                             | Name      | Default   | Description                                                |
+==================================================================================================================================================================================+===========+===========+============================================================+
| Constant inputs                                                                                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| `kc\_approxForcedConvection\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_con>`_   | IN\_con   |           | Input record for function kc\_approxForcedConvection\_KC   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| Variable inputs                                                                                                                                                                  |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+
| `kc\_approxForcedConvection\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_var>`_   | IN\_var   |           | Input record for function kc\_approxForcedConvection\_KC   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------------------+
| Type                                                                                              | Name   | Description                                                     |
+===================================================================================================+========+=================================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc     | Output for function kc\_approxForcedConvection\_KC [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_approxForcedConvection_KC 
      "Mean convective heat transfer coefficient for forced convection | approximation | turbulent regime | hydrodynamically developed fluid flow"

      //SOURCE: A Bejan and A.D. Kraus. Heat Transfer handbook.John Wiley & Sons, 2nd edition, 2003. (p.424 ff)
      //Notation of equations according to SOURCE

      //type =
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_con
        IN_con "Input record for function kc_approxForcedConvection_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_var
        IN_var "Input record for function kc_approxForcedConvection_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc 
        "Output for function kc_approxForcedConvection_KC";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.kc_general;

      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=max(MIN, 4*IN_con.A_cross/max(MIN, IN_con.perimeter)) 
        "Hydraulic diameter";

      SI.PrandtlNumber Pr=max(MIN, abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda))) 
        "Prandtl number";
      SI.ReynoldsNumber Re=max(1, 4*abs(IN_var.m_flow)/max(MIN, IN_con.perimeter*
          IN_var.eta)) "Reynolds number";

    algorithm 
      kc := IN_var.lambda/d_hyd*(if IN_con.target == TYP.Rough then 0.023*Re^(4/5)*
        Pr^IN_con.exp_Pr else if IN_con.target == TYP.Middle then 0.023*Re^(4/5)*Pr
        ^(1/3)*(IN_var.eta/IN_var.eta_wall)^0.14 else if IN_con.target == 3 and Pr
         <= 1.5 then 0.0214*max(1, abs(Re^0.8 - 100))*Pr^0.4 else if IN_con.target
         == TYP.Finest then 0.012*max(1, abs(Re^0.87 - 280))*Pr^0.4 else 0);

      //Documentation

    end kc_approxForcedConvection_KC;

--------------

|image8| `Modelica.Fluid.Dissipation.HeatTransfer.General <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General>`_.kc\_approxForcedConvection\_IN\_con
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_approxForcedConvection and
kc\_approxForcedConvection\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_approxForcedConvection <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection>`_
and
`kc\_approxForcedConvection\_KC <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General <Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General>`_
(Input for generic correlation).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name        | Default                           | Description                                                                               |
+==========================================================================================================================+=============+===================================+===========================================================================================+
| Generic variables                                                                                                        |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `kc\_general <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.kc_general>`_   | target      | Dissipation.Utilities.Types....   | Target correlation                                                                        |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                    | A\_cross    | Modelica.Constants.pi\*0.1^2/4    | Cross sectional area [m2]                                                                 |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                | perimeter   | Modelica.Constants.pi\*0.1        | Wetted perimeter [m]                                                                      |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Real                                                                                                                     | exp\_Pr     | 0.4                               | Exponent for Prandtl number w.r.t. Dittus/Boelter \| 0.4 for heating \| 0.3 for cooling   |
+--------------------------------------------------------------------------------------------------------------------------+-------------+-----------------------------------+-------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_approxForcedConvection_IN_con 
      "Input record for function kc_approxForcedConvection and kc_approxForcedConvection_KC"
      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General;
      parameter Real exp_Pr=0.4 
        "Exponent for Prandtl number w.r.t. Dittus/Boelter | 0.4 for heating | 0.3 for cooling";

    end kc_approxForcedConvection_IN_con;

--------------

|image9| `Modelica.Fluid.Dissipation.HeatTransfer.General <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General>`_.kc\_approxForcedConvection\_IN\_var
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_approxForcedConvection and
kc\_approxForcedConvection\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_approxForcedConvection <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection>`_
and
`kc\_approxForcedConvection\_KC <Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties>`_
(Base record for fluid properties).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| Type                                                                                                                        | Name        | Default   | Description                                                       |
+=============================================================================================================================+=============+===========+===================================================================+
| Fluid properties                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| `SpecificHeatCapacityAtConstantPressure <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacityAtConstantPressure>`_   | cp          |           | Specific heat capacity of fluid at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta         |           | Dynamic viscosity of fluid [Pa.s]                                 |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_                                         | lambda      |           | Thermal conductivity of fluid [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                 | rho         |           | Density of fluid [kg/m3]                                          |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                               | eta\_wall   |           | Dynamic viscosity of fluid at wall temperature [Pa.s]             |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| Input                                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                       | m\_flow     |           | [kg/s]                                                            |
+-----------------------------------------------------------------------------------------------------------------------------+-------------+-----------+-------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_approxForcedConvection_IN_var 
      "Input record for function kc_approxForcedConvection and kc_approxForcedConvection_KC"
      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;
      SI.DynamicViscosity eta_wall "Dynamic viscosity of fluid at wall temperature";

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;

    end kc_approxForcedConvection_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:19
2010.

.. |Modelica.Fluid.Dissipation.HeatTransfer.General.kc\_approxForcedConvection| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvectionS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.General.kc\_approxForcedConvection\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvectionS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.General.kc\_approxForcedConvection\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.General.kc\_approxForcedConvection\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conS.png
.. |image4| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvectionS.png
.. |image5| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvectionS.png
.. |image6| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conS.png
.. |image7| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conS.png
.. |image8| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conI.png
.. |image9| image:: Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conI.png
