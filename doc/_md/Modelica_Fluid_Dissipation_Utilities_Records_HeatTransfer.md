% Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer
% 
% 

[Modelica.Fluid.Dissipation.Utilities.Records](Modelica_Fluid_Dissipation_Utilities_Records.html#Modelica.Fluid.Dissipation.Utilities.Records).HeatTransfer
===========================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image7](Modelica.Fluid.Dissipation.Utilities.Records.Gene Input for
  ral.PressureLossS.png)                                      even gap
  [EvenGap](Modelica_Fluid_Dissipation_Utilities_Records_Heat 
  Transfer.html#Modelica.Fluid.Dissipation.Utilities.Records. 
  HeatTransfer.EvenGap)                                       

  ![image8](Modelica.Fluid.Dissipation.Utilities.Records.Gene Input for
  ral.PressureLossS.png)                                      generic
  [General](Modelica_Fluid_Dissipation_Utilities_Records_Heat correlation
  Transfer.html#Modelica.Fluid.Dissipation.Utilities.Records. 
  HeatTransfer.General)                                       

  ![image9](Modelica.Fluid.Dissipation.Utilities.Records.Gene Input for
  ral.PressureLossS.png)                                      helical pipe
  [HelicalPipe](Modelica_Fluid_Dissipation_Utilities_Records_ 
  HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Reco 
  rds.HeatTransfer.HelicalPipe)                               

  ![image10](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     plate
  [Plate](Modelica_Fluid_Dissipation_Utilities_Records_HeatTr 
  ansfer.html#Modelica.Fluid.Dissipation.Utilities.Records.He 
  atTransfer.Plate)                                           

  ![image11](Modelica.Fluid.Dissipation.Utilities.Records.Gen Input for
  eral.PressureLossS.png)                                     straight
  [StraightPipe](Modelica_Fluid_Dissipation_Utilities_Records pipe
  _HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Rec 
  ords.HeatTransfer.StraightPipe)                             

  ![image12](Modelica.Fluid.Dissipation.Utilities.Records.Gen Base record
  eral.PressureLossS.png)                                     for two
  [TwoPhaseFlowHT\_IN\_con](Modelica_Fluid_Dissipation_Utilit phase heat
  ies_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Ut transfer
  ilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_con)         coefficient

  ![image13](Modelica.Fluid.Dissipation.Utilities.Records.Gen Base record
  eral.PressureLossS.png)                                     for two
  [TwoPhaseFlowHT\_IN\_var](Modelica_Fluid_Dissipation_Utilit phase heat
  ies_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Ut transfer
  ilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_var)         coefficient
  ------------------------------------------------------------------------

* * * * *

![image14](Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png) [Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer).EvenGap
================================================================================================================================================================================================================================================================================

**Input for even gap**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Nam Default     Description
                                        e               
  ------------------------------------- --- ----------- -------------------
  Even gap                                              

  [kc\_evenGap](Modelica_Fluid_Dissipat tar Dissipation Target variable of
  ion_Utilities_Types.html#Modelica.Flu get .Utilities. calculation
  id.Dissipation.Utilities.Types.kc_eve     Types....   
  nGap)                                                 

  [Length](Modelica_SIunits.html#Modeli h   0.1         Height of cross
  ca.SIunits.Length)                                    sectional area [m]

  [Length](Modelica_SIunits.html#Modeli s   0.05        Distance between
  ca.SIunits.Length)                                    parallel plates in
                                                        cross sectional
                                                        area [m]

  [Length](Modelica_SIunits.html#Modeli L   1           Overflowed length
  ca.SIunits.Length)                                    of gap [m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record EvenGap "Input for even gap"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.kc_evenGap target=Dissipation.Utilities.Types.kc_evenGap.DevBoth 
        "Target variable of calculation";

      SI.Length h=0.1 "Height of cross sectional area";
      SI.Length s=0.05 "Distance between parallel plates in cross sectional area";
      SI.Length L=1 "Overflowed length of gap";
    end EvenGap;

* * * * *

![image15](Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png) [Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer).General
================================================================================================================================================================================================================================================================================

**Input for generic correlation**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                        Name Default      Descriptio
                                                                n
  ------------------------------------------- ---- ------------ ----------
  Generic variables                                             

  [kc\_general](Modelica_Fluid_Dissipation_Ut targ Dissipation. Target
  ilities_Types.html#Modelica.Fluid.Dissipati et   Utilities.Ty correlatio
  on.Utilities.Types.kc_general)                   pes....      n

  [Area](Modelica_SIunits.html#Modelica.SIuni A\_c Modelica.Con Cross
  ts.Area)                                    ross stants.pi\*0 sectional
                                                   .1\^2/4      area [m2]

  [Length](Modelica_SIunits.html#Modelica.SIu peri Modelica.Con Wetted
  nits.Length)                                mete stants.pi\*0 perimeter
                                              r    .1           [m]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record General "Input for generic correlation"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.kc_general target=Dissipation.Utilities.Types.kc_general.Finest 
        "Target correlation";

      //geometry
      SI.Area A_cross=Modelica.Constants.pi*0.1^2/4 "Cross sectional area";
      SI.Length perimeter=Modelica.Constants.pi*0.1 "Wetted perimeter";
    end General;

* * * * *

![image16](Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png) [Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer).HelicalPipe
====================================================================================================================================================================================================================================================================================

**Input for helical pipe**

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
  HelicalPipe                                         

  Real                                  n\_nt  1      Total number of turns

  [Diameter](Modelica_SIunits.html#Mode d\_hyd 0.1    Hydraulic diameter
  lica.SIunits.Diameter)                              [m]

  [Length](Modelica_SIunits.html#Modeli h      0.01   Distance between
  ca.SIunits.Length)                                  turns [m]

  [Length](Modelica_SIunits.html#Modeli L      1      Total length of
  ca.SIunits.Length)                                  helical pipe [m]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record HelicalPipe "Input for helical pipe"
      extends Modelica.Icons.Record;

      Real n_nt=1 "Total number of turns";
      SI.Diameter d_hyd=0.1 "Hydraulic diameter";
      SI.Length h=0.01 "Distance between turns";
      SI.Length L=1 "Total length of helical pipe";

    end HelicalPipe;

* * * * *

![image17](Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png) [Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer).Plate
==============================================================================================================================================================================================================================================================================

**Input for plate**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                      Name   Default  Description
  ----------------------------------------- ------ -------- ----------------
  Plate                                                     

  [Length](Modelica_SIunits.html#Modelica.S L      1        Length of plate
  Iunits.Length)                                            [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record Plate "Input for plate"
      extends Modelica.Icons.Record;

      SI.Length L=1 "Length of plate";

    end Plate;

* * * * *

![image18](Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png) [Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer).StraightPipe
=====================================================================================================================================================================================================================================================================================

**Input for straight pipe**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

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

    record StraightPipe "Input for straight pipe"
      extends Modelica.Icons.Record;

      SI.Diameter d_hyd=0.1 "Hydraulic diameter";
      SI.Length L=1 "Length";
    end StraightPipe;

* * * * *

![image19](Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png) [Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer).TwoPhaseFlowHT\_IN\_con
================================================================================================================================================================================================================================================================================================

**Base record for two phase heat transfer coefficient**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Nam Default   Description
                                         e             
  -------------------------------------- --- --------- --------------------
  Choices                                              

  [TwoPhaseHeatTransferTarget](Modelica_ tar Modelica. Choice of
  Fluid_Dissipation_Utilities_Types.html get Fluid.Dis (horizontal/vertical
  #Modelica.Fluid.Dissipation.Utilities.     sipation. )
  Types.TwoPhaseHeatTransferTarget)          U...      boiling or
                                                       (horizontal)
                                                       condensation in pipe

  Geometry                                             

  [Area](Modelica_SIunits.html#Modelica. A\_ Modelica. Cross sectional area
  SIunits.Area)                          cro Constants [m2]
                                         ss  .pi\*0.1\ 
                                             ^2/4      

  [Length](Modelica_SIunits.html#Modelic per Modelica. Wettet perimeter [m]
  a.SIunits.Length)                      ime Constants 
                                         ter .pi\*0.1  

  Fluid properties                                     

  [MolarMass](Modelica_SIunits.html#Mode MM  0.0180152 Molar mass of fluid
  lica.SIunits.MolarMass)                    68        [kg/mol]

  [Pressure](Modelica_SIunits.html#Model p\_           Critical pressure of
  ica.SIunits.Pressure)                  cri           fluid [Pa]
                                         t             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record TwoPhaseFlowHT_IN_con 
      "Base record for two phase heat transfer coefficient"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget
        target=
          Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilHor 
        "Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe";

      SI.Area A_cross=Modelica.Constants.pi*0.1^2/4 "Cross sectional area";
      SI.Length perimeter=Modelica.Constants.pi*0.1 "Wettet perimeter";

      SI.MolarMass MM=0.018015268 "Molar mass of fluid";
      SI.Pressure p_crit "Critical pressure of fluid";

    end TwoPhaseFlowHT_IN_con;

* * * * *

![image20](Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.EvenGapI.png) [Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer).TwoPhaseFlowHT\_IN\_var
================================================================================================================================================================================================================================================================================================

**Base record for two phase heat transfer coefficient**

Information
-----------

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Nam Default   Description
                                         e             
  -------------------------------------- --- --------- --------------------
  Choices                                              

  [TwoPhaseHeatTransferTarget](Modelica_ tar Modelica. Choice of
  Fluid_Dissipation_Utilities_Types.html get Fluid.Dis (horizontal/vertical
  #Modelica.Fluid.Dissipation.Utilities.     sipation. )
  Types.TwoPhaseHeatTransferTarget)          U...      boiling or
                                                       (horizontal)
                                                       condensation in pipe

  Fluid properties                                     

  [SpecificHeatCapacityAtConstantPressur cp\           Specific heat
  e](Modelica_SIunits.html#Modelica.SIun _l            capacity of liquid
  its.SpecificHeatCapacityAtConstantPres               [J/(kg.K)]
  sure)                                                

  [ThermalConductivity](Modelica_SIunits lam           Thermal conductivity
  .html#Modelica.SIunits.ThermalConducti bda           of liquid [W/(m.K)]
  vity)                                  \_l           

  [Density](Modelica_SIunits.html#Modeli rho           Density of gas
  ca.SIunits.Density)                    \_g           [kg/m3]

  [Density](Modelica_SIunits.html#Modeli rho           Density of liquid
  ca.SIunits.Density)                    \_l           [kg/m3]

  [DynamicViscosity](Modelica_SIunits.ht eta           Dynamic viscosity of
  ml#Modelica.SIunits.DynamicViscosity)  \_g           gas [Pa.s]

  [DynamicViscosity](Modelica_SIunits.ht eta           Dynamic viscosity of
  ml#Modelica.SIunits.DynamicViscosity)  \_l           liquid [Pa.s]

  [Pressure](Modelica_SIunits.html#Model pre           Mean pressure of
  ica.SIunits.Pressure)                  ssu           fluid [Pa]
                                         re            

  [SpecificEnthalpy](Modelica_SIunits.ht dh\           Evaporation enthalpy
  ml#Modelica.SIunits.SpecificEnthalpy)  _lg           of fluid [J/kg]

  Input                                                

  [MassFlowRate](Modelica_SIunits.html#M m\_           Mass flow rate
  odelica.SIunits.MassFlowRate)          flo           [kg/s]
                                         w             

  [HeatFlux](Modelica_SIunits.html#Model qdo 0         Heat flux at boiling
  ica.SIunits.HeatFlux)                  t\_           [W/m2]
                                         A             

  Real                                   x\_ 0         Mass flow rate
                                         flo           quality
                                         w             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record TwoPhaseFlowHT_IN_var 
      "Base record for two phase heat transfer coefficient"
      extends Modelica.Icons.Record;

      //choices
      Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget
        target=
          Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilHor 
        "Choice of (horizontal/vertical) boiling or (horizontal) condensation in pipe";

      //fluid properties
      SI.SpecificHeatCapacityAtConstantPressure cp_l 
        "Specific heat capacity of liquid";
      SI.ThermalConductivity lambda_l "Thermal conductivity of liquid";
      SI.Density rho_g "Density of gas";
      SI.Density rho_l "Density of liquid";
      SI.DynamicViscosity eta_g "Dynamic viscosity of gas";
      SI.DynamicViscosity eta_l "Dynamic viscosity of liquid";

      SI.Pressure pressure "Mean pressure of fluid";
      SI.SpecificEnthalpy dh_lg "Evaporation enthalpy of fluid";

      //input variables
      SI.MassFlowRate m_flow "Mass flow rate";
      SI.HeatFlux qdot_A=0 "Heat flux at boiling";

      Real x_flow=0 "Mass flow rate quality";
    end TwoPhaseFlowHT_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:25 2010.
