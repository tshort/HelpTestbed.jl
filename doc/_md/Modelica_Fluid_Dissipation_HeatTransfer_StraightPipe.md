% Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe
% 
% 

[Modelica.Fluid.Dissipation.HeatTransfer](Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer).StraightPipe
============================================================================================================================================

Information
-----------

::

### Straight pipe

#### Laminar flow

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar
fluid flow. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_laminar).

#### Turbulent flow

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe for a hydrodynamically developed turbulent fluid flow at
uniform wall temperature **or** uniform heat flux with neglecting **or**
considering of pressure loss influence. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_turbulent).

#### Overall flow

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar and
turbulent fluid flow with neglect **or** consideration of pressure loss
influence. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_overall).

#### Overall two phase flow

Calculation of local **two phase** heat transfer coefficient
**kc\_2ph**for (horizontal/vertical) **boiling** or (horizontal)
**condensation** for an overall flow regime. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_twoPhaseOverall).

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                      Description
  ----------------------------------------- ------------------------------
  ![image15](Modelica.Fluid.Dissipation.Hea Mean heat transfer coefficient
  tTransfer.StraightPipe.kc_laminarS.png)   of straight pipe | uniform
  [kc\_laminar](Modelica_Fluid_Dissipation_ wall temperature or uniform
  HeatTransfer_StraightPipe.html#Modelica.F heat flux | hydrodynamically
  luid.Dissipation.HeatTransfer.StraightPip developed or undeveloped
  e.kc_laminar)                             laminar flow regime

  ![image16](Modelica.Fluid.Dissipation.Hea Mean heat transfer coefficient
  tTransfer.StraightPipe.kc_laminarS.png)   of straight pipe | uniform
  [kc\_laminar\_KC](Modelica_Fluid_Dissipat wall temperature or uniform
  ion_HeatTransfer_StraightPipe.html#Modeli heat flux | hydrodynamically
  ca.Fluid.Dissipation.HeatTransfer.Straigh developed or undeveloped
  tPipe.kc_laminar_KC)                      laminar flow regime

  ![image17](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_laminar_IN_conS kc\_laminar and
  .png)                                     kc\_laminar\_KC
  [kc\_laminar\_IN\_con](Modelica_Fluid_Dis 
  sipation_HeatTransfer_StraightPipe.html#M 
  odelica.Fluid.Dissipation.HeatTransfer.St 
  raightPipe.kc_laminar_IN_con)             

  ![image18](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_laminar_IN_conS kc\_laminar and
  .png)                                     kc\_laminar\_KC
  [kc\_laminar\_IN\_var](Modelica_Fluid_Dis 
  sipation_HeatTransfer_StraightPipe.html#M 
  odelica.Fluid.Dissipation.HeatTransfer.St 
  raightPipe.kc_laminar_IN_var)             

  ![image19](Modelica.Fluid.Dissipation.Hea Mean heat transfer coefficient
  tTransfer.StraightPipe.kc_overallS.png)   of straight pipe | uniform
  [kc\_overall](Modelica_Fluid_Dissipation_ wall temperature or uniform
  HeatTransfer_StraightPipe.html#Modelica.F heat flux | hydrodynamically
  luid.Dissipation.HeatTransfer.StraightPip developed or undeveloped
  e.kc_overall)                             overall flow regime| pressure
                                            loss dependence

  ![image20](Modelica.Fluid.Dissipation.Hea Mean heat transfer coefficient
  tTransfer.StraightPipe.kc_overallS.png)   of straight pipe | uniform
  [kc\_overall\_KC](Modelica_Fluid_Dissipat wall temperature or uniform
  ion_HeatTransfer_StraightPipe.html#Modeli heat flux | hydrodynamically
  ca.Fluid.Dissipation.HeatTransfer.Straigh developed or undeveloped
  tPipe.kc_overall_KC)                      overall flow regime| pressure
                                            loss dependence

  ![image21](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_overall_IN_conS kc\_overall and
  .png)                                     kc\_overall\_KC
  [kc\_overall\_IN\_con](Modelica_Fluid_Dis 
  sipation_HeatTransfer_StraightPipe.html#M 
  odelica.Fluid.Dissipation.HeatTransfer.St 
  raightPipe.kc_overall_IN_con)             

  ![image22](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_overall_IN_conS kc\_overall and
  .png)                                     kc\_overall\_KC
  [kc\_overall\_IN\_var](Modelica_Fluid_Dis 
  sipation_HeatTransfer_StraightPipe.html#M 
  odelica.Fluid.Dissipation.HeatTransfer.St 
  raightPipe.kc_overall_IN_var)             

  ![image23](Modelica.Fluid.Dissipation.Hea Mean heat transfer coefficient
  tTransfer.StraightPipe.kc_turbulentS.png) of straight pipe |
  [kc\_turbulent](Modelica_Fluid_Dissipatio hydrodynamically developed
  n_HeatTransfer_StraightPipe.html#Modelica turbulent flow regime |
  .Fluid.Dissipation.HeatTransfer.StraightP pressure loss dependence
  ipe.kc_turbulent)                         

  ![image24](Modelica.Fluid.Dissipation.Hea Mean heat transfer coefficient
  tTransfer.StraightPipe.kc_turbulentS.png) of straight pipe |
  [kc\_turbulent\_KC](Modelica_Fluid_Dissip hydrodynamically developed
  ation_HeatTransfer_StraightPipe.html#Mode turbulent flow regime |
  lica.Fluid.Dissipation.HeatTransfer.Strai pressure loss dependence
  ghtPipe.kc_turbulent_KC)                  

  ![image25](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_turbulent_IN_co kc\_turbulent and
  nS.png)                                   kc\_turbulent\_KC
  [kc\_turbulent\_IN\_con](Modelica_Fluid_D 
  issipation_HeatTransfer_StraightPipe.html 
  #Modelica.Fluid.Dissipation.HeatTransfer. 
  StraightPipe.kc_turbulent_IN_con)         

  ![image26](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_turbulent_IN_co kc\_turbulent and
  nS.png)                                   kc\_turbulent\_KC
  [kc\_turbulent\_IN\_var](Modelica_Fluid_D 
  issipation_HeatTransfer_StraightPipe.html 
  #Modelica.Fluid.Dissipation.HeatTransfer. 
  StraightPipe.kc_turbulent_IN_var)         

  ![image27](Modelica.Fluid.Dissipation.Hea Local two phase heat transfer
  tTransfer.StraightPipe.kc_twoPhaseOverall coefficient of straight pipe |
  _KCS.png)                                 horizontal or vertical boiling
  [kc\_twoPhaseOverall\_KC](Modelica_Fluid_ | horizontal condensation
  Dissipation_HeatTransfer_StraightPipe.htm 
  l#Modelica.Fluid.Dissipation.HeatTransfer 
  .StraightPipe.kc_twoPhaseOverall_KC)      

  ![image28](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_twoPhaseOverall kc\_twoPhaseOverall\_KC
  _KC_IN_conS.png)                          
  [kc\_twoPhaseOverall\_KC\_IN\_con](Modeli 
  ca_Fluid_Dissipation_HeatTransfer_Straigh 
  tPipe.html#Modelica.Fluid.Dissipation.Hea 
  tTransfer.StraightPipe.kc_twoPhaseOverall 
  _KC_IN_con)                               

  ![image29](Modelica.Fluid.Dissipation.Hea Input record for function
  tTransfer.StraightPipe.kc_twoPhaseOverall kc\_twoPhaseOverall\_KC
  _KC_IN_conS.png)                          
  [kc\_twoPhaseOverall\_KC\_IN\_var](Modeli 
  ca_Fluid_Dissipation_HeatTransfer_Straigh 
  tPipe.html#Modelica.Fluid.Dissipation.Hea 
  tTransfer.StraightPipe.kc_twoPhaseOverall 
  _KC_IN_var)                               
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_laminar
==================================================================================================================================================================================

**Mean heat transfer coefficient of straight pipe | uniform wall
temperature or uniform heat flux | hydrodynamically developed or
undeveloped laminar flow regime**

Information
-----------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar
fluid flow. Note that additionally a failure status is observed in this
function to check if the intended boundary conditions are fulfilled.
[See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_laminar)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Def Description
                                                     e   aul 
                                                         t   
  -------------------------------------------------- --- --- -------------
  Constant inputs                                            

  [kc\_laminar\_IN\_con](Modelica_Fluid_Dissipation_ IN\     Input record
  HeatTransfer_StraightPipe.html#Modelica.Fluid.Diss _co     for function
  ipation.HeatTransfer.StraightPipe.kc_laminar_IN_co n       kc\_laminar
  n)                                                         

  Variable inputs                                            

  [kc\_laminar\_IN\_var](Modelica_Fluid_Dissipation_ IN\     Input record
  HeatTransfer_StraightPipe.html#Modelica.Fluid.Diss _va     for function
  ipation.HeatTransfer.StraightPipe.kc_laminar_IN_va r       kc\_laminar
  r)                                                         
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                               Name   Description
  ---------------------------------- ------ -------------------------------
  Output                                    

  [CoefficientOfHeatTransfer](Modeli kc     Convective heat transfer
  ca_SIunits.html#Modelica.SIunits.C        coefficient [W/(m2.K)]
  oefficientOfHeatTransfer)                 

  [PrandtlNumber](Modelica_SIunits.h Pr     Prandl number [1]
  tml#Modelica.SIunits.PrandtlNumber        
  )                                         

  [ReynoldsNumber](Modelica_SIunits. Re     Reynolds number [1]
  html#Modelica.SIunits.ReynoldsNumb        
  er)                                       

  [NusseltNumber](Modelica_SIunits.h Nu     Nusselt number [1]
  tml#Modelica.SIunits.NusseltNumber        
  )                                         

  Real                               failur 0== boundary conditions
                                     eStatu fulfilled | 1== failure \>\>
                                     s      check if still meaningfull
                                            results
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_laminar 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped laminar flow regime"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_var
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

      Real laminar=2e3 "Maximum Reynolds number of laminar flow regime";
      Real prandtlMax=1000 "Maximum Prandtl number";
      Real prandtlMin=0.6 "Minimum Prandtl number";

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";

      //failure status
      Real fstatus[2] "check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

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

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_laminar\_KC
======================================================================================================================================================================================

**Mean heat transfer coefficient of straight pipe | uniform wall
temperature or uniform heat flux | hydrodynamically developed or
undeveloped laminar flow regime**

Information
-----------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar
fluid flow. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_laminar)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- --------------
  Constant inputs                                           

  [kc\_laminar\_IN\_con](Modelica_Fluid_Dissipation IN\     Input record
  _HeatTransfer_StraightPipe.html#Modelica.Fluid.Di _co     for function
  ssipation.HeatTransfer.StraightPipe.kc_laminar_IN n       kc\_laminar\_K
  _con)                                                     C

  Variable inputs                                           

  [kc\_laminar\_IN\_var](Modelica_Fluid_Dissipation IN\     Input record
  _HeatTransfer_StraightPipe.html#Modelica.Fluid.Di _va     for function
  ssipation.HeatTransfer.StraightPipe.kc_laminar_IN r       kc\_laminar\_K
  _var)                                                     C
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ----------------------
  [CoefficientOfHeatTransfer](Modelica_SIunits. kc   Output for function
  html#Modelica.SIunits.CoefficientOfHeatTransf      kc\_laminar\_KC
  er)                                                [W/(m2.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_laminar_KC 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped laminar flow regime"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_con
        IN_con "Input record for function kc_laminar_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_var
        IN_var "Input record for function kc_laminar_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_laminar_KC";

    protected 
      type TYP =
          Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";

      Real Nu0=if IN_con.target == TYP.UWTuDFF or IN_con.target == TYP.UWTuUFF then 
                0.7 else if IN_con.target == TYP.UHFuDFF or IN_con.target == TYP.UHFuUFF then 
                0.6 else 0 "Help variable for mean Nusselt number";
      Real Nu1=if IN_con.target == TYP.UWTuDFF or IN_con.target == TYP.UWTuUFF then 
                3.66 else if IN_con.target == TYP.UHFuDFF or IN_con.target == TYP.UHFuUFF then 
                4.364 else 0 "Help variable for mean Nusselt number";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN,
          IN_var.eta));
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));

      SI.NusseltNumber Nu2=if IN_con.target == TYP.UWTuDFF or IN_con.target == TYP.UWTuUFF then 
                1.615*(Re*Pr*IN_con.d_hyd/IN_con.L)^(1/3) else if IN_con.target ==
          TYP.UHFuDFF or IN_con.target == TYP.UHFuUFF then 1.953*(Re*Pr*IN_con.d_hyd
          /IN_con.L)^(1/3) else 0 "Help variable for mean Nusselt number";
      SI.NusseltNumber Nu3=if IN_con.target == TYP.UWTuUFF then (2/(1 + 22*Pr))^(1/
          6)*(Re*Pr*IN_con.d_hyd/IN_con.L)^0.5 else if IN_con.target == TYP.UHFuUFF then 
                1.953*(Re*Pr*IN_con.d_hyd/IN_con.L)^(1/3) else 0 
        "Help variable for mean Nusselt number";

      SI.NusseltNumber Nu=(Nu1^3 + Nu0^3 + (Nu2 - Nu0)^3 + Nu3^3)^(1/3) 
        "Mean Nusselt number";

      //Documentation
    algorithm 
      kc := Nu*IN_var.lambda/max(MIN, IN_con.d_hyd);
    end kc_laminar_KC;

* * * * *

![image30](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_laminar\_IN\_con
===================================================================================================================================================================================================================================================================================

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_laminar](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar)
and
[kc\_laminar\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC).

::

Extends from
[Utilities.Records.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.StraightPipe)
(Input for straight pipe).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Nam Default    Description
                                              e              
  ------------------------------------------- --- ---------- --------------
  Straight pipe                                              

  [Diameter](Modelica_SIunits.html#Modelica.S d\_ 0.1        Hydraulic
  Iunits.Diameter)                            hyd            diameter [m]

  [Length](Modelica_SIunits.html#Modelica.SIu L   1          Length [m]
  nits.Length)                                               

  Choices                                                    

  [HeatTransferBoundary](Modelica_Fluid_Dissi tar Dissipatio Choice of heat
  pation_Utilities_Types.html#Modelica.Fluid. get n.Utilitie transfer
  Dissipation.Utilities.Types.HeatTransferBou     s.Types... boundary
  ndary)                                          .          condition
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_laminar_IN_con 
      "Input record for function kc_laminar and kc_laminar_KC"
      extends Utilities.Records.HeatTransfer.StraightPipe;

        //choices
      Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary target=Dissipation.Utilities.Types.HeatTransferBoundary.UWTuDFF 
        "Choice of heat transfer boundary condition";

    end kc_laminar_IN_con;

* * * * *

![image31](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_laminar\_IN\_var
===================================================================================================================================================================================================================================================================================

**Input record for function kc\_laminar and kc\_laminar\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_laminar](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar)
and
[kc\_laminar\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC).

::

Extends from
[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall\_IN\_var](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var)
(Input record for function kc\_overall and kc\_overall\_KC).

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

  Input                                             

  [MassFlowRate](Modelica_SIunits.html#Mode m\_     [kg/s]
  lica.SIunits.MassFlowRate)                flo     
                                            w       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_laminar_IN_var 
      "Input record for function kc_laminar and kc_laminar_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var;

    end kc_laminar_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_overall
==================================================================================================================================================================================

**Mean heat transfer coefficient of straight pipe | uniform wall
temperature or uniform heat flux | hydrodynamically developed or
undeveloped overall flow regime| pressure loss dependence**

Information
-----------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped overall
fluid flow with neglect **or** consideration of pressure loss influence.
Note that additionally a failure status is observed in this function to
check if the intended boundary conditions are fulfilled. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_overall)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Def Description
                                                     e   aul 
                                                         t   
  -------------------------------------------------- --- --- -------------
  Constant inputs                                            

  [kc\_overall\_IN\_con](Modelica_Fluid_Dissipation_ IN\     Input record
  HeatTransfer_StraightPipe.html#Modelica.Fluid.Diss _co     for function
  ipation.HeatTransfer.StraightPipe.kc_overall_IN_co n       kc\_overall
  n)                                                         

  Variable inputs                                            

  [kc\_overall\_IN\_var](Modelica_Fluid_Dissipation_ IN\     Input record
  HeatTransfer_StraightPipe.html#Modelica.Fluid.Diss _va     for function
  ipation.HeatTransfer.StraightPipe.kc_overall_IN_va r       kc\_overall
  r)                                                         
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                               Name   Description
  ---------------------------------- ------ -------------------------------
  Output                                    

  [CoefficientOfHeatTransfer](Modeli kc     Convective heat transfer
  ca_SIunits.html#Modelica.SIunits.C        coefficient [W/(m2.K)]
  oefficientOfHeatTransfer)                 

  [PrandtlNumber](Modelica_SIunits.h Pr     Prandl number [1]
  tml#Modelica.SIunits.PrandtlNumber        
  )                                         

  [ReynoldsNumber](Modelica_SIunits. Re     Reynolds number [1]
  html#Modelica.SIunits.ReynoldsNumb        
  er)                                       

  [NusseltNumber](Modelica_SIunits.h Nu     Nusselt number [1]
  tml#Modelica.SIunits.NusseltNumber        
  )                                         

  Real                               failur 0== boundary conditions
                                     eStatu fulfilled | 1== failure \>\>
                                     s      check if still meaningfull
                                            results
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_overall 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped overall flow regime| pressure loss dependence"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_con
        IN_con "Input record for function kc_overall";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var
        IN_var "Input record for function kc_overall";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";

      //failure status
      Real fstatus[3] "Check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

      //failure status
      if IN_con.roughness == TYP.Neglected then
        if Re < 2e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      elseif IN_con.roughness == TYP.Considered then
        if Re < 1e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      else
        assert(true, "No choice of roughness is selected");
      end if;
      fstatus[2] := if Pr < 0.6 or Pr > 1e3 then 1 else 0;
      fstatus[3] := if IN_con.d_hyd/max(MIN, IN_con.L) > 1 then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_overall;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_overall\_KC
======================================================================================================================================================================================

**Mean heat transfer coefficient of straight pipe | uniform wall
temperature or uniform heat flux | hydrodynamically developed or
undeveloped overall flow regime| pressure loss dependence**

Information
-----------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped overall
fluid flow with neglect **or** consideration of pressure loss
influence.[See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_overall)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- --------------
  Constant inputs                                           

  [kc\_overall\_IN\_con](Modelica_Fluid_Dissipation IN\     Input record
  _HeatTransfer_StraightPipe.html#Modelica.Fluid.Di _co     for function
  ssipation.HeatTransfer.StraightPipe.kc_overall_IN n       kc\_overall\_K
  _con)                                                     C

  Variable inputs                                           

  [kc\_overall\_IN\_var](Modelica_Fluid_Dissipation IN\     Input record
  _HeatTransfer_StraightPipe.html#Modelica.Fluid.Di _va     for function
  ssipation.HeatTransfer.StraightPipe.kc_overall_IN r       kc\_overall\_K
  _var)                                                     C
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ----------------------
  [CoefficientOfHeatTransfer](Modelica_SIunits. kc   Output for function
  html#Modelica.SIunits.CoefficientOfHeatTransf      kc\_overall\_KC
  er)                                                [W/(m2.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_overall_KC 
      "Mean heat transfer coefficient of straight pipe | uniform wall temperature or uniform heat flux | hydrodynamically developed or undeveloped overall flow regime| pressure loss dependence"
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_con
        IN_con "Input record for function kc_overall_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var
        IN_var "Input record for function kc_overall_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_overall_KC";

    protected 
      Real MIN=Modelica.Constants.eps;
      Real laminar=2200 "Maximum Reynolds number for laminar regime";
      Real turbulent=1e4 "Minimum Reynolds number for turbulent regime";

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/max(MIN, IN_var.rho*A_cross) 
        "Mean velocity";
      SI.ReynoldsNumber Re=max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN,
          IN_var.eta));
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));

      //Documentation
    algorithm 
      kc := SMOOTH(
              laminar,
              turbulent,
              Re)*Dissipation.HeatTransfer.StraightPipe.kc_laminar_KC(IN_con,
        IN_var) + SMOOTH(
              turbulent,
              laminar,
              Re)*Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC(
        IN_con, IN_var);

    end kc_overall_KC;

* * * * *

![image32](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_overall\_IN\_con
===================================================================================================================================================================================================================================================================================

**Input record for function kc\_overall and kc\_overall\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_overall](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall)
and
[kc\_overall\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_KC).

::

Extends from
[kc\_turbulent\_IN\_con](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con)
(Input record for function kc\_turbulent and kc\_turbulent\_KC).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                      Name Default    Description
  ----------------------------------------- ---- ---------- ----------------
  Choices                                                   

  [HeatTransferBoundary](Modelica_Fluid_Dis targ Dissipatio Choice of heat
  sipation_Utilities_Types.html#Modelica.Fl et   n.Utilitie transfer
  uid.Dissipation.Utilities.Types.HeatTrans      s.Types... boundary
  ferBoundary)                                   .          condition

  [Roughness](Modelica_Fluid_Dissipation_Ut roug Dissipatio Choice of
  ilities_Types.html#Modelica.Fluid.Dissipa hnes n.Utilitie considering
  tion.Utilities.Types.Roughness)           s    s.Types... surface
                                                 .          roughness

  Straight pipe                                             

  [Diameter](Modelica_SIunits.html#Modelica d\_h 0.1        Hydraulic
  .SIunits.Diameter)                        yd              diameter [m]

  [Length](Modelica_SIunits.html#Modelica.S L    1          Length [m]
  Iunits.Length)                                            

  [Length](Modelica_SIunits.html#Modelica.S K    0          Roughness
  Iunits.Length)                                            (average height
                                                            of surface
                                                            asperities) [m]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_overall_IN_con 
      "Input record for function kc_overall and kc_overall_KC"

        //choices
      Modelica.Fluid.Dissipation.Utilities.Types.HeatTransferBoundary target=Dissipation.Utilities.Types.HeatTransferBoundary.UWTuDFF 
        "Choice of heat transfer boundary condition";

      extends kc_turbulent_IN_con;

    end kc_overall_IN_con;

* * * * *

![image33](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_overall\_IN\_var
===================================================================================================================================================================================================================================================================================

**Input record for function kc\_overall and kc\_overall\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_overall](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall)
and
[kc\_overall\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_KC).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties)
(Base record for fluid properties).

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

  Input                                             

  [MassFlowRate](Modelica_SIunits.html#Mode m\_     [kg/s]
  lica.SIunits.MassFlowRate)                flo     
                                            w       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_overall_IN_var 
      "Input record for function kc_overall and kc_overall_KC"
      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;

    end kc_overall_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_turbulent
====================================================================================================================================================================================

**Mean heat transfer coefficient of straight pipe | hydrodynamically
developed turbulent flow regime | pressure loss dependence**

Information
-----------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe for a hydrodynamically developed turbulent fluid flow at
uniform wall temperature **or** uniform heat flux with neglecting **or**
considering of pressure loss influence. Note that additionally a failure
status is observed in this function to check if the intended boundary
conditions are fulfilled. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_turbulent)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Nam Def Description
                                                     e   aul 
                                                         t   
  -------------------------------------------------- --- --- -------------
  Constant inputs                                            

  [kc\_turbulent\_IN\_con](Modelica_Fluid_Dissipatio IN\     Input record
  n_HeatTransfer_StraightPipe.html#Modelica.Fluid.Di _co     for function
  ssipation.HeatTransfer.StraightPipe.kc_turbulent_I n       kc\_turbulent
  N_con)                                                     

  Variable inputs                                            

  [kc\_turbulent\_IN\_var](Modelica_Fluid_Dissipatio IN\     Input record
  n_HeatTransfer_StraightPipe.html#Modelica.Fluid.Di _va     for function
  ssipation.HeatTransfer.StraightPipe.kc_turbulent_I r       kc\_turbulent
  N_var)                                                     
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                               Name   Description
  ---------------------------------- ------ -------------------------------
  Output                                    

  [CoefficientOfHeatTransfer](Modeli kc     Convective heat transfer
  ca_SIunits.html#Modelica.SIunits.C        coefficient [W/(m2.K)]
  oefficientOfHeatTransfer)                 

  [PrandtlNumber](Modelica_SIunits.h Pr     Prandl number [1]
  tml#Modelica.SIunits.PrandtlNumber        
  )                                         

  [ReynoldsNumber](Modelica_SIunits. Re     Reynolds number [1]
  html#Modelica.SIunits.ReynoldsNumb        
  er)                                       

  [NusseltNumber](Modelica_SIunits.h Nu     Nusselt number [1]
  tml#Modelica.SIunits.NusseltNumber        
  )                                         

  Real                               failur 0== boundary conditions
                                     eStatu fulfilled | 1== failure \>\>
                                     s      check if still meaningfull
                                            results
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_turbulent 
      "Mean heat transfer coefficient of straight pipe | hydrodynamically developed turbulent flow regime | pressure loss dependence"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con
        IN_con "Input record for function kc_turbulent";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_var
        IN_var "Input record for function kc_turbulent";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Convective heat transfer coefficient";
      output SI.PrandtlNumber Pr "Prandl number";
      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.NusseltNumber Nu "Nusselt number";
      output Real failureStatus 
        "0== boundary conditions fulfilled | 1== failure >> check if still meaningfull results";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/(IN_var.rho*A_cross) "Mean velocity";

      //failure status
      Real fstatus[3] "check of expected boundary conditions";

      //Documentation
    algorithm 
      Pr := abs(IN_var.eta*IN_var.cp/max(MIN, IN_var.lambda));
      Re := max(1e-3, IN_var.rho*velocity*IN_con.d_hyd/max(MIN, IN_var.eta));
      kc := Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC(IN_con, IN_var);
      Nu := kc*IN_con.d_hyd/max(MIN, IN_var.lambda);

      //failure status
      if IN_con.roughness == TYP.Neglected then
        if Re < 2e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      elseif IN_con.roughness == TYP.Considered then
        if Re < 1e4 or Re > 1e6 then
          fstatus[1] := 1;
        else
          fstatus[1] := 0;
        end if;
      else
        assert(true, "No choice of roughness is selected");
      end if;
      fstatus[2] := if Pr <= 0.6 or Pr >= 1e3 then 1 else 0;
      fstatus[3] := if IN_con.d_hyd/max(MIN, IN_con.L) > 1 then 1 else 0;

      failureStatus := 0;
      for i in 1:size(fstatus, 1) loop
        if fstatus[i] == 1 then
          failureStatus := 1;
        end if;
      end for;
    end kc_turbulent;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_turbulent\_KC
========================================================================================================================================================================================

**Mean heat transfer coefficient of straight pipe | hydrodynamically
developed turbulent flow regime | pressure loss dependence**

Information
-----------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe for a hydrodynamically developed turbulent fluid flow at
uniform wall temperature **or** uniform heat flux with neglecting **or**
considering of pressure loss influence. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_turbulent)
.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- --------------
  Constant inputs                                           

  [kc\_turbulent\_IN\_con](Modelica_Fluid_Dissipati IN\     Input record
  on_HeatTransfer_StraightPipe.html#Modelica.Fluid. _co     for function
  Dissipation.HeatTransfer.StraightPipe.kc_turbulen n       kc\_turbulent\
  t_IN_con)                                                 _KC

  Variable inputs                                           

  [kc\_turbulent\_IN\_var](Modelica_Fluid_Dissipati IN\     Input record
  on_HeatTransfer_StraightPipe.html#Modelica.Fluid. _va     for function
  Dissipation.HeatTransfer.StraightPipe.kc_turbulen r       kc\_turbulent\
  t_IN_var)                                                 _KC
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Name Description
  -------------------------------------------- ---- -----------------------
  [CoefficientOfHeatTransfer](Modelica_SIunits kc   Output for function
  .html#Modelica.SIunits.CoefficientOfHeatTran      kc\_turbulent\_KC
  sfer)                                             [W/(m2.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_turbulent_KC 
      "Mean heat transfer coefficient of straight pipe | hydrodynamically developed turbulent flow regime | pressure loss dependence"
      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_con
        IN_con "Input record for function kc_turbulent_KC";
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_var
        IN_var "Input record for function kc_turbulent_KC";

      //output variables
      output SI.CoefficientOfHeatTransfer kc "Output for function kc_turbulent_KC";

    protected 
      type TYP = Modelica.Fluid.Dissipation.Utilities.Types.Roughness;

      Real MIN=Modelica.Constants.eps;

      SI.Area A_cross=PI*IN_con.d_hyd^2/4 "Circular cross sectional area";

      SI.Velocity velocity=abs(IN_var.m_flow)/(IN_var.rho*A_cross) "Mean velocity";
      SI.ReynoldsNumber Re=max(2.6, IN_var.rho*velocity*IN_con.d_hyd/IN_var.eta);
      SI.PrandtlNumber Pr=abs(IN_var.eta*IN_var.cp/IN_var.lambda);

      Real zeta=abs(1/max(MIN, 1.8*Modelica.Math.log10(abs(Re)) - 1.5)^2) 
        "Pressure loss coefficient";

      //Documentation
    algorithm 
      kc := if IN_con.roughness == TYP.Neglected then abs(IN_var.lambda/IN_con.d_hyd)
        *0.023*Re^0.8*Pr^(1/3) else if IN_con.roughness == TYP.Considered then abs(
        IN_var.lambda/IN_con.d_hyd)*(abs(zeta)/8)*abs(Re)*abs(Pr)/(1 + 12.7*(abs(
        zeta)/8)^0.5*(abs(Pr)^(2/3) - 1))*(1 + (IN_con.d_hyd/IN_con.L)^(2/3)) else 
        0;
    end kc_turbulent_KC;

* * * * *

![image34](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_turbulent\_IN\_con
=======================================================================================================================================================================================================================================================================================

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_turbulent](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent)
and
[kc\_turbulent\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC).

::

Extends from
[Utilities.Records.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.StraightPipe)
(Input for straight pipe).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                   Name Default     Description
  -------------------------------------- ---- ----------- ------------------
  Straight pipe                                           

  [Diameter](Modelica_SIunits.html#Model d\_h 0.1         Hydraulic diameter
  ica.SIunits.Diameter)                  yd               [m]

  [Length](Modelica_SIunits.html#Modelic L    1           Length [m]
  a.SIunits.Length)                                       

  [Length](Modelica_SIunits.html#Modelic K    0           Roughness (average
  a.SIunits.Length)                                       height of surface
                                                          asperities) [m]

  Choices                                                 

  [Roughness](Modelica_Fluid_Dissipation roug Dissipation Choice of
  _Utilities_Types.html#Modelica.Fluid.D hnes .Utilities. considering
  issipation.Utilities.Types.Roughness)  s    Types....   surface roughness
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_turbulent_IN_con 
      "Input record for function kc_turbulent and kc_turbulent_KC"
      extends Utilities.Records.HeatTransfer.StraightPipe;

      Modelica.Fluid.Dissipation.Utilities.Types.Roughness roughness=Dissipation.Utilities.Types.Roughness.Considered 
        "Choice of considering surface roughness";

      SI.Length K=0 "Roughness (average height of surface asperities)";

    end kc_turbulent_IN_con;

* * * * *

![image35](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_turbulent\_IN\_var
=======================================================================================================================================================================================================================================================================================

**Input record for function kc\_turbulent and kc\_turbulent\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_turbulent](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent)
and
[kc\_turbulent\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_turbulent_KC).

::

Extends from
[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc\_overall\_IN\_var](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var)
(Input record for function kc\_overall and kc\_overall\_KC).

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

  Input                                             

  [MassFlowRate](Modelica_SIunits.html#Mode m\_     [kg/s]
  lica.SIunits.MassFlowRate)                flo     
                                            w       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_turbulent_IN_var 
      "Input record for function kc_turbulent and kc_turbulent_KC"
      extends Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_overall_IN_var;

    end kc_turbulent_IN_var;

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_twoPhaseOverall\_KC
==============================================================================================================================================================================================

**Local two phase heat transfer coefficient of straight pipe |
horizontal or vertical boiling | horizontal condensation**

Information
-----------

::

Calculation of local **two phase** heat transfer coefficient
**kc\_2ph**for (horizontal/vertical) **boiling** or (horizontal)
**condensation** for an overall flow regime. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_twoPhaseOverall)
.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                                        Nam Def Descr
                                                              e   aul iptio
                                                                  t   n
  ----------------------------------------------------------- --- --- -----
  Constant inputs                                                     

  [kc\_twoPhaseOverall\_KC\_IN\_con](Modelica_Fluid_Dissipati IN\     
  on_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipatio _co     
  n.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_con)   n       

  Variable inputs                                                     

  [kc\_twoPhaseOverall\_KC\_IN\_var](Modelica_Fluid_Dissipati IN\     
  on_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipatio _va     
  n.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_var)   r       
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                        Nam Description
                                              e   
  ------------------------------------------- --- ------------------------
  [CoefficientOfHeatTransfer](Modelica_SIunit kc  Local two phase heat
  s.html#Modelica.SIunits.CoefficientOfHeatTr     transfer coefficient
  ansfer)                                         [W/(m2.K)]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function kc_twoPhaseOverall_KC 
      "Local two phase heat transfer coefficient of straight pipe | horizontal or vertical boiling | horizontal condensation"
      //SOURCE_1: Bejan,A.: HEAT TRANSFER HANDBOOK, Wiley, 2003.
      //SOURCE_2: Gungor, K.E. and R.H.S. Winterton: A general correlation for flow boiling in tubes and annuli, Int.J. Heat Mass Transfer, Vol.29, p.351-358, 1986.

      //input records
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_con
        IN_con;
      input Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_var
        IN_var;

      //output variables
      output SI.CoefficientOfHeatTransfer kc 
        "Local two phase heat transfer coefficient";

    protected 
      Real MIN=Modelica.Constants.eps;

      //Documentation
    algorithm 
      kc := if IN_con.target == Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilHor then 
        Modelica.Fluid.Dissipation.Utilities.Functions.HeatTransfer.TwoPhase.kc_twoPhase_boilingHorizontal_KC(
        IN_con, IN_var) else if IN_con.target == Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.BoilVer then 
        Modelica.Fluid.Dissipation.Utilities.Functions.HeatTransfer.TwoPhase.kc_twoPhase_boilingVertical_KC(
        IN_con, IN_var) else if IN_con.target == Modelica.Fluid.Dissipation.Utilities.Types.TwoPhaseHeatTransferTarget.CondHor then 
        Modelica.Fluid.Dissipation.Utilities.Functions.HeatTransfer.TwoPhase.kc_twoPhase_condensationHorizontal_KC(
        IN_con, IN_var) else MIN;
    end kc_twoPhaseOverall_KC;

* * * * *

![image36](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_twoPhaseOverall\_KC\_IN\_con
==========================================================================================================================================================================================================================================================================================================

**Input record for function kc\_twoPhaseOverall\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_twoPhaseOverall\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT\_IN\_con](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_con)
(Base record for two phase heat transfer coefficient).

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

    record kc_twoPhaseOverall_KC_IN_con 
      "Input record for function kc_twoPhaseOverall_KC"
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_con;

    end kc_twoPhaseOverall_KC_IN_con;

* * * * *

![image37](Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe).kc\_twoPhaseOverall\_KC\_IN\_var
==========================================================================================================================================================================================================================================================================================================

**Input record for function kc\_twoPhaseOverall\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_twoPhaseOverall\_KC](Modelica_Fluid_Dissipation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.StraightPipe.kc_twoPhaseOverall_KC).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT\_IN\_var](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_var)
(Base record for two phase heat transfer coefficient).

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

    record kc_twoPhaseOverall_KC_IN_var 
      "Input record for function kc_twoPhaseOverall_KC"
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.TwoPhaseFlowHT_IN_var;

    end kc_twoPhaseOverall_KC_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:21 2010.
