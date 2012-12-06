% Modelica.Fluid.Dissipation.PressureLoss.General
% 
% 

[Modelica.Fluid.Dissipation.PressureLoss](Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss).General
=======================================================================================================================================

**Package for generic pressure loss calculations**

Information
-----------

::

### General

#### General pressure loss for ideal gas

Calculation of a generic pressure loss for an **ideal gas** using mean
density. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_idealGas).

#### Generic pressure loss depending on density and viscosity

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density, nominal dynamic viscosity) at an
operation point via interpolation. This generic function considers the
pressure loss law via a pressure loss exponent and the influence of
density and dynamic viscosity on pressure loss. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalDensityViscosity).

#### Generic pressure loss depending on density

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density) via interpolation from an operation
point. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalPressureLossLawDensity).

#### Generic pressure loss depending on pressure loss coefficient

Calculation of a generic pressure loss in dependence of a pressure loss
coefficient. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_pressureLossCoefficient).

#### Generic pressure loss depending on volume flow rate

Calculation of a generic pressure loss with linear or quadratic
dependence on volume flow rate. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate).

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image20](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_idealGas_DPS.png)            calculate pressure loss |
  [dp\_idealGas\_DP](Modelica_Fluid_Dissipation ideal gas | mean density
  _PressureLoss_General.html#Modelica.Fluid.Dis 
  sipation.PressureLoss.General.dp_idealGas_DP) 

  ![image21](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_idealGas_DPS.png)            calculate mass flow rate |
  [dp\_idealGas\_MFLOW](Modelica_Fluid_Dissipat ideal gas | mean density
  ion_PressureLoss_General.html#Modelica.Fluid. 
  Dissipation.PressureLoss.General.dp_idealGas_ 
  MFLOW)                                        

  ![image22](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_idealGas_IN_conS.png)        dp\_idealGas\_DP and
  [dp\_idealGas\_IN\_con](Modelica_Fluid_Dissip dp\_idealGas\_MFLOW
  ation_PressureLoss_General.html#Modelica.Flui 
  d.Dissipation.PressureLoss.General.dp_idealGa 
  s_IN_con)                                     

  ![image23](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_idealGas_IN_conS.png)        dp\_idealGas\_DP and
  [dp\_idealGas\_IN\_var](Modelica_Fluid_Dissip dp\_idealGas\_MFLOW
  ation_PressureLoss_General.html#Modelica.Flui 
  d.Dissipation.PressureLoss.General.dp_idealGa 
  s_IN_var)                                     

  ![image24](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_nominalDensityViscosity_DPS. calculate mass flow rate |
  png)                                          nominal operation point |
  [dp\_nominalDensityViscosity\_DP](Modelica_Fl pressure loss law
  uid_Dissipation_PressureLoss_General.html#Mod (exponent) | density and
  elica.Fluid.Dissipation.PressureLoss.General. dynamic viscosity
  dp_nominalDensityViscosity_DP)                dependence

  ![image25](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_nominalDensityViscosity_DPS. calculate M\_FLOW
  png)                                          (compressible) | nominal
  [dp\_nominalDensityViscosity\_MFLOW](Modelica operation point | pressure
  _Fluid_Dissipation_PressureLoss_General.html# loss law (exponent) |
  Modelica.Fluid.Dissipation.PressureLoss.Gener density and dynamic
  al.dp_nominalDensityViscosity_MFLOW)          viscosity dependence

  ![image26](Modelica.Fluid.Dissipation.Pressur Output record for function
  eLoss.General.dp_nominalDensityViscosity_IN_c dp\_nominalDensityViscosit
  onS.png)                                      y\_DP
  [dp\_nominalDensityViscosity\_IN\_con](Modeli and
  ca_Fluid_Dissipation_PressureLoss_General.htm dp\_nominalDensityViscosit
  l#Modelica.Fluid.Dissipation.PressureLoss.Gen y\_MFLOW
  eral.dp_nominalDensityViscosity_IN_con)       

  ![image27](Modelica.Fluid.Dissipation.Pressur Output record for function
  eLoss.General.dp_nominalDensityViscosity_IN_c dp\_nominalDensityViscosit
  onS.png)                                      y\_DP
  [dp\_nominalDensityViscosity\_IN\_var](Modeli and
  ca_Fluid_Dissipation_PressureLoss_General.htm dp\_nominalDensityViscosit
  l#Modelica.Fluid.Dissipation.PressureLoss.Gen y\_MFLOW
  eral.dp_nominalDensityViscosity_IN_var)       

  ![image28](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_nominalPressureLossLawDensit calculate pressure loss |
  y_DPS.png)                                    nominal operation point |
  [dp\_nominalPressureLossLawDensity\_DP](Model pressure loss law
  ica_Fluid_Dissipation_PressureLoss_General.ht (coefficient and exponent)
  ml#Modelica.Fluid.Dissipation.PressureLoss.Ge | density dependence
  neral.dp_nominalPressureLossLawDensity_DP)    

  ![image29](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_nominalPressureLossLawDensit calculate mass flow rate |
  y_DPS.png)                                    nominal operation point |
  [dp\_nominalPressureLossLawDensity\_MFLOW](Mo pressure loss law
  delica_Fluid_Dissipation_PressureLoss_General (coefficient and exponent)
  .html#Modelica.Fluid.Dissipation.PressureLoss | density dependence
  .General.dp_nominalPressureLossLawDensity_MFL 
  OW)                                           

  ![image30](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_nominalPressureLossLawDensit dp\_nominalPressureLossLaw
  y_IN_conS.png)                                Density\_DP
  [dp\_nominalPressureLossLawDensity\_IN\_con]( and
  Modelica_Fluid_Dissipation_PressureLoss_Gener dp\_nominalPressureLossLaw
  al.html#Modelica.Fluid.Dissipation.PressureLo Density\_MFLOW
  ss.General.dp_nominalPressureLossLawDensity_I 
  N_con)                                        

  ![image31](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_nominalPressureLossLawDensit dp\_nominalPressureLossLaw
  y_IN_conS.png)                                Density\_DP
  [dp\_nominalPressureLossLawDensity\_IN\_var]( and
  Modelica_Fluid_Dissipation_PressureLoss_Gener dp\_nominalPressureLossLaw
  al.html#Modelica.Fluid.Dissipation.PressureLo Density\_MFLOW
  ss.General.dp_nominalPressureLossLawDensity_I 
  N_var)                                        

  ![image32](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_pressureLossCoefficient_DPS. calculate pressure loss |
  png)                                          pressure loss coefficient
  [dp\_pressureLossCoefficient\_DP](Modelica_Fl (zeta\_TOT)
  uid_Dissipation_PressureLoss_General.html#Mod 
  elica.Fluid.Dissipation.PressureLoss.General. 
  dp_pressureLossCoefficient_DP)                

  ![image33](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_pressureLossCoefficient_DPS. calculate mass flow rate |
  png)                                          pressure loss coefficient
  [dp\_pressureLossCoefficient\_MFLOW](Modelica (zeta\_TOT)
  _Fluid_Dissipation_PressureLoss_General.html# 
  Modelica.Fluid.Dissipation.PressureLoss.Gener 
  al.dp_pressureLossCoefficient_MFLOW)          

  ![image34](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_pressureLossCoefficient_IN_c dp\_pressureLossCoefficien
  onS.png)                                      t\_DP
  [dp\_pressureLossCoefficient\_IN\_con](Modeli and
  ca_Fluid_Dissipation_PressureLoss_General.htm dp\_pressureLossCoefficien
  l#Modelica.Fluid.Dissipation.PressureLoss.Gen t\_MFLOW
  eral.dp_pressureLossCoefficient_IN_con)       

  ![image35](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_pressureLossCoefficient_IN_c dp\_pressureLossCoefficien
  onS.png)                                      t\_DP
  [dp\_pressureLossCoefficient\_IN\_var](Modeli and
  ca_Fluid_Dissipation_PressureLoss_General.htm dp\_pressureLossCoefficien
  l#Modelica.Fluid.Dissipation.PressureLoss.Gen t\_MFLOW
  eral.dp_pressureLossCoefficient_IN_var)       

  ![image36](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_volumeFlowRate_DPS.png)      calculate pressure loss |
  [dp\_volumeFlowRate\_DP](Modelica_Fluid_Dissi quadratic function
  pation_PressureLoss_General.html#Modelica.Flu (dp=a\*V\_flow\^2 +
  id.Dissipation.PressureLoss.General.dp_volume b\*V\_flow)
  FlowRate_DP)                                  

  ![image37](Modelica.Fluid.Dissipation.Pressur Generic pressure loss |
  eLoss.General.dp_volumeFlowRate_DPS.png)      calculate mass flow rate |
  [dp\_volumeFlowRate\_MFLOW](Modelica_Fluid_Di quadratic function
  ssipation_PressureLoss_General.html#Modelica. (dp=a\*V\_flow\^2 +
  Fluid.Dissipation.PressureLoss.General.dp_vol b\*V\_flow)
  umeFlowRate_MFLOW)                            

  ![image38](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_volumeFlowRate_IN_conS.png)  dp\_volumeFlowRate\_DP and
  [dp\_volumeFlowRate\_IN\_con](Modelica_Fluid_ dp\_volumeFlowRate\_MFLOW
  Dissipation_PressureLoss_General.html#Modelic 
  a.Fluid.Dissipation.PressureLoss.General.dp_v 
  olumeFlowRate_IN_con)                         

  ![image39](Modelica.Fluid.Dissipation.Pressur Input record for function
  eLoss.General.dp_volumeFlowRate_IN_varS.png)  dp\_volumeFlowRate\_DP and
  [dp\_volumeFlowRate\_IN\_var](Modelica_Fluid_ dp\_volumeFlowRate\_MFLOW
  Dissipation_PressureLoss_General.html#Modelic 
  a.Fluid.Dissipation.PressureLoss.General.dp_v 
  olumeFlowRate_IN_var)                         
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_idealGas\_DP
========================================================================================================================================================================

**Generic pressure loss | calculate pressure loss | ideal gas | mean
density**

Information
-----------

::

Calculation of a generic pressure loss for an **ideal gas** using mean
density.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_idealGas\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_idealGas).

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ---------------
  Constant inputs                                          

  [dp\_idealGas\_IN\_con](Modelica_Fluid_Dissipati IN\     Input record
  on_PressureLoss_General.html#Modelica.Fluid.Diss _co     for function
  ipation.PressureLoss.General.dp_idealGas_IN_con) n       dp\_idealGas\_D
                                                           P

  Variable inputs                                          

  [dp\_idealGas\_IN\_var](Modelica_Fluid_Dissipati IN\     Input record
  on_PressureLoss_General.html#Modelica.Fluid.Diss _va     for function
  ipation.PressureLoss.General.dp_idealGas_IN_var) r       dp\_idealGas\_D
                                                           P

  Input                                                    

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     [kg/s]
                                                   w       
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name  Description
  --------------------------------------- ----- ---------------------------
  [Pressure](Modelica_SIunits.html#Modeli DP    Output for function
  ca.SIunits.Pressure)                          dp\_idealGas\_DP [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_idealGas_DP 
      "Generic pressure loss | calculate pressure loss | ideal gas | mean density"

      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;
      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_con
        IN_con "Input record for function dp_idealGas_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_var
        IN_var "Input record for function dp_idealGas_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_idealGas_DP";

    protected 
      Real Km_internal=IN_con.Km "Coefficient for pressure loss";

      SI.Density rho_internal=IN_var.p_m/(IN_con.R_s*IN_var.T_m) "Mean density";
      SI.VolumeFlowRate V_flow=m_flow/rho_internal "Volume flow rate [m3/s]";
      SI.VolumeFlowRate V_flow_min=(IN_con.R_s/Km_internal)^(1/IN_con.exp)*
          rho_internal^(1/IN_con.exp - 1)*IN_con.dp_smooth^(1/IN_con.exp) 
        "Start of approximation for decreasing volume flow rate";

      //Documentation

    algorithm 
      DP := (Km_internal/IN_con.R_s)*(rho_internal)^(IN_con.exp - 1)*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              V_flow,
              V_flow_min,
              IN_con.exp);
    end dp_idealGas_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_idealGas\_MFLOW
===========================================================================================================================================================================

**Generic pressure loss | calculate mass flow rate | ideal gas | mean
density**

Information
-----------

::

Calculation of a generic pressure loss for an **ideal gas** using mean
density.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_idealGas\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_idealGas).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  Constant inputs                                          

  [dp\_idealGas\_IN\_con](Modelica_Fluid_Dissipati IN\     Input record for
  on_PressureLoss_General.html#Modelica.Fluid.Diss _co     function
  ipation.PressureLoss.General.dp_idealGas_IN_con) n       dp\_idealGas\_MF
                                                           LOW

  Variable inputs                                          

  [dp\_idealGas\_IN\_var](Modelica_Fluid_Dissipati IN\     Input record for
  on_PressureLoss_General.html#Modelica.Fluid.Diss _va     function
  ipation.PressureLoss.General.dp_idealGas_IN_var) r       dp\_idealGas\_MF
                                                           LOW

  Input                                                    

  [Pressure](Modelica_SIunits.html#Modelica.SIunit dp      Pressure loss
  s.Pressure)                                              [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                   Name   Description
  -------------------------------------- ------ --------------------------
  [MassFlowRate](Modelica_SIunits.html#M M\_FLO Output for function
  odelica.SIunits.MassFlowRate)          W      dp\_idealGas\_MFLOW [kg/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_idealGas_MFLOW 
      "Generic pressure loss | calculate mass flow rate | ideal gas | mean density"

      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;
      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_con
        IN_con "Input record for function dp_idealGas_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_var
        IN_var "Input record for function dp_idealGas_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_idealGas_MFLOW";

    protected 
      Real Km_internal=IN_con.Km "Coefficient for pressure loss";

      SI.Density rho_internal=IN_var.p_m/(IN_con.R_s*IN_var.T_m) "Mean density";

      //Documentation

    algorithm 
      M_FLOW := (IN_con.R_s/Km_internal)^(1/IN_con.exp)*(rho_internal)^(1/
        IN_con.exp)*Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              IN_con.dp_smooth,
              1/IN_con.exp);
    end dp_idealGas_MFLOW;

* * * * *

![image40](Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_idealGas\_IN\_con
=================================================================================================================================================================================================================================================================

**Input record for function dp\_idealGas\_DP and dp\_idealGas\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_idealGas\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DP)
and
[dp\_idealGas\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas\_con](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_con)
(Base record for generic pressure loss function | ideal gas | mean
density).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                 Name   Defa Description
                                              ult  
  ------------------------------------ ------ ---- -------------------------
  Generic variables                                

  Real                                 exp    2    Exponent of pressure loss
                                                   law

  Real                                 Km     6824 Coefficient for pressure
                                              .86  loss law
                                                   [(Pa)\^2/{(kg/s)\^exp\*K}
                                                   ]

  Fluid properties                                 

  [SpecificHeatCapacity](Modelica_SIun R\_s        Specific gas constant of
  its.html#Modelica.SIunits.SpecificHe             ideal gas [J/(kg.K)]
  atCapacity)                                      

  Linearisation                                    

  [Pressure](Modelica_SIunits.html#Mod dp\_sm 1    Start linearisation for
  elica.SIunits.Pressure)              ooth        smaller pressure loss
                                                   [Pa]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_idealGas_IN_con 
      "Input record for function dp_idealGas_DP and dp_idealGas_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_con;

      //linearisation
      SI.Pressure dp_smooth(min=Modelica.Constants.eps) = 1 
        "Start linearisation for smaller pressure loss";


    end dp_idealGas_IN_con;

* * * * *

![image41](Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_idealGas\_IN\_var
=================================================================================================================================================================================================================================================================

**Input record for function dp\_idealGas\_DP and dp\_idealGas\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_idealGas\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_DP)
and
[dp\_idealGas\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_idealGas_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas\_var](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_var)
(Base record for generic pressure loss function | ideal gas | mean
density).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name   Defaul Description
                                               t      
  ------------------------------------- ------ ------ ---------------------
  Fluid properties                                    

  [Density](Modelica_SIunits.html#Model rho\_m        Mean density of ideal
  ica.SIunits.Density)                                gas [kg/m3]

  [Temp\_K](Modelica_SIunits.html#Model T\_m          Mean temperature of
  ica.SIunits.Temp_K)                                 ideal gas [K]

  [Pressure](Modelica_SIunits.html#Mode p\_m          Mean pressure of
  lica.SIunits.Pressure)                              ideal gas [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_idealGas_IN_var 
      "Input record for function dp_idealGas_DP and dp_idealGas_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.IdealGas_var;


    end dp_idealGas_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalDensityViscosity\_DP
=======================================================================================================================================================================================

**Generic pressure loss | calculate mass flow rate | nominal operation
point | pressure loss law (exponent) | density and dynamic viscosity
dependence**

Information
-----------

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density, nominal dynamic viscosity) at an
operation point via interpolation. This generic function considers the
pressure loss law via a pressure loss exponent and the influence of
density and dynamic viscosity on pressure loss.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_nominalDensityViscosity\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalDensityViscosity).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  Constant inputs                                          

  [dp\_nominalDensityViscosity\_IN\_con](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_General.html#Mode _co     function
  lica.Fluid.Dissipation.PressureLoss.General.dp_n n       dp\_nominalDensi
  ominalDensityViscosity_IN_con)                           tyViscosity\_DP

  Variable inputs                                          

  [dp\_nominalDensityViscosity\_IN\_var](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_General.html#Mode _va     function
  lica.Fluid.Dissipation.PressureLoss.General.dp_n r       dp\_nominalDensi
  ominalDensityViscosity_IN_var)                           tyViscosity\_DP

  Input                                                    

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     [kg/s]
                                                   w       
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                               Name Description
  ---------------------------------- ---- --------------------------------
  [Pressure](Modelica_SIunits.html#M DP   Output for function
  odelica.SIunits.Pressure)               dp\_nominalDensityViscosity\_DP
                                          [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_nominalDensityViscosity_DP 
      "Generic pressure loss | calculate mass flow rate | nominal operation point | pressure loss law (exponent) | density and dynamic viscosity dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_con
        IN_con "Input record for function dp_nominalDensityViscosity_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_var
        IN_var "Input record for function dp_nominalDensityViscosity_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_nominalDensityViscosity_DP";

    protected 
      SI.MassFlowRate m_flow_smooth=(max(1, 0.01*IN_con.dp_nom)*IN_var.rho/IN_con.rho_nom
          *(1/IN_var.eta*IN_con.eta_nom)^(IN_con.exp_eta)*(1/IN_con.m_flow_nom))^(1
          /IN_con.exp) "Start of approximation for decreasing mass flow rate";

      //Documentation

    algorithm 
      DP := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              m_flow_smooth,
              IN_con.exp)*(IN_var.eta/IN_con.eta_nom)^IN_con.exp_eta*IN_con.rho_nom
        /IN_var.rho*IN_con.dp_nom*(1/IN_con.m_flow_nom)^(IN_con.exp) else 
        m_flow/IN_con.m_flow_nom*(IN_var.eta/IN_con.eta_nom)^IN_con.exp_eta*
        IN_con.rho_nom/IN_var.rho*IN_con.dp_nom;
    end dp_nominalDensityViscosity_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalDensityViscosity\_MFLOW
==========================================================================================================================================================================================

**Generic pressure loss | calculate M\_FLOW (compressible) | nominal
operation point | pressure loss law (exponent) | density and dynamic
viscosity dependence**

Information
-----------

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density, nominal dynamic viscosity) at an
operation point via interpolation. This generic function considers the
pressure loss law via a pressure loss exponent and the influence of
density and dynamic viscosity on pressure loss.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_genericDensityViscosity\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalDensityViscosity).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- -----------------
  Constant inputs                                          

  [dp\_nominalDensityViscosity\_IN\_con](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_General.html#Mode _co     function
  lica.Fluid.Dissipation.PressureLoss.General.dp_n n       dp\_nominalDensit
  ominalDensityViscosity_IN_con)                           yViscosity\_MFLOW

  Variable inputs                                          

  [dp\_nominalDensityViscosity\_IN\_var](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_General.html#Mode _va     function
  lica.Fluid.Dissipation.PressureLoss.General.dp_n r       dp\_nominalDensit
  ominalDensityViscosity_IN_var)                           yViscosity\_MFLOW

  Input                                                    

  [Pressure](Modelica_SIunits.html#Modelica.SIunit dp      Pressure loss
  s.Pressure)                                              [Pa]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                Name  Description
  ----------------------------------- ----- -------------------------------
  [MassFlowRate](Modelica_SIunits.htm M\_FL Output for function
  l#Modelica.SIunits.MassFlowRate)    OW    dp\_nominalDensityViscosity\_MF
                                            LOW
                                            [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_nominalDensityViscosity_MFLOW 
      "Generic pressure loss | calculate M_FLOW (compressible) | nominal operation point | pressure loss law (exponent) | density and dynamic viscosity dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_con
        IN_con "Input record for function dp_nominalDensityViscosity_MFLOW";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_var
        IN_var "Input record for function dp_nominalDensityViscosity_MFLOW";

      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW 
        "Output for function dp_nominalDensityViscosity_MFLOW";

      //Documentation

    algorithm 
      M_FLOW := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              0.01*IN_con.dp_nom,
              1/IN_con.exp)*(IN_con.eta_nom/IN_var.eta)^(IN_con.exp_eta/
        IN_con.exp)*(1/IN_con.dp_nom*IN_var.rho/IN_con.rho_nom)^(1/IN_con.exp)
        *IN_con.m_flow_nom else dp/IN_con.dp_nom*(IN_con.eta_nom/IN_var.eta)^
        (IN_con.exp_eta)*IN_var.rho/IN_con.rho_nom*IN_con.m_flow_nom;
    end dp_nominalDensityViscosity_MFLOW;

* * * * *

![image42](Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalDensityViscosity\_IN\_con
===============================================================================================================================================================================================================================================================================================

**Output record for function dp\_nominalDensityViscosity\_DP and
dp\_nominalDensityViscosity\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_nominalDensityViscosity\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DP)
and
[dp\_nominalDensityViscosity\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity)
(Base record for generic pressure loss function).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name   Defa Description
                                        ult  
  ------------------------------ ------ ---- -------------------------------
  Generic variables                          

  [Pressure](Modelica_SIunits.ht dp\_no 2    Nominal pressure loss (at
  ml#Modelica.SIunits.Pressure)  m           nominal values of mass flow
                                             rate and density) [Pa]

  Real                           exp    2    Exponent of pressure loss law

  [MassFlowRate](Modelica_SIunit m\_flo 1    Nominal mass flow rate (at
  s.html#Modelica.SIunits.MassFl w\_nom      nominal values of pressure loss
  owRate)                                    and density) [kg/s]

  [Density](Modelica_SIunits.htm rho\_n      Nominal density (at nominal
  l#Modelica.SIunits.Density)    om          values of mass flow rate and
                                             pressure loss) [kg/m3]

  Real                           exp\_e 1    Exponent for dynamic viscosity
                                 ta          dependence

  [DynamicViscosity](Modelica_SI eta\_n      Dynamic viscosity at nominal
  units.html#Modelica.SIunits.Dy om          pressure loss [Pa.s]
  namicViscosity)                            
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_nominalDensityViscosity_IN_con 
      "Output record for function dp_nominalDensityViscosity_DP and dp_nominalDensityViscosity_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.NominalDensityViscosity;

    end dp_nominalDensityViscosity_IN_con;

* * * * *

![image43](Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalDensityViscosity\_IN\_var
===============================================================================================================================================================================================================================================================================================

**Output record for function dp\_nominalDensityViscosity\_DP and
dp\_nominalDensityViscosity\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_nominalDensityViscosity\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_DP)
and
[dp\_nominalDensityViscosity\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalDensityViscosity_MFLOW).

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

    record dp_nominalDensityViscosity_IN_var 
      "Output record for function dp_nominalDensityViscosity_DP and dp_nominalDensityViscosity_MFLOW"

      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLoss;

    end dp_nominalDensityViscosity_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalPressureLossLawDensity\_DP
=============================================================================================================================================================================================

**Generic pressure loss | calculate pressure loss | nominal operation
point | pressure loss law (coefficient and exponent) | density
dependence**

Information
-----------

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density) via interpolation from an operation
point. This generic function considers the pressure loss law via a
nominal pressure loss (dp\_nom), a pressure loss coefficient (zeta\_TOT)
and a pressure loss law exponent (exp) as well as the influence of
density on pressure loss.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_nominalPressureLossLawDensity\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalPressureLossLawDensity).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- -----------------
  Constant inputs                                          

  [dp\_nominalPressureLossLawDensity\_IN\_con](Mod IN\     Input record for
  elica_Fluid_Dissipation_PressureLoss_General.htm _co     function
  l#Modelica.Fluid.Dissipation.PressureLoss.Genera n       dp\_nominalPressu
  l.dp_nominalPressureLossLawDensity_IN_con)               reLossLawDensity\
                                                           _DP

  Variable inputs                                          

  [dp\_nominalPressureLossLawDensity\_IN\_var](Mod IN\     Input record for
  elica_Fluid_Dissipation_PressureLoss_General.htm _va     function
  l#Modelica.Fluid.Dissipation.PressureLoss.Genera r       dp\_nominalPressu
  l.dp_nominalPressureLossLawDensity_IN_var)               reLossLawDensity\
                                                           _DP

  Input                                                    

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     [kg/s]
                                                   w       
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                            Name Description
  ------------------------------- ---- ------------------------------------
  [Pressure](Modelica_SIunits.htm DP   Output for function
  l#Modelica.SIunits.Pressure)         dp\_nominalPressureLossLawDensity\_y
                                       esAJac\_DP
                                       [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_nominalPressureLossLawDensity_DP 
      "Generic pressure loss | calculate pressure loss | nominal operation point | pressure loss law (coefficient and exponent) | density dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_con
        IN_con "Input record for function dp_nominalPressureLossLawDensity_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_var
        IN_var "Input record for function dp_nominalPressureLossLawDensity_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP 
        "Output for function dp_nominalPressureLossLawDensity_yesAJac_DP";

    protected 
      Real exp_density=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                1 - IN_con.exp else 1 "Exponent of density fraction (rho/rho_nom)";
      SI.MassFlowRate m_flow_nom=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                IN_con.m_flow_nom else IN_var.rho*IN_con.V_flow_nom 
        "Nominal mean flow velocity at operation point";

      SI.MassFlowRate m_flow_linear=(0.01*(IN_con.zeta_TOT_nom/IN_var.zeta_TOT)*(
          IN_con.rho_nom/IN_var.rho)^(exp_density)*(IN_con.A_cross/IN_con.A_cross_nom)
          ^(IN_con.exp)*IN_con.m_flow_nom)^(1/IN_con.exp) 
        "Start of approximation for decreasing mass flow rate";

      //Documentation

    algorithm 
      DP := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              m_flow_linear,
              IN_con.exp)*IN_con.dp_nom*(IN_var.zeta_TOT/IN_con.zeta_TOT_nom)
        *(IN_var.rho/IN_con.rho_nom)^(exp_density)*(IN_con.A_cross_nom/IN_con.A_cross)
        ^(IN_con.exp)*(1/IN_con.m_flow_nom)^(IN_con.exp) else IN_con.dp_nom*(
        IN_var.zeta_TOT/IN_con.zeta_TOT_nom)*(IN_var.rho/IN_con.rho_nom)^(
        exp_density)*(IN_con.A_cross_nom/IN_con.A_cross)^(1)*(m_flow/IN_con.m_flow_nom)
        ^(1);

    end dp_nominalPressureLossLawDensity_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalPressureLossLawDensity\_MFLOW
================================================================================================================================================================================================

**Generic pressure loss | calculate mass flow rate | nominal operation
point | pressure loss law (coefficient and exponent) | density
dependence**

Information
-----------

::

Calculation of a generic pressure loss in dependence of nominal fluid
variables (e.g., nominal density) via interpolation from an operation
point. This generic function considers the pressure loss law via a
nominal pressure loss (dp\_nom), a pressure loss coefficient (zeta\_TOT)
and a pressure loss law exponent (exp) as well as the influence of
density on pressure loss.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_nominalPressurelosslawDensity\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_nominalPressureLossLawDensity).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- -----------------
  Constant inputs                                          

  [dp\_nominalPressureLossLawDensity\_IN\_con](Mod IN\     Input record for
  elica_Fluid_Dissipation_PressureLoss_General.htm _co     function
  l#Modelica.Fluid.Dissipation.PressureLoss.Genera n       dp\_nominalPressu
  l.dp_nominalPressureLossLawDensity_IN_con)               reLossLawDensity\
                                                           _MFLOW

  Variable inputs                                          

  [dp\_nominalPressureLossLawDensity\_IN\_var](Mod IN\     Input record for
  elica_Fluid_Dissipation_PressureLoss_General.htm _va     function
  l#Modelica.Fluid.Dissipation.PressureLoss.Genera r       dp\_nominalPressu
  l.dp_nominalPressureLossLawDensity_IN_var)               reLossLawDensity\
                                                           _MFLOW

  Input                                                    

  [Pressure](Modelica_SIunits.html#Modelica.SIunit dp      Pressure loss
  s.Pressure)                                              [Pa]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                              Name  Description
  --------------------------------- ----- --------------------------------
  [MassFlowRate](Modelica_SIunits.h M\_FL Output for function
  tml#Modelica.SIunits.MassFlowRate OW    dp\_nominalPressurelosslawDensit
  )                                       y\_MFLOW
                                          [kg/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_nominalPressureLossLawDensity_MFLOW 
      "Generic pressure loss | calculate mass flow rate | nominal operation point | pressure loss law (coefficient and exponent) | density dependence"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_con
        IN_con "Input record for function dp_nominalPressureLossLawDensity_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_var
        IN_var "Input record for function dp_nominalPressureLossLawDensity_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW 
        "Output for function dp_nominalPressurelosslawDensity_MFLOW";

    protected 
      Real exp_density=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                1 - IN_con.exp else 1 "Exponent of density fraction (rho/rho_nom)";
      SI.MassFlowRate m_flow_nom=if IN_con.target ==Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate then 
                IN_con.m_flow_nom else IN_var.rho*IN_con.V_flow_nom 
        "Nominal mean flow velocity at operation point";

      //Documentation

    algorithm 
      M_FLOW := if IN_con.exp > 1.0 or IN_con.exp < 1.0 then 
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              0.01*IN_con.dp_nom,
              1/IN_con.exp)*IN_con.m_flow_nom*(IN_con.A_cross/IN_con.A_cross_nom)
        *(IN_con.rho_nom/IN_var.rho)^(exp_density/IN_con.exp)*((1/IN_con.dp_nom)
        *(IN_con.zeta_TOT_nom/IN_var.zeta_TOT))^(1/IN_con.exp) else IN_con.m_flow_nom
        *(IN_con.A_cross/IN_con.A_cross_nom)*(IN_con.rho_nom/IN_var.rho)^(
        exp_density/1)*((dp/IN_con.dp_nom)*(IN_con.zeta_TOT_nom/IN_var.zeta_TOT))
        ^(1/1);
    end dp_nominalPressureLossLawDensity_MFLOW;

* * * * *

![image44](Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalPressureLossLawDensity\_IN\_con
===========================================================================================================================================================================================================================================================================================================

**Input record for function dp\_nominalPressureLossLawDensity\_DP and
dp\_nominalPressureLossLawDensity\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_nominalPressureLosslawDensity\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DP)
and
[dp\_nominalPressureLosslawDensity\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity\_con](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_con)
(Base record for generic pressure loss function).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                  Name Default   Description
  ------------------------------------- ---- --------- ---------------------
  Generic variables                                    

  [MassOrVolumeFlowRate](Modelica_Fluid targ Dissipati 1 == use nominal mass
  _Dissipation_Utilities_Types.html#Mod et   on.Utilit flow rate | 2 == use
  elica.Fluid.Dissipation.Utilities.Typ      ies.Types nominal volume flow
  es.MassOrVolumeFlowRate)                   ....      rate

  [Area](Modelica_SIunits.html#Modelica A\_c A\_cross\ Cross sectional area
  .SIunits.Area)                        ross _nom      [m2]

  [Area](Modelica_SIunits.html#Modelica A\_c Modelica. Nominal cross
  .SIunits.Area)                        ross Constants sectional area [m2]
                                        \_no .pi\*0.1\ 
                                        m    ^2/4      

  [Pressure](Modelica_SIunits.html#Mode dp\_ 2         Nominal pressure loss
  lica.SIunits.Pressure)                nom            (at nominal values of
                                                       mass flow rate and
                                                       density) [Pa]

  [MassFlowRate](Modelica_SIunits.html# m\_f 1         Nominal mass flow
  Modelica.SIunits.MassFlowRate)        low\           rate (at nominal
                                        _nom           values of pressure
                                                       loss and density)
                                                       [kg/s]

  Real                                  exp  2         Exponent of pressure
                                                       loss law

  [VolumeFlowRate](Modelica_SIunits.htm V\_f m\_flow\_ Nominal volume flow
  l#Modelica.SIunits.VolumeFlowRate)    low\ nom/rho\_ rate (at nominal
                                        _nom nom       values of pressure
                                                       loss and density)
                                                       [m3/s]

  [Density](Modelica_SIunits.html#Model rho\           Nominal density (at
  ica.SIunits.Density)                  _nom           nominal values of
                                                       mass flow rate and
                                                       pressure loss)
                                                       [kg/m3]

  [PressureLossCoefficient](Modelica_Fl zeta 0.02\*1/0 Nominal pressure loss
  uid_Dissipation_Utilities_Types.html# \_TO .1        coefficient (for
  Modelica.Fluid.Dissipation.Utilities. T\_n           nominal values) [1]
  Types.PressureLossCoefficient)        om             
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_nominalPressureLossLawDensity_IN_con 
      "Input record for function dp_nominalPressureLossLawDensity_DP and dp_nominalPressureLossLawDensity_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_con;

    end dp_nominalPressureLossLawDensity_IN_con;

* * * * *

![image45](Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_nominalPressureLossLawDensity\_IN\_var
===========================================================================================================================================================================================================================================================================================================

**Input record for function dp\_nominalPressureLossLawDensity\_DP and
dp\_nominalPressureLossLawDensity\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_nominalPressureLosslawDensity\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_DP)
and
[dp\_nominalPressureLosslawDensity\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_nominalPressureLossLawDensity_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity\_var](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_var)
(Base record for generic pressure loss function).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                                Name Defa Description
                                                           ult  
  --------------------------------------------------- ---- ---- -----------
  Generic variables                                             

  [PressureLossCoefficient](Modelica_Fluid_Dissipatio zeta 0.2  Pressure
  n_Utilities_Types.html#Modelica.Fluid.Dissipation.U \_TO      loss
  tilities.Types.PressureLossCoefficient)             T         coefficient
                                                                [1]

  Fluid properties                                              

  [Density](Modelica_SIunits.html#Modelica.SIunits.De rho       Density of
  nsity)                                                        fluid
                                                                [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_nominalPressureLossLawDensity_IN_var 
      "Input record for function dp_nominalPressureLossLawDensity_DP and dp_nominalPressureLossLawDensity_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.NominalPressureLossLawDensity_var;

      //fluid property variables
      SI.Density rho "Density of fluid";

    end dp_nominalPressureLossLawDensity_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_pressureLossCoefficient\_DP
=======================================================================================================================================================================================

**Generic pressure loss | calculate pressure loss | pressure loss
coefficient (zeta\_TOT)**

Information
-----------

::

Calculation of a generic pressure loss in dependence of a pressure loss
coefficient.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_pressureLossCoefficient\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_pressureLossCoefficient).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                               Nam Def Description
                                                     e   aul 
                                                         t   
  -------------------------------------------------- --- --- --------------
  Constant inputs                                            

  [dp\_pressureLossCoefficient\_IN\_con](Modelica_Fl IN\     Input record
  uid_Dissipation_PressureLoss_General.html#Modelica _co     for
  .Fluid.Dissipation.PressureLoss.General.dp_pressur n       dp\_pressureLo
  eLossCoefficient_IN_con)                                   ssCoefficient\
                                                             _DP

  Variable inputs                                            

  [dp\_pressureLossCoefficient\_IN\_var](Modelica_Fl IN\     Input record
  uid_Dissipation_PressureLoss_General.html#Modelica _va     for
  .Fluid.Dissipation.PressureLoss.General.dp_pressur r       dp\_pressureLo
  eLossCoefficient_IN_var)                                   ssCoefficient\
                                                             _DP

  Input                                                      

  [MassFlowRate](Modelica_SIunits.html#Modelica.SIun m\_     Mass flow rate
  its.MassFlowRate)                                  flo     [kg/s]
                                                     w       
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                               Name Description
  ---------------------------------- ---- --------------------------------
  [Pressure](Modelica_SIunits.html#M DP   Output for function
  odelica.SIunits.Pressure)               dp\_pressureLossCoefficient\_DP
                                          [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_pressureLossCoefficient_DP 
      "Generic pressure loss | calculate pressure loss | pressure loss coefficient (zeta_TOT)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_con
        IN_con "Input record for dp_pressureLossCoefficient_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_var
        IN_var "Input record for dp_pressureLossCoefficient_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_pressureLossCoefficient_DP";

      //Documentation

    algorithm 
      DP := 0.5*IN_var.zeta_TOT*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              (IN_con.dp_smooth/(0.5*IN_var.zeta_TOT*IN_var.rho))^0.5*IN_var.rho
          *IN_con.A_cross,
              2)/(IN_var.rho*(IN_con.A_cross)^2);
    end dp_pressureLossCoefficient_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_pressureLossCoefficient\_MFLOW
==========================================================================================================================================================================================

**Generic pressure loss | calculate mass flow rate | pressure loss
coefficient (zeta\_TOT)**

Information
-----------

::

Calculation of a generic pressure loss in dependence of a pressure loss
coefficient.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_pressureLossCoefficient\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_pressureLossCoefficient).

::

Inputs
------

  --------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- -----------------
  Constant inputs                                          

  [dp\_pressureLossCoefficient\_IN\_con](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_General.html#Mode _co     function
  lica.Fluid.Dissipation.PressureLoss.General.dp_p n       dp\_pressureLossC
  ressureLossCoefficient_IN_con)                           oefficient\_MFLOW

  Variable inputs                                          

  [dp\_pressureLossCoefficient\_IN\_var](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_General.html#Mode _va     function
  lica.Fluid.Dissipation.PressureLoss.General.dp_p r       dp\_pressureLossC
  ressureLossCoefficient_IN_var)                           oefficient\_MFLOW

  Input                                                    

  [Pressure](Modelica_SIunits.html#Modelica.SIunit dp      Pressure loss
  s.Pressure)                                              [Pa]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                               Name  Description
  ---------------------------------- ----- -------------------------------
  [MassFlowRate](Modelica_SIunits.ht M\_FL Output for function
  ml#Modelica.SIunits.MassFlowRate)  OW    dp\_pressureLossCoefficientt\_M
                                           FLOW
                                           [kg/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_pressureLossCoefficient_MFLOW 
      "Generic pressure loss | calculate mass flow rate | pressure loss coefficient (zeta_TOT)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_con
        IN_con "Input record for function dp_pressureLossCoefficient_MFLOW";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_var
        IN_var "Input record for function dp_pressureLossCoefficient_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW 
        "Output for function dp_pressureLossCoefficientt_MFLOW";

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*IN_con.A_cross*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              IN_con.dp_smooth,
              0.5)/(0.5*IN_var.zeta_TOT*IN_var.rho)^0.5;
    end dp_pressureLossCoefficient_MFLOW;

* * * * *

![image46](Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_pressureLossCoefficient\_IN\_con
===============================================================================================================================================================================================================================================================================================

**Input record for function dp\_pressureLossCoefficient\_DP and
dp\_pressureLossCoefficient\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_pressureLossCoefficient\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DP)
and
[dp\_pressureLossCoefficient\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_MFLOW).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                        Name   Default        Description
  --------------------------- ------ -------------- ------------------------
  Generic variables                                 

  [Area](Modelica_SIunits.htm A\_cro Modelica.Const Cross sectional area
  l#Modelica.SIunits.Area)    ss     ants.pi\*0.1\^ [m2]
                                     2/4            

  Linearisation                                     

  [Pressure](Modelica_SIunits dp\_sm 1              Start linearisation for
  .html#Modelica.SIunits.Pres ooth                  decreasing pressure loss
  sure)                                             [Pa]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_pressureLossCoefficient_IN_con 
      "Input record for function dp_pressureLossCoefficient_DP and dp_pressureLossCoefficient_MFLOW"
      extends Modelica.Icons.Record;

      //generic variables
      SI.Area A_cross=Modelica.Constants.pi*0.1^2/4 "Cross sectional area";

      //linearisation
      SI.Pressure dp_smooth=1 "Start linearisation for decreasing pressure loss";

    end dp_pressureLossCoefficient_IN_con;

* * * * *

![image47](Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_pressureLossCoefficient\_IN\_var
===============================================================================================================================================================================================================================================================================================

**Input record for function dp\_pressureLossCoefficient\_DP and
dp\_pressureLossCoefficient\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_pressureLossCoefficient\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_DP)
and
[dp\_pressureLossCoefficient\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_pressureLossCoefficient_MFLOW).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                               Name Defau Description
                                                          lt    
  -------------------------------------------------- ---- ----- -----------
  Generic variables                                             

  [PressureLossCoefficient](Modelica_Fluid_Dissipati zeta 0.02\ Pressure
  on_Utilities_Types.html#Modelica.Fluid.Dissipation \_TO *1/0. loss
  .Utilities.Types.PressureLossCoefficient)          T    1     coefficient
                                                                [1]

  FluidProperties                                               

  [Density](Modelica_SIunits.html#Modelica.SIunits.D rho        Density of
  ensity)                                                       fluid
                                                                [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_pressureLossCoefficient_IN_var 
      "Input record for function dp_pressureLossCoefficient_DP and dp_pressureLossCoefficient_MFLOW"
      extends Modelica.Icons.Record;

      //generic variables
      TYP.PressureLossCoefficient zeta_TOT=0.02*1/0.1 "Pressure loss coefficient";

      //fluid property variables
      SI.Density rho "Density of fluid";

    end dp_pressureLossCoefficient_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_volumeFlowRate\_DP
==============================================================================================================================================================================

**Generic pressure loss | calculate pressure loss | quadratic function
(dp=a\*V\_flow\^2 + b\*V\_flow)**

Information
-----------

::

Calculation of a generic pressure loss with linear or quadratic
dependence on volume flow rate. The function can be used to calculate
pressure loss at known mass flow rate **or** mass flow rate at known
pressure loss.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_volumeFlowRate\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate).

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ---------------
  Constant inputs                                          

  [dp\_volumeFlowRate\_IN\_con](Modelica_Fluid_Dis IN\     Input record
  sipation_PressureLoss_General.html#Modelica.Flui _co     for function
  d.Dissipation.PressureLoss.General.dp_volumeFlow n       dp\_volumeFlowR
  Rate_IN_con)                                             ate\_DP

  Variable inputs                                          

  [dp\_volumeFlowRate\_IN\_var](Modelica_Fluid_Dis IN\     Input record
  sipation_PressureLoss_General.html#Modelica.Flui _va     for function
  d.Dissipation.PressureLoss.General.dp_volumeFlow r       dp\_volumeFlowR
  Rate_IN_var)                                             ate\_DP

  Input                                                    

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     [kg/s]
                                                   w       
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Pressure](Modelica_SIunits.html#Mode DP    Output for function
  lica.SIunits.Pressure)                      dp\_volumeFlowRate\_DP [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_volumeFlowRate_DP 
      "Generic pressure loss | calculate pressure loss | quadratic function (dp=a*V_flow^2 + b*V_flow)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con
        IN_con "Input record for function dp_volumeFlowRate_DP";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var
        IN_var "Input record for function dp_volumeFlowRate_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Output for function dp_volumeFlowRate_DP";

    protected 
      Real a=max(Modelica.Constants.eps, abs(IN_con.a));
      Real b=max(Modelica.Constants.eps, abs(IN_con.b));

      SI.VolumeFlowRate V_flow=m_flow/max(Modelica.Constants.eps, IN_var.rho) 
        "Volume flow rate";
      SI.Pressure dp_min=IN_con.dp_min 
        "Start of approximation for decreasing pressure loss";
      SI.VolumeFlowRate V_flow_smooth=if IN_con.a > 0 then -(b/(2*a) + ((-b/(2*a))^
          2 + dp_min/a)^0.5) else dp_min/b 
        "Start of approximation for decreasing volume flow rate";

      //Documentation

    algorithm 
      DP := a*Dissipation.Utilities.Functions.General.SmoothPower(
              V_flow,
              V_flow_smooth,
              2) + b*V_flow;
    end dp_volumeFlowRate_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_volumeFlowRate\_MFLOW
=================================================================================================================================================================================

**Generic pressure loss | calculate mass flow rate | quadratic function
(dp=a\*V\_flow\^2 + b\*V\_flow)**

Information
-----------

::

Calculation of a generic pressure loss with linear or quadratic
dependence on volume flow rate. The function can be used to calculate
pressure loss at known mass flow rate **or** mass flow rate at known
pressure loss.

Generally this function is numerically best used for the **compressible
case** if the pressure loss (dp) is known (out of pressures as state
variable) and the mass flow rate (M\_FLOW) has to be calculated. On the
other hand the function
[dp\_volumeFlowRate\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP)
is numerically best used for the **incompressible case**, where the mass
flow rate (m\_flow) is known (as state variable) in the used model and
the corresponding pressure loss (DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.General.dp_volumeFlowRate).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  Constant inputs                                          

  [dp\_volumeFlowRate\_IN\_con](Modelica_Fluid_Dis IN\     Input record for
  sipation_PressureLoss_General.html#Modelica.Flui _co     function
  d.Dissipation.PressureLoss.General.dp_volumeFlow n       dp\_volumeFlowRa
  Rate_IN_con)                                             te\_MFLOW

  Variable inputs                                          

  [dp\_volumeFlowRate\_IN\_var](Modelica_Fluid_Dis IN\     Input record for
  sipation_PressureLoss_General.html#Modelica.Flui _va     function
  d.Dissipation.PressureLoss.General.dp_volumeFlow r       dp\_volumeFlowRa
  Rate_IN_var)                                             te\_MFLOW

  Input                                                    

  [Pressure](Modelica_SIunits.html#Modelica.SIunit dp      Pressure loss
  s.Pressure)                                              [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name   Description
  ------------------------------------- ------ ----------------------------
  [MassFlowRate](Modelica_SIunits.html# M\_FLO Output for function
  Modelica.SIunits.MassFlowRate)        W      dp\_volumeFlowRate\_MFLOW
                                               [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_volumeFlowRate_MFLOW 
      "Generic pressure loss | calculate mass flow rate | quadratic function (dp=a*V_flow^2 + b*V_flow)"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.General;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_con
        IN_con "Input record for function dp_volumeFlowRate_MFLOW";

      input Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_var
        IN_var "Input record for function dp_volumeFlowRate_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Output for function dp_volumeFlowRate_MFLOW";

    protected 
      Real a=max(Modelica.Constants.eps, abs(IN_con.a));
      Real b=max(Modelica.Constants.eps, abs(IN_con.b));

      SI.Pressure dp_min=IN_con.dp_min 
        "Start of approximation for decreasing pressure loss";

      //Documentation

    algorithm 
      M_FLOW := IN_var.rho*(-b/(2*a) +
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              (b/(2*a))^2 + (1/a)*dp,
              (b/(2*a))^2 + (1/a)*dp_min,
              0.5));
    end dp_volumeFlowRate_MFLOW;

* * * * *

![image48](Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_volumeFlowRate\_IN\_con
=============================================================================================================================================================================================================================================================================

**Input record for function dp\_volumeFlowRate\_DP and
dp\_volumeFlowRate\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_volumeFlowRate\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP)
and
[dp\_volumeFlowRate\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW)
(Base record for generic pressure loss function | quadratic function
(dp=a\*Vdot\^2 + b\*Vdot)).

Parameters
----------

  -------------------------------------------------------------------------
  Type              Name    Default   Description
  ----------------- ------- --------- -------------------------------------
  Generic variables                   

  Real              a       15        Coefficient for quadratic term
                                      [(Pa.s2)/m6]

  Real              b       0         Coefficient for linear term
                                      [(Pa.s)/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_volumeFlowRate_IN_con 
      "Input record for function dp_volumeFlowRate_DP and dp_volumeFlowRate_MFLOW"

      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.QuadraticVFLOW;

      SI.Pressure dp_min=0.1 "Start of approximation for decreasing pressure loss";


    end dp_volumeFlowRate_IN_con;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.General](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General).dp\_volumeFlowRate\_IN\_var
===================================================================================================================================================================================

**Input record for function dp\_volumeFlowRate\_DP and
dp\_volumeFlowRate\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_volumeFlowRate\_DP](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_DP)
and
[dp\_volumeFlowRate\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_General.html#Modelica.Fluid.Dissipation.PressureLoss.General.dp_volumeFlowRate_MFLOW).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name  Default Description
  ---------------------------------------- ----- ------- ------------------
  Fluid properties                                       

  [Density](Modelica_SIunits.html#Modelica rho           Density of fluid
  .SIunits.Density)                                      [kg/m3]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_volumeFlowRate_IN_var 
      "Input record for function dp_volumeFlowRate_DP and dp_volumeFlowRate_MFLOW"

      SI.Density rho "Density of fluid";

    end dp_volumeFlowRate_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:22 2010.
