=====================================================
Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger
=====================================================

`Modelica.Fluid.Dissipation.HeatTransfer <Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer>`_.HeatExchanger
-----------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Heat exchanger
^^^^^^^^^^^^^^

Flat tube heat exchanger
''''''''''''''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with flat tubes and
several fin geometries. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_flatTube>`_
.

Round tube heat exchanger
'''''''''''''''''''''''''

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with round tubes and
several fin geometries. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_roundTube>`_
.

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| Name                                                                                                                                                                                                                                              | Description                                                     |
+===================================================================================================================================================================================================================================================+=================================================================+
| |image8| `kc\_flatTube <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube>`_                                                                                           |                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| |image9| `kc\_flatTube\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_KC>`_                                                                                    |                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| |image10| `kc\_flatTube\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_con>`_                                                                          | Input record for function kc\_flatTube and kc\_flatTube\_KC     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| |image11| `kc\_flatTube\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_var>`_                                                                          | Input record for function kc\_flatTube and kc\_flatTube\_KC     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| |image12| `kc\_roundTube <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube>`_                                                                                        |                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| |image13| `kc\_roundTube\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_KC>`_                                                                                 |                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| |image14| `kc\_roundTube\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_con>`_                                                                        | Input record for function kc\_roundTube and kc\_roundTube\_KC   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+
| |image15| `kc\_roundTube\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_var>`_                                                                        | Input record for function kc\_roundTube and kc\_roundTube\_KC   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_flatTube
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with flat tubes and
several fin geometries. Note that additionally a failure status is
observed in this function to check if the intended boundary conditions
are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_flatTube>`_
.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                              |
+==================================================================================================================================================================+===========+===========+==========================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------+
| `kc\_flatTube\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_con>`_   | IN\_con   |           | Input record for function kc\_flatTube   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------+
| `kc\_flatTube\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_var>`_   | IN\_var   |           | Input record for function kc\_flatTube   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------------------------+

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

    function kc_flatTube

      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_con
        IN_con "Input record for function kc_flatTube";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_var
        IN_var "Input record for function kc_flatTube";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes;

      SI.Area A_c=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.F_l
           - IN_con.delta_f)*(IN_con.F_p - IN_con.delta_f)/((IN_con.F_l + IN_con.D_m)
          *IN_con.F_p)) else if IN_con.geometry == TYP.RectangularFin then IN_con.A_fr
          *(h*s/((h + t + IN_con.D_m)*(s + t))) else 0 
        "Minimum flow cross-sectional area";
      SI.Length h=if IN_con.geometry == TYP.RectangularFin then IN_con.D_h*(1 +
          IN_con.alpha)/(2*IN_con.alpha) else 0 "Free flow height";
      SI.Length l=if IN_con.geometry == TYP.RectangularFin then t/IN_con.delta else 
                0 "Fin length";
      SI.Length s=if IN_con.geometry == TYP.RectangularFin then h*IN_con.alpha else 
                0 "Lateral fin spacing (free flow width)";
      SI.Length t=if IN_con.geometry == TYP.RectangularFin then s*IN_con.gamma else 
                0 "Fin thickness";
    algorithm 
      kc := Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_KC(IN_con,
        IN_var);
      Pr := abs(IN_var.eta*IN_var.cp/IN_var.lambda);

      if IN_con.geometry == TYP.LouverFin then
        Re := max(1e-3, abs(IN_var.m_flow)*IN_con.L_p/(IN_var.eta*A_c));
        Nu := max(1e-3, kc*IN_con.L_p/IN_var.lambda);
      elseif IN_con.geometry == TYP.RectangularFin then
        Re := max(1e-3, abs(IN_var.m_flow)*IN_con.D_h/(IN_var.eta*A_c));
        Nu := max(1e-3, kc*IN_con.D_h/IN_var.lambda);
      end if;

      failureStatus := if IN_con.geometry == TYP.LouverFin then if Re < 100 or Re
         > 3000 then 1 else 0 else if IN_con.geometry == TYP.RectangularFin then 
        if Re < 300 or Re > 5000 then 1 else 0 else 0;

    end kc_flatTube;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_flatTube\_KC
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with flat tubes and
several fin geometries. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_flatTube>`_
.

::

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| Type                                                                                                                                                             | Name      | Default   | Description                                  |
+==================================================================================================================================================================+===========+===========+==============================================+
| Constant inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| `kc\_flatTube\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_con>`_   | IN\_con   |           | Input record for function kc\_flatTube\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| Variable inputs                                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+
| `kc\_flatTube\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_var>`_   | IN\_var   |           | Input record for function kc\_flatTube\_KC   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+----------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------------+
| Type                                                                                              | Name   | Description                                               |
+===================================================================================================+========+===========================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc     | Output for function kc\_flatTubePlateFin\_KC [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_flatTube_KC
      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      // import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_con
        IN_con "Input record for function kc_flatTube_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_var
        IN_var "Input record for function kc_flatTube_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc 
        "Output for function kc_flatTubePlateFin_KC";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes;

      Real MIN=Modelica.Constants.eps;
      Real Phi=IN_con.Phi*180/PI "Louver angle";

      SI.ReynoldsNumber Re_Dh=max(1e-3, abs(IN_var.m_flow)*IN_con.D_h/(IN_var.eta*
          A_c)) "Reynolds number based on hydraulic diameter";
      SI.ReynoldsNumber Re_Lp=max(1e-3, abs(IN_var.m_flow)*IN_con.L_p/(IN_var.eta*
          A_c)) "Reynolds number based on louver pitch";
      SI.PrandtlNumber Pr=IN_var.eta*IN_var.cp/IN_var.lambda "Prandtl number";
      Real j "Colburn j faktor";

      SI.Area A_c=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.F_l
           - IN_con.delta_f)*(IN_con.F_p - IN_con.delta_f)/((IN_con.F_l + IN_con.D_m)
          *IN_con.F_p)) else if IN_con.geometry == TYP.RectangularFin then IN_con.A_fr
          *(h*s/((h + t + IN_con.D_m)*(s + t))) else 0 
        "Minimum flow cross-sectional area";
      SI.Length h=if IN_con.geometry == TYP.RectangularFin then IN_con.D_h*(1 +
          IN_con.alpha)/(2*IN_con.alpha) else 0 "Free flow height";
      SI.Length l=if IN_con.geometry == TYP.RectangularFin then t/IN_con.delta else 
                0 "Fin length";
      SI.Length s=if IN_con.geometry == TYP.RectangularFin then h*IN_con.alpha else 
                0 "Lateral fin spacing (free flow width)";
      SI.Length t=if IN_con.geometry == TYP.RectangularFin then s*IN_con.gamma else 
                0 "Fin thickness";

    algorithm 
      if IN_con.geometry == TYP.LouverFin then
        j := Re_Lp^(-0.49)*(Phi/90)^0.27*(IN_con.F_p/IN_con.L_p)^(-0.14)*(IN_con.F_l
          /IN_con.L_p)^(-0.29)*(IN_con.T_d/IN_con.L_p)^(-0.23)*(IN_con.L_l/IN_con.L_p)
          ^0.68*(IN_con.T_p/IN_con.L_p)^(-0.28)*(IN_con.delta_f/IN_con.L_p)^(-0.05);
        kc := j*(Re_Lp*Pr^(1/3)*IN_var.lambda/IN_con.L_p);

      elseif IN_con.geometry == TYP.RectangularFin then
        j := 0.6522*Re_Dh^(-0.5403)*(s/h)^(-0.1541)*(t/l)^0.1499*(t/s)^(-0.0678)*(1
           + 5.269e-5*Re_Dh^1.340*(s/h)^0.504*(t/l)^0.456*(t/s)^(-1.055))^0.1;
        kc := j*(Re_Dh*Pr^(1/3)*IN_var.lambda/IN_con.D_h);

      else

      end if;

    end kc_flatTube_KC;

--------------

|image16| `Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_flatTube\_IN\_con
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_flatTube and kc\_flatTube\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_flatTube <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube>`_
and
`kc\_flatTube\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_KC>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| Type                                                                                                                                           | Name       | Default                           | Description                                      |
+================================================================================================================================================+============+===================================+==================================================+
| HeatExchanger                                                                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `HTXGeometry\_flatTubes <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes>`_   | geometry   | Dissipation.Utilities.Types....   | Choice of fin geometry                           |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                          | A\_fr      | 0                                 | Frontal area [m2]                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | D\_h       | 0                                 | Hydraulic diameter [m]                           |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | D\_m       | 0                                 | Major tube diameter for flat tube [m]            |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | F\_l       | 0                                 | Fin length [m]                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | F\_p       | 0                                 | Fin pitch, fin spacing + fin thickness [m]       |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | L\_l       | 0                                 | Louver length [m]                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | L\_p       | 0                                 | Louver pitch [m]                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | T\_d       | 0                                 | Tube depth [m]                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | T\_p       | 0                                 | Tube pitch [m]                                   |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| Real                                                                                                                                           | alpha      | 0                                 | Lateral fin spacing (s) / free flow height (h)   |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| Real                                                                                                                                           | gamma      | 0                                 | Fin thickness (t) / lateral fin spacing (s)      |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| Real                                                                                                                                           | delta      | 0                                 | Fin thickness (t) / Fin length (l)               |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                      | delta\_f   | 0                                 | Fin thickness [m]                                |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                                        | Phi        | 0                                 | Louver angle [rad]                               |
+------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+--------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_flatTube_IN_con 
      "Input record for function kc_flatTube and kc_flatTube_KC"
      extends Modelica.Icons.Record;

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes;

    public 
      Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_flatTubes
        geometry =                                                              Dissipation.Utilities.Types.HTXGeometry_flatTubes.LouverFin 
        "Choice of fin geometry";

      SI.Area A_fr=0 "Frontal area";
      SI.Length D_h=0 "Hydraulic diameter";
      SI.Length D_m=0 "Major tube diameter for flat tube";
      SI.Length F_l=0 "Fin length";
      SI.Length F_p=0 "Fin pitch, fin spacing + fin thickness";
      SI.Length L_l=0 "Louver length";
      SI.Length L_p=0 "Louver pitch";
      SI.Length T_d=0 "Tube depth";
      SI.Length T_p=0 "Tube pitch";

      Real alpha=0 "Lateral fin spacing (s) / free flow height (h)";
      Real gamma=0 "Fin thickness (t) / lateral fin spacing (s)";
      Real delta=0 "Fin thickness (t) / Fin length (l)";
      SI.Length delta_f=0 "Fin thickness";
      SI.Angle Phi=0 "Louver angle";


    end kc_flatTube_IN_con;

--------------

|image17| `Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_flatTube\_IN\_var
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_flatTube and kc\_flatTube\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_flatTube <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube>`_
and
`kc\_flatTube\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_KC>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records),
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

    record kc_flatTube_IN_var 
      "Input record for function kc_flatTube and kc_flatTube_KC"
      extends Modelica.Icons.Record;

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;


    end kc_flatTube_IN_var;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_roundTube
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with round tubes and
several fin geometries. Note that additionally a failure status is
observed in this function to check if the intended boundary conditions
are fulfilled. `See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_roundTube>`_
.

::

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Type                                                                                                                                                               | Name      | Default   | Description                               |
+====================================================================================================================================================================+===========+===========+===========================================+
| Constant inputs                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_roundTube\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_con>`_   | IN\_con   |           | Input record for function kc\_roundTube   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| Variable inputs                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+
| `kc\_roundTube\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_var>`_   | IN\_var   |           | Input record for function kc\_roundTube   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------------------------+

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

    function kc_roundTube
      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_con
        IN_con "Input record for function kc_roundTube";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_var
        IN_var "Input record for function kc_roundTube";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_roundTubes;

      SI.Area A_c=IN_con.A_fr*((IN_con.F_p*IN_con.P_t - IN_con.F_p*IN_con.D_c - (
          IN_con.P_t - IN_con.D_c)*IN_con.delta_f)/(IN_con.F_p*IN_con.P_t)) 
        "Minimum flow cross-sectional area";
      SI.Area A_tot=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.N
          *PI*IN_con.D_c*(IN_con.F_p - IN_con.delta_f) + 2*(IN_con.P_t*IN_con.L -
          IN_con.N*PI*IN_con.D_c^2/4))/(IN_con.P_t*IN_con.F_p)) else 0 
        "Total heat transfer area";
      SI.Length D_h=if IN_con.geometry == TYP.LouverFin then 4*A_c*IN_con.L/A_tot else 
                0 "Hydraulic diameter";

      /*SI.Length D_h=
        if IN_con.geometry==2 then
          4*A_c/(IN_con.A_fr*(2*(IN_con.P_t-IN_con.D_c+IN_con.F_p)/(IN_con.F_p*(IN_con.P_t-IN_con.D_c)))) else
          0 "Hydraulic diameter";*/

    algorithm 
      kc := Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_KC(IN_con,
        IN_var);
      Pr := abs(IN_var.eta*IN_var.cp/IN_var.lambda);

      if IN_con.geometry == TYP.PlainFin or IN_con.geometry == TYP.LouverFin or 
          IN_con.geometry == TYP.SlitFin or IN_con.geometry == TYP.WavyFin then
        Re := max(1e-3, abs(IN_var.m_flow)*IN_con.D_c/(IN_var.eta*A_c));
        Nu := max(1e-3, kc*IN_con.D_c/IN_var.lambda);
      end if;

      failureStatus := if IN_con.geometry == TYP.PlainFin then if Re < 300 or Re >
        8000 then 1 else 0 else if IN_con.geometry == TYP.LouverFin then if Re <
        300 or Re > 7000 then 1 else 0 else if IN_con.geometry == TYP.SlitFin then 
        if Re < 400 or Re > 7000 then 1 else 0 else if IN_con.geometry == TYP.WavyFin then 
              if Re < 350 or Re > 7000 then 1 else 0 else 0;

    end kc_roundTube;

--------------

`Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_roundTube\_KC
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Information
~~~~~~~~~~~

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with round tubes and
several fin geometries.`See more
information <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_roundTube>`_
.

::

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Type                                                                                                                                                               | Name      | Default   | Description                                   |
+====================================================================================================================================================================+===========+===========+===============================================+
| Constant inputs                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_roundTube\_IN\_con <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_con>`_   | IN\_con   |           | Input record for function kc\_roundTube\_KC   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| Variable inputs                                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+
| `kc\_roundTube\_IN\_var <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_var>`_   | IN\_var   |           | Input record for function kc\_roundTube\_KC   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+----------------------------------------------------+
| Type                                                                                              | Name   | Description                                        |
+===================================================================================================+========+====================================================+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | kc     | Output for function kc\_roundTube\_KC [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function kc_roundTube_KC
      //SOURCE: A.M. Jacobi, Y. Park, D. Tafti, X. Zhang. AN ASSESSMENT OF THE STATE OF THE ART, AND POTENTIAL DESIGN IMPROVEMENTS, FOR FLAT-TUBE HEAT EXCHANGERS IN AIR CONDITIONING AND REFRIGERATION APPLICATIONS - PHASE I

      //icon

      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_con
        IN_con "Input record for function kc_roundTube_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_var
        IN_var "Input record for function kc_roundTube_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_roundTube_KC";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_roundTubes;

      Real MIN=Modelica.Constants.eps;

      SI.ReynoldsNumber Re_Dc=max(1e-3, abs(IN_var.m_flow)*IN_con.D_c/(IN_var.eta*
          A_c)) "Reynolds number based on fin collar diameter";
      SI.PrandtlNumber Pr=IN_var.eta*IN_var.cp/IN_var.lambda "Prandtl number";
      Real j "Colburn j faktor";

      SI.Area A_c=IN_con.A_fr*((IN_con.F_p*IN_con.P_t - IN_con.F_p*IN_con.D_c - (
          IN_con.P_t - IN_con.D_c)*IN_con.delta_f)/(IN_con.F_p*IN_con.P_t)) 
        "Minimum flow cross-sectional area";
      SI.Area A_tot=if IN_con.geometry == TYP.LouverFin then IN_con.A_fr*((IN_con.N
          *PI*IN_con.D_c*(IN_con.F_p - IN_con.delta_f) + 2*(IN_con.P_t*IN_con.L -
          IN_con.N*PI*IN_con.D_c^2/4))/(IN_con.P_t*IN_con.F_p)) else 0 
        "Total heat transfer area";
      SI.Length D_h=if IN_con.geometry == TYP.LouverFin then 4*A_c*IN_con.L/A_tot else 
                0 "Hydraulic diameter";

      /*SI.Length D_h=
        if IN_con.geometry==2 then
          4*A_c/(IN_con.A_fr*(2*(IN_con.P_t-IN_con.D_c+IN_con.F_p-IN_con.delta_f)/(IN_con.F_p*IN_con.P_t))) else
          0 "Hydraulic diameter";*/

      Real J1=0 "Exponent for computation of Colburn j faktor";
      Real J2=0 "Exponent for computation of Colburn j faktor";
      Real J3=0 "Exponent for computation of Colburn j faktor";
      Real J4=0 "Exponent for computation of Colburn j faktor";
      Real J5=0 "Exponent for computation of Colburn j faktor";
      Real J6=0 "Exponent for computation of Colburn j faktor";
      Real J7=0 "Exponent for computation of Colburn j faktor";
      Real J8=0 "Exponent for computation of Colburn j faktor";

    algorithm 
      if IN_con.geometry == TYP.PlainFin then
        j := 0.991*(2.24*Re_Dc^(-0.092)*(IN_con.N/4)^(-0.031))^(0.607*(4 - IN_con.N))
          *(0.14*Re_Dc^(-0.328)*(IN_con.P_t/IN_con.P_l)^(-0.502)*(IN_con.F_p/IN_con.D_c)
          ^(0.0312))*(2.55*(IN_con.P_l/IN_con.D_c)^(-1.28));
        kc := j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);

      elseif IN_con.geometry == TYP.LouverFin then
        if Re_Dc < 900 then
          J1 := -0.991 - 0.1055*(IN_con.P_l/IN_con.P_t)^3.1*log(IN_con.L_h/IN_con.L_p);
          J2 := -0.7344 + 2.1059*IN_con.N^0.55/(log(Re_Dc) - 3.2);
          J3 := 0.08485*(IN_con.P_l/IN_con.P_t)^(-4.4)*IN_con.N^(-0.68);
          J4 := -0.1741*log(IN_con.N);
          j := 14.3117*Re_Dc^J1*(IN_con.F_p/IN_con.D_c)^J2*(IN_con.L_h/IN_con.L_p)^
            J3*(IN_con.F_p/IN_con.P_l)^J4*(IN_con.P_l/IN_con.P_t)^(-1.724);
        elseif Re_Dc > 1100 then
          J5 := -0.6027 + 0.02593*(IN_con.P_l/D_h)^0.52*IN_con.N^(-0.5)*log(IN_con.L_h
            /IN_con.L_p);
          J6 := -0.4776 + 0.40774*IN_con.N^0.7/(log(Re_Dc) - 4.4);
          J7 := -0.58655*(IN_con.F_p/D_h)^2.3*(IN_con.P_l/IN_con.P_t)^(-1.6)*IN_con.N
            ^(-0.65);
          J8 := 0.0814*(log(Re_Dc) - 3);
          j := 1.1373*Re_Dc^J5*(IN_con.F_p/IN_con.P_l)^J6*(IN_con.L_h/IN_con.L_p)^
            J7*(IN_con.P_l/IN_con.P_t)^J8*IN_con.N^0.3545;
        else
          J1 := -0.991 - 0.1055*(IN_con.P_l/IN_con.P_t)^3.1*log(IN_con.L_h/IN_con.L_p);
          J2 := -0.7344 + 2.1059*IN_con.N^0.55/(log(Re_Dc) - 3.2);
          J3 := 0.08485*(IN_con.P_l/IN_con.P_t)^(-4.4)*IN_con.N^(-0.68);
          J4 := -0.1741*log(IN_con.N);
          J5 := -0.6027 + 0.02593*(IN_con.P_l/D_h)^0.52*IN_con.N^(-0.5)*log(IN_con.L_h
            /IN_con.L_p);
          J6 := -0.4776 + 0.40774*IN_con.N^0.7/(log(Re_Dc) - 4.4);
          J7 := -0.58655*(IN_con.F_p/D_h)^2.3*(IN_con.P_l/IN_con.P_t)^(-1.6)*IN_con.N
            ^(-0.65);
          J8 := 0.0814*(log(Re_Dc) - 3);
          j := SMOOTH(
            900,
            1100,
            Re_Dc)*(14.3117*Re_Dc^J1*(IN_con.F_p/IN_con.D_c)^J2*(IN_con.L_h/IN_con.L_p)
            ^J3*(IN_con.F_p/IN_con.P_l)^J4*(IN_con.P_l/IN_con.P_t)^(-1.724)) +
            SMOOTH(
            1100,
            900,
            Re_Dc)*(1.1373*Re_Dc^J5*(IN_con.F_p/IN_con.P_l)^J6*(IN_con.L_h/IN_con.L_p)
            ^J7*(IN_con.P_l/IN_con.P_t)^J8*IN_con.N^0.3545);
        end if;
        kc := SMOOTH(
          100,
          0,
          Re_Dc)*j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);

      elseif IN_con.geometry == TYP.SlitFin then
        J1 := -0.674 + 0.1316*IN_con.N/log(Re_Dc) - 0.3769*IN_con.F_p/IN_con.D_c -
          1.8857*IN_con.N/Re_Dc;
        J2 := -0.0178 + 0.996*IN_con.N/log(Re_Dc) + 26.7*IN_con.N/Re_Dc;
        J3 := 1.865 + 1244.03*IN_con.F_p/(Re_Dc*IN_con.D_c) - 14.37/log(Re_Dc);
        j := 1.6409*Re_Dc^J1*(IN_con.S_p/IN_con.S_h)^1.16*(IN_con.P_t/IN_con.P_l)^
          1.37*(IN_con.F_p/IN_con.D_c)^J2*IN_con.N^J3;
        kc := j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);

      elseif IN_con.geometry == TYP.WavyFin then
        if Re_Dc < exp(2.921) then
          j := 1.201/(log(exp(2.921)^(A_c/IN_con.A_fr)))^2.921;
          kc := j*(exp(2.921)*Pr^(1/3)*IN_var.lambda/IN_con.D_c);
        else
          j := 1.201/((log(Re_Dc^(A_c/IN_con.A_fr)))^2.921);
          kc := j*(Re_Dc*Pr^(1/3)*IN_var.lambda/IN_con.D_c);
        end if;

      else

      end if;

    end kc_roundTube_KC;

--------------

|image18| `Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_roundTube\_IN\_con
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_roundTube and kc\_roundTube\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_roundTube <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube>`_
and
`kc\_roundTube\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_KC>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| Type                                                                                                                                             | Name       | Default                           | Description                                  |
+==================================================================================================================================================+============+===================================+==============================================+
| HeatExchanger                                                                                                                                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `HTXGeometry\_roundTubes <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_roundTubes>`_   | geometry   | Dissipation.Utilities.Types....   | Choice of fin geometry                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                                            | A\_fr      | 0                                 | Frontal area [m2]                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | D\_c       | 0                                 | Fin collar diameter [m]                      |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | F\_p       | 0                                 | Fin pitch, fin spacing + fin thickness [m]   |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | L          | 0                                 | Heat exchanger length [m]                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | L\_h       | 0                                 | Louver height [m]                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | L\_p       | 0                                 | Louver pitch [m]                             |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| Integer                                                                                                                                          | N          | 0                                 | Number of tube rows                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | P\_d       | 0                                 | Pattern depth of wavy fin, wave height [m]   |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | P\_l       | 0                                 | Longitudinal tube pitch [m]                  |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | P\_t       | 0                                 | Transverse tube pitch [m]                    |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | S\_h       | 0                                 | Slit height [m]                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | S\_p       | 0                                 | Slit pitch [m]                               |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | X\_f       | 0                                 | Half wave length of wavy fin [m]             |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                        | delta\_f   | 0                                 | Fin thickness [m]                            |
+--------------------------------------------------------------------------------------------------------------------------------------------------+------------+-----------------------------------+----------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record kc_roundTube_IN_con 
      "Input record for function kc_roundTube and kc_roundTube_KC"
      extends Modelica.Icons.Record;

      Modelica.Fluid.Dissipation.Utilities.Types.HTXGeometry_roundTubes
        geometry =                                                               Dissipation.Utilities.Types.HTXGeometry_roundTubes.PlainFin 
        "Choice of fin geometry";

      SI.Area A_fr=0 "Frontal area";
      SI.Length D_c=0 "Fin collar diameter";
      SI.Length F_p=0 "Fin pitch, fin spacing + fin thickness";
      SI.Length L=0 "Heat exchanger length";
      SI.Length L_h=0 "Louver height";
      SI.Length L_p=0 "Louver pitch";
      Integer N=0 "Number of tube rows";
      SI.Length P_d=0 "Pattern depth of wavy fin, wave height";
      SI.Length P_l=0 "Longitudinal tube pitch";
      SI.Length P_t=0 "Transverse tube pitch";
      SI.Length S_h=0 "Slit height";
      SI.Length S_p=0 "Slit pitch";
      SI.Length X_f=0 "Half wave length of wavy fin";

      SI.Length delta_f=0 "Fin thickness";


    end kc_roundTube_IN_con;

--------------

|image19| `Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger>`_.kc\_roundTube\_IN\_var
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Input record for function kc\_roundTube and kc\_roundTube\_KC**

Information
~~~~~~~~~~~

::

This record is used as **input record** for the heat transfer function
`kc\_roundTube <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube>`_
and
`kc\_roundTube\_KC <Modelica_Fluid_Dissipation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_KC>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records),
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

    record kc_roundTube_IN_var 
      "Input record for function kc_roundTube and kc_roundTube_KC"
      extends Modelica.Icons.Record;

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;


    end kc_roundTube_IN_var;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:20
2010.

.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_flatTube| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTubeS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_flatTube\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTubeS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_flatTube\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_flatTube\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_roundTube| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTubeS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_roundTube\_KC| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTubeS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_roundTube\_IN\_con| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conS.png
.. |Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc\_roundTube\_IN\_var| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conS.png
.. |image8| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTubeS.png
.. |image9| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTubeS.png
.. |image10| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conS.png
.. |image11| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conS.png
.. |image12| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTubeS.png
.. |image13| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTubeS.png
.. |image14| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conS.png
.. |image15| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conS.png
.. |image16| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conI.png
.. |image17| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_flatTube_IN_conI.png
.. |image18| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conI.png
.. |image19| image:: Modelica.Fluid.Dissipation.HeatTransfer.HeatExchanger.kc_roundTube_IN_conI.png
