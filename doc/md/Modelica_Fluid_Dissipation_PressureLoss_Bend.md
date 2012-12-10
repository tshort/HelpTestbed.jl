% Modelica.Fluid.Dissipation.PressureLoss.Bend
% 
% 

[Modelica.Fluid.Dissipation.PressureLoss](Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss).Bend
====================================================================================================================================

**Package for pressure loss calculation of bends**

Information
-----------

::

### Bend

#### Curved bend overall flow

Calculation of pressure loss in curved bends at overall flow regime for
incompressible and single-phase fluid flow through circular cross
sectional area considering surface roughness. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall).

#### Edged bend overall flow

Calculation of pressure loss in edged bends with sharp corners at
overall flow regime for incompressible and single-phase fluid flow
through circular cross sectional area considering surface roughness.
[See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall)
.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image8](Modelica.Fluid.Dissipation.PressureLoss Pressure loss of
  .Bend.dp_curvedOverall_DPS.png)                   curved bend |
  [dp\_curvedOverall\_DP](Modelica_Fluid_Dissipatio calculate pressure
  n_PressureLoss_Bend.html#Modelica.Fluid.Dissipati loss | overall flow
  on.PressureLoss.Bend.dp_curvedOverall_DP)         regime | surface
                                                    roughness

  ![image9](Modelica.Fluid.Dissipation.PressureLoss Pressure loss of
  .Bend.dp_curvedOverall_DPS.png)                   curved bend |
  [dp\_curvedOverall\_MFLOW](Modelica_Fluid_Dissipa calculate mass flow
  tion_PressureLoss_Bend.html#Modelica.Fluid.Dissip rate | overall flow
  ation.PressureLoss.Bend.dp_curvedOverall_MFLOW)   regime | surface
                                                    roughness

  ![image10](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.Bend.dp_curvedOverall_IN_conS.png)              function
  [dp\_curvedOverall\_IN\_con](Modelica_Fluid_Dissi dp\_curvedOverall\_DP
  pation_PressureLoss_Bend.html#Modelica.Fluid.Diss and
  ipation.PressureLoss.Bend.dp_curvedOverall_IN_con dp\_curvedOverall\_MFL
  )                                                 OW

  ![image11](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.Bend.dp_curvedOverall_IN_conS.png)              function
  [dp\_curvedOverall\_IN\_var](Modelica_Fluid_Dissi dp\_curvedOverall\_DP
  pation_PressureLoss_Bend.html#Modelica.Fluid.Diss and
  ipation.PressureLoss.Bend.dp_curvedOverall_IN_var dp\_curvedOverall\_MFL
  )                                                 OW

  ![image12](Modelica.Fluid.Dissipation.PressureLos Pressure loss of edged
  s.Bend.dp_edgedOverall_DPS.png)                   bend | calculate
  [dp\_edgedOverall\_DP](Modelica_Fluid_Dissipation pressure loss |
  _PressureLoss_Bend.html#Modelica.Fluid.Dissipatio overall flow regime |
  n.PressureLoss.Bend.dp_edgedOverall_DP)           surface roughness

  ![image13](Modelica.Fluid.Dissipation.PressureLos Pressure loss of edged
  s.Bend.dp_edgedOverall_DPS.png)                   bend | calculate mass
  [dp\_edgedOverall\_MFLOW](Modelica_Fluid_Dissipat flow rate | overall
  ion_PressureLoss_Bend.html#Modelica.Fluid.Dissipa flow regime | surface
  tion.PressureLoss.Bend.dp_edgedOverall_MFLOW)     roughness

  ![image14](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.Bend.dp_edgedOverall_IN_conS.png)               function
  [dp\_edgedOverall\_IN\_con](Modelica_Fluid_Dissip dp\_edgedOverall\_DP
  ation_PressureLoss_Bend.html#Modelica.Fluid.Dissi and
  pation.PressureLoss.Bend.dp_edgedOverall_IN_con)  dp\_edgedOverall\_MFLO
                                                    W

  ![image15](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.Bend.dp_edgedOverall_IN_conS.png)               function
  [dp\_edgedOverall\_IN\_var](Modelica_Fluid_Dissip dp\_edgedOverall\_DP
  ation_PressureLoss_Bend.html#Modelica.Fluid.Dissi and
  pation.PressureLoss.Bend.dp_edgedOverall_IN_var)  dp\_edgedOverall\_MFLO
                                                    W
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_curvedOverall\_DP
====================================================================================================================================================================

**Pressure loss of curved bend | calculate pressure loss | overall flow
regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in curved bends at overall flow regime for
incompressible and single-phase fluid flow through circular cross
sectional area considering surface roughness.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_curvedOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_MFLOW)
is numerically best used for the **compressible case**if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  Constant inputs                                          

  [dp\_curvedOverall\_IN\_con](Modelica_Fluid_Diss IN\     Input record for
  ipation_PressureLoss_Bend.html#Modelica.Fluid.Di _co     function
  ssipation.PressureLoss.Bend.dp_curvedOverall_IN_ n       dp\_curvedOveral
  con)                                                     l\_DP

  Variable inputs                                          

  [dp\_curvedOverall\_IN\_var](Modelica_Fluid_Diss IN\     Input record for
  ipation_PressureLoss_Bend.html#Modelica.Fluid.Di _va     function
  ssipation.PressureLoss.Bend.dp_curvedOverall_IN_ r       dp\_curvedOveral
  var)                                                     l\_DP

  Input                                                    

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     [kg/s]
                                                   w       
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Pressure](Modelica_SIunits.html#Mode DP    Output for function
  lica.SIunits.Pressure)                      dp\_curvedOverall\_DP [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_curvedOverall_DP 
      "Pressure loss of curved bend | calculate pressure loss | overall flow regime | surface roughness"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //SOURCE_2: Miller, D.S.: INTERNAL FLOW SYSTEMS, 2nd edition, 1984.
      //SOURCE_3: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, Section Lac 6 (Verification)
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Bend;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_con
        IN_con "Input record for function dp_curvedOverall_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var
        IN_var "Input record for function dp_curvedOverall_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_curvedOverall_DP";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=max(MIN, IN_con.d_hyd) "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      Real frac_RD=max(MIN, IN_con.R_0/d_hyd) "Relative curvature radius";
      Real k=max(MIN, abs(IN_con.K)/d_hyd) "Relative roughness";
      Real delta=IN_con.delta*180/PI "Angle of turning";
      SI.Length L=IN_con.delta*IN_con.R_0 "Length of flow path";

      //SOURCE_1: p.336, sec.15: definition of flow regime boundaries
      SI.ReynoldsNumber Re_min=1 "Minium Reynolds number";
      SI.ReynoldsNumber Re_lam_max=6.5e3 
        "Maximum Reynolds number for laminar regime (6.5e3)";
      SI.ReynoldsNumber Re_turb_min=4e4 
        "Minimum Reynolds number for turbulent regime (4e4)";
      SI.ReynoldsNumber Re_turb_max=3e5 
        "Maximum Reynolds number for turbulent regime (3e5)";
      SI.ReynoldsNumber Re_turb_const=1e6 
        "Reynolds number for independence on pressure loss coefficient (1e6)";

      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(1e2, 754*Modelica.Math.exp(
          if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      //SOURCE_1: p.357, diag. 6-1: coefficients for local resistance coefficient [zeta_LOC]:
      //IN_con.R_0/IN_con.d_hyd <= 3
      Real A1=if delta <= 70 then 0.9*sin(delta*PI/180) else if delta >= 100 then 
          0.7 + 0.35*delta/90 else 1.0 
        "Coefficient considering effect for angle of turning on zeta_LOC";
      Real A2=if frac_RD > 2.0 then 6e2 else if frac_RD <= 2.0 and frac_RD >= 0.7 then 
                (if frac_RD > 1.0 then 1e3 else if frac_RD <= 1.0 and frac_RD > 0.7 then 
                3e3 else 6e3) else 4e3 
        "Coefficient considering laminar regime on zeta_LOC";
      Real B1=if frac_RD >= 1.0 then 0.21*(frac_RD)^(-0.5) else 0.21*(frac_RD)^(-2.5) 
        "Coefficient considering relative curvature radius (R_0/d_hyd) on zeta_LOC";
      Real C1=1.0 
        "Considering relative elongation of cross sectional area on zeta_LOC (here: circular cross sectional area)";
      TYP.LocalResistanceCoefficient zeta_LOC_sharp_turb=max(MIN, A1*B1*C1) 
        "Local resistance coefficient for turbulent regime (Re > Re_turb_max)";

      SI.ReynoldsNumber Re=max(Re_min, 4*abs(m_flow)/(PI*IN_con.d_hyd*IN_var.eta)) 
        "Reynolds number";

      //mass flow rate boundaries for w.r.t flow regimes
      SI.MassFlowRate m_flow_smooth=Re_min*PI*IN_con.d_hyd*IN_var.eta/4;

      //SOURCE_1: p.357, diag. 6-1, sec. 2 / p.336, sec. 15 (turbulent regime + hydraulically rough):
      //IN_con.R_0/IN_con.d_hyd < 3
      Real C_Re=if frac_RD > 0.7 then 11.5/Re^0.19 else if frac_RD <= 0.7 and 
          frac_RD >= 0.55 then 5.45/Re^0.131 else 1 + 4400/Re 
        "Correction factor for hydraulically rough turbulent regime (Re_turb_min < Re < Re_turb_max)";

      //SOURCE_1: p.357, diag. 6-1
      //IN_con.R_0/IN_con.d_hyd < 3
      TYP.LocalResistanceCoefficient zeta_LOC_sharp=if Re < Re_lam_leave then A2/Re
           + zeta_LOC_sharp_turb else if Re < Re_turb_min then SMOOTH(
          Re_lam_leave,
          Re_turb_min,
          Re)*(A2/max(Re_lam_leave, Re) + zeta_LOC_sharp_turb) + SMOOTH(
          Re_turb_min,
          Re_lam_leave,
          Re)*(C_Re*zeta_LOC_sharp_turb) else if Re < Re_turb_max then SMOOTH(
          Re_turb_min,
          Re_turb_max,
          Re)*(C_Re*zeta_LOC_sharp_turb) + SMOOTH(
          Re_turb_max,
          Re_turb_min,
          Re)*zeta_LOC_sharp_turb else zeta_LOC_sharp_turb 
        "Local resistance coefficient for R_0/d_hyd < 3";

      TYP.LocalResistanceCoefficient zeta_LOC=zeta_LOC_sharp 
        "Local resistance coefficient";

      //SOURCE_2: p.191, eq. 8.4: considering surface roughness
      //restriction of lambda_FRI at maximum Reynolds number Re=1e6 (SOURCE_2: p.207, sec. 9.2.4)
      TYP.DarcyFrictionFactor lambda_FRI_rough=0.25/(Modelica.Math.log10(k/(3.7*
          IN_con.d_hyd) + 5.74/min(1e6, max(Re_lam_leave, Re))^0.9))^2 
        "Darcy friction factor considering surface roughness";

      //SOURCE_2: p.207, sec. 9.2.4: correction factors CF w.r.t.surface roughness
      Real CF_fri=1+SMOOTH(
          Re_lam_max,
          Re_lam_leave,
          Re)*min(1.4, (lambda_FRI_rough*L/d_hyd/zeta_LOC)) + SMOOTH(
          Re_lam_leave,
          Re_lam_max,
          Re) "Correction factor for surface roughness";

      TYP.PressureLossCoefficient zeta_TOT=max(1, CF_fri)*zeta_LOC 
        "Pressure loss coefficient";

      //Documentation

    algorithm 
      DP := zeta_TOT*(IN_var.rho/2)*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
        m_flow,
        m_flow_smooth,
        2)/max(MIN, (IN_var.rho*A_cross)^2);
    end dp_curvedOverall_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_curvedOverall\_MFLOW
=======================================================================================================================================================================

**Pressure loss of curved bend | calculate mass flow rate | overall flow
regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in curved bends at overall flow regime for
incompressible and single-phase fluid flow through circular cross
sectional area considering surface roughness.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_curvedOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                            Nam Def Description
                                                  e   aul 
                                                      t   
  ----------------------------------------------- --- --- ----------------
  Constant inputs                                         

  [dp\_curvedOverall\_IN\_con](Modelica_Fluid_Dis IN\     Input record for
  sipation_PressureLoss_Bend.html#Modelica.Fluid. _co     function
  Dissipation.PressureLoss.Bend.dp_curvedOverall_ n       dp\_curvedOveral
  IN_con)                                                 l\_MFLOW

  Variable inputs                                         

  [dp\_curvedOverall\_IN\_var](Modelica_Fluid_Dis IN\     Input record for
  sipation_PressureLoss_Bend.html#Modelica.Fluid. _va     function
  Dissipation.PressureLoss.Bend.dp_curvedOverall_ r       dp\_curvedOveral
  IN_var)                                                 l\_MFLOW

  Input                                                   

  [Pressure](Modelica_SIunits.html#Modelica.SIuni dp      Pressure loss
  ts.Pressure)                                            [Pa]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name   Description
  ------------------------------------- ------ ----------------------------
  [MassFlowRate](Modelica_SIunits.html# M\_FLO Output for function
  Modelica.SIunits.MassFlowRate)        W      dp\_curvedOverall\_MFLOW
                                               [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_curvedOverall_MFLOW 
      "Pressure loss of curved bend | calculate mass flow rate | overall flow regime | surface roughness"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //SOURCE_2: Miller, D.S.: INTERNAL FLOW SYSTEMS, 2nd edition, 1984.
      //SOURCE_3: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, Section Lac 6 (Verification)
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Bend;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_con
        IN_con "Input record for function dp_curvedOverall_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var
        IN_var "Input record for function dp_curvedOverall_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_curvedOverall_MFLOW";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=max(MIN, IN_con.d_hyd) "Hydraulic diameter";
      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";
      Real frac_RD=max(MIN, IN_con.R_0/d_hyd) "Relative curvature radius";
      Real k=max(MIN, abs(IN_con.K)/d_hyd) "Relative roughness";
      Real delta=IN_con.delta*180/PI "Angle of turning";
      SI.Length L=IN_con.delta*IN_con.R_0 "Length of flow path";

      //SOURCE_1: p.336, sec.15: definition of flow regime boundaries
      SI.ReynoldsNumber Re_min=1 "Minium Reynolds number";
      SI.ReynoldsNumber Re_lam_max=6.5e3 
        "Maximum Reynolds number for laminar regime (6.5e3)";
      SI.ReynoldsNumber Re_turb_min=4e4 
        "Minimum Reynolds number for turbulent regime (4e4)";
      SI.ReynoldsNumber Re_turb_max=3e5 
        "Maximum Reynolds number for turbulent regime (3e5)";
      SI.ReynoldsNumber Re_turb_const=1e6 
        "Reynolds number for independence on pressure loss coefficient (1e6)";

      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(1e2, 754*Modelica.Math.exp(
          if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      //SOURCE_1: p.357, diag. 6-1: coefficients for local resistance coefficient [zeta_LOC]:
      //IN_con.R_0/IN_con.d_hyd <= 3
      Real A1=if delta <= 70 then 0.9*sin(delta/180*PI) else if delta >= 100 then 
          0.7 + 0.35*delta/90 else 1.0 
        "Coefficient considering effect for angle of turning on zeta_LOC";
      Real A2=if frac_RD > 2.0 then 6e2 else if frac_RD <= 2.0 and frac_RD >= 0.7 then 
                (if frac_RD > 1.0 then 1e3 else if frac_RD <= 1.0 and frac_RD > 0.7 then 
                3e3 else 6e3) else 4e3 
        "Coefficient considering laminar regime on zeta_LOC";
      Real B1=if frac_RD >= 1.0 then 0.21*(frac_RD)^(-0.5) else 0.21*(frac_RD)^(-2.5) 
        "Coefficient considering relative curvature radius (R_0/d_hyd) on zeta_LOC";
      Real C1=1.0 
        "Considering relative elongation of cross sectional area on zeta_LOC (here: circular cross sectional area)";
      TYP.LocalResistanceCoefficient zeta_LOC_sharp_turb=max(MIN, A1*B1*C1) 
        "Local resistance coefficient for turbulent regime (Re > Re_turb_max)";

      //SOURCE_1: p.357, diag. 6-1: pressure loss boundaries for w.r.t flow regimes
      //IN_con.R_0/d_hyd <=3
      SI.AbsolutePressure dp_lam_max=(zeta_LOC_sharp_turb + A2/Re_lam_leave)*IN_var.rho
          /2*(Re_lam_leave*IN_var.eta/(IN_var.rho*d_hyd))^2 
        "Maximum pressure loss for laminar regime";
      SI.AbsolutePressure dp_turb_min=zeta_LOC_sharp_turb*(if frac_RD > 0.7 then 
          11.5/Re_turb_min^0.19 else if frac_RD <= 0.7 and frac_RD >= 0.55 then 
          5.45/Re_turb_min^0.131 else 1 + 4400/Re_turb_min)*IN_var.rho/2*(
          Re_turb_min*IN_var.eta/(IN_var.rho*d_hyd))^2 
        "Minimum pressure loss for turbulent regime";
      SI.AbsolutePressure dp_turb_max=zeta_LOC_sharp_turb*(if frac_RD > 0.7 then 
          11.5/Re_turb_max^0.19 else if frac_RD <= 0.7 and frac_RD >= 0.55 then 
          5.45/Re_turb_max^0.131 else 1 + 4400/Re_turb_max)*IN_var.rho/2*(
          Re_turb_max*IN_var.eta/(IN_var.rho*d_hyd))^2 
        "Maximum pressure loss for turbulent regime";
      SI.AbsolutePressure dp_turb_const=zeta_LOC_sharp_turb*IN_var.rho/2*(
          Re_turb_const*IN_var.eta/(IN_var.rho*d_hyd))^2 
        "Pressure loss for independence of Reynolds number on pressure loss coefficient";

      //SOURCE_1: p.357, diag. 6-1: mean velocities for assumed flow regime
      //IN_con.R_0/d_hyd <=3
      SI.Velocity v_lam=(-A2/2*IN_var.eta + 0.5*sqrt(max(MIN, (A2*IN_var.eta)^2 + 8
          *zeta_LOC_sharp_turb*abs(dp)*IN_var.rho*d_hyd^2)))/zeta_LOC_sharp_turb/
          IN_var.rho/d_hyd "Mean velocity in laminar regime (Re < Re_lam_leave)";
      SI.Velocity v_tra=(-A2/2*IN_var.eta + 0.5*sqrt(max(MIN, (A2*IN_var.eta)^2 + 8
          *zeta_LOC_sharp_turb*abs(dp_lam_max)*IN_var.rho*d_hyd^2)))/
          zeta_LOC_sharp_turb/IN_var.rho/d_hyd 
        "Mean velocity in transition regime (Re_lam_leave < Re_turb_min)";
      SI.Velocity v_turb=if frac_RD > 0.7 then (max(MIN, abs(dp))/(IN_var.rho/2*
          11.5*zeta_LOC_sharp_turb)*(IN_var.rho*IN_con.d_hyd/max(MIN, IN_var.eta))^
          0.19)^(1/(2 - 0.19)) else if frac_RD > 0.55 and frac_RD < 0.7 then (max(
          MIN, abs(dp))/(IN_var.rho/2*5.45*zeta_LOC_sharp_turb)*(IN_var.rho*IN_con.d_hyd
          /max(MIN, IN_var.eta))^0.131)^(1/(2 - 0.131)) else -2200/(IN_var.rho*
          IN_con.d_hyd/IN_var.eta) + ((-2200/(IN_var.rho*IN_con.d_hyd/max(MIN,
          IN_var.eta)))^2 + 2*abs(max(MIN, dp))/max(MIN, IN_var.rho))^0.5 
        "Mean velocity in turbulent regime with dependence on pressure loss coefficient (Re_turb_min < Re < Re_turb_max)";
      SI.Velocity v_turb_const=sqrt(max(MIN, 2*abs(dp)/(IN_var.rho*
          zeta_LOC_sharp_turb))) 
        "Mean velocity in turbulent regime with independence on pressure loss coefficient (Re > Re_turb_max)";

      //mean velocity under smooth conditions w.r.t flow regime
      SI.Velocity v_smooth=if dp < dp_lam_max then v_lam else if dp < dp_turb_min then 
                SMOOTH(
          dp_lam_max,
          dp_turb_min,
          dp)*v_lam + SMOOTH(
          dp_turb_min,
          dp_lam_max,
          dp)*v_turb else if dp < dp_turb_max then v_turb else SMOOTH(
          dp_turb_max,
          dp_turb_const,
          dp)*v_turb + SMOOTH(
          dp_turb_const,
          dp_turb_max,
          dp)*v_turb_const 
        "Mean velocity under smooth conditions for R_0/d_hyd < 3";

      SI.ReynoldsNumber Re_smooth=max(Re_min, IN_var.rho*v_smooth*d_hyd/IN_var.eta) 
        "Reynolds number under smooth conditions";

      //SOURCE_2: p.191, eq. 8.4: considering surface roughness
      //restriction of lambda_FRI at maximum Reynolds number Re=1e6 (SOURCE_2: p.207, sec. 9.2.4)
      TYP.DarcyFrictionFactor lambda_FRI_rough=0.25/(Modelica.Math.log10(k/(3.7*
          IN_con.d_hyd) + 5.74/min(1e6, max(Re_lam_leave, Re_smooth))^0.9))^2 
        "Darcy friction factor considering surface roughness";
      TYP.DarcyFrictionFactor lambda_FRI_smooth=0.25/(Modelica.Math.log10(5.74/max(
          Re_lam_leave, Re_smooth)^0.9))^2 
        "Darcy friction factor neglecting surface roughness";

      //SOURCE_2: p.207, sec. 9.2.4: correction factors CF w.r.t.surface roughness
      Real CF_3=1+SMOOTH(
          6e3,
          1e3,
          Re_smooth)*min(1.4, (lambda_FRI_rough*L/d_hyd/zeta_LOC_sharp_turb)) + SMOOTH(
          1e3,
          6e3,
          Re_smooth) "Correction factor for surface roughness";

      SI.Velocity velocity=v_smooth/max(1, CF_3)^(0.5) 
        "Corrected velocity considering surface roughness";

      //Documentation

    algorithm 
      M_FLOW := sign(dp)*IN_var.rho*A_cross*abs(velocity);

    end dp_curvedOverall_MFLOW;

* * * * *

![image16](Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_curvedOverall\_IN\_con
===============================================================================================================================================================================================================================================================

**Input record for function dp\_curvedOverall\_DP and
dp\_curvedOverall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_curvedOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_DP)
and
[dp\_curvedOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Bend](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Bend)
(Input for bend).

Parameters
----------

  ------------------------------------------------------------------------
  Type                          Name Default Description
  ----------------------------- ---- ------- -----------------------------
  Bend                                       

  [Diameter](Modelica_SIunits.h d\_h 0.1     Hydraulic diameter [m]
  tml#Modelica.SIunits.Diameter yd           
  )                                          

  [Angle](Modelica_SIunits.html delt 90\*PI/ Angle of turning [rad]
  #Modelica.SIunits.Angle)      a    180     

  [Length](Modelica_SIunits.htm K    0       Roughness (absolute average
  l#Modelica.SIunits.Length)                 height of surface asperities)
                                             [m]

  [Radius](Modelica_SIunits.htm R\_0 0.5\*d\ Curvature radius [m]
  l#Modelica.SIunits.Radius)         _hyd    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_curvedOverall_IN_con 
      "Input record for function dp_curvedOverall_DP and dp_curvedOverall_MFLOW"

      //bend variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.Bend;

    end dp_curvedOverall_IN_con;

* * * * *

![image17](Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_curvedOverall\_IN\_var
===============================================================================================================================================================================================================================================================

**Input record for function dp\_curvedOverall\_DP and
dp\_curvedOverall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_curvedOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_DP)
and
[dp\_curvedOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss)
(Base record for fluid properties for pressure loss).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name Defaul Description
                                                 t      
  ----------------------------------------- ---- ------ -------------------
  Fluid properties                                      

  [DynamicViscosity](Modelica_SIunits.html# eta         Dynamic viscosity
  Modelica.SIunits.DynamicViscosity)                    of fluid [Pa.s]

  [Density](Modelica_SIunits.html#Modelica. rho         Density of fluid
  SIunits.Density)                                      [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_curvedOverall_IN_var 
      "Input record for function dp_curvedOverall_DP and dp_curvedOverall_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;

    end dp_curvedOverall_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_edgedOverall\_DP
===================================================================================================================================================================

**Pressure loss of edged bend | calculate pressure loss | overall flow
regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in edged bends with sharp corners at
overall flow regime for incompressible and single-phase fluid flow
through circular cross sectional area considering surface roughness.

There are larger pressure losses in an edged bend compared to a curved
bend under the same conditions. The effect of a sharp corner in an edged
bend on the pressure loss is much larger than the influence of surface
roughness.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_edgedOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall)
.

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.BendEdged\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.BendEdged_d)
(Geometry figure of edged bend).

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  Constant inputs                                          

  [dp\_edgedOverall\_IN\_con](Modelica_Fluid_Dissi IN\     Input record for
  pation_PressureLoss_Bend.html#Modelica.Fluid.Dis _co     function
  sipation.PressureLoss.Bend.dp_edgedOverall_IN_co n       dp\_edgedOverall
  n)                                                       \_DP

  Variable inputs                                          

  [dp\_edgedOverall\_IN\_var](Modelica_Fluid_Dissi IN\     Input record for
  pation_PressureLoss_Bend.html#Modelica.Fluid.Dis _va     function
  sipation.PressureLoss.Bend.dp_edgedOverall_IN_va r       dp\_edgedOverall
  r)                                                       \_DP

  Input                                                    

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     [kg/s]
                                                   w       
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                   Name  Description
  -------------------------------------- ----- ----------------------------
  [Pressure](Modelica_SIunits.html#Model DP    Output for function
  ica.SIunits.Pressure)                        dp\_edgedOverall\_DP [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_edgedOverall_DP 
      "Pressure loss of edged bend | calculate pressure loss | overall flow regime | surface roughness"

      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //SOURCE_2: Miller, D.S.: INTERNAL FLOW SYSTEMS, 2nd edition, 1984.
      //SOURCE_3: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, Section Lac 6 (Verification)
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Bend;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.BendEdged_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con
        IN_con "Input record for function dp_edgedOverall_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var
        IN_var "Input record for function dp_edgedOverall_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_edgedOverall_DP";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=max(MIN, IN_con.d_hyd) "Hydraulic diameter";
      SI.Area A_cross=PI*d_hyd^2/4 "Circular cross sectional area";
      Real k=max(MIN, abs(IN_con.K)/IN_con.d_hyd) "Relative roughness";
      Real delta=IN_con.delta*180/PI "Angle of turning";

      //definition of flow regime boundaries
      //SOURCE_2: p.207, sec. 9.2.4
      //SOURCE_3: p.Lac 6, fig. 16
      SI.ReynoldsNumber Re_min=1 "Minium Reynolds number";
      SI.ReynoldsNumber Re_lam_min=1e3 
        "Minimum Reynolds number for laminar regime (1e2)";
      SI.ReynoldsNumber Re_lam_max=4e4 
        "Maximum Reynolds number for laminar regime (1e3)";
      SI.ReynoldsNumber Re_turb_min=1e5 
        "Minimum Reynolds number for turbulent regime (1e5)";
      SI.ReynoldsNumber Re_turb_max=3e5 
        "Maximum Reynolds number for turbulent regime (2e5)";
      SI.ReynoldsNumber Re_turb_const=1e6 
        "Reynolds number for independence on pressure loss coefficient (1e6)";

      //SOURCE_1: p. 81, sec. 2-2-21: start of transition regime
      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(Re_lam_min, 754*
          Modelica.Math.exp(if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      //SOURCE_1: p.366, diag. 6-7
      Real A=0.95 + 33.5/max(MIN, delta) 
        "Coefficient considering effect of angle of turning on zeta_LOC";
      Real C1=1 
        "Considering relative elongation of cross sectional area on zeta_LOC (here: circular cross sectional area)";

      //SOURCE_1: p.366, diag. 6-7
      TYP.LocalResistanceCoefficient zeta_LOC=max(MIN, 0.95*sin(PI/180*delta/2)^2
           + 2.05*sin(PI/180*delta/2)^4) "Local resistance coefficient";

      //SOURCE_1: p.344, sec. 39/29: Correction w.r.t. effect of Reynolds number in laminar regime
      Real B=0.0292*(delta)^2 + 1.1995*delta 
        "Coefficient considering effect of Reynolds number in laminar regime";
      Real exp=1 "Exponent for Reynolds number correction in laminar regime";

      Real v_min=Re_min*IN_var.eta/(IN_var.rho*d_hyd) 
        "Minimum mean velocity for linear interpolation";

      SI.Velocity velocity=m_flow/(IN_var.rho*A_cross) "Mean velocity";
      SI.ReynoldsNumber Re=max(Re_min, IN_var.rho*abs(velocity)*d_hyd/IN_var.eta) 
        "Reynolds number";

      //SOURCE_2: p.191, eq. 8.4: considering surface roughness
      //restriction of lambda_FRI at maximum Reynolds number Re=1e6 (SOURCE_2: p.207, sec. 9.2.4)
      TYP.DarcyFrictionFactor lambda_FRI_rough=0.25/(Modelica.Math.log10(k/(3.7*
          IN_con.d_hyd) + 5.74/min(Re_turb_const, max(Re_lam_leave, Re))^0.9))^2 
        "Darcy friction factor considering surface roughness";
      TYP.DarcyFrictionFactor lambda_FRI_smooth=0.25/(Modelica.Math.log10(5.74/min(
          Re_turb_const, max(Re_lam_leave, Re))^0.9))^2 
        "Darcy friction factor neglecting surface roughness";

      //SOURCE_2: p.207, sec. 9.2.4: correction factors CF w.r.t.surface roughness
      //SOURCE_2: p.214, sec. 9.4.2: no correction w.r.t. surface roughness for angle of turning >= 45°
      Real CF_fri=if delta <= 45 then max(1, min(1.4, (lambda_FRI_rough/
          lambda_FRI_smooth))) else 1 "Correction factor for surface roughness";

      //SOURCE_2: p.208, diag. 9.3: Correction w.r.t. effect of Reynolds number
      Real CF_Re=SMOOTH(
          Re_min,
          Re_lam_leave,
          Re)*B/Re^exp + SMOOTH(
          Re_lam_leave,
          Re_min,
          Re) "Correction factor for Reynolds number";

      TYP.PressureLossCoefficient zeta_TOT=A*C1*zeta_LOC*CF_fri*CF_Re 
        "Pressure loss coefficient";

      //Documentation

    algorithm 
      DP := zeta_TOT*(IN_var.rho/2)*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              velocity,
              v_min,
              2);
    end dp_edgedOverall_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_edgedOverall\_MFLOW
======================================================================================================================================================================

**Pressure loss of edged bend | calculate mass flow rate | overall flow
regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in edged bends with sharp corners at
overall flow regime for incompressible and single-phase fluid flow
through circular cross sectional area considering surface roughness.

There are larger pressure losses in an edged bend compared to a curved
bend under the same conditions. The effect of a sharp corner in an edged
bend on the pressure loss is much larger than the influence of surface
roughness.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_edgedOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall)
.

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.BendEdged\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.BendEdged_d)
(Geometry figure of edged bend).

Inputs
------

  ------------------------------------------------------------------------
  Type                                            Nam Def Description
                                                  e   aul 
                                                      t   
  ----------------------------------------------- --- --- ----------------
  Constant inputs                                         

  [dp\_edgedOverall\_IN\_con](Modelica_Fluid_Diss IN\     Input record for
  ipation_PressureLoss_Bend.html#Modelica.Fluid.D _co     function
  issipation.PressureLoss.Bend.dp_edgedOverall_IN n       dp\_edgedOverall
  _con)                                                   \_MFLOW

  Variable inputs                                         

  [dp\_edgedOverall\_IN\_var](Modelica_Fluid_Diss IN\     Input record for
  ipation_PressureLoss_Bend.html#Modelica.Fluid.D _va     function
  issipation.PressureLoss.Bend.dp_edgedOverall_IN r       dp\_edgedOverall
  _var)                                                   \_MFLOW

  Input                                                   

  [Pressure](Modelica_SIunits.html#Modelica.SIuni dp      Pressure loss
  ts.Pressure)                                            [Pa]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name   Description
  ------------------------------------- ------ ----------------------------
  [MassFlowRate](Modelica_SIunits.html# M\_FLO Output for function
  Modelica.SIunits.MassFlowRate)        W      dp\_edgedOverall\_MFLOW
                                               [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_edgedOverall_MFLOW 
      "Pressure loss of edged bend | calculate mass flow rate | overall flow regime | surface roughness"
      //SOURCE_1: Idelchik, I.E.: HANDBOOK OF HYDRAULIC RESISTANCE, 3rd edition, 2006.
      //SOURCE_2: Miller, D.S.: INTERNAL FLOW SYSTEMS, 2nd edition, 1984.
      //SOURCE_3: VDI-Waermeatlas, 9th edition, Springer-Verlag, 2002, Section Lac 6 (Verification)
      //Notation of equations according to SOURCES

      import FD = Modelica.Fluid.Dissipation.PressureLoss.Bend;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.BendEdged_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con
        IN_con "Input record for function dp_edgedOverall_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var
        IN_var "Input record for function dp_edgedOverall_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_edgedOverall_MFLOW";

    protected 
      Real MIN=Modelica.Constants.eps;

      SI.Diameter d_hyd=IN_con.d_hyd "Hydraulic diameter";
      SI.Area A_cross=PI*d_hyd^2/4 "Circular cross sectional area";
      Real k=max(MIN, abs(IN_con.K)/IN_con.d_hyd) "Relative roughness";
      Real delta=IN_con.delta*180/PI "Angle of turning";

      //definition of flow regime boundaries
      //SOURCE_2: p.207, sec. 9.2.4
      //SOURCE_3: p.Lac 6, fig. 16
      SI.ReynoldsNumber Re_min=1 "Minium Reynolds number";
      SI.ReynoldsNumber Re_lam_min=1e3 
        "Minimum Reynolds number for laminar regime (1e2)";
      SI.ReynoldsNumber Re_lam_max=4e4 
        "Maximum Reynolds number for laminar regime (1e3)";
      SI.ReynoldsNumber Re_turb_min=1e5 
        "Minimum Reynolds number for turbulent regime (1e5)";
      SI.ReynoldsNumber Re_turb_max=3e5 
        "Maximum Reynolds number for turbulent regime (2e5)";
      SI.ReynoldsNumber Re_turb_const=1e6 
        "Reynolds number for independence on pressure loss coefficient (1e6)";

      //SOURCE_1: p. 81, sec. 2-2-21: start of transition regime
      SI.ReynoldsNumber Re_lam_leave=min(Re_lam_max, max(Re_lam_min, 754*
          Modelica.Math.exp(if k <= 0.007 then 0.0065/0.007 else 0.0065/k))) 
        "Start of transition regime for increasing Reynolds number (leaving laminar regime)";

      //SOURCE_1: p.366, diag. 6-7
      Real A=0.95 + 33.5/max(MIN, delta) 
        "Coefficient considering effect of angle of turning on zeta_LOC";
      Real C1=1 
        "Considering relative elongation of cross sectional area on zeta_LOC (here: circular cross sectional area)";

      //SOURCE_1: p.366, diag. 6-7
      TYP.LocalResistanceCoefficient zeta_LOC=max(MIN, 0.95*sin(PI/180*delta/2)^2
           + 2.05*sin(PI/180*delta/2)^4) "Local resistance coefficient";

      //SOURCE_1: p.344, sec. 39/29: Correction w.r.t. effect of Reynolds number in laminar regime
      Real B=0.0292*(delta)^2 + 1.1995*delta 
        "Coefficient considering effect of Reynolds number on zeta_TOT";
      Real exp=1 "Exponent for Reynolds number correction in laminar regime";
      Real pow=(2 - exp) "pressure loss = f(mass flow rate^pow)";

      SI.Pressure dp_min=1 
        "Linear smoothing of mass flow rate for decreasing pressure loss";
      SI.Velocity v_lam=Re_lam_leave*IN_var.eta/(IN_var.rho*d_hyd) 
        "Maximum mean velocity in laminar regime (Re < Re_lam_leave)";
      Real dp_lam=A*C1*zeta_LOC*(B/2)*(d_hyd/IN_var.eta)^(-exp)*IN_var.rho^(1 - exp)
          *v_lam^(pow) 
        "Maximum pressure loss in laminar regime (Re < Re_lam_leave)";

      //mean velocity under smooth conditions w.r.t. flow regime
      SI.Velocity v_smooth=if abs(dp) > dp_lam then (2*abs(dp))^0.5*(A*C1*zeta_LOC*
          IN_var.rho)^(-0.5) else (2*(d_hyd/IN_var.eta)^exp/(A*C1*zeta_LOC*B*(
          IN_var.rho)^(1 - exp)))^(1/pow)*
          Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
          abs(dp),
          dp_min,
          1/pow) "Mean velocity under smooth conditions";

      SI.ReynoldsNumber Re_smooth=max(Re_min, IN_var.rho*v_smooth*d_hyd/IN_var.eta) 
        "Reynolds number under smooth conditions";

      //SOURCE_2: p.191, eq. 8.4: considering surface roughness
      //restriction of lambda_FRI at maximum Reynolds number Re=1e6 (SOURCE_2: p.207, sec. 9.2.4)
      TYP.DarcyFrictionFactor lambda_FRI_rough=0.25/(Modelica.Math.log10(k/(3.7*
          IN_con.d_hyd) + 5.74/min(Re_turb_const, max(Re_lam_leave, Re_smooth))^0.9))
          ^2 "Darcy friction factor considering surface roughness";
      TYP.DarcyFrictionFactor lambda_FRI_smooth=0.25/(Modelica.Math.log10(5.74/min(
          Re_turb_const, max(Re_lam_leave, Re_smooth))^0.9))^2 
        "Darcy friction factor neglecting surface roughness";

      //SOURCE_2: p.207, sec. 9.2.4: correction factors CF w.r.t.surface roughness
      //SOURCE_2: p.214, sec. 9.4.2: no correction w.r.t. surface roughness for angle of turning >= 45°
      Real CF_fri=if delta <= 45 then max(1, min(1.4, (lambda_FRI_rough/
          lambda_FRI_smooth))) else 1 "Correction factor for surface roughness";

      SI.Velocity velocity=v_smooth/max(1, CF_fri)^(0.5) 
        "Corrected velocity considering surface roughness";

      //Documentation

    algorithm 
      M_FLOW := sign(dp)*IN_var.rho*A_cross*velocity;

    end dp_edgedOverall_MFLOW;

* * * * *

![image18](Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_edgedOverall\_IN\_con
=============================================================================================================================================================================================================================================================

**Input record for function dp\_edgedOverall\_DP and
dp\_edgedOverall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_edgedOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_DP)
and
[dp\_edgedOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.EdgedBend](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.EdgedBend)
(Input for bend).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name  Defaul Description
                                       t      
  ------------------------------ ----- ------ ------------------------------
  Bend                                        

  [Diameter](Modelica_SIunits.ht d\_hy 0.1    Hydraulic diameter [m]
  ml#Modelica.SIunits.Diameter)  d            

  [Angle](Modelica_SIunits.html# delta 90\*PI Angle of turning [rad]
  Modelica.SIunits.Angle)              /180   

  [Length](Modelica_SIunits.html K     0      Roughness (absolute average
  #Modelica.SIunits.Length)                   height of surface asperities)
                                              [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_edgedOverall_IN_con 
      "Input record for function dp_edgedOverall_DP and dp_edgedOverall_MFLOW"

      //edged bend variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.EdgedBend;

    end dp_edgedOverall_IN_con;

* * * * *

![image19](Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.Bend](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend).dp\_edgedOverall\_IN\_var
=============================================================================================================================================================================================================================================================

**Input record for function dp\_edgedOverall\_DP and
dp\_edgedOverall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_edgedOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_DP)
and
[dp\_edgedOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss)
(Base record for fluid properties for pressure loss).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name Defaul Description
                                                 t      
  ----------------------------------------- ---- ------ -------------------
  Fluid properties                                      

  [DynamicViscosity](Modelica_SIunits.html# eta         Dynamic viscosity
  Modelica.SIunits.DynamicViscosity)                    of fluid [Pa.s]

  [Density](Modelica_SIunits.html#Modelica. rho         Density of fluid
  SIunits.Density)                                      [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_edgedOverall_IN_var 
      "Input record for function dp_edgedOverall_DP and  dp_edgedOverall_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;
    end dp_edgedOverall_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:21 2010.
