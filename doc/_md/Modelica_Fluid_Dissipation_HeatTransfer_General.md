% Modelica.Fluid.Dissipation.HeatTransfer.General
% 
% 

[Modelica.Fluid.Dissipation.HeatTransfer](Modelica_Fluid_Dissipation_HeatTransfer.html#Modelica.Fluid.Dissipation.HeatTransfer).General
=======================================================================================================================================

Information
-----------

::

### General heat transfer

#### Approximated forced convection

Approximate calculation of the mean convective heat transfer coefficient
**kc** for forced convection with a fully developed fluid flow in a
turbulent regime. [See more
information.](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc_approxForcedConvection)

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image4](Modelica.Fluid.Dissipation.HeatTrans Mean convective heat
  fer.General.kc_approxForcedConvectionS.png)    transfer coefficient for
  [kc\_approxForcedConvection](Modelica_Fluid_Di forced convection |
  ssipation_HeatTransfer_General.html#Modelica.F approximation | turbulent
  luid.Dissipation.HeatTransfer.General.kc_appro regime | hydrodynamically
  xForcedConvection)                             developed fluid flow

  ![image5](Modelica.Fluid.Dissipation.HeatTrans Mean convective heat
  fer.General.kc_approxForcedConvectionS.png)    transfer coefficient for
  [kc\_approxForcedConvection\_KC](Modelica_Flui forced convection |
  d_Dissipation_HeatTransfer_General.html#Modeli approximation | turbulent
  ca.Fluid.Dissipation.HeatTransfer.General.kc_a regime | hydrodynamically
  pproxForcedConvection_KC)                      developed fluid flow

  ![image6](Modelica.Fluid.Dissipation.HeatTrans Input record for function
  fer.General.kc_approxForcedConvection_IN_conS. kc\_approxForcedConvectio
  png)                                           n
  [kc\_approxForcedConvection\_IN\_con](Modelica and
  _Fluid_Dissipation_HeatTransfer_General.html#M kc\_approxForcedConvectio
  odelica.Fluid.Dissipation.HeatTransfer.General n\_KC
  .kc_approxForcedConvection_IN_con)             

  ![image7](Modelica.Fluid.Dissipation.HeatTrans Input record for function
  fer.General.kc_approxForcedConvection_IN_conS. kc\_approxForcedConvectio
  png)                                           n
  [kc\_approxForcedConvection\_IN\_var](Modelica and
  _Fluid_Dissipation_HeatTransfer_General.html#M kc\_approxForcedConvectio
  odelica.Fluid.Dissipation.HeatTransfer.General n\_KC
  .kc_approxForcedConvection_IN_var)             
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.General](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General).kc\_approxForcedConvection
==================================================================================================================================================================================

**Mean convective heat transfer coefficient for forced convection |
approximation | turbulent regime | hydrodynamically developed fluid
flow**

Information
-----------

::

Approximate calculation of the mean convective heat transfer coefficient
**kc** for forced convection with a fully developed fluid flow in a
turbulent regime.

A detailled documentation for this convective heat transfer calculation
can be found in its underlying function
[kc\_approxForcedConvection\_KC](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC)
. Note that additionally a failure status is observed in this function
to check if the intended boundary conditions are fulfilled. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc_approxForcedConvection)
.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Def Description
                                                    e   aul 
                                                        t   
  ------------------------------------------------- --- --- ---------------
  Constant inputs                                           

  [kc\_approxForcedConvection\_IN\_con](Modelica_Fl IN\     Input record
  uid_Dissipation_HeatTransfer_General.html#Modelic _co     for function
  a.Fluid.Dissipation.HeatTransfer.General.kc_appro n       kc\_approxForce
  xForcedConvection_IN_con)                                 dConvection

  Variable inputs                                           

  [kc\_approxForcedConvection\_IN\_var](Modelica_Fl IN\     Input record
  uid_Dissipation_HeatTransfer_General.html#Modelic _va     for function
  a.Fluid.Dissipation.HeatTransfer.General.kc_appro r       kc\_approxForce
  xForcedConvection_IN_var)                                 dConvection
  -------------------------------------------------------------------------

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

* * * * *

[Modelica.Fluid.Dissipation.HeatTransfer.General](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General).kc\_approxForcedConvection\_KC
======================================================================================================================================================================================

**Mean convective heat transfer coefficient for forced convection |
approximation | turbulent regime | hydrodynamically developed fluid
flow**

Information
-----------

::

Approximate calculation of the mean convective heat transfer coefficient
**kc** for forced convection with a fully developed fluid flow in a
turbulent regime. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc_approxForcedConvection)
.

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  Constant inputs                                          

  [kc\_approxForcedConvection\_IN\_con](Modelica_F IN\     Input record for
  luid_Dissipation_HeatTransfer_General.html#Model _co     function
  ica.Fluid.Dissipation.HeatTransfer.General.kc_ap n       kc\_approxForced
  proxForcedConvection_IN_con)                             Convection\_KC

  Variable inputs                                          

  [kc\_approxForcedConvection\_IN\_var](Modelica_F IN\     Input record for
  luid_Dissipation_HeatTransfer_General.html#Model _va     function
  ica.Fluid.Dissipation.HeatTransfer.General.kc_ap r       kc\_approxForced
  proxForcedConvection_IN_var)                             Convection\_KC
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                      Nam Description
                                            e   
  ----------------------------------------- --- ---------------------------
  [CoefficientOfHeatTransfer](Modelica_SIun kc  Output for function
  its.html#Modelica.SIunits.CoefficientOfHe     kc\_approxForcedConvection\
  atTransfer)                                   _KC
                                                [W/(m2.K)]
  -------------------------------------------------------------------------

Modelica definition
-------------------

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

* * * * *

![image8](Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.General](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General).kc\_approxForcedConvection\_IN\_con
============================================================================================================================================================================================================================================================================================

**Input record for function kc\_approxForcedConvection and
kc\_approxForcedConvection\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_approxForcedConvection](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection)
and
[kc\_approxForcedConvection\_KC](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General](Modelica_Fluid_Dissipation_Utilities_Records_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General)
(Input for generic correlation).

Parameters
----------

  ------------------------------------------------------------------------
  Type                              Nam Default   Description
                                    e             
  --------------------------------- --- --------- ------------------------
  Generic variables                               

  [kc\_general](Modelica_Fluid_Diss tar Dissipati Target correlation
  ipation_Utilities_Types.html#Mode get on.Utilit 
  lica.Fluid.Dissipation.Utilities.     ies.Types 
  Types.kc_general)                     ....      

  [Area](Modelica_SIunits.html#Mode A\_ Modelica. Cross sectional area
  lica.SIunits.Area)                cro Constants [m2]
                                    ss  .pi\*0.1\ 
                                        ^2/4      

  [Length](Modelica_SIunits.html#Mo per Modelica. Wetted perimeter [m]
  delica.SIunits.Length)            ime Constants 
                                    ter .pi\*0.1  

  Real                              exp 0.4       Exponent for Prandtl
                                    \_P           number w.r.t.
                                    r             Dittus/Boelter | 0.4 for
                                                  heating | 0.3 for
                                                  cooling
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_approxForcedConvection_IN_con 
      "Input record for function kc_approxForcedConvection and kc_approxForcedConvection_KC"
      //generic variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.HeatTransfer.General;
      parameter Real exp_Pr=0.4 
        "Exponent for Prandtl number w.r.t. Dittus/Boelter | 0.4 for heating | 0.3 for cooling";

    end kc_approxForcedConvection_IN_con;

* * * * *

![image9](Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_IN_conI.png) [Modelica.Fluid.Dissipation.HeatTransfer.General](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General).kc\_approxForcedConvection\_IN\_var
============================================================================================================================================================================================================================================================================================

**Input record for function kc\_approxForcedConvection and
kc\_approxForcedConvection\_KC**

Information
-----------

::

This record is used as **input record** for the heat transfer function
[kc\_approxForcedConvection](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection)
and
[kc\_approxForcedConvection\_KC](Modelica_Fluid_Dissipation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.HeatTransfer.General.kc_approxForcedConvection_KC).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties](Modelica_Fluid_Dissipation_Utilities_Records_General.html#Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties)
(Base record for fluid properties).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name Def Description
                                                 aul 
                                                 t   
  ----------------------------------------- ---- --- ----------------------
  Fluid properties                                   

  [SpecificHeatCapacityAtConstantPressure]( cp       Specific heat capacity
  Modelica_SIunits.html#Modelica.SIunits.Sp          of fluid at constant
  ecificHeatCapacityAtConstantPressure)              pressure [J/(kg.K)]

  [DynamicViscosity](Modelica_SIunits.html# eta      Dynamic viscosity of
  Modelica.SIunits.DynamicViscosity)                 fluid [Pa.s]

  [ThermalConductivity](Modelica_SIunits.ht lamb     Thermal conductivity
  ml#Modelica.SIunits.ThermalConductivity)  da       of fluid [W/(m.K)]

  [Density](Modelica_SIunits.html#Modelica. rho      Density of fluid
  SIunits.Density)                                   [kg/m3]

  [DynamicViscosity](Modelica_SIunits.html# eta\     Dynamic viscosity of
  Modelica.SIunits.DynamicViscosity)        _wal     fluid at wall
                                            l        temperature [Pa.s]

  Input                                              

  [MassFlowRate](Modelica_SIunits.html#Mode m\_f     [kg/s]
  lica.SIunits.MassFlowRate)                low      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record kc_approxForcedConvection_IN_var 
      "Input record for function kc_approxForcedConvection and kc_approxForcedConvection_KC"
      //fluid property variables
      extends Modelica.Fluid.Dissipation.Utilities.Records.General.FluidProperties;
      SI.DynamicViscosity eta_wall "Dynamic viscosity of fluid at wall temperature";

      //input variable (mass flow rate)
      SI.MassFlowRate m_flow;

    end kc_approxForcedConvection_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:19 2010.
