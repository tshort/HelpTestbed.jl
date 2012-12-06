% Modelica.Fluid.Dissipation.PressureLoss.StraightPipe
% 
% 

[Modelica.Fluid.Dissipation.PressureLoss](Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss).StraightPipe
============================================================================================================================================

**Package for pressure loss calculation of straight pipes**

Information
-----------

::

### Straight Pipe

#### Laminar flow

Calculation of pressure loss in a straight pipe for **laminar** flow
regime of single-phase fluid flow only. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_laminar).

#### Turbulent flow

Calculation of pressure loss in a straight pipe for **turbulent** flow
regime of single-phase fluid flow only considering surface roughness.
[See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent).

#### Overall flow

Calculation of pressure loss in a straight pipe for **laminar or
turbulent** flow regime of single-phase fluid flow only considering
surface roughness. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall).

#### Two phase overall flow

Calculation of pressure loss for **two phase flow** in a horizontal
**or** vertical straight pipe for an overall flow regime considering
frictional, momentum and geodetic pressure loss. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_twoPhaseOverall).

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image15](Modelica.Fluid.Dissipation.PressureLos Pressure loss of
  s.StraightPipe.dp_laminar_DPS.png)                straight pipe |
  [dp\_laminar\_DP](Modelica_Fluid_Dissipation_Pres calculate pressure
  sureLoss_StraightPipe.html#Modelica.Fluid.Dissipa loss| laminar flow
  tion.PressureLoss.StraightPipe.dp_laminar_DP)     regime
                                                    (Hagen-Poiseuille)

  ![image16](Modelica.Fluid.Dissipation.PressureLos Pressure loss of
  s.StraightPipe.dp_laminar_DPS.png)                straight pipe |
  [dp\_laminar\_MFLOW](Modelica_Fluid_Dissipation_P calculate mass flow
  ressureLoss_StraightPipe.html#Modelica.Fluid.Diss rate | laminar flow
  ipation.PressureLoss.StraightPipe.dp_laminar_MFLO regime
  W)                                                (Hagen-Poiseuille)

  ![image17](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_laminar_IN_conS.png)            function
  [dp\_laminar\_IN\_con](Modelica_Fluid_Dissipation dp\_laminar\_DP and
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di dp\_laminar\_MFLOW
  ssipation.PressureLoss.StraightPipe.dp_laminar_IN 
  _con)                                             

  ![image18](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_laminar_IN_conS.png)            function
  [dp\_laminar\_IN\_var](Modelica_Fluid_Dissipation dp\_laminar\_DP and
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di dp\_laminar\_MFLOW
  ssipation.PressureLoss.StraightPipe.dp_laminar_IN 
  _var)                                             

  ![image19](Modelica.Fluid.Dissipation.PressureLos Pressure loss of
  s.StraightPipe.dp_overall_DPS.png)                straight pipe |
  [dp\_overall\_DP](Modelica_Fluid_Dissipation_Pres calculate pressure
  sureLoss_StraightPipe.html#Modelica.Fluid.Dissipa loss | overall flow
  tion.PressureLoss.StraightPipe.dp_overall_DP)     regime | surface
                                                    roughness

  ![image20](Modelica.Fluid.Dissipation.PressureLos Pressure loss of
  s.StraightPipe.dp_overall_DPS.png)                straight pipe |
  [dp\_overall\_MFLOW](Modelica_Fluid_Dissipation_P calculate mass flow
  ressureLoss_StraightPipe.html#Modelica.Fluid.Diss rate | overall flow
  ipation.PressureLoss.StraightPipe.dp_overall_MFLO regime | surface
  W)                                                roughness

  ![image21](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_overall_IN_conS.png)            function
  [dp\_overall\_IN\_con](Modelica_Fluid_Dissipation dp\_overall\_DP and
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di dp\_overall\_MFLOW
  ssipation.PressureLoss.StraightPipe.dp_overall_IN 
  _con)                                             

  ![image22](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_overall_IN_conS.png)            function
  [dp\_overall\_IN\_var](Modelica_Fluid_Dissipation dp\_overall\_DP and
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di dp\_overall\_MFLOW
  ssipation.PressureLoss.StraightPipe.dp_overall_IN 
  _var)                                             

  ![image23](Modelica.Fluid.Dissipation.PressureLos Pressure loss of
  s.StraightPipe.dp_turbulent_DPS.png)              straight pipe |
  [dp\_turbulent\_DP](Modelica_Fluid_Dissipation_Pr calculate pressure
  essureLoss_StraightPipe.html#Modelica.Fluid.Dissi loss | turbulent flow
  pation.PressureLoss.StraightPipe.dp_turbulent_DP) regime | surface
                                                    roughness

  ![image24](Modelica.Fluid.Dissipation.PressureLos Pressure loss of
  s.StraightPipe.dp_turbulent_DPS.png)              straight pipe |
  [dp\_turbulent\_MFLOW](Modelica_Fluid_Dissipation calculate mass flow
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di rate | turbulent flow
  ssipation.PressureLoss.StraightPipe.dp_turbulent_ regime | surface
  MFLOW)                                            roughness

  ![image25](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_turbulent_IN_conS.png)          function
  [dp\_turbulent\_IN\_con](Modelica_Fluid_Dissipati dp\_turbulent\_DP and
  on_PressureLoss_StraightPipe.html#Modelica.Fluid. dp\_turbulent\_MFLOW
  Dissipation.PressureLoss.StraightPipe.dp_turbulen 
  t_IN_con)                                         

  ![image26](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_turbulent_IN_conS.png)          function
  [dp\_turbulent\_IN\_var](Modelica_Fluid_Dissipati dp\_turbulent\_DP and
  on_PressureLoss_StraightPipe.html#Modelica.Fluid. dp\_turbulent\_MFLOW
  Dissipation.PressureLoss.StraightPipe.dp_turbulen 
  t_IN_var)                                         

  ![image27](Modelica.Fluid.Dissipation.PressureLos Pressure loss of
  s.StraightPipe.dp_twoPhaseOverall_DPS.png)        straight pipe for two
  [dp\_twoPhaseOverall\_DP](Modelica_Fluid_Dissipat phase flow | calculate
  ion_PressureLoss_StraightPipe.html#Modelica.Fluid (frictional, momentum,
  .Dissipation.PressureLoss.StraightPipe.dp_twoPhas geodetic) pressure
  eOverall_DP)                                      loss

  ![image28](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_twoPhaseOverall_IN_conS.png)    function
  [dp\_twoPhaseOverall\_IN\_con](Modelica_Fluid_Dis dp\_twoPhaseOverall\_D
  sipation_PressureLoss_StraightPipe.html#Modelica. P
  Fluid.Dissipation.PressureLoss.StraightPipe.dp_tw 
  oPhaseOverall_IN_con)                             

  ![image29](Modelica.Fluid.Dissipation.PressureLos Input record for
  s.StraightPipe.dp_twoPhaseOverall_IN_conS.png)    function
  [dp\_twoPhaseOverall\_IN\_var](Modelica_Fluid_Dis dp\_twoPhaseOverall\_D
  sipation_PressureLoss_StraightPipe.html#Modelica. P
  Fluid.Dissipation.PressureLoss.StraightPipe.dp_tw 
  oPhaseOverall_IN_var)                             
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_laminar\_DP
======================================================================================================================================================================================

**Pressure loss of straight pipe | calculate pressure loss| laminar flow
regime (Hagen-Poiseuille)**

Information
-----------

::

Calculation of pressure loss in a straight pipe for **laminar** flow
regime of an incompressible and single-phase fluid flow only.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_laminar\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_laminar).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d)
(Geometry figure for straight pipe).

Inputs
------

  ------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- --------------
  Constant inputs                                           

  [dp\_laminar\_IN\_con](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _co     for function
  ssipation.PressureLoss.StraightPipe.dp_laminar_IN n       dp\_laminar\_D
  _con)                                                     P

  Variable inputs                                           

  [dp\_laminar\_IN\_var](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _va     for function
  ssipation.PressureLoss.StraightPipe.dp_laminar_IN r       dp\_laminar\_D
  _var)                                                     P

  Input                                                     

  [MassFlowRate](Modelica_SIunits.html#Modelica.SIu m\_     Mass flow rate
  nits.MassFlowRate)                                flo     [kg/s]
                                                    w       
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name  Description
  --------------------------------------- ----- ---------------------------
  [Pressure](Modelica_SIunits.html#Modeli DP    Output for function
  ca.SIunits.Pressure)                          dp\_laminar\_DP [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_laminar\_MFLOW
=========================================================================================================================================================================================

**Pressure loss of straight pipe | calculate mass flow rate | laminar
flow regime (Hagen-Poiseuille)**

Information
-----------

::

Calculation of pressure loss in a straight pipe for **laminar** flow
regime of an incompressible and single-phase fluid flow only.

Generally this function is numerically best used for the **compressible
case**, where the pressure loss (dp) is known (out of pressures as state
variable) in the used model and the corresponding mass flow rate
(M\_FLOW) has to be calculated. On the other hand the function
[dp\_laminar\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DP)
is numerically best used for the **incompressible case** if the mass
flow rate (m\_flow) is known (as state variable) and the pressure loss
(DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_laminar).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d)
(Geometry figure for straight pipe).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- ---------------
  Constant inputs                                           

  [dp\_laminar\_IN\_con](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _co     for function
  ssipation.PressureLoss.StraightPipe.dp_laminar_IN n       dp\_laminar\_MF
  _con)                                                     LOW

  Variable inputs                                           

  [dp\_laminar\_IN\_var](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _va     for function
  ssipation.PressureLoss.StraightPipe.dp_laminar_IN r       dp\_laminar\_MF
  _var)                                                     LOW

  Input                                                     

  [Pressure](Modelica_SIunits.html#Modelica.SIunits dp      Pressure loss
  .Pressure)                                                [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [MassFlowRate](Modelica_SIunits.html#Mo M\_FLO Output for function
  delica.SIunits.MassFlowRate)            W      dp\_laminar\_MFLOW [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image30](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_laminar\_IN\_con
===================================================================================================================================================================================================================================================================================

**Input record for function dp\_laminar\_DP and dp\_laminar\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_laminar\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DP)
and
[dp\_laminar\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW).

::

Extends from
[Utilities.Records.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.StraightPipe)
(Input for straight pipe).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                     Name   Default Description
  ---------------------------------------- ------ ------- ----------------
  Straight pipe                                           

  [Diameter](Modelica_SIunits.html#Modelic d\_hyd 0.1     Hydraulic
  a.SIunits.Diameter)                                     diameter [m]

  [Length](Modelica_SIunits.html#Modelica. L      1       Length [m]
  SIunits.Length)                                         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_laminar_IN_con 
      "Input record for function dp_laminar_DP and dp_laminar_MFLOW"
      extends Utilities.Records.PressureLoss.StraightPipe;


    end dp_laminar_IN_con;

* * * * *

![image31](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_laminar\_IN\_var
===================================================================================================================================================================================================================================================================================

**Input record for function dp\_laminar\_DP and dp\_laminar\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_laminar\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_DP)
and
[dp\_laminar\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_laminar_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_var](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var)
(Input record for function dp\_overall\_DP and dp\_overall\_MFLOW).

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

    record dp_laminar_IN_var 
      "Input record for function dp_laminar_DP and dp_laminar_MFLOW"

      extends Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var;


    end dp_laminar_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_overall\_DP
======================================================================================================================================================================================

**Pressure loss of straight pipe | calculate pressure loss | overall
flow regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in a straight pipe for **overall** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_overall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d)
(Geometry figure for straight pipe).

Inputs
------

  ------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- --------------
  Constant inputs                                           

  [dp\_overall\_IN\_con](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _co     for function
  ssipation.PressureLoss.StraightPipe.dp_overall_IN n       dp\_overall\_D
  _con)                                                     P

  Variable inputs                                           

  [dp\_overall\_IN\_var](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _va     for function
  ssipation.PressureLoss.StraightPipe.dp_overall_IN r       dp\_overall\_D
  _var)                                                     P

  Input                                                     

  [MassFlowRate](Modelica_SIunits.html#Modelica.SIu m\_     Mass flow rate
  nits.MassFlowRate)                                flo     [kg/s]
                                                    w       
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name  Description
  --------------------------------------- ----- ---------------------------
  [Pressure](Modelica_SIunits.html#Modeli DP    Output for function
  ca.SIunits.Pressure)                          dp\_overall\_DP [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_overall\_MFLOW
=========================================================================================================================================================================================

**Pressure loss of straight pipe | calculate mass flow rate | overall
flow regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in a straight pipe for **overall** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the **compressible
case**, where the pressure loss (dp) is known (out of pressures as state
variable) in the used model and the corresponding mass flow rate
(M\_FLOW) has to be calculated. On the other hand the function
[dp\_overall\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP)
is numerically best used for the **incompressible case** if the mass
flow rate (m\_flow) is known (as state variable) and the pressure loss
(DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_overall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d)
(Geometry figure for straight pipe).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- ---------------
  Constant inputs                                           

  [dp\_overall\_IN\_con](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _co     for function
  ssipation.PressureLoss.StraightPipe.dp_overall_IN n       dp\_overall\_MF
  _con)                                                     LOW

  Variable inputs                                           

  [dp\_overall\_IN\_var](Modelica_Fluid_Dissipation IN\     Input record
  _PressureLoss_StraightPipe.html#Modelica.Fluid.Di _va     for function
  ssipation.PressureLoss.StraightPipe.dp_overall_IN r       dp\_overall\_MF
  _var)                                                     LOW

  Input                                                     

  [Pressure](Modelica_SIunits.html#Modelica.SIunits dp      Pressure loss
  .Pressure)                                                [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [MassFlowRate](Modelica_SIunits.html#Mo M\_FLO Output of function
  delica.SIunits.MassFlowRate)            W      dp\_overall\_MFLOW [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image32](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_overall\_IN\_con
===================================================================================================================================================================================================================================================================================

**Input record for function dp\_overall\_DP and dp\_overall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_overall\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP)
and
[dp\_overall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW).

::

Extends from
[dp\_turbulent\_IN\_con](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_con)
(Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name Default     Description
  -------------------------------------- ---- ----------- ------------------
  Straight pipe                                           

  [Roughness](Modelica_Fluid_Dissipation roug Dissipation Choice of
  _Utilities_Types.html#Modelica.Fluid.D hnes .Utilities. considering
  issipation.Utilities.Types.Roughness)  s    Types....   surface roughness

  [Diameter](Modelica_SIunits.html#Model d\_h 0.1         Hydraulic diameter
  ica.SIunits.Diameter)                  yd               [m]

  [Length](Modelica_SIunits.html#Modelic L    1           Length [m]
  a.SIunits.Length)                                       

  [Length](Modelica_SIunits.html#Modelic K    0           Roughness (average
  a.SIunits.Length)                                       height of surface
                                                          asperities) [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_overall_IN_con 
      "Input record for function dp_overall_DP and dp_overall_MFLOW"

      //straight pipe variables
      extends dp_turbulent_IN_con;


    end dp_overall_IN_con;

* * * * *

![image33](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_overall\_IN\_var
===================================================================================================================================================================================================================================================================================

**Input record for function dp\_overall\_DP and dp\_overall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_overall\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_DP)
and
[dp\_overall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_MFLOW).

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

    record dp_overall_IN_var 
      "Input record for function dp_overall_DP and dp_overall_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;


    end dp_overall_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_turbulent\_DP
========================================================================================================================================================================================

**Pressure loss of straight pipe | calculate pressure loss | turbulent
flow regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in a straight pipe for **turbulent** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_turbulent\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d)
(Geometry figure for straight pipe).

Inputs
------

  ------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- --------------
  Constant inputs                                           

  [dp\_turbulent\_IN\_con](Modelica_Fluid_Dissipati IN\     Input record
  on_PressureLoss_StraightPipe.html#Modelica.Fluid. _co     for function
  Dissipation.PressureLoss.StraightPipe.dp_turbulen n       dp\_turbulent\
  t_IN_con)                                                 _DP

  Variable inputs                                           

  [dp\_turbulent\_IN\_var](Modelica_Fluid_Dissipati IN\     Input record
  on_PressureLoss_StraightPipe.html#Modelica.Fluid. _va     for function
  Dissipation.PressureLoss.StraightPipe.dp_turbulen r       dp\_turbulent\
  t_IN_var)                                                 _DP

  Input                                                     

  [MassFlowRate](Modelica_SIunits.html#Modelica.SIu m\_     Mass flow rate
  nits.MassFlowRate)                                flo     [kg/s]
                                                    w       
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                   Name  Description
  -------------------------------------- ----- ---------------------------
  [Pressure](Modelica_SIunits.html#Model DP    Output for function
  ica.SIunits.Pressure)                        dp\_turbulent\_DP [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_turbulent\_MFLOW
===========================================================================================================================================================================================

**Pressure loss of straight pipe | calculate mass flow rate | turbulent
flow regime | surface roughness**

Information
-----------

::

Calculation of pressure loss in a straight pipe for **turbulent** flow
regime of an incompressible and single-phase fluid flow only considering
surface roughness.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_turbulent\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_turbulent).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d)
(Geometry figure for straight pipe).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- ---------------
  Constant inputs                                           

  [dp\_turbulent\_IN\_con](Modelica_Fluid_Dissipati IN\     Input record
  on_PressureLoss_StraightPipe.html#Modelica.Fluid. _co     for function
  Dissipation.PressureLoss.StraightPipe.dp_turbulen n       dp\_turbulent\_
  t_IN_con)                                                 MFLOW

  Variable inputs                                           

  [dp\_turbulent\_IN\_var](Modelica_Fluid_Dissipati IN\     Input record
  on_PressureLoss_StraightPipe.html#Modelica.Fluid. _va     for function
  Dissipation.PressureLoss.StraightPipe.dp_turbulen r       dp\_turbulent\_
  t_IN_var)                                                 MFLOW

  Input                                                     

  [Pressure](Modelica_SIunits.html#Modelica.SIunits dp      Pressure loss
  .Pressure)                                                [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                            Name    Description
  ----------------------------------------------- ------- ----------------
  [MassFlowRate](Modelica_SIunits.html#Modelica.S M\_FLOW Mass flow rate
  Iunits.MassFlowRate)                                    [kg/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image34](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_turbulent\_IN\_con
=======================================================================================================================================================================================================================================================================================

**Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_turbulent\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP)
and
[dp\_turbulent\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW).

::

Extends from
[Utilities.Records.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_Utilities_Records_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Records.PressureLoss.StraightPipe)
(Input for straight pipe).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name Default     Description
  -------------------------------------- ---- ----------- ------------------
  Straight pipe                                           

  [Roughness](Modelica_Fluid_Dissipation roug Dissipation Choice of
  _Utilities_Types.html#Modelica.Fluid.D hnes .Utilities. considering
  issipation.Utilities.Types.Roughness)  s    Types....   surface roughness

  [Diameter](Modelica_SIunits.html#Model d\_h 0.1         Hydraulic diameter
  ica.SIunits.Diameter)                  yd               [m]

  [Length](Modelica_SIunits.html#Modelic L    1           Length [m]
  a.SIunits.Length)                                       

  [Length](Modelica_SIunits.html#Modelic K    0           Roughness (average
  a.SIunits.Length)                                       height of surface
                                                          asperities) [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_turbulent_IN_con 
      "Input record for function dp_turbulent_DP and dp_turbulent_MFLOW"

      Modelica.Fluid.Dissipation.Utilities.Types.Roughness roughness=Dissipation.Utilities.Types.Roughness.Neglected 
        "Choice of considering surface roughness";

      extends Utilities.Records.PressureLoss.StraightPipe;

        SI.Length K=0 "Roughness (average height of surface asperities)";

    end dp_turbulent_IN_con;

* * * * *

![image35](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_turbulent\_IN\_var
=======================================================================================================================================================================================================================================================================================

**Input record for function dp\_turbulent\_DP and dp\_turbulent\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_turbulent\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_DP)
and
[dp\_turbulent\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_turbulent_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp\_overall\_IN\_var](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var)
(Input record for function dp\_overall\_DP and dp\_overall\_MFLOW).

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

    record dp_turbulent_IN_var 
      "Input record for function dp_turbulent_DP and dp_turbulent_MFLOW"

      extends Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_overall_IN_var;

    end dp_turbulent_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_twoPhaseOverall\_DP
==============================================================================================================================================================================================

**Pressure loss of straight pipe for two phase flow | calculate
(frictional, momentum, geodetic) pressure loss**

Information
-----------

::

Calculation of pressure loss for **two phase flow** in a horizontal
**or** vertical straight pipe for an overall flow regime considering
frictional, momentum and geodetic pressure loss.

Generally the pressure loss for two phase flow in a horizontal or a
vertical straight pipe can be calculated for the following fluid flow
regimes:

**Horizontal fluid flow** [(a) bubble flow, (b) stratified flow, (c)
wavy flow, (d) slug flow, (e) annular flow]:

**Vertical fluid flow** [(a) bubble flow, (b) plug slug flow, (c) foam
flow, (d) annular streak flow, (e) annular flow]:

[See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.StraightPipe.dp_twoPhaseOverall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.StraightPipe_d)
(Geometry figure for straight pipe).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- ---------------
  Constant inputs                                           

  [dp\_twoPhaseOverall\_IN\_con](Modelica_Fluid_Dis IN\     Input record
  sipation_PressureLoss_StraightPipe.html#Modelica. _co     for function
  Fluid.Dissipation.PressureLoss.StraightPipe.dp_tw n       dp\_twoPhaseOve
  oPhaseOverall_IN_con)                                     rall\_DP

  Variable inputs                                           

  [dp\_twoPhaseOverall\_IN\_var](Modelica_Fluid_Dis IN\     Input record
  sipation_PressureLoss_StraightPipe.html#Modelica. _va     for function
  Fluid.Dissipation.PressureLoss.StraightPipe.dp_tw r       dp\_twoPhaseOve
  oPhaseOverall_IN_var)                                     rall\_DP

  Input                                                     

  [MassFlowRate](Modelica_SIunits.html#Modelica.SIu m\_     Mass flow rate
  nits.MassFlowRate)                                flo     [kg/s]
                                                    w       
  -------------------------------------------------------------------------

Outputs
-------

  --------------------------------------------------------------------------
  Type                                         Name   Description
  -------------------------------------------- ------ ----------------------
  [Pressure](Modelica_SIunits.html#Modelica.SI DP     Two phase pressure
  units.Pressure)                                     loss [Pa]
  --------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image36](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_twoPhaseOverall\_IN\_con
===================================================================================================================================================================================================================================================================================================

**Input record for function dp\_twoPhaseOverall\_DP**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_twoPhaseOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DP).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow\_con](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_con)
(Base record for two phase Flow).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                      Name   Default   Description
  ----------------------------------------- ------ --------- -------------
  Choices                                                    

  [TwoPhaseFrictionalPressureLoss](Modelica fricti Dissipati Choice of
  _Fluid_Dissipation_Utilities_Types.html#M onalPr on.Utilit frictional
  odelica.Fluid.Dissipation.Utilities.Types essure ies.Types pressure loss
  .TwoPhaseFrictionalPressureLoss)          Loss   ....      approach

  [Roughness](Modelica_Fluid_Dissipation_Ut voidFr Dissipati Choice of
  ilities_Types.html#Modelica.Fluid.Dissipa action on.Utilit void fraction
  tion.Utilities.Types.Roughness)           Approa ies.Types approach
                                            ch     ....      

  Boolean                                   moment false     Considering
                                            umPres           momentum
                                            sureLo           pressure loss
                                            ss               

  Boolean                                   massFl false     Consider
                                            owRate           heterogeneous
                                            Correc           mass flow
                                            tion             rate
                                                             correction

  Boolean                                   geodet false     Considering
                                            icPres           geodetic
                                            sureLo           pressure loss
                                            ss               

  Geometry                                                   

  [Area](Modelica_SIunits.html#Modelica.SIu A\_cro PI\*0.1\^ Cross
  nits.Area)                                ss     2/4       sectional
                                                             area [m2]

  [Length](Modelica_SIunits.html#Modelica.S perime PI\*0.1   Wettet
  Iunits.Length)                            ter              perimeter [m]

  [Length](Modelica_SIunits.html#Modelica.S length 1         Length in
  Iunits.Length)                                             fluid flow
                                                             direction [m]

  [Angle](Modelica_SIunits.html#Modelica.SI phi    0         Tilt angle to
  units.Angle)                                               horizontal
                                                             [rad]
  ------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image37](Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.StraightPipe](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe).dp\_twoPhaseOverall\_IN\_var
===================================================================================================================================================================================================================================================================================================

**Input record for function dp\_twoPhaseOverall\_DP**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_twoPhaseOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_StraightPipe.html#Modelica.Fluid.Dissipation.PressureLoss.StraightPipe.dp_twoPhaseOverall_DP).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow\_var](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var)
(Base record for two phase flow).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name   Default        Description
  -------------------------------- ------ -------------- ------------------
  Fluid properties                                       

  Real                             x\_flo 0              Mass flow rate
                                   w\_end                quality at end of
                                                         length

  Real                             x\_flo 0              Mass flow rate
                                   w\_sta                quality at start
                                                         of length

  [Density](Modelica_SIunits.html# rho\_g                Density of gas
  Modelica.SIunits.Density)                              [kg/m3]

  [Density](Modelica_SIunits.html# rho\_l                Density of liquid
  Modelica.SIunits.Density)                              [kg/m3]

  [DynamicViscosity](Modelica_SIun eta\_g                Dynamic viscosity
  its.html#Modelica.SIunits.Dynami                       of gas [Pa.s]
  cViscosity)                                            

  [DynamicViscosity](Modelica_SIun eta\_l                Dynamic viscosity
  its.html#Modelica.SIunits.Dynami                       of liquid [Pa.s]
  cViscosity)                                            

  [SurfaceTension](Modelica_SIunit sigma                 Surface tension
  s.html#Modelica.SIunits.SurfaceT                       [N/m]
  ension)                                                

  Input                                                  

  Real                             x\_flo (x\_flow\_end  Mean mass flow
                                   w      +              rate quality over
                                          x\_flow\_sta)/ length
                                          2              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_twoPhaseOverall_IN_var 
      "Input record for function dp_twoPhaseOverall_DP"

      Real x_flow_end=0 "Mass flow rate quality at end of length";
      Real x_flow_sta=0 "Mass flow rate quality at start of length";
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.TwoPhaseFlow_var
        (                                                                           final 
          x_flow=(x_flow_end + x_flow_sta)/2);


    end dp_twoPhaseOverall_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:22 2010.
