% Modelica.Fluid.Dissipation.PressureLoss.Valve
% 
% 

[Modelica.Fluid.Dissipation.PressureLoss](Modelica_Fluid_Dissipation_PressureLoss.html#Modelica.Fluid.Dissipation.PressureLoss).Valve
=====================================================================================================================================

**Package for pressure loss calculation of valves**

Information
-----------

::

### Valve

#### Several geometries

Calculation of pressure loss for a valve with different geometries at
overall flow regime for incompressible and single-phase fluid flow in
dependence of its opening. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp_severalGeometryOverall).

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                Description
  --------------------------------------------------- --------------------
  ![image4](Modelica.Fluid.Dissipation.PressureLoss.V Pressure loss of
  alve.dp_severalGeometryOverall_DPS.png)             valve | calculate
  [dp\_severalGeometryOverall\_DP](Modelica_Fluid_Dis pressure loss |
  sipation_PressureLoss_Valve.html#Modelica.Fluid.Dis several geometries |
  sipation.PressureLoss.Valve.dp_severalGeometryOvera overall flow regime
  ll_DP)                                              

  ![image5](Modelica.Fluid.Dissipation.PressureLoss.V Pressure loss of
  alve.dp_severalGeometryOverall_DPS.png)             valve | calculate
  [dp\_severalGeometryOverall\_MFLOW](Modelica_Fluid_ mass flow rate |
  Dissipation_PressureLoss_Valve.html#Modelica.Fluid. several geometries |
  Dissipation.PressureLoss.Valve.dp_severalGeometryOv overall flow regime
  erall_MFLOW)                                        

  ![image6](Modelica.Fluid.Dissipation.PressureLoss.V Input record for
  alve.dp_severalGeometryOverall_IN_conS.png)         function
  [dp\_severalGeometryOverall\_IN\_con](Modelica_Flui dp\_severalGeometryO
  d_Dissipation_PressureLoss_Valve.html#Modelica.Flui verall\_DP
  d.Dissipation.PressureLoss.Valve.dp_severalGeometry and
  Overall_IN_con)                                     dp\_severalGeometryO
                                                      verall\_MFLOW

  ![image7](Modelica.Fluid.Dissipation.PressureLoss.V Input record for
  alve.dp_severalGeometryOverall_IN_conS.png)         function
  [dp\_severalGeometryOverall\_IN\_var](Modelica_Flui dp\_severalGeometryO
  d_Dissipation_PressureLoss_Valve.html#Modelica.Flui verall\_DP
  d.Dissipation.PressureLoss.Valve.dp_severalGeometry and
  Overall_IN_var)                                     dp\_severalGeometryO
                                                      verall\_MFLOW
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.Valve](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve).dp\_severalGeometryOverall\_DP
================================================================================================================================================================================

**Pressure loss of valve | calculate pressure loss | several geometries
| overall flow regime**

Information
-----------

::

Calculation of pressure loss for a valve with different geometries at
overall flow regime for incompressible and single-phase fluid flow in
dependence of its opening.

Generally this function is numerically best used for the
**incompressible case**, where the mass flow rate (m\_flow) is known (as
state variable) in the used model and the corresponding pressure loss
(DP) has to be calculated. On the other hand the function
[dp\_severalGeometryOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_MFLOW)
is numerically best used for the **compressible case** if the pressure
loss (dp) is known (out of pressures as state variable) and the mass
flow rate (M\_FLOW) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp_severalGeometryOverall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d)
(Icon for valve).

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  Constant inputs                                          

  [dp\_severalGeometryOverall\_IN\_con](Modelica_F IN\     Input record for
  luid_Dissipation_PressureLoss_Valve.html#Modelic _co     function
  a.Fluid.Dissipation.PressureLoss.Valve.dp_severa n       dp\_severalGeome
  lGeometryOverall_IN_con)                                 tryOverall\_DP

  Variable inputs                                          

  [dp\_severalGeometryOverall\_IN\_var](Modelica_F IN\     Input record for
  luid_Dissipation_PressureLoss_Valve.html#Modelic _va     function
  a.Fluid.Dissipation.PressureLoss.Valve.dp_severa r       dp\_severalGeome
  lGeometryOverall_IN_var)                                 tryOverall\_DP

  Input                                                    

  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     [kg/s]
                                                   w       
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name   Description
  ------------------------------------------------ ------ ----------------
  [Pressure](Modelica_SIunits.html#Modelica.SIunit DP     Pressure loss
  s.Pressure)                                             [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dp_severalGeometryOverall_DP 
      "Pressure loss of valve | calculate pressure loss | several geometries | overall flow regime"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.Valve;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;
      import TYP = Modelica.Fluid.Dissipation.Utilities.Types;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_con
        IN_con "Input record for function dp_severalGeometryOverall_DP";
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_var
        IN_var "Input record for function dp_severalGeometryOverall_DP";
      input SI.MassFlowRate m_flow "Mass flow rate";

      //output variables
      output SI.Pressure DP "Pressure loss";

    protected 
      type TYP1 =
          Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient;
      type TYP2 = Modelica.Fluid.Dissipation.Utilities.Types.ValveGeometry;

      Real MIN=Modelica.Constants.eps;

      SI.Area Av=if IN_con.valveCoefficient == TYP1.AV then IN_con.Av else if 
          IN_con.valveCoefficient == TYP1.KV then IN_con.Kv*27.7e-6 else if IN_con.valveCoefficient
           == TYP1.CV then IN_con.Cv*24e-6 else if IN_con.valveCoefficient == TYP1.OP then 
                IN_con.m_flow_nominal/max(MIN, IN_con.opening_nominal*(IN_con.rho_nominal
          *IN_con.dp_nominal)^0.5) else MIN "Av (metric) flow coefficient [Av]=m^2";

      TYP.PressureLossCoefficient zeta_bal=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(-3.8397*IN_var.opening + 2.9449) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Ball valves";
      TYP.PressureLossCoefficient zeta_dia=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(2.2596*exp(-1.8816*IN_var.opening)) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Diaphragm valves";
      TYP.PressureLossCoefficient zeta_but=SMOOTH(
          0.05,
          0,
          IN_var.opening)*619.81*exp(-7.3211*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Butterfly valves";
      TYP.PressureLossCoefficient zeta_gat=SMOOTH(
          0.05,
          0,
          IN_var.opening)*51.45*exp(-6.046*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Gate valves";
      TYP.PressureLossCoefficient zeta_slu=SMOOTH(
          0.05,
          0,
          IN_var.opening)*248.89*exp(-7.8265*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Sluice valves";

      TYP.PressureLossCoefficient zeta_TOT=if IN_con.geometry == TYP2.Ball then 
          zeta_bal else if IN_con.geometry == TYP2.Diaphragm then zeta_dia else if 
          IN_con.geometry == TYP2.Butterfly then zeta_but else if IN_con.geometry
           == TYP2.Gate then zeta_gat else if IN_con.geometry == TYP2.Sluice then 
          zeta_slu else 0 "Pressure loss coefficient of chosen valve";

      Real valveCharacteristic=(2/min(IN_con.zeta_TOT_max, max(MIN, max(IN_con.zeta_TOT_min,
          abs(zeta_TOT)))))^0.5 
        "Valve characteristic considering opening of chosen valve";

      SI.MassFlowRate m_flow_small=valveCharacteristic*Av*(IN_var.rho)^0.5*(IN_con.dp_small)
          ^0.5 "Mass flow rate at linearisation";

      //Documentation

    algorithm 
      DP := 1/((valveCharacteristic*Av)^2*IN_var.rho)*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              m_flow,
              m_flow_small,
              2);

    end dp_severalGeometryOverall_DP;

* * * * *

[Modelica.Fluid.Dissipation.PressureLoss.Valve](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve).dp\_severalGeometryOverall\_MFLOW
===================================================================================================================================================================================

**Pressure loss of valve | calculate mass flow rate | several geometries
| overall flow regime**

Information
-----------

::

Calculation of pressure loss for a valve with different geometries at
overall flow regime for incompressible and single-phase fluid flow in
dependence of its opening.

Generally this function is numerically best used for the **compressible
case**, where the pressure loss (dp) is known (out of pressures as state
variable) in the used model and the corresponding mass flow rate
(M\_FLOW) has to be calculated. On the other hand the function
[dp\_severalGeometryOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DP)
is numerically best used for the **incompressible case** if the mass
flow rate (m\_flow) is known (as state variable) and the pressure loss
(DP) has to be calculated. [See more
information](Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp_severalGeometryOverall).

::

Extends from
[Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve\_d](Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d)
(Icon for valve).

Inputs
------

  -------------------------------------------------------------------------
  Type                                            Nam Def Description
                                                  e   aul 
                                                      t   
  ----------------------------------------------- --- --- -----------------
  Constant inputs                                         

  [dp\_severalGeometryOverall\_IN\_con](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_Valve.html#Model _co     function
  ica.Fluid.Dissipation.PressureLoss.Valve.dp_sev n       dp\_severalGeomet
  eralGeometryOverall_IN_con)                             ryOverall\_MFLOW

  Variable inputs                                         

  [dp\_severalGeometryOverall\_IN\_var](Modelica_ IN\     Input record for
  Fluid_Dissipation_PressureLoss_Valve.html#Model _va     function
  ica.Fluid.Dissipation.PressureLoss.Valve.dp_sev r       dp\_severalGeomet
  eralGeometryOverall_IN_var)                             ryOverall\_MFLOW

  Input                                                   

  [Pressure](Modelica_SIunits.html#Modelica.SIuni dp      Pressure loss
  ts.Pressure)                                            [Pa]
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

    function dp_severalGeometryOverall_MFLOW 
      "Pressure loss of valve | calculate mass flow rate | several geometries | overall flow regime"
      import FD = Modelica.Fluid.Dissipation.PressureLoss.Valve;
      import SMOOTH = Modelica.Fluid.Dissipation.Utilities.Functions.General.Stepsmoother;
      import TYP = Modelica.Fluid.Dissipation.Utilities.Types;

      //icon
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Valve_d;

      //input records
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_con
        IN_con "Input record for function dp_severalGeometryOverall_MFLOW";
      input Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_var
        IN_var "Input record for function dp_severalGeometryOverall_MFLOW";
      input SI.Pressure dp "Pressure loss";

      //output variables
      output SI.MassFlowRate M_FLOW "Mass flow rate";

    protected 
      type TYP1 =
          Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient;
      type TYP2 = Modelica.Fluid.Dissipation.Utilities.Types.ValveGeometry;

      Real MIN=Modelica.Constants.eps;

      SI.Area Av=if IN_con.valveCoefficient == TYP1.AV then IN_con.Av else if 
          IN_con.valveCoefficient == TYP1.KV then IN_con.Kv*27.7e-6 else if IN_con.valveCoefficient
           == TYP1.CV then IN_con.Cv*24e-6 else if IN_con.valveCoefficient == TYP1.OP then 
                IN_con.m_flow_nominal/max(MIN, IN_con.opening_nominal*(IN_con.rho_nominal
          *IN_con.dp_nominal)^0.5) else MIN "Av (metric) flow coefficient [Av]=m^2";

      TYP.PressureLossCoefficient zeta_bal=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(-3.8397*IN_var.opening + 2.9449) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Ball valves";
      TYP.PressureLossCoefficient zeta_dia=SMOOTH(
          0.05,
          0,
          IN_var.opening)*10^(2.2596*exp(-1.8816*IN_var.opening)) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Diaphragm valves";
      TYP.PressureLossCoefficient zeta_but=SMOOTH(
          0.05,
          0,
          IN_var.opening)*619.81*exp(-7.3211*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Butterfly valves";
      TYP.PressureLossCoefficient zeta_gat=SMOOTH(
          0.05,
          0,
          IN_var.opening)*51.45*exp(-6.046*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Gate valves";
      TYP.PressureLossCoefficient zeta_slu=SMOOTH(
          0.05,
          0,
          IN_var.opening)*248.89*exp(-7.8265*IN_var.opening) + SMOOTH(
          0,
          0.05,
          IN_var.opening)*IN_con.zeta_TOT_max "Sluice valves";

      TYP.PressureLossCoefficient zeta_TOT=if IN_con.geometry == TYP2.Ball then 
          zeta_bal else if IN_con.geometry == TYP2.Diaphragm then zeta_dia else if 
          IN_con.geometry == TYP2.Butterfly then zeta_but else if IN_con.geometry
           == TYP2.Gate then zeta_gat else if IN_con.geometry == TYP2.Sluice then 
          zeta_slu else 0 "Pressure loss coefficient of chosen valve";

      Real valveCharacteristic=(2/min(IN_con.zeta_TOT_max, max(MIN, max(IN_con.zeta_TOT_min,
          abs(zeta_TOT)))))^0.5 
        "Valve characteristic considering opening of chosen valve";

      //Documentation

    algorithm 
      M_FLOW := valveCharacteristic*Av*(IN_var.rho)^0.5*
        Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPower(
              dp,
              IN_con.dp_small,
              0.5);
    end dp_severalGeometryOverall_MFLOW;

* * * * *

![image8](Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.Valve](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve).dp\_severalGeometryOverall\_IN\_con
====================================================================================================================================================================================================================================================================================

**Input record for function dp\_severalGeometryOverall\_DP and
dp\_severalGeometryOverall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_severalGeometryOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DP)
and
[dp\_severalGeometryOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_MFLOW).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Name  Default     Description
  ------------------------------------ ----- ----------- ------------------
  Valve                                                  

  [ValveGeometry](Modelica_Fluid_Dissi geome Dissipation Choice of geometry
  pation_Utilities_Types.html#Modelica try   .Utilities. for valve
  .Fluid.Dissipation.Utilities.Types.V       Types....   
  alveGeometry)                                          

  [ValveCoefficient](Modelica_Fluid_Di valve Modelica.Fl Choice of valve
  ssipation_Utilities_Types.html#Model Coeff uid.Dissipa coefficient
  ica.Fluid.Dissipation.Utilities.Type icien tion.U...   
  s.ValveCoefficient)                  t                 

  Real                                 Av    PI\*0.1\^2/ Av (metric) flow
                                             4           coefficient
                                                         [Av]=m\^2

  Real                                 Kv    Av/27.7e-6  Kv (metric) flow
                                                         coefficient
                                                         [Kv]=m\^3/h

  Real                                 Cv    Av/24.6e-6  Cv (US) flow
                                                         coefficient
                                                         [Cv]=USG/min

  [Pressure](Modelica_SIunits.html#Mod dp\_n 1e3         Nominal pressure
  elica.SIunits.Pressure)              omina             loss [Pa]
                                       l                 

  [MassFlowRate](Modelica_SIunits.html m\_fl opening\_no Nominal mass flow
  #Modelica.SIunits.MassFlowRate)      ow\_n minal\*Av\* rate [kg/s]
                                       omina (rho\_nomi. 
                                       l     ..          

  [Density](Modelica_SIunits.html#Mode rho\_ 1000        Nominal inlet
  lica.SIunits.Density)                nomin             density [kg/m3]
                                       al                

  Real                                 openi 0.5         Nominal opening
                                       ng\_n             
                                       omina             
                                       l                 

  Real                                 zeta\ 1e-3        Minimal pressure
                                       _TOT\             loss coefficient
                                       _min              at full opening

  Real                                 zeta\ 1e8         Maximum pressure
                                       _TOT\             loss coefficient
                                       _max              at closed opening

  Linearisation                                          

  [Pressure](Modelica_SIunits.html#Mod dp\_s 0.01\*dp\_n Linearisation for
  elica.SIunits.Pressure)              mall  ominal      a pressure loss
                                                         smaller then
                                                         dp\_small [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_severalGeometryOverall_IN_con 
      "Input record for function dp_severalGeometryOverall_DP and dp_severalGeometryOverall_MFLOW"

      extends Modelica.Icons.Record;

      Modelica.Fluid.Dissipation.Utilities.Types.ValveGeometry geometry=Dissipation.Utilities.Types.ValveGeometry.Ball 
        "Choice of geometry for valve";
      Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient
        valveCoefficient=
          Modelica.Fluid.Dissipation.Utilities.Types.ValveCoefficient.AV 
        "Choice of valve coefficient";

      //valve variables
      Real Av=PI*0.1^2/4 "Av (metric) flow coefficient [Av]=m^2";
      Real Kv=Av/27.7e-6 "Kv (metric) flow coefficient [Kv]=m^3/h";
      Real Cv=Av/24.6e-6 "Cv (US) flow coefficient [Cv]=USG/min";
      SI.Pressure dp_nominal=1e3 "Nominal pressure loss";
      SI.MassFlowRate m_flow_nominal=opening_nominal*Av*(rho_nominal*dp_nominal)^
          0.5 "Nominal mass flow rate";
      SI.Density rho_nominal=1000 "Nominal inlet density";
      Real opening_nominal=0.5 "Nominal opening";
      Real zeta_TOT_min=1e-3 "Minimal pressure loss coefficient at full opening";
      Real zeta_TOT_max=1e8 "Maximum pressure loss coefficient at closed opening";

      //numerical aspects
      SI.Pressure dp_small=0.01*dp_nominal 
        "Linearisation for a pressure loss smaller then dp_small";

    end dp_severalGeometryOverall_IN_con;

* * * * *

![image9](Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_IN_conI.png) [Modelica.Fluid.Dissipation.PressureLoss.Valve](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve).dp\_severalGeometryOverall\_IN\_var
====================================================================================================================================================================================================================================================================================

**Input record for function dp\_severalGeometryOverall\_DP and
dp\_severalGeometryOverall\_MFLOW**

Information
-----------

::

This record is used as **input record** for the pressure loss function
[dp\_severalGeometryOverall\_DP](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_DP)
and
[dp\_severalGeometryOverall\_MFLOW](Modelica_Fluid_Dissipation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.PressureLoss.Valve.dp_severalGeometryOverall_MFLOW).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                 Name  Defau Description
                                             lt    
  ------------------------------------ ----- ----- ------------------------
  Valve                                            

  Real                                 openi 1     Opening of valve |
                                       ng          0==closed and 1== fully
                                                   openend

  Fluid properties                                 

  [DynamicViscosity](Modelica_SIunits. eta         Dynamic viscosity of
  html#Modelica.SIunits.DynamicViscosi             fluid [Pa.s]
  ty)                                              

  [Density](Modelica_SIunits.html#Mode rho         Density of fluid [kg/m3]
  lica.SIunits.Density)                            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record dp_severalGeometryOverall_IN_var 
      "Input record for function dp_severalGeometryOverall_DP and dp_severalGeometryOverall_MFLOW"

      extends Modelica.Icons.Record;

      //valve variables
      Real opening=1 "Opening of valve | 0==closed and 1== fully openend";

      //fluid property variables
      SI.DynamicViscosity eta "Dynamic viscosity of fluid";
      SI.Density rho "Density of fluid";

    end dp_severalGeometryOverall_IN_var;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:23 2010.
