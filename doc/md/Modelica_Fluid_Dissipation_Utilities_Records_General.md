% Modelica.Fluid.Dissipation.Utilities.Records.General
% 
% 

[Modelica.Fluid.Dissipation.Utilities.Records](Modelica_Fluid_Dissipation_Utilities_Records.html#Modelica.Fluid.Dissipation.Utilities.Records).General
======================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                  Description
  ----------------------------------------------------- ------------------
  ![image13](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         fluid properties
  [PressureLoss](Modelica_Fluid_Dissipation_Utilities_R for pressure loss
  ecords_General.html#Modelica.Fluid.Dissipation.Utilit 
  ies.Records.General.PressureLoss)                     

  ![image14](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         fluid properties
  [FluidProperties](Modelica_Fluid_Dissipation_Utilitie 
  s_Records_General.html#Modelica.Fluid.Dissipation.Uti 
  lities.Records.General.FluidProperties)               

  ![image15](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [IdealGas\_con](Modelica_Fluid_Dissipation_Utilities_ loss function |
  Records_General.html#Modelica.Fluid.Dissipation.Utili ideal gas | mean
  ties.Records.General.IdealGas_con)                    density

  ![image16](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [IdealGas\_var](Modelica_Fluid_Dissipation_Utilities_ loss function |
  Records_General.html#Modelica.Fluid.Dissipation.Utili ideal gas | mean
  ties.Records.General.IdealGas_var)                    density

  ![image17](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [NominalDensityViscosity](Modelica_Fluid_Dissipation_ loss function
  Utilities_Records_General.html#Modelica.Fluid.Dissipa 
  tion.Utilities.Records.General.NominalDensityViscosit 
  y)                                                    

  ![image18](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [NominalPressureLossLawDensity\_con](Modelica_Fluid_D loss function
  issipation_Utilities_Records_General.html#Modelica.Fl 
  uid.Dissipation.Utilities.Records.General.NominalPres 
  sureLossLawDensity_con)                               

  ![image19](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [NominalPressureLossLawDensity\_var](Modelica_Fluid_D loss function
  issipation_Utilities_Records_General.html#Modelica.Fl 
  uid.Dissipation.Utilities.Records.General.NominalPres 
  sureLossLawDensity_var)                               

  ![image20](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [QuadraticVFLOW](Modelica_Fluid_Dissipation_Utilities loss function |
  _Records_General.html#Modelica.Fluid.Dissipation.Util quadratic function
  ities.Records.General.QuadraticVFLOW)                 (dp=a\*Vdot\^2 +
                                                        b\*Vdot)

  ![image21](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         two phase Flow
  [TwoPhaseFlow\_con](Modelica_Fluid_Dissipation_Utilit 
  ies_Records_General.html#Modelica.Fluid.Dissipation.U 
  tilities.Records.General.TwoPhaseFlow_con)            

  ![image22](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         two phase flow
  [TwoPhaseFlow\_var](Modelica_Fluid_Dissipation_Utilit 
  ies_Records_General.html#Modelica.Fluid.Dissipation.U 
  tilities.Records.General.TwoPhaseFlow_var)            

  ![image23](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [IdealGas](Modelica_Fluid_Dissipation_Utilities_Recor loss function |
  ds_General.html#Modelica.Fluid.Dissipation.Utilities. ideal gas | mean
  Records.General.IdealGas)                             density

  ![image24](Modelica.Fluid.Dissipation.Utilities.Recor Base record for
  ds.General.PressureLossS.png)                         generic pressure
  [NominalPressureLossLawDensity](Modelica_Fluid_Dissip loss function
  ation_Utilities_Records_General.html#Modelica.Fluid.D 
  issipation.Utilities.Records.General.NominalPressureL 
  ossLawDensity)                                        

  ![image25](Modelica.Fluid.Dissipation.Utilities.Recor base record for
  ds.General.PressureLossS.png)                         two phase Flow
  [TwoPhaseFlow](Modelica_Fluid_Dissipation_Utilities_R 
  ecords_General.html#Modelica.Fluid.Dissipation.Utilit 
  ies.Records.General.TwoPhaseFlow)                     
  ------------------------------------------------------------------------

* * * * *

![image26](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).PressureLoss
======================================================================================================================================================================================================================================================================

**Base record for fluid properties for pressure loss**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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

    record PressureLoss 
      "Base record for fluid properties for pressure loss"
      extends Modelica.Icons.Record;

      SI.DynamicViscosity eta "Dynamic viscosity of fluid";
      SI.Density rho "Density of fluid";
    end PressureLoss;

* * * * *

![image27](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).FluidProperties
=========================================================================================================================================================================================================================================================================

**Base record for fluid properties**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                      Nam Def Description
                                            e   aul 
                                                t   
  ----------------------------------------- --- --- ----------------------
  Fluid properties                                  

  [SpecificHeatCapacityAtConstantPressure]( cp      Specific heat capacity
  Modelica_SIunits.html#Modelica.SIunits.Sp         of fluid at constant
  ecificHeatCapacityAtConstantPressure)             pressure [J/(kg.K)]

  [DynamicViscosity](Modelica_SIunits.html# eta     Dynamic viscosity of
  Modelica.SIunits.DynamicViscosity)                fluid [Pa.s]

  [ThermalConductivity](Modelica_SIunits.ht lam     Thermal conductivity
  ml#Modelica.SIunits.ThermalConductivity)  bda     of fluid [W/(m.K)]

  [Density](Modelica_SIunits.html#Modelica. rho     Density of fluid
  SIunits.Density)                                  [kg/m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record FluidProperties "Base record for fluid properties"
      extends Modelica.Icons.Record;

      SI.SpecificHeatCapacityAtConstantPressure cp 
        "Specific heat capacity of fluid at constant pressure";

      SI.DynamicViscosity eta "Dynamic viscosity of fluid";

      SI.ThermalConductivity lambda "Thermal conductivity of fluid";

      SI.Density rho "Density of fluid";
    end FluidProperties;

* * * * *

![image28](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).IdealGas\_con
=======================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function | ideal gas | mean
density**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Nam Defa Description
                                        e   ult  
  ------------------------------------- --- ---- --------------------------
  Generic variables                              

  Real                                  exp 2    Exponent of pressure loss
                                                 law

  Real                                  Km  6824 Coefficient for pressure
                                            .86  loss law
                                                 [(Pa)\^2/{(kg/s)\^exp\*K}]

  Fluid properties                               

  [SpecificHeatCapacity](Modelica_SIuni R\_      Specific gas constant of
  ts.html#Modelica.SIunits.SpecificHeat s        ideal gas [J/(kg.K)]
  Capacity)                                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record IdealGas_con 
      "Base record for generic pressure loss function | ideal gas | mean density"
      extends Modelica.Icons.Record;

      Real exp=2 "Exponent of pressure loss law";
      SI.SpecificHeatCapacity R_s "Specific gas constant of ideal gas";
      Real Km=6824.86 "Coefficient for pressure loss law [(Pa)^2/{(kg/s)^exp*K}]";

    end IdealGas_con;

* * * * *

![image29](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).IdealGas\_var
=======================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function | ideal gas | mean
density**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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

    record IdealGas_var 
      "Base record for generic pressure loss function | ideal gas | mean density"
      extends Modelica.Icons.Record;

      SI.Density rho_m "Mean density of ideal gas";
      SI.Temp_K T_m "Mean temperature of ideal gas";
      SI.Pressure p_m "Mean pressure of ideal gas";

    end IdealGas_var;

* * * * *

![image30](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).NominalDensityViscosity
=================================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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

    record NominalDensityViscosity 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      SI.Pressure dp_nom=2 
        "Nominal pressure loss (at nominal values of mass flow rate and density)";
      Real exp=2 "Exponent of pressure loss law";
      SI.MassFlowRate m_flow_nom=1 
        "Nominal mass flow rate (at nominal values of pressure loss and density)";
      SI.Density rho_nom 
        "Nominal density (at nominal values of mass flow rate and pressure loss)";
      Real exp_eta=1 "Exponent for dynamic viscosity dependence";
      SI.DynamicViscosity eta_nom "Dynamic viscosity at nominal pressure loss";

    end NominalDensityViscosity;

* * * * *

![image31](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).NominalPressureLossLawDensity\_con
============================================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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

    record NominalPressureLossLawDensity_con 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      //NominalMassFlowRate
      Modelica.Fluid.Dissipation.Utilities.Types.MassOrVolumeFlowRate
        target =                                                             Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate 
        "1 == use nominal mass flow rate | 2 == use nominal volume flow rate";

      SI.Area A_cross=A_cross_nom "Cross sectional area";
      SI.Area A_cross_nom=Modelica.Constants.pi*0.1^2/4 
        "Nominal cross sectional area";

      SI.Pressure dp_nom=2 
        "Nominal pressure loss (at nominal values of mass flow rate and density)";
      SI.MassFlowRate m_flow_nom=1 
        "Nominal mass flow rate (at nominal values of pressure loss and density)";
      Real exp=2 "Exponent of pressure loss law";

      SI.VolumeFlowRate V_flow_nom=m_flow_nom/rho_nom 
        "Nominal volume flow rate (at nominal values of pressure loss and density)";
      SI.Density rho_nom 
        "Nominal density (at nominal values of mass flow rate and pressure loss)";

      Types.PressureLossCoefficient zeta_TOT_nom=0.02*1/0.1 
        "Nominal pressure loss coefficient (for nominal values)";

    end NominalPressureLossLawDensity_con;

* * * * *

![image32](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).NominalPressureLossLawDensity\_var
============================================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record NominalPressureLossLawDensity_var 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      TYP.PressureLossCoefficient zeta_TOT=0.2 "Pressure loss coefficient";

    end NominalPressureLossLawDensity_var;

* * * * *

![image33](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).QuadraticVFLOW
========================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function | quadratic function
(dp=a\*Vdot\^2 + b\*Vdot)**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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

    record QuadraticVFLOW 
      "Base record for generic pressure loss function | quadratic function (dp=a*Vdot^2 + b*Vdot)"

      extends Modelica.Icons.Record;

      Real a(unit="(Pa.s2)/m6") = 15 "Coefficient for quadratic term";
      Real b(unit="(Pa.s)/m3") = 0 "Coefficient for linear term";

    end QuadraticVFLOW;

* * * * *

![image34](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).TwoPhaseFlow\_con
===========================================================================================================================================================================================================================================================================

**Base record for two phase Flow**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name    Default  Description
  ---------------------------------- ------- -------- ---------------------
  Geometry                                            

  [Area](Modelica_SIunits.html#Model A\_cros PI\*0.1\ Cross sectional area
  ica.SIunits.Area)                  s       ^2/4     [m2]

  [Length](Modelica_SIunits.html#Mod perimet PI\*0.1  Wettet perimeter [m]
  elica.SIunits.Length)              er               

  [Length](Modelica_SIunits.html#Mod length  1        Length in fluid flow
  elica.SIunits.Length)                               direction [m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record TwoPhaseFlow_con "Base record for two phase Flow"
      extends Modelica.Icons.Record;

      SI.Area A_cross=PI*0.1^2/4 "Cross sectional area";
      SI.Length perimeter=PI*0.1 "Wettet perimeter";
      SI.Length length=1 "Length in fluid flow direction";

    end TwoPhaseFlow_con;

* * * * *

![image35](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).TwoPhaseFlow\_var
===========================================================================================================================================================================================================================================================================

**Base record for two phase flow**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name  Defau Description
                                                lt    
  --------------------------------------- ----- ----- ---------------------
  Fluid properties                                    

  [Density](Modelica_SIunits.html#Modelic rho\_       Density of gas
  a.SIunits.Density)                      g           [kg/m3]

  [Density](Modelica_SIunits.html#Modelic rho\_       Density of liquid
  a.SIunits.Density)                      l           [kg/m3]

  [DynamicViscosity](Modelica_SIunits.htm eta\_       Dynamic viscosity of
  l#Modelica.SIunits.DynamicViscosity)    g           gas [Pa.s]

  [DynamicViscosity](Modelica_SIunits.htm eta\_       Dynamic viscosity of
  l#Modelica.SIunits.DynamicViscosity)    l           liquid [Pa.s]

  [SurfaceTension](Modelica_SIunits.html# sigma       Surface tension [N/m]
  Modelica.SIunits.SurfaceTension)                    

  Input                                               

  Real                                    x\_fl 0     Mean mass flow rate
                                          ow          quality over length
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record TwoPhaseFlow_var "Base record for two phase flow"
      extends Modelica.Icons.Record;

      SI.Density rho_g "Density of gas";
      SI.Density rho_l "Density of liquid";
      SI.DynamicViscosity eta_g "Dynamic viscosity of gas";
      SI.DynamicViscosity eta_l "Dynamic viscosity of liquid";
      SI.SurfaceTension sigma "Surface tension";

      //input variables
      Real x_flow=0 "Mean mass flow rate quality over length";
    end TwoPhaseFlow_var;

* * * * *

![image36](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).IdealGas
==================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function | ideal gas | mean
density**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name Default      Description
  -------------------------------- ---- ------------ ----------------------
  Generic variables                                  

  Real                             exp  2            Exponent of pressure
                                                     loss law

  Real                             Km   R\_s\*(2e3)/ Coefficient for
                                        ((10)\^exp/r pressure loss law
                                        ho\_m)       [(Pa)\^2/{(kg/s)\^exp\
                                                     *K}]

  Fluid properties                                   

  [SpecificHeatCapacity](Modelica_ R\_s              Specific gas constant
  SIunits.html#Modelica.SIunits.Sp                   of ideal gas
  ecificHeatCapacity)                                [J/(kg.K)]

  [Density](Modelica_SIunits.html# rho\ p\_m/(R\_s\* Mean density of ideal
  Modelica.SIunits.Density)        _m   T\_m)        gas [kg/m3]

  [Temp\_K](Modelica_SIunits.html# T\_m              Mean temperature of
  Modelica.SIunits.Temp_K)                           ideal gas [K]

  [Pressure](Modelica_SIunits.html p\_m              Mean pressure of ideal
  #Modelica.SIunits.Pressure)                        gas [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record IdealGas 
      "Base record for generic pressure loss function | ideal gas | mean density"
      extends Modelica.Icons.Record;

      parameter Real exp(min=Modelica.Constants.eps) = 2 
        "Exponent of pressure loss law";
      parameter SI.SpecificHeatCapacity R_s(min=1) 
        "Specific gas constant of ideal gas";

      Real Km(min=Modelica.Constants.eps) = R_s*(2e3)/((10)^exp/rho_m) 
        "Coefficient for pressure loss law [(Pa)^2/{(kg/s)^exp*K}]";
      SI.Density rho_m=p_m/(R_s*T_m) "Mean density of ideal gas";
      SI.Temp_K T_m "Mean temperature of ideal gas";
      SI.Pressure p_m "Mean pressure of ideal gas";

    end IdealGas;

* * * * *

![image37](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).NominalPressureLossLawDensity
=======================================================================================================================================================================================================================================================================================

**Base record for generic pressure loss function**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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

  [PressureLossCoefficient](Modelica_Fl zeta zeta\_TOT Pressure loss
  uid_Dissipation_Utilities_Types.html# \_TO \_nom     coefficient [1]
  Modelica.Fluid.Dissipation.Utilities. T              
  Types.PressureLossCoefficient)                       

  [PressureLossCoefficient](Modelica_Fl zeta 0.02\*1/0 Nominal pressure loss
  uid_Dissipation_Utilities_Types.html# \_TO .1        coefficient (for
  Modelica.Fluid.Dissipation.Utilities. T\_n           nominal values) [1]
  Types.PressureLossCoefficient)        om             
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record NominalPressureLossLawDensity 
      "Base record for generic pressure loss function"

      extends Modelica.Icons.Record;

      //NominalMassFlowRate
      Modelica.Fluid.Dissipation.Utilities.Types.MassOrVolumeFlowRate
        target =                                                             Dissipation.Utilities.Types.MassOrVolumeFlowRate.MassFlowRate 
        "1 == use nominal mass flow rate | 2 == use nominal volume flow rate";

      parameter SI.Area A_cross=A_cross_nom "Cross sectional area";
      parameter SI.Area A_cross_nom=Modelica.Constants.pi*0.1^2/4 
        "Nominal cross sectional area";

      parameter SI.Pressure dp_nom(min=Modelica.Constants.eps) = 2 
        "Nominal pressure loss (at nominal values of mass flow rate and density)";
      parameter SI.MassFlowRate m_flow_nom(min=Modelica.Constants.eps) = 1 
        "Nominal mass flow rate (at nominal values of pressure loss and density)";
      parameter Real exp(min=Modelica.Constants.eps) = 2 
        "Exponent of pressure loss law";

      SI.VolumeFlowRate V_flow_nom(min=Modelica.Constants.eps) = m_flow_nom/rho_nom 
        "Nominal volume flow rate (at nominal values of pressure loss and density)";
      SI.Density rho_nom(min=Modelica.Constants.eps) 
        "Nominal density (at nominal values of mass flow rate and pressure loss)";

      Types.PressureLossCoefficient zeta_TOT=zeta_TOT_nom 
        "Pressure loss coefficient";
      parameter Types.PressureLossCoefficient zeta_TOT_nom=0.02*1/0.1 
        "Nominal pressure loss coefficient (for nominal values)";

    end NominalPressureLossLawDensity;

* * * * *

![image38](Modelica.Fluid.Dissipation.Utilities.Records.General.PressureLossI.png) [Modelica.Fluid.Dissipation.Utilities.Records.General](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General).TwoPhaseFlow
======================================================================================================================================================================================================================================================================

**base record for two phase Flow**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name  Defau Description
                                                lt    
  --------------------------------------- ----- ----- ---------------------
  Fluid properties                                    

  [Density](Modelica_SIunits.html#Modelic rho\_       Density of liquid
  a.SIunits.Density)                      l           [kg/m3]

  [Density](Modelica_SIunits.html#Modelic rho\_       Density of gas
  a.SIunits.Density)                      g           [kg/m3]

  [DynamicViscosity](Modelica_SIunits.htm eta\_       Dynamic viscosity of
  l#Modelica.SIunits.DynamicViscosity)    l           liquid [Pa.s]

  [DynamicViscosity](Modelica_SIunits.htm eta\_       Dynamic viscosity of
  l#Modelica.SIunits.DynamicViscosity)    g           gas [Pa.s]

  [MassFraction](Modelica_SIunits.html#Mo x     0.5   Vapour fraction [1]
  delica.SIunits.MassFraction)                        

  [SurfaceTension](Modelica_SIunits.html# sigma       Surface Tension [N/m]
  Modelica.SIunits.SurfaceTension)                    

  others                                              

  Real                                    n     0.25  Exponent in Blasius
                                                      equation (0.2-0.25)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record TwoPhaseFlow "base record for two phase Flow"
      extends Modelica.Icons.Record;

      SI.Density rho_l "Density of liquid";
      SI.Density rho_g "Density of gas";
      SI.DynamicViscosity eta_l "Dynamic viscosity of liquid";
      SI.DynamicViscosity eta_g "Dynamic viscosity of gas";
      SI.MassFraction x=0.5 "Vapour fraction";
      SI.SurfaceTension sigma "Surface Tension";
      Real n=0.25 "Exponent in Blasius equation (0.2-0.25)";
    end TwoPhaseFlow;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:25 2010.
