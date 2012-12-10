% Modelica.Fluid.Sources
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Sources
============================================================

**Define fixed or prescribed boundary conditions**

Information
-----------

::

Package **Sources** contains generic sources for fluid connectors to
define fixed or prescribed ambient conditions.

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                  Description
  ------------------------------------- ----------------------------------
  ![image6](Modelica.Fluid.Sources.Fixe Boundary source component
  dBoundaryS.png)                       
  [FixedBoundary](Modelica_Fluid_Source 
  s.html#Modelica.Fluid.Sources.FixedBo 
  undary)                               

  ![image7](Modelica.Fluid.Sources.Boun Boundary with prescribed pressure,
  dary_pTS.png)                         temperature, composition and trace
  [Boundary\_pT](Modelica_Fluid_Sources substances
  .html#Modelica.Fluid.Sources.Boundary 
  _pT)                                  

  ![image8](Modelica.Fluid.Sources.Boun Boundary with prescribed pressure,
  dary_phS.png)                         specific enthalpy, composition and
  [Boundary\_ph](Modelica_Fluid_Sources trace substances
  .html#Modelica.Fluid.Sources.Boundary 
  _ph)                                  

  ![image9](Modelica.Fluid.Sources.Mass Ideal flow source that produces a
  FlowSource_TS.png)                    prescribed mass flow with
  [MassFlowSource\_T](Modelica_Fluid_So prescribed temperature, mass
  urces.html#Modelica.Fluid.Sources.Mas fraction and trace substances
  sFlowSource_T)                        

  ![image10](Modelica.Fluid.Sources.Mas Ideal flow source that produces a
  sFlowSource_hS.png)                   prescribed mass flow with
  [MassFlowSource\_h](Modelica_Fluid_So prescribed specific enthalpy, mass
  urces.html#Modelica.Fluid.Sources.Mas fraction and trace substances
  sFlowSource_h)                        

  ![image11](Modelica.Fluid.Sources.Bas Base classes used in the Sources
  eClassesS.png)                        package (only of interest to build
  [BaseClasses](Modelica_Fluid_Sources_ new component models)
  BaseClasses.html#Modelica.Fluid.Sourc 
  es.BaseClasses)                       
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Fluid.Sources.FixedBoundaryI.png) [Modelica.Fluid.Sources](Modelica_Fluid_Sources.html#Modelica.Fluid.Sources).FixedBoundary
================================================================================================================================================

**Boundary source component**

Information
-----------

::

Model **FixedBoundary** defines constant values for boundary conditions:

-   Boundary pressure or boundary density.
-   Boundary temperature or boundary specific enthalpy.
-   Boundary composition (only for multi-substance or trace-substance
    flow).

Note, that boundary temperature, density, specific enthalpy, mass
fractions and trace substances have only an effect if the mass flow is
from the Boundary into the port. If mass is flowing from the port into
the boundary, the boundary definitions, with exception of boundary
pressure, do not have an effect.

::

Extends from
[Sources.BaseClasses.PartialSource](Modelica_Fluid_Sources_BaseClasses.html#Modelica.Fluid.Sources.BaseClasses.PartialSource)
(Partial component source with one fluid connector).

Parameters
----------

  -------------------------------------------------------------------------
  Type                          Name                     Default  Descripti
                                                                  on
  ----------------------------- ------------------------ -------- ---------
  replaceable package Medium    [PartialMedium](Modelica Medium   
                                _Media_Interfaces_Partia model    
                                lMedium.html#Modelica.Me within   
                                dia.Interfaces.PartialMe the      
                                dium)                    source   

  Boundary pressure or Boundary                                   
  density                                                         

  Boolean                       use\_p                   true     select p
                                                                  or d

  [AbsolutePressure](Modelica_M p                        Medium.p Boundary
  edia_Interfaces_PartialMedium                          \_defaul pressure
  .html#Modelica.Media.Interfac                          t        [Pa]
  es.PartialMedium.AbsolutePres                                   
  sure)                                                           

  [Density](Modelica_Media_Inte d                        Medium.d Boundary
  rfaces_PartialMedium.html#Mod                          ensity\_ density
  elica.Media.Interfaces.Partia                          pTX(Medi [kg/m3]
  lMedium.Density)                                       um.p\_.. 
                                                         .        

  Boundary temperature or                                         
  Boundary specific enthalpy                                      

  Boolean                       use\_T                   true     select T
                                                                  or h

  [Temperature](Modelica_Media_ T                        Medium.T Boundary
  Interfaces_PartialMedium.html                          \_defaul temperatu
  #Modelica.Media.Interfaces.Pa                          t        re
  rtialMedium.Temperature)                                        [K]

  [SpecificEnthalpy](Modelica_M h                        Medium.h Boundary
  edia_Interfaces_PartialMedium                          \_defaul specific
  .html#Modelica.Media.Interfac                          t        enthalpy
  es.PartialMedium.SpecificEnth                                   [J/kg]
  alpy)                                                           

  Only for multi-substance flow                                   

  [MassFraction](Modelica_Media X[Medium.nX]             Medium.X Boundary
  _Interfaces_PartialMedium.htm                          \_defaul mass
  l#Modelica.Media.Interfaces.P                          t        fractions
  artialMedium.MassFraction)                                      m\_i/m
                                                                  [kg/kg]

  Only for trace-substance flow                                   

  [ExtraProperty](Modelica_Medi C[Medium.nC]             fill(0,  Boundary
  a_Interfaces_PartialMedium.ht                          Medium.n trace
  ml#Modelica.Media.Interfaces.                          C)       substance
  PartialMedium.ExtraProperty)                                    s
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name       Descriptio
                                                                 n
  --------------------------------------------------- ---------- ----------
  [FluidPorts\_b](Modelica_Fluid_Interfaces.html#Mode ports[nPor 
  lica.Fluid.Interfaces.FluidPorts_b)                 ts]        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedBoundary "Boundary source component"
      import Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables;
      extends Sources.BaseClasses.PartialSource;
      parameter Boolean use_p=true "select p or d";
      parameter Medium.AbsolutePressure p=Medium.p_default "Boundary pressure";
      parameter Medium.Density d=Medium.density_pTX(Medium.p_default, Medium.T_default, Medium.X_default) 
        "Boundary density";
      parameter Boolean use_T=true "select T or h";
      parameter Medium.Temperature T=Medium.T_default "Boundary temperature";
      parameter Medium.SpecificEnthalpy h=Medium.h_default 
        "Boundary specific enthalpy";
      parameter Medium.MassFraction X[Medium.nX](
           quantity=Medium.substanceNames)=Medium.X_default 
        "Boundary mass fractions m_i/m";

      parameter Medium.ExtraProperty C[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Boundary trace substances";
    protected 
      Medium.ThermodynamicState state;
    equation 
      Modelica.Fluid.Utilities.checkBoundary(Medium.mediumName, Medium.substanceNames,
                                            Medium.singleState, use_p, X,
                                            "FixedBoundary");
      if use_p or Medium.singleState then
         // p given
         if use_T then
            // p,T,X given
            state = Medium.setState_pTX(p, T, X);
         else
            // p,h,X given
            state = Medium.setState_phX(p, h, X);
         end if;

         if Medium.ThermoStates == IndependentVariables.dTX then
            medium.d = Medium.density(state);
         else
            medium.p = Medium.pressure(state);
         end if;

         if Medium.ThermoStates == IndependentVariables.ph or 
            Medium.ThermoStates == IndependentVariables.phX then
            medium.h = Medium.specificEnthalpy(state);
         else
            medium.T = Medium.temperature(state);
         end if;

      else
         // d given
         if use_T then
            // d,T,X given
            state = Medium.setState_dTX(d, T, X);

            if Medium.ThermoStates == IndependentVariables.dTX then
               medium.d = Medium.density(state);
            else
               medium.p = Medium.pressure(state);
            end if;

            if Medium.ThermoStates == IndependentVariables.ph or 
               Medium.ThermoStates == IndependentVariables.phX then
               medium.h = Medium.specificEnthalpy(state);
            else
               medium.T = Medium.temperature(state);
            end if;

         else
            // d,h,X given
            medium.d = d;
            medium.h = h;
            state = Medium.setState_dTX(d,T,X);
         end if;
      end if;

      medium.Xi = X[1:Medium.nXi];

      ports.C_outflow = fill(C, nPorts);
    end FixedBoundary;

* * * * *

![image13](Modelica.Fluid.Sources.Boundary_pTI.png) [Modelica.Fluid.Sources](Modelica_Fluid_Sources.html#Modelica.Fluid.Sources).Boundary\_pT
=============================================================================================================================================

**Boundary with prescribed pressure, temperature, composition and trace
substances**

Information
-----------

::

Defines prescribed values for boundary conditions:

-   Prescribed boundary pressure.
-   Prescribed boundary temperature.
-   Boundary composition (only for multi-substance or trace-substance
    flow).

If `use_p_in` is false (default option), the `p` parameter is used as
boundary pressure, and the `p_in` input connector is disabled; if
`use_p_in` is true, then the `p` parameter is ignored, and the value
provided by the input connector is used instead.

The same thing goes for the temperature, composition and trace
substances.

Note, that boundary temperature, mass fractions and trace substances
have only an effect if the mass flow is from the boundary into the port.
If mass is flowing from the port into the boundary, the boundary
definitions, with exception of boundary pressure, do not have an effect.

::

Extends from
[Sources.BaseClasses.PartialSource](Modelica_Fluid_Sources_BaseClasses.html#Modelica.Fluid.Sources.BaseClasses.PartialSource)
(Partial component source with one fluid connector).

Parameters
----------

  ------------------------------------------------------------------------
  Type                         Name                    Default Description
  ---------------------------- ----------------------- ------- -----------
  replaceable package Medium   [PartialMedium](Modelic Medium  
                               a_Media_Interfaces_Part model   
                               ialMedium.html#Modelica within  
                               .Media.Interfaces.Parti the     
                               alMedium)               source  

  Boolean                      use\_p\_in              false   Get the
                                                               pressure
                                                               from the
                                                               input
                                                               connector

  Boolean                      use\_T\_in              false   Get the
                                                               temperature
                                                               from the
                                                               input
                                                               connector

  Boolean                      use\_X\_in              false   Get the
                                                               composition
                                                               from the
                                                               input
                                                               connector

  Boolean                      use\_C\_in              false   Get the
                                                               trace
                                                               substances
                                                               from the
                                                               input
                                                               connector

  [AbsolutePressure](Modelica_ p                       Medium. Fixed value
  Media_Interfaces_PartialMedi                         p\_defa of pressure
  um.html#Modelica.Media.Inter                         ult     [Pa]
  faces.PartialMedium.Absolute                                 
  Pressure)                                                    

  [Temperature](Modelica_Media T                       Medium. Fixed value
  _Interfaces_PartialMedium.ht                         T\_defa of
  ml#Modelica.Media.Interfaces                         ult     temperature
  .PartialMedium.Temperature)                                  [K]

  [MassFraction](Modelica_Medi X[Medium.nX]            Medium. Fixed value
  a_Interfaces_PartialMedium.h                         X\_defa of
  tml#Modelica.Media.Interface                         ult     composition
  s.PartialMedium.MassFraction                                 [kg/kg]
  )                                                            

  [ExtraProperty](Modelica_Med C[Medium.nC]            fill(0, Fixed
  ia_Interfaces_PartialMedium.                         Medium. values of
  html#Modelica.Media.Interfac                         nC)     trace
  es.PartialMedium.ExtraProper                                 substances
  ty)                                                          
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                        Name      Description
  ------------------------------------------- --------- ------------------
  [FluidPorts\_b](Modelica_Fluid_Interfaces.h ports[nPo 
  tml#Modelica.Fluid.Interfaces.FluidPorts_b) rts]      

  input                                       p\_in     Prescribed
  [RealInput](Modelica_Blocks_Interfaces.html           boundary pressure
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       T\_in     Prescribed
  [RealInput](Modelica_Blocks_Interfaces.html           boundary
  #Modelica.Blocks.Interfaces.RealInput)                temperature

  input                                       X\_in[Med Prescribed
  [RealInput](Modelica_Blocks_Interfaces.html ium.nX]   boundary
  #Modelica.Blocks.Interfaces.RealInput)                composition

  input                                       C\_in[Med Prescribed
  [RealInput](Modelica_Blocks_Interfaces.html ium.nC]   boundary trace
  #Modelica.Blocks.Interfaces.RealInput)                substances
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Boundary_pT 
      "Boundary with prescribed pressure, temperature, composition and trace substances"
      import Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables;

      extends Sources.BaseClasses.PartialSource;
      parameter Boolean use_p_in = false 
        "Get the pressure from the input connector";
      parameter Boolean use_T_in= false 
        "Get the temperature from the input connector";
      parameter Boolean use_X_in = false 
        "Get the composition from the input connector";
      parameter Boolean use_C_in = false 
        "Get the trace substances from the input connector";
      parameter Medium.AbsolutePressure p = Medium.p_default 
        "Fixed value of pressure";
      parameter Medium.Temperature T = Medium.T_default 
        "Fixed value of temperature";
      parameter Medium.MassFraction X[Medium.nX] = Medium.X_default 
        "Fixed value of composition";
      parameter Medium.ExtraProperty C[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Fixed values of trace substances";
      Modelica.Blocks.Interfaces.RealInput p_in if              use_p_in 
        "Prescribed boundary pressure";
      Modelica.Blocks.Interfaces.RealInput T_in if         use_T_in 
        "Prescribed boundary temperature";
      Modelica.Blocks.Interfaces.RealInput X_in[Medium.nX] if 
                                                            use_X_in 
        "Prescribed boundary composition";
      Modelica.Blocks.Interfaces.RealInput C_in[Medium.nC] if 
                                                            use_C_in 
        "Prescribed boundary trace substances";
    protected 
      Modelica.Blocks.Interfaces.RealInput p_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput T_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput X_in_internal[Medium.nX] 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput C_in_internal[Medium.nC] 
        "Needed to connect to conditional connector";
    equation 
      Modelica.Fluid.Utilities.checkBoundary(Medium.mediumName, Medium.substanceNames,
        Medium.singleState, true, X_in_internal, "Boundary_pT");
      connect(p_in, p_in_internal);
      connect(T_in, T_in_internal);
      connect(X_in, X_in_internal);
      connect(C_in, C_in_internal);
      if not use_p_in then
        p_in_internal = p;
      end if;
      if not use_T_in then
        T_in_internal = T;
      end if;
      if not use_X_in then
        X_in_internal = X;
      end if;
      if not use_C_in then
        C_in_internal = C;
      end if;
      medium.p = p_in_internal;
      if Medium.ThermoStates == IndependentVariables.ph or 
         Medium.ThermoStates == IndependentVariables.phX then
         medium.h = Medium.specificEnthalpy(Medium.setState_pTX(p_in_internal, T_in_internal, X_in_internal));
      else
         medium.T = T_in_internal;
      end if;
      medium.Xi = X_in_internal[1:Medium.nXi];
      ports.C_outflow = fill(C_in_internal, nPorts);
    end Boundary_pT;

* * * * *

![image14](Modelica.Fluid.Sources.Boundary_phI.png) [Modelica.Fluid.Sources](Modelica_Fluid_Sources.html#Modelica.Fluid.Sources).Boundary\_ph
=============================================================================================================================================

**Boundary with prescribed pressure, specific enthalpy, composition and
trace substances**

Information
-----------

::

Defines prescribed values for boundary conditions:

-   Prescribed boundary pressure.
-   Prescribed boundary temperature.
-   Boundary composition (only for multi-substance or trace-substance
    flow).

If `use_p_in` is false (default option), the `p` parameter is used as
boundary pressure, and the `p_in` input connector is disabled; if
`use_p_in` is true, then the `p` parameter is ignored, and the value
provided by the input connector is used instead.

The same thing goes for the specific enthalpy and composition

Note, that boundary temperature, mass fractions and trace substances
have only an effect if the mass flow is from the boundary into the port.
If mass is flowing from the port into the boundary, the boundary
definitions, with exception of boundary pressure, do not have an effect.

::

Extends from
[Sources.BaseClasses.PartialSource](Modelica_Fluid_Sources_BaseClasses.html#Modelica.Fluid.Sources.BaseClasses.PartialSource)
(Partial component source with one fluid connector).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name                    Default Description
  ---------------------------- ----------------------- ------- ------------
  replaceable package Medium   [PartialMedium](Modelic Medium  
                               a_Media_Interfaces_Part model   
                               ialMedium.html#Modelica within  
                               .Media.Interfaces.Parti the     
                               alMedium)               source  

  Boolean                      use\_p\_in              false   Get the
                                                               pressure
                                                               from the
                                                               input
                                                               connector

  Boolean                      use\_h\_in              false   Get the
                                                               specific
                                                               enthalpy
                                                               from the
                                                               input
                                                               connector

  Boolean                      use\_X\_in              false   Get the
                                                               composition
                                                               from the
                                                               input
                                                               connector

  Boolean                      use\_C\_in              false   Get the
                                                               trace
                                                               substances
                                                               from the
                                                               input
                                                               connector

  [AbsolutePressure](Modelica_ p                       Medium. Fixed value
  Media_Interfaces_PartialMedi                         p\_defa of pressure
  um.html#Modelica.Media.Inter                         ult     [Pa]
  faces.PartialMedium.Absolute                                 
  Pressure)                                                    

  [SpecificEnthalpy](Modelica_ h                       Medium. Fixed value
  Media_Interfaces_PartialMedi                         h\_defa of specific
  um.html#Modelica.Media.Inter                         ult     enthalpy
  faces.PartialMedium.Specific                                 [J/kg]
  Enthalpy)                                                    

  [MassFraction](Modelica_Medi X[Medium.nX]            Medium. Fixed value
  a_Interfaces_PartialMedium.h                         X\_defa of
  tml#Modelica.Media.Interface                         ult     composition
  s.PartialMedium.MassFraction                                 [kg/kg]
  )                                                            

  [ExtraProperty](Modelica_Med C[Medium.nC]            fill(0, Fixed values
  ia_Interfaces_PartialMedium.                         Medium. of trace
  html#Modelica.Media.Interfac                         nC)     substances
  es.PartialMedium.ExtraProper                                 
  ty)                                                          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name      Description
  ------------------------------------------- --------- -------------------
  [FluidPorts\_b](Modelica_Fluid_Interfaces.h ports[nPo 
  tml#Modelica.Fluid.Interfaces.FluidPorts_b) rts]      

  input                                       p\_in     Prescribed boundary
  [RealInput](Modelica_Blocks_Interfaces.html           pressure
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       h\_in     Prescribed boundary
  [RealInput](Modelica_Blocks_Interfaces.html           specific enthalpy
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       X\_in[Med Prescribed boundary
  [RealInput](Modelica_Blocks_Interfaces.html ium.nX]   composition
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       C\_in[Med Prescribed boundary
  [RealInput](Modelica_Blocks_Interfaces.html ium.nC]   trace substances
  #Modelica.Blocks.Interfaces.RealInput)                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Boundary_ph 
      "Boundary with prescribed pressure, specific enthalpy, composition and trace substances"
      import Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables;
      extends Sources.BaseClasses.PartialSource;
      parameter Boolean use_p_in = false 
        "Get the pressure from the input connector";
      parameter Boolean use_h_in= false 
        "Get the specific enthalpy from the input connector";
      parameter Boolean use_X_in = false 
        "Get the composition from the input connector";
      parameter Boolean use_C_in = false 
        "Get the trace substances from the input connector";
      parameter Medium.AbsolutePressure p = Medium.p_default 
        "Fixed value of pressure";
      parameter Medium.SpecificEnthalpy h = Medium.h_default 
        "Fixed value of specific enthalpy";
      parameter Medium.MassFraction X[Medium.nX] = Medium.X_default 
        "Fixed value of composition";
      parameter Medium.ExtraProperty C[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Fixed values of trace substances";
      Modelica.Blocks.Interfaces.RealInput p_in if              use_p_in 
        "Prescribed boundary pressure";
      Modelica.Blocks.Interfaces.RealInput h_in if              use_h_in 
        "Prescribed boundary specific enthalpy";
      Modelica.Blocks.Interfaces.RealInput X_in[Medium.nX] if 
                                                            use_X_in 
        "Prescribed boundary composition";
      Modelica.Blocks.Interfaces.RealInput C_in[Medium.nC] if 
                                                            use_C_in 
        "Prescribed boundary trace substances";
    protected 
      Modelica.Blocks.Interfaces.RealInput p_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput h_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput X_in_internal[Medium.nX] 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput C_in_internal[Medium.nC] 
        "Needed to connect to conditional connector";
    equation 
      Modelica.Fluid.Utilities.checkBoundary(Medium.mediumName, Medium.substanceNames,
        Medium.singleState, true, X_in_internal, "Boundary_ph");
      connect(p_in, p_in_internal);
      connect(h_in, h_in_internal);
      connect(X_in, X_in_internal);
      connect(C_in, C_in_internal);
      if not use_p_in then
        p_in_internal = p;
      end if;
      if not use_h_in then
        h_in_internal = h;
      end if;
      if not use_X_in then
        X_in_internal = X;
      end if;
      if not use_C_in then
        C_in_internal = C;
      end if;
      medium.p = p_in_internal;
      if Medium.ThermoStates == IndependentVariables.ph or 
         Medium.ThermoStates == IndependentVariables.phX then
         medium.h = h_in_internal;
      else
         medium.T = Medium.temperature(Medium.setState_phX(p_in_internal, h_in_internal, X_in_internal));
      end if;
      medium.Xi = X_in_internal[1:Medium.nXi];
      ports.C_outflow = fill(C_in_internal, nPorts);
    end Boundary_ph;

* * * * *

![image15](Modelica.Fluid.Sources.MassFlowSource_TI.png) [Modelica.Fluid.Sources](Modelica_Fluid_Sources.html#Modelica.Fluid.Sources).MassFlowSource\_T
=======================================================================================================================================================

**Ideal flow source that produces a prescribed mass flow with prescribed
temperature, mass fraction and trace substances**

Information
-----------

::

Models an ideal flow source, with prescribed values of flow rate,
temperature, composition and trace substances:

-   Prescribed mass flow rate.
-   Prescribed temperature.
-   Boundary composition (only for multi-substance or trace-substance
    flow).

If `use_m_flow_in` is false (default option), the `m_flow` parameter is
used as boundary pressure, and the `m_flow_in` input connector is
disabled; if `use_m_flow_in` is true, then the `m_flow` parameter is
ignored, and the value provided by the input connector is used instead.

The same thing goes for the temperature and composition

Note, that boundary temperature, mass fractions and trace substances
have only an effect if the mass flow is from the boundary into the port.
If mass is flowing from the port into the boundary, the boundary
definitions, with exception of boundary flow rate, do not have an
effect.

::

Extends from
[Sources.BaseClasses.PartialSource](Modelica_Fluid_Sources_BaseClasses.html#Modelica.Fluid.Sources.BaseClasses.PartialSource)
(Partial component source with one fluid connector).

Parameters
----------

  -------------------------------------------------------------------------
  Type                        Name                    Default Description
  --------------------------- ----------------------- ------- -------------
  replaceable package Medium  [PartialMedium](Modelic Medium  
                              a_Media_Interfaces_Part model   
                              ialMedium.html#Modelica within  
                              .Media.Interfaces.Parti the     
                              alMedium)               source  

  Boolean                     use\_m\_flow\_in        false   Get the mass
                                                              flow rate
                                                              from the
                                                              input
                                                              connector

  Boolean                     use\_T\_in              false   Get the
                                                              temperature
                                                              from the
                                                              input
                                                              connector

  Boolean                     use\_X\_in              false   Get the
                                                              composition
                                                              from the
                                                              input
                                                              connector

  Boolean                     use\_C\_in              false   Get the trace
                                                              substances
                                                              from the
                                                              input
                                                              connector

  [MassFlowRate](Modelica_Med m\_flow                 0       Fixed mass
  ia_Interfaces_PartialMedium                                 flow rate
  .html#Modelica.Media.Interf                                 going out of
  aces.PartialMedium.MassFlow                                 the fluid
  Rate)                                                       port [kg/s]

  [Temperature](Modelica_Medi T                       Medium. Fixed value
  a_Interfaces_PartialMedium.                         T\_defa of
  html#Modelica.Media.Interfa                         ult     temperature
  ces.PartialMedium.Temperatu                                 [K]
  re)                                                         

  [MassFraction](Modelica_Med X[Medium.nX]            Medium. Fixed value
  ia_Interfaces_PartialMedium                         X\_defa of
  .html#Modelica.Media.Interf                         ult     composition
  aces.PartialMedium.MassFrac                                 [kg/kg]
  tion)                                                       

  [ExtraProperty](Modelica_Me C[Medium.nC]            fill(0, Fixed values
  dia_Interfaces_PartialMediu                         Medium. of trace
  m.html#Modelica.Media.Inter                         nC)     substances
  faces.PartialMedium.ExtraPr                                 
  operty)                                                     
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                        Name      Description
  ------------------------------------------- --------- ------------------
  [FluidPorts\_b](Modelica_Fluid_Interfaces.h ports[nPo 
  tml#Modelica.Fluid.Interfaces.FluidPorts_b) rts]      

  input                                       m\_flow\_ Prescribed mass
  [RealInput](Modelica_Blocks_Interfaces.html in        flow rate
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       T\_in     Prescribed fluid
  [RealInput](Modelica_Blocks_Interfaces.html           temperature
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       X\_in[Med Prescribed fluid
  [RealInput](Modelica_Blocks_Interfaces.html ium.nX]   composition
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       C\_in[Med Prescribed
  [RealInput](Modelica_Blocks_Interfaces.html ium.nC]   boundary trace
  #Modelica.Blocks.Interfaces.RealInput)                substances
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MassFlowSource_T 
      "Ideal flow source that produces a prescribed mass flow with prescribed temperature, mass fraction and trace substances"
      extends Sources.BaseClasses.PartialSource;
      parameter Boolean use_m_flow_in = false 
        "Get the mass flow rate from the input connector";
      parameter Boolean use_T_in= false 
        "Get the temperature from the input connector";
      parameter Boolean use_X_in = false 
        "Get the composition from the input connector";
      parameter Boolean use_C_in = false 
        "Get the trace substances from the input connector";
      parameter Medium.MassFlowRate m_flow = 0 
        "Fixed mass flow rate going out of the fluid port";
      parameter Medium.Temperature T = Medium.T_default 
        "Fixed value of temperature";
      parameter Medium.MassFraction X[Medium.nX] = Medium.X_default 
        "Fixed value of composition";
      parameter Medium.ExtraProperty C[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Fixed values of trace substances";
      Modelica.Blocks.Interfaces.RealInput m_flow_in if     use_m_flow_in 
        "Prescribed mass flow rate";
      Modelica.Blocks.Interfaces.RealInput T_in if         use_T_in 
        "Prescribed fluid temperature";
      Modelica.Blocks.Interfaces.RealInput X_in[Medium.nX] if 
                                                            use_X_in 
        "Prescribed fluid composition";
      Modelica.Blocks.Interfaces.RealInput C_in[Medium.nC] if 
                                                            use_C_in 
        "Prescribed boundary trace substances";
    protected 
      Modelica.Blocks.Interfaces.RealInput m_flow_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput T_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput X_in_internal[Medium.nX] 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput C_in_internal[Medium.nC] 
        "Needed to connect to conditional connector";
    equation 
      Utilities.checkBoundary(Medium.mediumName, Medium.substanceNames,
        Medium.singleState, true, X_in_internal, "MassFlowSource_T");
      connect(m_flow_in, m_flow_in_internal);
      connect(T_in, T_in_internal);
      connect(X_in, X_in_internal);
      connect(C_in, C_in_internal);
      if not use_m_flow_in then
        m_flow_in_internal = m_flow;
      end if;
      if not use_T_in then
        T_in_internal = T;
      end if;
      if not use_X_in then
        X_in_internal = X;
      end if;
      if not use_C_in then
        C_in_internal = C;
      end if;
      sum(ports.m_flow) = -m_flow_in_internal;
      medium.T = T_in_internal;
      medium.Xi = X_in_internal[1:Medium.nXi];
      ports.C_outflow = fill(C_in_internal, nPorts);
    end MassFlowSource_T;

* * * * *

![image16](Modelica.Fluid.Sources.MassFlowSource_hI.png) [Modelica.Fluid.Sources](Modelica_Fluid_Sources.html#Modelica.Fluid.Sources).MassFlowSource\_h
=======================================================================================================================================================

**Ideal flow source that produces a prescribed mass flow with prescribed
specific enthalpy, mass fraction and trace substances**

Information
-----------

::

Models an ideal flow source, with prescribed values of flow rate,
temperature and composition:

-   Prescribed mass flow rate.
-   Prescribed specific enthalpy.
-   Boundary composition (only for multi-substance or trace-substance
    flow).

If `use_m_flow_in` is false (default option), the `m_flow` parameter is
used as boundary pressure, and the `m_flow_in` input connector is
disabled; if `use_m_flow_in` is true, then the `m_flow` parameter is
ignored, and the value provided by the input connector is used instead.

The same thing goes for the temperature and composition

Note, that boundary temperature, mass fractions and trace substances
have only an effect if the mass flow is from the boundary into the port.
If mass is flowing from the port into the boundary, the boundary
definitions, with exception of boundary flow rate, do not have an
effect.

::

Extends from
[Sources.BaseClasses.PartialSource](Modelica_Fluid_Sources_BaseClasses.html#Modelica.Fluid.Sources.BaseClasses.PartialSource)
(Partial component source with one fluid connector).

Parameters
----------

  -------------------------------------------------------------------------
  Type                        Name                    Default Description
  --------------------------- ----------------------- ------- -------------
  replaceable package Medium  [PartialMedium](Modelic Medium  
                              a_Media_Interfaces_Part model   
                              ialMedium.html#Modelica within  
                              .Media.Interfaces.Parti the     
                              alMedium)               source  

  Boolean                     use\_m\_flow\_in        false   Get the mass
                                                              flow rate
                                                              from the
                                                              input
                                                              connector

  Boolean                     use\_h\_in              false   Get the
                                                              specific
                                                              enthalpy from
                                                              the input
                                                              connector

  Boolean                     use\_X\_in              false   Get the
                                                              composition
                                                              from the
                                                              input
                                                              connector

  Boolean                     use\_C\_in              false   Get the trace
                                                              substances
                                                              from the
                                                              input
                                                              connector

  [MassFlowRate](Modelica_Med m\_flow                 0       Fixed mass
  ia_Interfaces_PartialMedium                                 flow rate
  .html#Modelica.Media.Interf                                 going out of
  aces.PartialMedium.MassFlow                                 the fluid
  Rate)                                                       port [kg/s]

  [SpecificEnthalpy](Modelica h                       Medium. Fixed value
  _Media_Interfaces_PartialMe                         h\_defa of specific
  dium.html#Modelica.Media.In                         ult     enthalpy
  terfaces.PartialMedium.Spec                                 [J/kg]
  ificEnthalpy)                                               

  [MassFraction](Modelica_Med X[Medium.nX]            Medium. Fixed value
  ia_Interfaces_PartialMedium                         X\_defa of
  .html#Modelica.Media.Interf                         ult     composition
  aces.PartialMedium.MassFrac                                 [kg/kg]
  tion)                                                       

  [ExtraProperty](Modelica_Me C[Medium.nC]            fill(0, Fixed values
  dia_Interfaces_PartialMediu                         Medium. of trace
  m.html#Modelica.Media.Inter                         nC)     substances
  faces.PartialMedium.ExtraPr                                 
  operty)                                                     
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                        Name      Description
  ------------------------------------------- --------- ------------------
  [FluidPorts\_b](Modelica_Fluid_Interfaces.h ports[nPo 
  tml#Modelica.Fluid.Interfaces.FluidPorts_b) rts]      

  input                                       m\_flow\_ Prescribed mass
  [RealInput](Modelica_Blocks_Interfaces.html in        flow rate
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       h\_in     Prescribed fluid
  [RealInput](Modelica_Blocks_Interfaces.html           specific enthalpy
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       X\_in[Med Prescribed fluid
  [RealInput](Modelica_Blocks_Interfaces.html ium.nX]   composition
  #Modelica.Blocks.Interfaces.RealInput)                

  input                                       C\_in[Med Prescribed
  [RealInput](Modelica_Blocks_Interfaces.html ium.nC]   boundary trace
  #Modelica.Blocks.Interfaces.RealInput)                substances
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MassFlowSource_h 
      "Ideal flow source that produces a prescribed mass flow with prescribed specific enthalpy, mass fraction and trace substances"
      extends Sources.BaseClasses.PartialSource;
      parameter Boolean use_m_flow_in = false 
        "Get the mass flow rate from the input connector";
      parameter Boolean use_h_in= false 
        "Get the specific enthalpy from the input connector";
      parameter Boolean use_X_in = false 
        "Get the composition from the input connector";
      parameter Boolean use_C_in = false 
        "Get the trace substances from the input connector";
      parameter Medium.MassFlowRate m_flow = 0 
        "Fixed mass flow rate going out of the fluid port";
      parameter Medium.SpecificEnthalpy h = Medium.h_default 
        "Fixed value of specific enthalpy";
      parameter Medium.MassFraction X[Medium.nX] = Medium.X_default 
        "Fixed value of composition";
      parameter Medium.ExtraProperty C[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Fixed values of trace substances";
      Modelica.Blocks.Interfaces.RealInput m_flow_in if     use_m_flow_in 
        "Prescribed mass flow rate";
      Modelica.Blocks.Interfaces.RealInput h_in if              use_h_in 
        "Prescribed fluid specific enthalpy";
      Modelica.Blocks.Interfaces.RealInput X_in[Medium.nX] if 
                                                            use_X_in 
        "Prescribed fluid composition";
      Modelica.Blocks.Interfaces.RealInput C_in[Medium.nC] if 
                                                            use_C_in 
        "Prescribed boundary trace substances";
    protected 
      Modelica.Blocks.Interfaces.RealInput m_flow_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput h_in_internal 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput X_in_internal[Medium.nX] 
        "Needed to connect to conditional connector";
      Modelica.Blocks.Interfaces.RealInput C_in_internal[Medium.nC] 
        "Needed to connect to conditional connector";
    equation 
      Utilities.checkBoundary(Medium.mediumName, Medium.substanceNames,
        Medium.singleState, true, X_in_internal, "MassFlowSource_h");
      connect(m_flow_in, m_flow_in_internal);
      connect(h_in, h_in_internal);
      connect(X_in, X_in_internal);
      connect(C_in, C_in_internal);
      if not use_m_flow_in then
        m_flow_in_internal = m_flow;
      end if;
      if not use_h_in then
        h_in_internal = h;
      end if;
      if not use_X_in then
        X_in_internal = X;
      end if;
      if not use_C_in then
        C_in_internal = C;
      end if;
      sum(ports.m_flow) = -m_flow_in_internal;
      medium.h = h_in_internal;
      medium.Xi = X_in_internal[1:Medium.nXi];
      ports.C_outflow = fill(C_in_internal, nPorts);
    end MassFlowSource_h;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
