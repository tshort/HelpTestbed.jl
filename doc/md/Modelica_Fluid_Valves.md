% Modelica.Fluid.Valves
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Valves
===========================================================

**Components for the regulation and control of fluid flow**

Information
-----------

::

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                      Description
  ----------------------------------------- ------------------------------
  ![image6](Modelica.Fluid.Valves.ValveInco Valve for (almost)
  mpressibleS.png)                          incompressible fluids
  [ValveIncompressible](Modelica_Fluid_Valv 
  es.html#Modelica.Fluid.Valves.ValveIncomp 
  ressible)                                 

  ![image7](Modelica.Fluid.Valves.ValveInco Valve for possibly vaporizing
  mpressibleS.png)                          (almost) incompressible
  [ValveVaporizing](Modelica_Fluid_Valves.h fluids, accounts for choked
  tml#Modelica.Fluid.Valves.ValveVaporizing flow conditions
  )                                         

  ![image8](Modelica.Fluid.Valves.ValveInco Valve for compressible fluids,
  mpressibleS.png)                          accounts for choked flow
  [ValveCompressible](Modelica_Fluid_Valves conditions
  .html#Modelica.Fluid.Valves.ValveCompress 
  ible)                                     

  ![image9](Modelica.Fluid.Valves.ValveLine Valve for water/steam flows
  arS.png)                                  with linear pressure drop
  [ValveLinear](Modelica_Fluid_Valves.html# 
  Modelica.Fluid.Valves.ValveLinear)        

  ![image10](Modelica.Fluid.Valves.ValveDis Valve for water/steam flows
  creteS.png)                               with linear pressure drop
  [ValveDiscrete](Modelica_Fluid_Valves.htm 
  l#Modelica.Fluid.Valves.ValveDiscrete)    

  ![image11](Modelica.Fluid.Valves.BaseClas Base classes used in the
  sesS.png)                                 Valves package (only of
  [BaseClasses](Modelica_Fluid_Valves_BaseC interest to build new
  lasses.html#Modelica.Fluid.Valves.BaseCla component models)
  sses)                                     
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Fluid.Valves.ValveIncompressibleI.png) [Modelica.Fluid.Valves](Modelica_Fluid_Valves.html#Modelica.Fluid.Valves).ValveIncompressible
========================================================================================================================================================

**Valve for (almost) incompressible fluids**

Information
-----------

::

Valve model according to the IEC 534/ISA S.75 standards for valve
sizing, incompressible fluids.< /p\>

The parameters of this model are explained in detail in
[PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve)
(the base model for valves).

This model assumes that the fluid has a low compressibility, which is
always the case for liquids. It can also be used with gases, provided
that the pressure drop is lower than 0.2 times the absolute pressure at
the inlet, so that the fluid density does not change much inside the
valve.

If `checkValve` is false, the valve supports reverse flow, with a
symmetric flow characteric curve. Otherwise, reverse flow is stopped
(check valve behaviour).

The treatment of parameters **Kv** and **Cv** is explained in detail in
the [User's
Guide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.ValveCharacteristics).

::

Extends from
[BaseClasses.PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve)
(Base model for valves).

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name                      Defaul Description
                                                    t      
  ----------------------- ------------------------- ------ ----------------
  replaceable package     [PartialMedium](Modelica_ Medium 
  Medium                  Media_Interfaces_PartialM in the 
                          edium.html#Modelica.Media compon 
                          .Interfaces.PartialMedium ent    
                          )                                

  replaceable function    [linear](Modelica_Fluid_V Inhere 
  valveCharacteristic     alves_BaseClasses_ValveCh nt     
                          aracteristics.html#Modeli flow   
                          ca.Fluid.Valves.BaseClass charac 
                          es.ValveCharacteristics.l terist 
                          inear)                    ic     

  Flow Coefficient                                         

  [CvTypes](Modelica_Flui CvData                    Modeli Selection of
  d_Types.html#Modelica.F                           ca.Flu flow coefficient
  luid.Types.CvTypes)                               id.Typ 
                                                    es.CvT 
                                                    ypes.. 
                                                    .      

  [Area](Modelica_SIunits Av                        0      Av (metric) flow
  .html#Modelica.SIunits.                                  coefficient [m2]
  Area)                                                    

  Real                    Kv                        0      Kv (metric) flow
                                                           coefficient
                                                           [m3/h]

  Real                    Cv                        0      Cv (US) flow
                                                           coefficient
                                                           [USG/min]

  Nominal operating point                                  

  [Pressure](Modelica_SIu dp\_nominal                      Nominal pressure
  nits.html#Modelica.SIun                                  drop [Pa]
  its.Pressure)                                            

  [MassFlowRate](Modelica m\_flow\_nominal                 Nominal mass
  _Media_Interfaces_Parti                                  flowrate [kg/s]
  alMedium.html#Modelica.                                  
  Media.Interfaces.Partia                                  
  lMedium.MassFlowRate)                                    

  [Density](Modelica_Medi rho\_nominal              Medium Nominal inlet
  a_Interfaces_PartialMed                           .densi density [kg/m3]
  ium.html#Modelica.Media                           ty\_pT 
  .Interfaces.PartialMedi                           X(Medi 
  um.Density)                                       um.p\_ 
                                                    ...    

  Real                    opening\_nominal          1      Nominal opening

  Filtered opening                                         

  Boolean                 filteredOpening           false  = true, if
                                                           opening is
                                                           filtered with a
                                                           2nd order
                                                           CriticalDamping
                                                           filter

  [Time](Modelica_SIunits riseTime                  1      Rise time of the
  .html#Modelica.SIunits.                                  filter (time to
  Time)                                                    reach 99.6 % of
                                                           an opening step)
                                                           [s]

  Real                    leakageOpening            1e-3   The opening
                                                           signal is
                                                           limited by
                                                           leakageOpening
                                                           (to improve the
                                                           numerics)

  **Assumptions**                                          

  Boolean                 allowFlowReversal         system = true to allow
                                                    .allow flow reversal,
                                                    FlowRe false restricts
                                                    versal to design
                                                           direction
                                                           (port\_a -\>
                                                           port\_b)

  Boolean                 checkValve                false  Reverse flow
                                                           stopped

  **Advanced**                                             

  [AbsolutePressure](Mode dp\_start                 dp\_no Guess value of
  lica_Media_Interfaces_P                           minal  dp = port\_a.p -
  artialMedium.html#Model                                  port\_b.p [Pa]
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  [MassFlowRate](Modelica m\_flow\_start            m\_flo Guess value of
  _Media_Interfaces_Parti                           w\_nom m\_flow =
  alMedium.html#Modelica.                           inal   port\_a.m\_flow
  Media.Interfaces.Partia                                  [kg/s]
  lMedium.MassFlowRate)                                    

  [MassFlowRate](Modelica m\_flow\_small            system Small mass flow
  _Media_Interfaces_Parti                           .m\_fl rate for
  alMedium.html#Modelica.                           ow\_sm regularization
  Media.Interfaces.Partia                           all    of zero flow
  lMedium.MassFlowRate)                                    [kg/s]

  [Pressure](Modelica_SIu dp\_small                 system Regularisation
  nits.html#Modelica.SIun                           .dp\_s of zero flow
  its.Pressure)                                     mall   [Pa]

  Diagnostics                                              

  Boolean                 show\_T                   true   = true, if
                                                           temperatures at
                                                           port\_a and
                                                           port\_b are
                                                           computed

  Boolean                 show\_V\_flow             true   = true, if
                                                           volume flow rate
                                                           at inflowing
                                                           port is computed
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                               Name    Description
  ---------------------------------- ------- -----------------------------
  [FluidPort\_a](Modelica_Fluid_Inte port\_a Fluid connector a (positive
  rfaces.html#Modelica.Fluid.Interfa         design flow direction is from
  ces.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inte port\_b Fluid connector b (positive
  rfaces.html#Modelica.Fluid.Interfa         design flow direction is from
  ces.FluidPort_b)                           port\_a to port\_b)

  input                              opening Valve position in the range
  [RealInput](Modelica_Blocks_Interf         0..1
  aces.html#Modelica.Blocks.Interfac         
  es.RealInput)                              

  output                             opening Filtered valve position in
  [RealOutput](Modelica_Blocks_Inter \_filte the range 0..1
  faces.html#Modelica.Blocks.Interfa red     
  ces.RealOutput)                            
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ValveIncompressible "Valve for (almost) incompressible fluids"
      extends BaseClasses.PartialValve;
    import Modelica.Fluid.Types.CvTypes;
    protected 
      Real relativeFlowCoefficient;
    initial equation 
      if CvData == CvTypes.OpPoint then
          m_flow_nominal = valveCharacteristic(opening_nominal)*Av*sqrt(rho_nominal)*Utilities.regRoot(dp_nominal, dp_small) 
          "Determination of Av by the operating point";
      end if;

    equation 
      // m_flow = valveCharacteristic(opening)*Av*sqrt(d)*sqrt(dp);

      relativeFlowCoefficient = valveCharacteristic(opening_actual);
      if checkValve then
        m_flow = relativeFlowCoefficient*Av*sqrt(Medium.density(state_a))*
                   Modelica.Fluid.Utilities.regRoot2(dp,dp_small,1.0,0.0,use_yd0=true,yd0=0.0);
        /* In Modelica 3.1 (Disadvantage: Unnecessary event at dp=0, and smooth=0, instead of smooth=2)
        m_flow = valveCharacteristic(opening)*Av*sqrt(Medium.density(state_a))*
                      (if dp>=0 then Utilities.regRoot(dp, dp_small) else 0);
        */
      elseif not allowFlowReversal then
        m_flow = relativeFlowCoefficient*Av*sqrt(Medium.density(state_a))*
                      Utilities.regRoot(dp, dp_small);
      else
        m_flow = relativeFlowCoefficient*Av*
                    Modelica.Fluid.Utilities.regRoot2(dp,dp_small,Medium.density(state_a),Medium.density(state_b));

        /* In Modelica 3.1 (Disadvantage: Unnecessary event at dp=0, and smooth=0, instead of smooth=2)
        m_flow = smooth(0, Utilities.regRoot(dp, dp_small)*(if dp>=0 then sqrt(Medium.density(state_a)) else sqrt(Medium.density(state_b))));
        */
      end if;

    end ValveIncompressible;

* * * * *

![image13](Modelica.Fluid.Valves.ValveIncompressibleI.png) [Modelica.Fluid.Valves](Modelica_Fluid_Valves.html#Modelica.Fluid.Valves).ValveVaporizing
====================================================================================================================================================

**Valve for possibly vaporizing (almost) incompressible fluids, accounts
for choked flow conditions**

Information
-----------

::

Valve model according to the IEC 534/ISA S.75 standards for valve
sizing, incompressible fluid at the inlet, and possibly two-phase fluid
at the outlet, including choked flow conditions.

The parameters of this model are explained in detail in
[PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve)
(the base model for valves).

The model operating range includes choked flow operation, which takes
place for low outlet pressures due to flashing in the vena contracta;
otherwise, non-choking conditions are assumed.

This model requires a two-phase medium model, to describe the liquid and
(possible) two-phase conditions.

The default liquid pressure recovery coefficient `Fl` is constant and
given by the parameter `Fl_nominal`. The relative change (per unit) of
the recovery coefficient can be specified as a given function of the
valve opening by replacing the `FlCharacteristic` function.

If `checkValve` is false, the valve supports reverse flow, with a
symmetric flow characteric curve. Otherwise, reverse flow is stopped
(check valve behaviour).

The treatment of parameters **Kv** and **Cv** is explained in detail in
the [User's
Guide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.ValveCharacteristics).

::

Extends from
[BaseClasses.PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve)
(Base model for valves).

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name                      Defaul Description
                                                    t      
  ----------------------- ------------------------- ------ ----------------
  replaceable package     [PartialMedium](Modelica_ Medium 
  Medium                  Media_Interfaces_PartialM in the 
                          edium.html#Modelica.Media compon 
                          .Interfaces.PartialMedium ent    
                          )                                

  replaceable function    [linear](Modelica_Fluid_V Inhere 
  valveCharacteristic     alves_BaseClasses_ValveCh nt     
                          aracteristics.html#Modeli flow   
                          ca.Fluid.Valves.BaseClass charac 
                          es.ValveCharacteristics.l terist 
                          inear)                    ic     

  Real                    Fl\_nominal               0.9    Liquid pressure
                                                           recovery factor

  replaceable function    Modelica.Fluid.Valves.Bas Pressu 
  FlCharacteristic        eCl...                    re     
                                                    recove 
                                                    ry     
                                                    charac 
                                                    terist 
                                                    ic     

  Flow Coefficient                                         

  [CvTypes](Modelica_Flui CvData                    Modeli Selection of
  d_Types.html#Modelica.F                           ca.Flu flow coefficient
  luid.Types.CvTypes)                               id.Typ 
                                                    es.CvT 
                                                    ypes.. 
                                                    .      

  [Area](Modelica_SIunits Av                        0      Av (metric) flow
  .html#Modelica.SIunits.                                  coefficient [m2]
  Area)                                                    

  Real                    Kv                        0      Kv (metric) flow
                                                           coefficient
                                                           [m3/h]

  Real                    Cv                        0      Cv (US) flow
                                                           coefficient
                                                           [USG/min]

  Nominal operating point                                  

  [Pressure](Modelica_SIu dp\_nominal                      Nominal pressure
  nits.html#Modelica.SIun                                  drop [Pa]
  its.Pressure)                                            

  [MassFlowRate](Modelica m\_flow\_nominal                 Nominal mass
  _Media_Interfaces_Parti                                  flowrate [kg/s]
  alMedium.html#Modelica.                                  
  Media.Interfaces.Partia                                  
  lMedium.MassFlowRate)                                    

  [Density](Modelica_Medi rho\_nominal              Medium Nominal inlet
  a_Interfaces_PartialMed                           .densi density [kg/m3]
  ium.html#Modelica.Media                           ty\_pT 
  .Interfaces.PartialMedi                           X(Medi 
  um.Density)                                       um.p\_ 
                                                    ...    

  Real                    opening\_nominal          1      Nominal opening

  Filtered opening                                         

  Boolean                 filteredOpening           false  = true, if
                                                           opening is
                                                           filtered with a
                                                           2nd order
                                                           CriticalDamping
                                                           filter

  [Time](Modelica_SIunits riseTime                  1      Rise time of the
  .html#Modelica.SIunits.                                  filter (time to
  Time)                                                    reach 99.6 % of
                                                           an opening step)
                                                           [s]

  Real                    leakageOpening            1e-3   The opening
                                                           signal is
                                                           limited by
                                                           leakageOpening
                                                           (to improve the
                                                           numerics)

  **Assumptions**                                          

  Boolean                 allowFlowReversal         system = true to allow
                                                    .allow flow reversal,
                                                    FlowRe false restricts
                                                    versal to design
                                                           direction
                                                           (port\_a -\>
                                                           port\_b)

  Boolean                 checkValve                false  Reverse flow
                                                           stopped

  **Advanced**                                             

  [AbsolutePressure](Mode dp\_start                 dp\_no Guess value of
  lica_Media_Interfaces_P                           minal  dp = port\_a.p -
  artialMedium.html#Model                                  port\_b.p [Pa]
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  [MassFlowRate](Modelica m\_flow\_start            m\_flo Guess value of
  _Media_Interfaces_Parti                           w\_nom m\_flow =
  alMedium.html#Modelica.                           inal   port\_a.m\_flow
  Media.Interfaces.Partia                                  [kg/s]
  lMedium.MassFlowRate)                                    

  [MassFlowRate](Modelica m\_flow\_small            system Small mass flow
  _Media_Interfaces_Parti                           .m\_fl rate for
  alMedium.html#Modelica.                           ow\_sm regularization
  Media.Interfaces.Partia                           all    of zero flow
  lMedium.MassFlowRate)                                    [kg/s]

  [Pressure](Modelica_SIu dp\_small                 system Regularisation
  nits.html#Modelica.SIun                           .dp\_s of zero flow
  its.Pressure)                                     mall   [Pa]

  Diagnostics                                              

  Boolean                 show\_T                   true   = true, if
                                                           temperatures at
                                                           port\_a and
                                                           port\_b are
                                                           computed

  Boolean                 show\_V\_flow             true   = true, if
                                                           volume flow rate
                                                           at inflowing
                                                           port is computed
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                             Name         Description
  -------------------------------- ------------ ---------------------------
  replaceable package Medium       Medium in    
                                   the          
                                   component    

  [FluidPort\_a](Modelica_Fluid_In port\_a      Fluid connector a (positive
  terfaces.html#Modelica.Fluid.Int              design flow direction is
  erfaces.FluidPort_a)                          from port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_In port\_b      Fluid connector b (positive
  terfaces.html#Modelica.Fluid.Int              design flow direction is
  erfaces.FluidPort_b)                          from port\_a to port\_b)

  input                            opening      Valve position in the range
  [RealInput](Modelica_Blocks_Inte              0..1
  rfaces.html#Modelica.Blocks.Inte              
  rfaces.RealInput)                             

  output                           opening\_fil Filtered valve position in
  [RealOutput](Modelica_Blocks_Int tered        the range 0..1
  erfaces.html#Modelica.Blocks.Int              
  erfaces.RealOutput)                           

  replaceable function             Pressure     
  FlCharacteristic                 recovery     
                                   characterist 
                                   ic           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ValveVaporizing 
      "Valve for possibly vaporizing (almost) incompressible fluids, accounts for choked flow conditions"
      import Modelica.Fluid.Types.CvTypes;
      extends BaseClasses.PartialValve(
        redeclare replaceable package Medium =
            Modelica.Media.Water.WaterIF97_ph                                    constrainedby 
          Modelica.Media.Interfaces.PartialTwoPhaseMedium);
      parameter Real Fl_nominal=0.9 "Liquid pressure recovery factor";
      replaceable function FlCharacteristic =
          Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.one
        constrainedby 
        Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun 
        "Pressure recovery characteristic";
      Real Ff "Ff coefficient (see IEC/ISA standard)";
      Real Fl "Pressure recovery coefficient Fl (see IEC/ISA standard)";
      SI.Pressure dpEff "Effective pressure drop";
      Medium.Temperature T_in "Inlet temperature";
      Medium.AbsolutePressure p_sat "Saturation pressure";
      Medium.AbsolutePressure p_in "Inlet pressure";
      Medium.AbsolutePressure p_out "Outlet pressure";
    initial equation 
      assert(not CvData == CvTypes.OpPoint, "OpPoint option not supported for vaporizing valve");
    equation 
      p_in = port_a.p;
      p_out = port_b.p;
      T_in = Medium.temperature(state_a);
      p_sat = Medium.saturationPressure(T_in);
      Ff = 0.96 - 0.28*sqrt(p_sat/Medium.fluidConstants[1].criticalPressure);
      Fl = Fl_nominal*FlCharacteristic(opening_actual);
      dpEff = if p_out < (1 - Fl^2)*p_in + Ff*Fl^2*p_sat then 
                Fl^2*(p_in - Ff*p_sat) else dp 
        "Effective pressure drop, accounting for possible choked conditions";
      // m_flow = valveCharacteristic(opening)*Av*sqrt(d)*sqrt(dpEff);
      if checkValve then
        m_flow = valveCharacteristic(opening_actual)*Av*sqrt(Medium.density(state_a))*
                   Modelica.Fluid.Utilities.regRoot2(dpEff,dp_small,1.0,0.0,use_yd0=true,yd0=0.0);
       /* In Modelica 3.1 (Disadvantage: Unnecessary event at dpEff=0, and smooth=0, instead of smooth=2)
        m_flow = valveCharacteristic(opening)*Av*sqrt(Medium.density(state_a))*
                      (if dpEff>=0 then Utilities.regRoot(dpEff, dp_small) else 0);
       */
      elseif not allowFlowReversal then
        m_flow = valveCharacteristic(opening_actual)*Av*sqrt(Medium.density(state_a))*
                      Utilities.regRoot(dpEff, dp_small);
      else
        m_flow = valveCharacteristic(opening_actual)*Av*
                    Modelica.Fluid.Utilities.regRoot2(dpEff,dp_small,Medium.density(state_a),Medium.density(state_b));
        /* In Modelica 3.1 (Disadvantage: Unnecessary event at dp=0, and smooth=0, instead of smooth=2)
         m_flow = valveCharacteristic(opening)*Av*
          smooth(0, Utilities.regRoot(dpEff, dp_small)*(if dpEff>=0 then sqrt(Medium.density(state_a)) else sqrt(Medium.density(state_b))));
       */
      end if;

    end ValveVaporizing;

* * * * *

![image14](Modelica.Fluid.Valves.ValveIncompressibleI.png) [Modelica.Fluid.Valves](Modelica_Fluid_Valves.html#Modelica.Fluid.Valves).ValveCompressible
======================================================================================================================================================

**Valve for compressible fluids, accounts for choked flow conditions**

Information
-----------

::

Valve model according to the IEC 534/ISA S.75 standards for valve
sizing, compressible fluid, no phase change, also covering choked-flow
conditions.

The parameters of this model are explained in detail in
[PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve)
(the base model for valves).

This model can be used with gases and vapours, with arbitrary pressure
ratio between inlet and outlet.

The product Fk\*xt is given by the parameter `Fxt_full`, and is assumed
constant by default. The relative change (per unit) of the xt
coefficient with the valve opening can be specified by replacing the
`xtCharacteristic` function.

If `checkValve` is false, the valve supports reverse flow, with a
symmetric flow characteric curve. Otherwise, reverse flow is stopped
(check valve behaviour).

The treatment of parameters **Kv** and **Cv** is explained in detail in
the [User's
Guide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.ValveCharacteristics).

::

Extends from
[BaseClasses.PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve)
(Base model for valves).

Parameters
----------

  -------------------------------------------------------------------------
  Type                    Name                      Defaul Description
                                                    t      
  ----------------------- ------------------------- ------ ----------------
  replaceable package     [PartialMedium](Modelica_ Medium 
  Medium                  Media_Interfaces_PartialM in the 
                          edium.html#Modelica.Media compon 
                          .Interfaces.PartialMedium ent    
                          )                                

  replaceable function    [linear](Modelica_Fluid_V Inhere 
  valveCharacteristic     alves_BaseClasses_ValveCh nt     
                          aracteristics.html#Modeli flow   
                          ca.Fluid.Valves.BaseClass charac 
                          es.ValveCharacteristics.l terist 
                          inear)                    ic     

  Real                    Fxt\_full                 0.5    Fk\*xt critical
                                                           ratio at full
                                                           opening

  replaceable function    Modelica.Fluid.Valves.Bas Critic 
  xtCharacteristic        eCl...                    al     
                                                    ratio  
                                                    charac 
                                                    terist 
                                                    ic     

  Flow Coefficient                                         

  [CvTypes](Modelica_Flui CvData                    Modeli Selection of
  d_Types.html#Modelica.F                           ca.Flu flow coefficient
  luid.Types.CvTypes)                               id.Typ 
                                                    es.CvT 
                                                    ypes.. 
                                                    .      

  [Area](Modelica_SIunits Av                        0      Av (metric) flow
  .html#Modelica.SIunits.                                  coefficient [m2]
  Area)                                                    

  Real                    Kv                        0      Kv (metric) flow
                                                           coefficient
                                                           [m3/h]

  Real                    Cv                        0      Cv (US) flow
                                                           coefficient
                                                           [USG/min]

  Nominal operating point                                  

  [Pressure](Modelica_SIu dp\_nominal                      Nominal pressure
  nits.html#Modelica.SIun                                  drop [Pa]
  its.Pressure)                                            

  [MassFlowRate](Modelica m\_flow\_nominal                 Nominal mass
  _Media_Interfaces_Parti                                  flowrate [kg/s]
  alMedium.html#Modelica.                                  
  Media.Interfaces.Partia                                  
  lMedium.MassFlowRate)                                    

  [Density](Modelica_Medi rho\_nominal              Medium Nominal inlet
  a_Interfaces_PartialMed                           .densi density [kg/m3]
  ium.html#Modelica.Media                           ty\_pT 
  .Interfaces.PartialMedi                           X(Medi 
  um.Density)                                       um.p\_ 
                                                    ...    

  Real                    opening\_nominal          1      Nominal opening

  [AbsolutePressure](Mode p\_nominal                       Nominal inlet
  lica_Media_Interfaces_P                                  pressure [Pa]
  artialMedium.html#Model                                  
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  Filtered opening                                         

  Boolean                 filteredOpening           false  = true, if
                                                           opening is
                                                           filtered with a
                                                           2nd order
                                                           CriticalDamping
                                                           filter

  [Time](Modelica_SIunits riseTime                  1      Rise time of the
  .html#Modelica.SIunits.                                  filter (time to
  Time)                                                    reach 99.6 % of
                                                           an opening step)
                                                           [s]

  Real                    leakageOpening            1e-3   The opening
                                                           signal is
                                                           limited by
                                                           leakageOpening
                                                           (to improve the
                                                           numerics)

  **Assumptions**                                          

  Boolean                 allowFlowReversal         system = true to allow
                                                    .allow flow reversal,
                                                    FlowRe false restricts
                                                    versal to design
                                                           direction
                                                           (port\_a -\>
                                                           port\_b)

  Boolean                 checkValve                false  Reverse flow
                                                           stopped

  **Advanced**                                             

  [AbsolutePressure](Mode dp\_start                 dp\_no Guess value of
  lica_Media_Interfaces_P                           minal  dp = port\_a.p -
  artialMedium.html#Model                                  port\_b.p [Pa]
  ica.Media.Interfaces.Pa                                  
  rtialMedium.AbsolutePre                                  
  ssure)                                                   

  [MassFlowRate](Modelica m\_flow\_start            m\_flo Guess value of
  _Media_Interfaces_Parti                           w\_nom m\_flow =
  alMedium.html#Modelica.                           inal   port\_a.m\_flow
  Media.Interfaces.Partia                                  [kg/s]
  lMedium.MassFlowRate)                                    

  [MassFlowRate](Modelica m\_flow\_small            system Small mass flow
  _Media_Interfaces_Parti                           .m\_fl rate for
  alMedium.html#Modelica.                           ow\_sm regularization
  Media.Interfaces.Partia                           all    of zero flow
  lMedium.MassFlowRate)                                    [kg/s]

  [Pressure](Modelica_SIu dp\_small                 system Regularisation
  nits.html#Modelica.SIun                           .dp\_s of zero flow
  its.Pressure)                                     mall   [Pa]

  Diagnostics                                              

  Boolean                 show\_T                   true   = true, if
                                                           temperatures at
                                                           port\_a and
                                                           port\_b are
                                                           computed

  Boolean                 show\_V\_flow             true   = true, if
                                                           volume flow rate
                                                           at inflowing
                                                           port is computed
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                             Name        Description
  -------------------------------- ----------- ---------------------------
  [FluidPort\_a](Modelica_Fluid_In port\_a     Fluid connector a (positive
  terfaces.html#Modelica.Fluid.Int             design flow direction is
  erfaces.FluidPort_a)                         from port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_In port\_b     Fluid connector b (positive
  terfaces.html#Modelica.Fluid.Int             design flow direction is
  erfaces.FluidPort_b)                         from port\_a to port\_b)

  input                            opening     Valve position in the range
  [RealInput](Modelica_Blocks_Inte             0..1
  rfaces.html#Modelica.Blocks.Inte             
  rfaces.RealInput)                            

  output                           opening\_fi Filtered valve position in
  [RealOutput](Modelica_Blocks_Int ltered      the range 0..1
  erfaces.html#Modelica.Blocks.Int             
  erfaces.RealOutput)                          

  replaceable function             Critical    
  xtCharacteristic                 ratio       
                                   characteris 
                                   tic         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ValveCompressible 
      "Valve for compressible fluids, accounts for choked flow conditions"
      extends BaseClasses.PartialValve;
      import Modelica.Fluid.Types.CvTypes;
      parameter Medium.AbsolutePressure p_nominal "Nominal inlet pressure";
      parameter Real Fxt_full=0.5 "Fk*xt critical ratio at full opening";
      replaceable function xtCharacteristic =
          Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.one
        constrainedby 
        Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun 
        "Critical ratio characteristic";
      Real Fxt;
      Real x "Pressure drop ratio";
      Real xs "Saturated pressure drop ratio";
      Real Y "Compressibility factor";
      Medium.AbsolutePressure p "Inlet pressure";
    protected 
      parameter Real Fxt_nominal(fixed=false) "Nominal Fxt";
      parameter Real x_nominal(fixed=false) "Nominal pressure drop ratio";
      parameter Real xs_nominal(fixed=false) 
        "Nominal saturated pressure drop ratio";
      parameter Real Y_nominal(fixed=false) "Nominal compressibility factor";

    initial equation 
      if CvData == CvTypes.OpPoint then
        // Determination of Av by the nominal operating point conditions
        Fxt_nominal = Fxt_full*xtCharacteristic(opening_nominal);
        x_nominal = dp_nominal/p_nominal;
        xs_nominal = smooth(0, if x_nominal > Fxt_nominal then Fxt_nominal else x_nominal);
        Y_nominal = 1 - abs(xs_nominal)/(3*Fxt_nominal);
        m_flow_nominal = valveCharacteristic(opening_nominal)*Av*Y_nominal*sqrt(rho_nominal)*Utilities.regRoot(p_nominal*xs_nominal, dp_small);
      else
        // Dummy values
        Fxt_nominal = 0;
        x_nominal = 0;
        xs_nominal = 0;
        Y_nominal = 0;
      end if;

    equation 
      p = noEvent(if dp>=0 then port_a.p else port_b.p);
      Fxt = Fxt_full*xtCharacteristic(opening_actual);
      x = dp/p;
      xs = smooth(0, if x < -Fxt then -Fxt else if x > Fxt then Fxt else x);
      Y = 1 - abs(xs)/(3*Fxt);
      // m_flow = valveCharacteristic(opening)*Av*Y*sqrt(d)*sqrt(p*xs);
      if checkValve then
        m_flow = valveCharacteristic(opening_actual)*Av*Y*sqrt(Medium.density(state_a))*
          (if xs>=0 then Utilities.regRoot(p*xs, dp_small) else 0);
      elseif not allowFlowReversal then
        m_flow = valveCharacteristic(opening_actual)*Av*sqrt(Medium.density(state_a))*
                      Utilities.regRoot(p*xs, dp_small);
      else
        m_flow = valveCharacteristic(opening_actual)*Av*Y*
          smooth(0, Utilities.regRoot(p*xs, dp_small)*(if xs>=0 then sqrt(Medium.density(state_a)) else sqrt(Medium.density(state_b))));
    /*
        m_flow = valveCharacteristic(opening)*Av*Y*
                      Modelica.Fluid.Utilities.regRoot2(p*xs, dp_small, Medium.density(state_a), Medium.density(state_b));
    */
      end if;

    end ValveCompressible;

* * * * *

![image15](Modelica.Fluid.Valves.ValveLinearI.png) [Modelica.Fluid.Valves](Modelica_Fluid_Valves.html#Modelica.Fluid.Valves).ValveLinear
========================================================================================================================================

**Valve for water/steam flows with linear pressure drop**

Information
-----------

::

This very simple model provides a pressure drop which is proportional to
the flowrate and to the `opening` input, without computing any fluid
property. It can be used for testing purposes, when a simple model of a
variable pressure loss is needed.

A medium model must be nevertheless be specified, so that the fluid
ports can be connected to other components using the same medium model.

The model is adiabatic (no heat losses to the ambient) and neglects
changes in kinetic energy from the inlet to the outlet.

::

Extends from
[Modelica.Fluid.Interfaces.PartialTwoPortTransport](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport)
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
----------

  ------------------------------------------------------------------------
  Type                      Name                  Defau Description
                                                  lt    
  ------------------------- --------------------- ----- ------------------
  replaceable package       [PartialMedium](Model Mediu 
  Medium                    ica_Media_Interfaces_ m     
                            PartialMedium.html#Mo in    
                            delica.Media.Interfac the   
                            es.PartialMedium)     compo 
                                                  nent  

  [AbsolutePressure](Modeli dp\_nominal                 Nominal pressure
  ca_SIunits.html#Modelica.                             drop at full
  SIunits.AbsolutePressure)                             opening [Pa]

  [MassFlowRate](Modelica_M m\_flow\_nominal            Nominal mass
  edia_Interfaces_PartialMe                             flowrate at full
  dium.html#Modelica.Media.                             opening [kg/s]
  Interfaces.PartialMedium.                             
  MassFlowRate)                                         

  **Assumptions**                                       

  Boolean                   allowFlowReversal     syste = true to allow
                                                  m.all flow reversal,
                                                  owFlo false restricts to
                                                  wReve design direction
                                                  rsal  (port\_a -\>
                                                        port\_b)

  **Advanced**                                          

  [AbsolutePressure](Modeli dp\_start             0.01\ Guess value of dp
  ca_Media_Interfaces_Parti                       *syst = port\_a.p -
  alMedium.html#Modelica.Me                       em.p\ port\_b.p [Pa]
  dia.Interfaces.PartialMed                       _star 
  ium.AbsolutePressure)                           t     

  [MassFlowRate](Modelica_M m\_flow\_start        syste Guess value of
  edia_Interfaces_PartialMe                       m.m\_ m\_flow =
  dium.html#Modelica.Media.                       flow\ port\_a.m\_flow
  Interfaces.PartialMedium.                       _star [kg/s]
  MassFlowRate)                                   t     

  [MassFlowRate](Modelica_M m\_flow\_small        syste Small mass flow
  edia_Interfaces_PartialMe                       m.m\_ rate for
  dium.html#Modelica.Media.                       flow\ regularization of
  Interfaces.PartialMedium.                       _smal zero flow [kg/s]
  MassFlowRate)                                   l     

  Diagnostics                                           

  Boolean                   show\_T               true  = true, if
                                                        temperatures at
                                                        port\_a and
                                                        port\_b are
                                                        computed

  Boolean                   show\_V\_flow         true  = true, if volume
                                                        flow rate at
                                                        inflowing port is
                                                        computed
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                 Name Description
  ------------------------------------ ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Interf port Fluid connector a (positive
  aces.html#Modelica.Fluid.Interfaces. \_a  design flow direction is from
  FluidPort_a)                              port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interf port Fluid connector b (positive
  aces.html#Modelica.Fluid.Interfaces. \_b  design flow direction is from
  FluidPort_b)                              port\_a to port\_b)

  input                                open =1: completely open, =0:
  [RealInput](Modelica_Blocks_Interfac ing  completely closed
  es.html#Modelica.Blocks.Interfaces.R      
  ealInput)                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ValveLinear 
      "Valve for water/steam flows with linear pressure drop"
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;
      parameter SI.AbsolutePressure dp_nominal 
        "Nominal pressure drop at full opening";
      parameter Medium.MassFlowRate m_flow_nominal 
        "Nominal mass flowrate at full opening";
      final parameter Types.HydraulicConductance k = m_flow_nominal/dp_nominal 
        "Hydraulic conductance at full opening";
      Modelica.Blocks.Interfaces.RealInput opening(min=0,max=1) 
        "=1: completely open, =0: completely closed";

    equation 
      m_flow = opening*k*dp;

      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

    end ValveLinear;

* * * * *

![image16](Modelica.Fluid.Valves.ValveDiscreteI.png) [Modelica.Fluid.Valves](Modelica_Fluid_Valves.html#Modelica.Fluid.Valves).ValveDiscrete
============================================================================================================================================

**Valve for water/steam flows with linear pressure drop**

Information
-----------

::

This very simple model provides a (small) pressure drop which is
proportional to the flowrate if the Boolean open signal is **true**.
Otherwise, the mass flow rate is zero. If opening\_min \> 0, a small
leakage mass flow rate occurs when open = **false**.

This model can be used for simplified modelling of on-off valves, when
it is not important to accurately describe the pressure loss when the
valve is open. Although the medium model is not used to determine the
pressure loss, it must be nevertheless be specified, so that the fluid
ports can be connected to other components using the same medium model.

The model is adiabatic (no heat losses to the ambient) and neglects
changes in kinetic energy from the inlet to the outlet.

In a diagram animation, the valve is shown in "green", when it is open.

::

Extends from
[Modelica.Fluid.Interfaces.PartialTwoPortTransport](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport)
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
----------

  ------------------------------------------------------------------------
  Type                      Name                  Defau Description
                                                  lt    
  ------------------------- --------------------- ----- ------------------
  replaceable package       [PartialMedium](Model Mediu 
  Medium                    ica_Media_Interfaces_ m     
                            PartialMedium.html#Mo in    
                            delica.Media.Interfac the   
                            es.PartialMedium)     compo 
                                                  nent  

  [Pressure](Modelica_SIuni dp\_nominal                 Nominal pressure
  ts.html#Modelica.SIunits.                             drop at full
  Pressure)                                             opening=1 [Pa]

  [MassFlowRate](Modelica_M m\_flow\_nominal            Nominal mass
  edia_Interfaces_PartialMe                             flowrate at full
  dium.html#Modelica.Media.                             opening=1 [kg/s]
  Interfaces.PartialMedium.                             
  MassFlowRate)                                         

  Real                      opening\_min          0     Remaining opening
                                                        if closed, causing
                                                        small leakage flow

  **Assumptions**                                       

  Boolean                   allowFlowReversal     syste = true to allow
                                                  m.all flow reversal,
                                                  owFlo false restricts to
                                                  wReve design direction
                                                  rsal  (port\_a -\>
                                                        port\_b)

  **Advanced**                                          

  [AbsolutePressure](Modeli dp\_start             0.01\ Guess value of dp
  ca_Media_Interfaces_Parti                       *syst = port\_a.p -
  alMedium.html#Modelica.Me                       em.p\ port\_b.p [Pa]
  dia.Interfaces.PartialMed                       _star 
  ium.AbsolutePressure)                           t     

  [MassFlowRate](Modelica_M m\_flow\_start        syste Guess value of
  edia_Interfaces_PartialMe                       m.m\_ m\_flow =
  dium.html#Modelica.Media.                       flow\ port\_a.m\_flow
  Interfaces.PartialMedium.                       _star [kg/s]
  MassFlowRate)                                   t     

  [MassFlowRate](Modelica_M m\_flow\_small        syste Small mass flow
  edia_Interfaces_PartialMe                       m.m\_ rate for
  dium.html#Modelica.Media.                       flow\ regularization of
  Interfaces.PartialMedium.                       _smal zero flow [kg/s]
  MassFlowRate)                                   l     

  Diagnostics                                           

  Boolean                   show\_T               true  = true, if
                                                        temperatures at
                                                        port\_a and
                                                        port\_b are
                                                        computed

  Boolean                   show\_V\_flow         true  = true, if volume
                                                        flow rate at
                                                        inflowing port is
                                                        computed
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                  Name Description
  ------------------------------------- ---- ------------------------------
  [FluidPort\_a](Modelica_Fluid_Interfa port Fluid connector a (positive
  ces.html#Modelica.Fluid.Interfaces.Fl \_a  design flow direction is from
  uidPort_a)                                 port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Interfa port Fluid connector b (positive
  ces.html#Modelica.Fluid.Interfaces.Fl \_b  design flow direction is from
  uidPort_b)                                 port\_a to port\_b)

  input                                 open 
  [BooleanInput](Modelica_Blocks_Interf      
  aces.html#Modelica.Blocks.Interfaces.      
  BooleanInput)                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model ValveDiscrete 
      "Valve for water/steam flows with linear pressure drop"
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;
      parameter SI.Pressure dp_nominal "Nominal pressure drop at full opening=1";
      parameter Medium.MassFlowRate m_flow_nominal 
        "Nominal mass flowrate at full opening=1";
      final parameter Types.HydraulicConductance k = m_flow_nominal/dp_nominal 
        "Hydraulic conductance at full opening=1";
      Modelica.Blocks.Interfaces.BooleanInput open;
      parameter Real opening_min(min=0)=0 
        "Remaining opening if closed, causing small leakage flow";
    equation 
      m_flow = if open then 1*k*dp else opening_min*k*dp;

      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

    end ValveDiscrete;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:17 2010.
