====================================================================
Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase
====================================================================

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss>`_.TwoPhase
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Package with utility functions to compute two phase pressure loss
characteristics**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                        |
+===============================================================================================================================================================================================================================================================================================================+====================================================================================================================================================+
| |image9| `dp\_twoPhaseChisholm\_DP <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DP>`_                                                                                                  | Frictional pressure loss of straight pipe for two phase flow according to Chisholm correlation \| calculate pressure loss \| overall flow regime   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image10| `dp\_twoPhaseFriedel\_DP <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseFriedel_DP>`_                                                                                                   | Frictional pressure loss of straight pipe for two phase flow according to Friedel correlation \| calculate pressure loss\| overall flow regime     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image11| `dp\_twoPhaseGeodetic\_DP <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseGeodetic_DP>`_                                                                                                 | Geodetic pressure loss of straight pipe for two phase flow \| calculate pressure loss                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image12| `dp\_twoPhaseMomentum\_DP <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseMomentum_DP>`_                                                                                                 | Momentum pressure loss of straight pipe for two phase flow \| calculate pressure loss                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image13| `TwoPhaseMultiplierFriedel <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseMultiplierFriedel>`_                                                                                             | Calculation of two phase multiplier according to Friedel \| constant mass flow rate quality \| horizontal flow \| vertical upflow and downflow     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image14| `TwoPhaseMultiplierChisholm <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseMultiplierChisholm>`_                                                                                           | Calculation of two phase multiplier according to Chisholm \| constant mass flow rate quality                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image15| `TwoPhaseDensity <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseDensity>`_                                                                                                                 | Calculation of mean density for two phase flow                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image16| `VoidFraction <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.VoidFraction>`_                                                                                                                       | Calculation of (cross sectional) void fraction for two phase flow                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+
| |image17| `SlipRatio <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.SlipRatio>`_                                                                                                                             | Calculation of (analytical/empirical) slip ratio                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.dp\_twoPhaseChisholm\_DP
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Frictional pressure loss of straight pipe for two phase flow according
to Chisholm correlation \| calculate pressure loss \| overall flow
regime**

.. figure:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseChisholm\_DP

   Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseChisholm\_DP

Information
~~~~~~~~~~~

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Type                                                                                                                                                     | Name      | Default   | Description             |
+==========================================================================================================================================================+===========+===========+=========================+
| Constant inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con>`_   | IN\_con   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Variable inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var>`_   | IN\_var   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Input                                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                    | m\_flow   |           | Mass flow rate [kg/s]   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+-----------------------------------------------------+
| Type                                                            | Name   | Description                                         |
+=================================================================+========+=====================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_twoPhaseChisholm\_DP [Pa]   |
+-----------------------------------------------------------------+--------+-----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_twoPhaseChisholm_DP 
      "Frictional pressure loss of straight pipe for two phase flow according to Chisholm correlation | calculate pressure loss | overall flow regime"

      //SOURCE_1: Chisholm,D.:PRESSURE GRADIENTS DUE TO FRICTION DURING THE FLOW OF EVAPORATING TWO-PHASE MIXTURES IN SMOOTH TUBES AND CHANNELS, Int. J. Heat Mass Transfer, Vol. 16, pp. 347-358, Pergamon Press 1973

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      //records
      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con
        IN_con;
      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var
        IN_var;
      input SI.MassFlowRate m_flow "Mass flow rate";

      output SI.Pressure DP "Output for function dp_twoPhaseChisholm_DP";

    protected 
      Real MIN=Modelica.Constants.eps;

      Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_con
        IN_con_1ph(
        final roughness=Dissipation.Utilities.Types.Roughness.Neglected,
        final d_hyd=4*abs(IN_con.A_cross)/max(MIN, abs(IN_con.perimeter)),
        final K=0,
        final L=abs(IN_con.length));

      Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var
        IN_var_1ph(
          final eta=IN_var.eta_l, final rho=IN_var.rho_l);

    algorithm 
      DP := Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP(
                  IN_con_1ph,
                  IN_var_1ph,
                  m_flow)*(
        Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseMultiplierChisholm(
                  IN_con,
                  IN_var,
                  m_flow));

    end dp_twoPhaseChisholm_DP;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.dp\_twoPhaseFriedel\_DP
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Frictional pressure loss of straight pipe for two phase flow according
to Friedel correlation \| calculate pressure loss\| overall flow
regime**

.. figure:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPD.png
   :align: center
   :alt: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseFriedel\_DP

   Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseFriedel\_DP

Information
~~~~~~~~~~~

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d>`_
(Geometry figure for straight pipe).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Type                                                                                                                                                     | Name      | Default   | Description             |
+==========================================================================================================================================================+===========+===========+=========================+
| Constant inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con>`_   | IN\_con   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Variable inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var>`_   | IN\_var   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Input                                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                    | m\_flow   |           | Mass flow rate [kg/s]   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+----------------------------------------------------+
| Type                                                            | Name   | Description                                        |
+=================================================================+========+====================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP     | Output for function dp\_twoPhaseFriedel\_DP [Pa]   |
+-----------------------------------------------------------------+--------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_twoPhaseFriedel_DP 
      "Frictional pressure loss of straight pipe for two phase flow according to Friedel correlation | calculate pressure loss| overall flow regime"

      //SOURCE_1: Friedel,L.:IMPROVED FRICTION PRESSURE DROP CORRELATIONS FOR HORIZONTAL AND VERTICAL TWO PHASE PIPE FLOW, 3R International, Vol. 18, Issue 7, pp. 485-491, 1979
      //SOURCE_2: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d;

      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;
      import SMOOTH2 = Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower;

      //records
      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con
        IN_con;
      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var
        IN_var;
      input SI.MassFlowRate m_flow "Mass flow rate";

      output SI.Pressure DP "Output for function dp_twoPhaseFriedel_DP";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=max(MIN, IN_con.A_cross) "Cross sectional area";
      SI.Diameter d_hyd=max(MIN, 4*A_cross/max(MIN, IN_con.perimeter)) 
        "Hydraulic diameter";

      Real mdot_A=abs(m_flow)/A_cross "Mass flux";
      SI.ReynoldsNumber Re_liq=max(1, mdot_A*d_hyd/max(MIN, IN_var.eta_l)) 
        "Reynolds number assuming (total) mass flux flowing as liquid";
      SI.ReynoldsNumber Re_lam_leave=1055 
        "Maximum Reynolds number for laminar regime (1055)";
      SI.ReynoldsNumber Re_turb=1100 
        "Minimum Reynolds number for turbulent regime (1100)";
      SI.ReynoldsNumber Re_smooth=m_flow/A_cross*d_hyd/max(MIN, abs(IN_var.eta_l)) 
        "Reynolds number for smoothing";
      TYP.DarcyFrictionFactor lambda_FRI_lam=64/Re_liq 
        "Darcy friction factor for laminar regime";
      TYP.DarcyFrictionFactor lambda_FRI_turb=(0.86859*Modelica.Math.log(max(1, (
          Re_liq/max(MIN, (1.964*Modelica.Math.log(Re_liq) - 3.8215))))))^(-2) 
        "Darcy friction factor for turbulent regime";
      TYP.DarcyFrictionFactor lambda_FRI=lambda_FRI_lam*SMOOTH(
          Re_lam_leave,
          Re_turb,
          Re_liq) + lambda_FRI_turb*SMOOTH(
          Re_turb,
          Re_lam_leave,
          Re_liq);
      TYP.PressureLossCoefficient zeta_FRI=lambda_FRI*IN_con.length/d_hyd 
        "Pressure loss coefficient";
      SI.Pressure DP_liq=zeta_FRI*mdot_A^2/(2*max(MIN, IN_var.rho_l)) 
        "Frictional pressure loss assuming (total) mass flux flowing as liquid";

    algorithm 
      DP := SMOOTH2(
                  Re_smooth,
                  1,
                  0)*DP_liq*(
        Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseMultiplierFriedel(
                  IN_con,
                  IN_var,
                  m_flow));

    end dp_twoPhaseFriedel_DP;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.dp\_twoPhaseGeodetic\_DP
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Geodetic pressure loss of straight pipe for two phase flow \|
calculate pressure loss**

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Type                                                                                                                                        | Name                     | Default                           | Description                                                             |
+=============================================================================================================================================+==========================+===================================+=========================================================================+
| `VoidFractionApproach <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach>`_   | voidFractionApproach     | Dissipation.Utilities.Types....   | Choice of void fraction approach                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Boolean                                                                                                                                     | crossSectionalAveraged   | true                              | true == cross sectional averaged void fraction \| false == volumetric   |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Geometry                                                                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                   | length                   | 1                                 | Length in fluid flow direction [m]                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                                                                                     | phi                      | 0                                 | Tilt angle to horizontal [rad]                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Fluid properties                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                 | rho\_g                   |                                   | Density of gaseous phase [kg/m3]                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                 | rho\_l                   |                                   | Density of liquid phase [kg/m3]                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Real                                                                                                                                        | x\_flow                  | 0                                 | Mass flow rate quality                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+-----------+-------------------------------+
| Type                                                            | Name      | Description                   |
+=================================================================+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP\_geo   | Geodetic pressure loss [Pa]   |
+-----------------------------------------------------------------+-----------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_twoPhaseGeodetic_DP 
      "Geodetic pressure loss of straight pipe for two phase flow | calculate pressure loss"

      //SOURCE_1: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.

      import PI = Modelica.Constants.pi;

      input Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach
        voidFractionApproach=Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous 
        "Choice of void fraction approach";

      input Boolean crossSectionalAveraged=true 
        "true == cross sectional averaged void fraction | false == volumetric";

      //geometry
      input SI.Length length=1 "Length in fluid flow direction";
      input SI.Angle phi=0 "Tilt angle to horizontal";

      //fluid properties
      input SI.Density rho_g(min=Modelica.Constants.eps) "Density of gaseous phase";
      input SI.Density rho_l(min=Modelica.Constants.eps) "Density of liquid phase";
      input Real x_flow(
        min=0,
        max=1) = 0 "Mass flow rate quality";

      output SI.Pressure DP_geo "Geodetic pressure loss";

    protected 
      Real xflow=min(1, max(0, abs(x_flow))) "Mass flow rate quality";
      Real eps=
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.VoidFraction(
          voidFractionApproach,
          crossSectionalAveraged,
          rho_g,
          rho_l,
          xflow) "Void fraction";

    algorithm 
      //SOURCE_1: p.Lbb 1, eq. 4: Considering geodetic pressure loss assuming constant void fraction for flow length
      DP_geo := (eps*rho_g + (1 - eps)*rho_l)*9.81*length*sin(min(PI/2, max(0, abs(
        phi))));

    end dp_twoPhaseGeodetic_DP;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.dp\_twoPhaseMomentum\_DP
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Momentum pressure loss of straight pipe for two phase flow \|
calculate pressure loss**

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Type                                                                                                                  | Name                     | Default                           | Description                                        |
+=======================================================================================================================+==========================+===================================+====================================================+
| Choices                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Roughness <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Roughness>`_   | voidFractionApproach     | Modelica.Fluid.Dissipation.U...   | Choice of void fraction approach                   |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Boolean                                                                                                               | massFlowRateCorrection   | false                             | Consider heterogeneous mass flow rate correction   |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Geometry                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Real                                                                                                                  | A\_cross                 | PI\*0.1^2/4                       | Cross sectional area                               |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                             | perimeter                | PI\*0.1                           | Perimeter [m]                                      |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Fluid properties                                                                                                      |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                           | rho\_g                   |                                   | Density of gas [kg/m3]                             |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                           | rho\_l                   |                                   | Density of liquid [kg/m3]                          |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Real                                                                                                                  | x\_flow\_end             | 0                                 | Mass flow rate quality at end of length            |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Real                                                                                                                  | x\_flow\_sta             | 0                                 | Mass flow rate quality at start of length          |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Input                                                                                                                 |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                 | m\_flow                  |                                   | Mass flow rate [kg/s]                              |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+-----------+-------------------------------+
| Type                                                            | Name      | Description                   |
+=================================================================+===========+===============================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | DP\_mom   | Momentum pressure loss [Pa]   |
+-----------------------------------------------------------------+-----------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function dp_twoPhaseMomentum_DP 
      "Momentum pressure loss of straight pipe for two phase flow | calculate pressure loss"

      //SOURCE_1: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.
      //SOURCE_2: Thome, J.R., Engineering Data Book 3, Swiss Federal Institute of Technology Lausanne (EPFL), 2009.
      //SOURCE 3: J.M. Jensen and H. Tummescheit. Moving boundary models for dynamic simulations of two-phase flows. In Proceedings of the 2nd International Modelica Conference, pp. 235-244, Oberpfaffenhofen, Germany, 2002. The Modelica Association.

      import PI = Modelica.Constants.pi;
      import MIN = Modelica.Constants.eps;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower;

      //choices
      input Modelica.Fluid.Dissipation.Utilities.Types.Roughness
        voidFractionApproach=
          Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous 
        "Choice of void fraction approach";

      //SOURCE_3: p.52, eq. 4.6: heterogenous effects on momentum pressure loss considered through corrected mass flow rate
      input Boolean massFlowRateCorrection=false 
        "Consider heterogeneous mass flow rate correction";

      //geometry
      input Real A_cross(min=Modelica.Constants.eps) = PI*0.1^2/4 
        "Cross sectional area";
      input SI.Length perimeter(min=Modelica.Constants.eps) = PI*0.1 "Perimeter";

      //fluid properties
      input SI.Density rho_g(min=Modelica.Constants.eps) "Density of gas";
      input SI.Density rho_l(min=Modelica.Constants.eps) "Density of liquid";
      input Real x_flow_end(
        min=0,
        max=1) = 0 "Mass flow rate quality at end of length";
      input Real x_flow_sta(
        min=0,
        max=1) = 0 "Mass flow rate quality at start of length";

      input SI.MassFlowRate m_flow "Mass flow rate";

      output SI.Pressure DP_mom "Momentum pressure loss";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Area Across=max(MIN, A_cross) "Cross sectional area";
      SI.Diameter d_hyd=max(MIN, 4*A_cross/max(MIN, perimeter)) 
        "Hydraulic diameter";

      Real mdot_A=abs(m_flow)/Across "Mass flux";
      Real xflowEnd=min(1, max(0, abs(x_flow_end))) 
        "Mass flow rate quality at end of length";
      Real xflowSta=min(1, max(0, abs(x_flow_sta))) 
        "Mass flow rate quality at start of length";
      Real xflowMean=(xflowEnd + xflowSta)/2 
        "Mean mass flow rate quality over length";

      Real delta_xflow=xflowEnd - xflowSta 
        "Difference of mass flow rate quality between end and start of length (pos >> evaporation, neg >> condensation";

      //SOURCE_2: Considering void fraction approaches
      Real eps_end=
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.VoidFraction(
          voidFractionApproach,
          true,
          rho_g,
          rho_l,
          xflowEnd) "Void fraction at end of length";
      Real eps_sta=
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.VoidFraction(
          voidFractionApproach,
          true,
          rho_g,
          rho_l,
          xflowSta) "Void fraction at start of length";

      //SOURCE_2: p.17-6, eq. 17.3.3: Considering mean two phase density at end and start of length
      SI.Density rho_end=
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseDensity(
          voidFractionApproach,
          massFlowRateCorrection,
          rho_g,
          rho_l,
          eps_end,
          xflowEnd) "Mean two phase density at end of lenght";
      SI.Density rho_sta=
          Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseDensity(
          voidFractionApproach,
          massFlowRateCorrection,
          rho_g,
          rho_l,
          eps_sta,
          xflowSta) "Mean two phase density at start of lenght";

      SI.Velocity meanVelEnd=abs(m_flow)/max(MIN, rho_end*A_cross) 
        "Mean velocity of two phase flow at end of length";
      SI.Velocity meanVelSta=abs(m_flow)/max(MIN, rho_sta*A_cross) 
        "Mean velocity of two phase flow at start of length";

      //SOURCE 3: p.15, eq. 2.26: Considering velocity difference for heterogeneous approach using slip ratio
      Real SR=Dissipation.Utilities.Functions.PressureLoss.TwoPhase.SlipRatio(
          voidFractionApproach,
          rho_g,
          rho_l,
          xflowMean) "Slip ratio for velocity void fraction approach";
      SI.Velocity deltaVelEnd=meanVelEnd*(SR - 1)/(xflowEnd*(SR - 1) + 1) 
        "Velocity difference of two phases at end of length";
      SI.Velocity deltaVelSta=meanVelSta*(SR - 1)/(xflowSta*(SR - 1) + 1) 
        "Velocity difference of two phases at start of length";

      //SOURCE 3: p.52, eq. 4.6: Considering of corrected mass flow rate for heterogenous approach
      SI.MassFlowRate mdotCorEnd=xflowEnd*(1 - xflowEnd)*rho_end*deltaVelEnd*Across 
        "Correction mass flow rate at end of length";
      SI.MassFlowRate mdotCorSta=xflowSta*(1 - xflowSta)*rho_sta*deltaVelSta*Across 
        "Correction mass flow rate at start of length";

      //SOURCE 3: p.53, eq. 4.13: Calculation of heterogeneous approach with correction of mass flow rate for considering velocity difference between fluid phases
      SI.Pressure dp_mom_cor=SMOOTH(
          delta_xflow,
          0.05,
          0)*abs(mdot_A*meanVelEnd + mdotCorEnd*deltaVelEnd/Across) - abs(mdot_A*
          meanVelEnd + mdotCorEnd*deltaVelEnd/Across) 
        "Momentum pressure loss using mass flow rate correction";

    algorithm 
      //SOURCE_1: p.Lba 4, eq. 22: Considering momentum pressure loss assuming heterogeneous approach for two phase flow
      //Momentum pressure loss occurs for a changing mass flow rate quality due to condensation or evaporation
      //At evaporation the liquid phase with a slow velocity has to be accelerated to the higher velocity of the gas
      //The difference in static pressure at the outlet and the inlet causes a positiv momentum pressure loss at evaporation (assumed vice versa for condensation)
      DP_mom := if massFlowRateCorrection then dp_mom_cor else mdot_A^2*SMOOTH(
        delta_xflow,
        0.05,
        0)*abs(1/max(MIN, rho_end) - 1/max(MIN, rho_sta));

    end dp_twoPhaseMomentum_DP;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.TwoPhaseMultiplierFriedel
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Calculation of two phase multiplier according to Friedel \| constant
mass flow rate quality \| horizontal flow \| vertical upflow and
downflow**

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Type                                                                                                                                                     | Name      | Default   | Description             |
+==========================================================================================================================================================+===========+===========+=========================+
| Constant inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con>`_   | IN\_con   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Variable inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var>`_   | IN\_var   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Input                                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                    | m\_flow   |           | Mass flow rate [kg/s]   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+

Outputs
~~~~~~~

+--------+--------+---------------------------------------+
| Type   | Name   | Description                           |
+========+========+=======================================+
| Real   | phi    | Two phase multiplier w.r.t. Friedel   |
+--------+--------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function TwoPhaseMultiplierFriedel 
      "Calculation of two phase multiplier according to Friedel | constant mass flow rate quality | horizontal flow | vertical upflow and downflow"

      //SOURCE_1: Friedel,L.:IMPROVED FRICTION PRESSURE DROP CORRELATIONS FOR HORIZONTAL AND VERTICAL TWO PHASE PIPE FLOW, 3R International, Vol. 18, Issue 7, pp. 485-491, 1979
      //SOURCE_2: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.

      import Modelica.Math.log;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con
        IN_con;
      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var
        IN_var(
          final sigma=0);
      input SI.MassFlowRate m_flow "Mass flow rate";

      output Real phi "Two phase multiplier w.r.t. Friedel";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=max(MIN, IN_con.A_cross) "Cross sectional area";
      SI.Diameter d_hyd=max(MIN, 4*A_cross/max(MIN, IN_con.perimeter)) 
        "Hydraulic diameter";

      //SOURCE_2: p.Lba 4, sec. 3.3: Correlation based on constant mass flow rate quality (x_flow) for increment (dx)
      //Pressure loss for total length (e.g., L=n*dx) can be achieved by discretisation
      Real mdot_A=abs(m_flow)/A_cross "Mass flux";
      Real x_flow=max(0, min(1, abs(IN_var.x_flow))) "Mass flow rate quality";

      //SOURCE_1: p.490 (Appendix): Characteristic numbers based on total mass flow rate flowing as liquid
      SI.FroudeNumber Fr_l=max(MIN, mdot_A^2/max(MIN, 9.81*IN_var.rho_l^2*d_hyd)) 
        "Froude number based on liquid flow";
      SI.ReynoldsNumber Re_g=max(1, mdot_A*d_hyd/max(MIN, IN_var.eta_g)) 
        "Reynolds number based on gas flow";
      SI.ReynoldsNumber Re_l=max(1, mdot_A*d_hyd/max(MIN, IN_var.eta_l)) 
        "Reynolds number based on liquid flow";
      SI.WeberNumber We_l=max(MIN, mdot_A^2*d_hyd/max(MIN, IN_var.sigma*IN_var.rho_l)) 
        "Weber number based on liquid flow";

      //SOURCE_1: p.490 (Appendix): Smoothing for sudden change from assumed laminar to assumed turbulent regime (numerical improvement at Re=1055)
      SI.ReynoldsNumber Re_lam_max=1025 
        "Maximum Reynolds number assuming laminar regime";
      SI.ReynoldsNumber Re_turb_min=1075 
        "Minimum Reynolds number assuming turbulent regime";

      //SOURCE_2: p.Lbb 2, eq. 9-10: Considering influence of Reynolds number on Darcy friction factor for smooth straight pipes
      //Correlation based on neglection of surface roughness
      //Correlation based on assumption that total mass flow rate is flowing as gas
      TYP.DarcyFrictionFactor lambda_lam_g=64/Re_g 
        "Darcy friction factor of gas for assumed laminar regime";
      TYP.DarcyFrictionFactor lambda_turb_g=1/max(MIN, 0.86859*log(max(1, Re_g/max(
          MIN, 1.964*log(Re_g) - 3.8215))))^(2) 
        "Darcy friction factor of gas for assumed turbulent regime";
      TYP.DarcyFrictionFactor lambda_g=lambda_lam_g*SMOOTH(
          Re_lam_max,
          Re_turb_min,
          Re_g) + lambda_turb_g*SMOOTH(
          Re_turb_min,
          Re_lam_max,
          Re_g) "Darcy friction factor of gas for overall regime";
      //Correlation based on assumption that total mass flow rate is flowing as liquid
      TYP.DarcyFrictionFactor lambda_lam_l=64/Re_l 
        "Darcy friction factor of liquid for assumed laminar regime";
      TYP.DarcyFrictionFactor lambda_turb_l=1/max(MIN, 0.86859*log(max(1, Re_l/max(
          MIN, 1.964*log(Re_l) - 3.8215))))^(2) 
        "Darcy friction factor of liquid for assumed turbulent regime";
      TYP.DarcyFrictionFactor lambda_l=lambda_lam_l*SMOOTH(
          Re_lam_max,
          Re_turb_min,
          Re_l) + lambda_turb_l*SMOOTH(
          Re_turb_min,
          Re_lam_max,
          Re_l) "Darcy friction factor of liquid for overall regime";

      Real A=(1 - x_flow)^2 + x_flow^2*(IN_var.rho_l/max(MIN, IN_var.rho_g))*(
          lambda_g/max(MIN, lambda_l)) "Summand for two phase multiplier";

      //SOURCE_1: p.490 (Appendix): Two phase multiplier for vertical downflow for future usage
      Real phi_vdo=A + 38.5*x_flow^0.76*(1 - x_flow)^0.314*(IN_var.rho_l/max(MIN,
          IN_var.rho_g))^0.86*(IN_var.eta_g/max(MIN, IN_var.eta_l))^0.73*(1 -
          IN_var.eta_g/max(MIN, IN_var.eta_l))^6.84*(1/Fr_l^(0.0001))*(1/We_l^(
          0.087));

      //SOURCE_1: p.490 (Appendix): Two phase multiplier for horizontal and vertical upflow (failure in SOURCE_2)
      Real phi_vup=A + 3.43*x_flow^0.685*(1 - x_flow)^0.24*(IN_var.rho_l/max(MIN,
          IN_var.rho_g))^0.8*(IN_var.eta_g/max(MIN, IN_var.eta_l))^0.22*(1 - IN_var.eta_g
          /max(MIN, IN_var.eta_l))^0.89*(1/Fr_l^(0.048))*(1/We_l^(0.0334));

    algorithm 
      phi := phi_vup;
    end TwoPhaseMultiplierFriedel;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.TwoPhaseMultiplierChisholm
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Calculation of two phase multiplier according to Chisholm \| constant
mass flow rate quality**

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Type                                                                                                                                                     | Name      | Default   | Description             |
+==========================================================================================================================================================+===========+===========+=========================+
| Constant inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_con <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con>`_   | IN\_con   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Variable inputs                                                                                                                                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `TwoPhaseFlow\_var <Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var>`_   | IN\_var   |           |                         |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Input                                                                                                                                                    |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                    | m\_flow   |           | Mass flow rate [kg/s]   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------+
| Type   | Name   | Description                            |
+========+========+========================================+
| Real   | phi    | Two phase multiplier w.r.t. Chisholm   |
+--------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function TwoPhaseMultiplierChisholm 
      "Calculation of two phase multiplier according to Chisholm | constant mass flow rate quality"

      //SOURCE_1: Chisholm,D.:PRESSURE GRADIENTS DUE TO FRICTION DURING THE FLOW OF EVAPORATING TWO-PHASE MIXTURES IN SMOOTH TUBES AND CHANNELS, Int. J. Heat Mass Transfer, Vol. 16, pp. 347-358, Pergamon Press 1973
      //SOURCE_2: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.

      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con
        IN_con;
      input Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var
        IN_var;
      input SI.MassFlowRate m_flow "Mass flow rate";

      output Real phi "Two phase multiplier w.r.t. Chisholm";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=max(MIN, IN_con.A_cross) "Cross sectional area";
      SI.Diameter d_hyd=max(MIN, 4*A_cross/max(MIN, IN_con.perimeter)) 
        "Hydraulic diameter";

      Real mdot_A=abs(m_flow)/A_cross "Mass flux";
      Real x_flow=max(0, min(1, abs(IN_var.x_flow))) "Mass flow rate quality";

      //SOURCE_1: p.357, Appendix 1: Considering Darcy friction factor (lambda_FRI) of smooth pipes for overall flow regime
      Real n_exp=0.2 "Exponent for Reynolds number (lambda_FRI= A/Re^n)";

      //SOURCE_1: p.349, eq. 21: Considering effect of physical properties (failure in SOURCE_2)
      Real gamma=max(1, abs(IN_var.rho_l/max(MIN, IN_var.rho_g))^0.5*(IN_var.eta_g/
          max(MIN, IN_var.eta_l))^(n_exp/2));

      //SOURCE: p. 353, tab. 2: Considering effect of mass flux on two phase multiplier
      Real B_gamma_1=SMOOTH(
          450,
          550,
          mdot_A)*4.8 + SMOOTH(
          550,
          450,
          mdot_A)*2400/max(MIN, mdot_A) - SMOOTH(
          1950,
          1850,
          mdot_A)*2400/max(MIN, mdot_A) + SMOOTH(
          1950,
          1850,
          mdot_A)*55/max(MIN, mdot_A^0.5) "Coefficient B for gamma <= 9.5";
      Real B_gamma_2=SMOOTH(
          550,
          650,
          mdot_A)*520/max(1, max(9.5, gamma)*mdot_A^0.5) + SMOOTH(
          650,
          550,
          mdot_A)*21/max(9.5, gamma) "Coefficient B for 9.5 <= gamma <= 28";
      Real B_gamma=SMOOTH(
          9.0,
          10,
          gamma)*B_gamma_1 + SMOOTH(
          10,
          9.0,
          gamma)*B_gamma_2 - SMOOTH(
          28.5,
          27.7,
          gamma)*B_gamma_2 + SMOOTH(
          28.5,
          27.5,
          gamma)*15000/max(MIN, gamma^2*mdot_A^0.5) "Coefficient B for gamma";

      //SOURCE_1: p. 350, eq. 24/26: Considering two phase multiplier w.r.t. Chisholm
    algorithm 
      phi := 1 + (gamma^2 - 1)*(B_gamma*x_flow^((2 - n_exp)/2)*(1 - x_flow)^((2 -
        n_exp)/2) + x_flow^(2 - n_exp));
    end TwoPhaseMultiplierChisholm;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.TwoPhaseDensity
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Calculation of mean density for two phase flow**

Information
~~~~~~~~~~~

::

The gaseous and the liquid part of a fluid in a two phase flow are often
discontinuously distributed. This complex behaviour is simplified for
engineering calculations. The two phase flow of different fluid flow
situations (e.g., bubble or stratified flow) is modelled as if the
gaseous and the liquid phase are continuously distributed.

A **mean density** assuming a continuous distribution out of a
discontinuous two phase fluid flow situation can be calculated with a
**homogeneous or a heterogeneous approach** (see
`dp\_twoPhaseOverall\_DP <Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DP>`_).

The following **modelling approaches** can be used to calculate the mean
density of two phase flow:

-  **homogeneous density** (homogeneous approach)
-  **momentum flux density** (heterogeneous approach)
-  **kinetic energy flow density** (heterogeneous approach)

The heterogeneous approaches are analytically derived by minimising the
momentum flux or the kinetic energy flow assuming implicitly that the
two-phase flow will tend towards the minimum of this quantity.

References
^^^^^^^^^^

VDI:
    **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 10th edition, 2006.

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Type                                                                                                                  | Name                     | Default                           | Description                                        |
+=======================================================================================================================+==========================+===================================+====================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                           | rho\_g                   |                                   | Density of gaseous phase [kg/m3]                   |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                           | rho\_l                   |                                   | Density of liquid phase [kg/m3]                    |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Real                                                                                                                  | epsilon\_A               |                                   | Void fraction (cross sectional averaged)           |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Real                                                                                                                  | x\_flow                  |                                   | Mass flow rate quality                             |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Choices                                                                                                               |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| `Roughness <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.Roughness>`_   | voidFractionApproach     | Modelica.Fluid.Dissipation.U...   | Choice of void fraction approach                   |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+
| Boolean                                                                                                               | massFlowRateCorrection   | false                             | Consider heterogeneous mass flow rate correction   |
+-----------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+----------------------------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------------+------------+------------------------------------------+
| Type                                                          | Name       | Description                              |
+===============================================================+============+==========================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_   | rho\_2ph   | Mean density of two phase flow [kg/m3]   |
+---------------------------------------------------------------+------------+------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function TwoPhaseDensity 
      "Calculation of mean density for two phase flow"

      //SOURCE_1: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.
      input Modelica.Fluid.Dissipation.Utilities.Types.Roughness
        voidFractionApproach=
          Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous 
        "Choice of void fraction approach";

      //SOURCE_3: p.52, eq. 4.6: heterogenous effects on momentum pressure loss considered through corrected mass flow rate
      input Boolean massFlowRateCorrection=false 
        "Consider heterogeneous mass flow rate correction";

      input SI.Density rho_g(min=Modelica.Constants.eps) "Density of gaseous phase";
      input SI.Density rho_l(min=Modelica.Constants.eps) "Density of liquid phase";
      input Real epsilon_A(min=0,max=1) "Void fraction (cross sectional averaged)";
      input Real x_flow(min=0,max=1) "Mass flow rate quality";

      output SI.Density rho_2ph "Mean density of two phase flow";
    protected 
      Real MIN=Modelica.Constants.eps;

      Real epsilonA=min(1, max(0, abs(epsilon_A))) 
        "Void fraction (cross sectional averaged)";
      Real xflow=min(1, max(0, abs(x_flow))) "Mass flow rate quality";

      //SOURCE_1: p.Lba 3, eq. 17: Mean two phase density assuming homogeneous approach
      SI.Density rho_hom=1/max(MIN, x_flow/max(MIN, rho_g) + (1 - x_flow)/max(MIN,
          rho_l));
      //SOURCE_1: p.Lbb 7, tab. 2: Mean two phase density assuming momentum flux approach
      SI.Density rho_mom=1/max(MIN, (x_flow)^2/max(MIN, rho_g*epsilonA) + (1 -
          x_flow)^2/max(MIN, rho_l*(1 - epsilonA)));
      //SOURCE_1: p.Lbb 7, tab. 2: Mean two phase density assuming kinetic energy flow approach from Zivi (corrected formula!)
      SI.Density rho_kin=1/max(MIN, rho_hom*(x_flow^3/max(MIN, rho_g^2*epsilonA^2)
           + (1 - x_flow)^3/max(MIN, rho_l^2*(1 - epsilonA)^2)));

    algorithm 
      rho_2ph := if massFlowRateCorrection then rho_hom else if 
        voidFractionApproach == Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous then 
              rho_hom else if voidFractionApproach == Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Momentum then 
              rho_mom else if voidFractionApproach == Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Energy then 
              rho_kin else MIN;

    end TwoPhaseDensity;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.VoidFraction
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Calculation of (cross sectional) void fraction for two phase flow**

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Type                                                                                                                                        | Name                     | Default                           | Description                                                             |
+=============================================================================================================================================+==========================+===================================+=========================================================================+
| Boolean                                                                                                                                     | crossSectionalAveraged   | true                              | true == cross sectional averaged void fraction \| false == volumetric   |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                 | rho\_g                   |                                   | Density of gaseous phase [kg/m3]                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                 | rho\_l                   |                                   | Density of liquid phase [kg/m3]                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Real                                                                                                                                        | x\_flow                  | 0                                 | Mass flow rate quality                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| Choices                                                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+
| `VoidFractionApproach <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach>`_   | voidFractionApproach     | Dissipation.Utilities.Types....   | Choice of void fraction approach                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+-----------------------------------+-------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------+-----------------+
| Type   | Name        | Description     |
+========+=============+=================+
| Real   | epsilon     | Void fraction   |
+--------+-------------+-----------------+
| Real   | slipRatio   | Slip ratio      |
+--------+-------------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function VoidFraction 
      "Calculation of (cross sectional) void fraction for two phase flow"

      //SOURCE_1: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.
      //SOURCE_2: Thome, J.R., Engineering Data Book 3, Swiss Federal Institute of Technology Lausanne (EPFL), 2009.

      input Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach
        voidFractionApproach=Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous 
        "Choice of void fraction approach";

      input Boolean crossSectionalAveraged=true 
        "true == cross sectional averaged void fraction | false == volumetric";

      input SI.Density rho_g(min=Modelica.Constants.eps) "Density of gaseous phase";
      input SI.Density rho_l(min=Modelica.Constants.eps) "Density of liquid phase";
      input Real x_flow(
        min=0,
        max=1) = 0 "Mass flow rate quality";

      output Real epsilon "Void fraction";
      output Real slipRatio "Slip ratio";

    protected 
      Real MIN=Modelica.Constants.eps;

      Real xflow=min(1, max(0, abs(x_flow))) "Mass flow rate quality";

      Real SR=Dissipation.Utilities.Functions.PressureLoss.TwoPhase.SlipRatio(
          voidFractionApproach,
          rho_g,
          rho_l,
          xflow) "Slip ratio for void fraction approach";

      //SOURCE_2: p.17-5, eq. 17.2.5: (Heterogeneous) cross sectional void fraction [epsilon_A=A_g/(A_g+A_l)]
      Real epsilon_A=rho_l*x_flow/max(MIN, rho_l*x_flow + rho_g*(1 - x_flow)*SR);

    algorithm 
      epsilon := if crossSectionalAveraged then epsilon_A else epsilon_A/((1/max(
        MIN, SR))*(1 - epsilon_A) + epsilon_A);
      slipRatio := SR;
    end VoidFraction;

--------------

`Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase <Modelica_Fluid_Dissipation_Utilities_Functions_PressureLoss_TwoPhase.html#Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase>`_.SlipRatio
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Calculation of (analytical/empirical) slip ratio**

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------+
| Type                                                                                                                                        | Name                   | Default                           | Description                        |
+=============================================================================================================================================+========================+===================================+====================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                 | rho\_g                 |                                   | Density of gaseous phase [kg/m3]   |
+---------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                 | rho\_l                 |                                   | Density of liquid phase [kg/m3]    |
+---------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------+
| Real                                                                                                                                        | x\_flow                | 0                                 | Mass flow rate quality             |
+---------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------+
| Choices                                                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------+
| `VoidFractionApproach <Modelica_Fluid_Dissipation_Utilities_Types.html#Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach>`_   | voidFractionApproach   | Dissipation.Utilities.Types....   | Choice of void fraction approach   |
+---------------------------------------------------------------------------------------------------------------------------------------------+------------------------+-----------------------------------+------------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | SR     | Slip ratio    |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function SlipRatio "Calculation of (analytical/empirical) slip ratio"

      //SOURCE_1: VDI-Waermeatlas, 10th edition, Springer-Verlag, 2006.
      //SOURCE_2: Thome, J.R., Engineering Data Book 3, Swiss Federal Institute of Technology Lausanne (EPFL), 2009.
      //SOURCE 3: J.M. Jensen and H. Tummescheit. Moving boundary models for dynamic simulations of two-phase flows. In Proceedings of the 2nd International Modelica Conference, pp. 235-244, Oberpfaffenhofen, Germany, 2002. The Modelica Association.

      input Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach
        voidFractionApproach=Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous 
        "Choice of void fraction approach";

      input SI.Density rho_g(min=Modelica.Constants.eps) "Density of gaseous phase";
      input SI.Density rho_l(min=Modelica.Constants.eps) "Density of liquid phase";
      input Real x_flow=0 "Mass flow rate quality";

      output Real SR "Slip ratio";

    protected 
      Real MIN=Modelica.Constants.eps;

      //SOURCE_1: p.Lba 3, sec. 3.2
      Real SR_hom=1 "Slip ratio w.r.t. homogeneous approach";
      //SOURCE_1: p.17-6, eq. 17.3.4
      Real SR_mom=abs(rho_l/max(MIN, rho_g))^0.5 
        "Slip ratio w.r.t. momentum flux approach (heterogeneous)";
      //SOURCE_1: p.17-6, eq. 17.3.13
      Real SR_kin=abs(rho_l/max(MIN, rho_g))^(1/3) 
        "Slip ratio w.r.t. kinetic energy flow approach from Zivi (heterogeneous)";
      //SOURCE_1: p.17-6, eq. 17.3.13
      Real SR_chi=(1 - x_flow*(1 - abs(rho_l)/max(MIN, abs(rho_g))))^0.5 
        "Empirical slip ratio w.r.t. momentum flux approach from Chisholm (heterogeneous)";

    algorithm 
      SR := if voidFractionApproach == Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Homogeneous then 
              SR_hom else if voidFractionApproach == Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Momentum then 
              SR_mom else if voidFractionApproach == Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Energy then 
              SR_kin else if voidFractionApproach == Modelica.Fluid.Dissipation.Utilities.Types.VoidFractionApproach.Chisholm then 
              SR_chi else 1;
    end SlipRatio;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseChisholm\_DP| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseFriedel\_DP| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseGeodetic\_DP| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp\_twoPhaseMomentum\_DP| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseMultiplierFriedel| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseMultiplierChisholm| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.TwoPhaseDensity| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.VoidFraction| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.SlipRatio| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image9| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image10| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image11| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image12| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image13| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image14| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image15| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image16| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
.. |image17| image:: Modelica.Fluid.Dissipation.Utilities.Functions.PressureLoss.TwoPhase.dp_twoPhaseChisholm_DPS.png
