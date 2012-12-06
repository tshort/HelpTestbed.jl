% Modelica.Media.Examples.Tests.Components
% 
% 

[Modelica.Media.Examples.Tests](Modelica_Media_Examples_Tests.html#Modelica.Media.Examples.Tests).Components
============================================================================================================

**Functions, connectors and models needed for the media model tests**

Information
-----------

::

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                     Description
  ---------------------------------------- -------------------------------
  ![image7](Modelica.Media.Examples.Tests. Interface for quasi
  Components.FluidPortS.png)               one-dimensional fluid flow in a
  [FluidPort](Modelica_Media_Examples_Test piping network (incompressible
  s_Components.html#Modelica.Media.Example or compressible, one or more
  s.Tests.Components.FluidPort)            phases, one or more substances)

  ![image8](Modelica.Media.Examples.Tests. Fluid connector with filled
  Components.FluidPort_aS.png)             icon
  [FluidPort\_a](Modelica_Media_Examples_T 
  ests_Components.html#Modelica.Media.Exam 
  ples.Tests.Components.FluidPort_a)       

  ![image9](Modelica.Media.Examples.Tests. Fluid connector with outlined
  Components.FluidPort_bS.png)             icon
  [FluidPort\_b](Modelica_Media_Examples_T 
  ests_Components.html#Modelica.Media.Exam 
  ples.Tests.Components.FluidPort_b)       

  ![image10](Modelica.Media.Examples.Tests Fixed volume associated with a
  .Components.PortVolumeS.png)             port by the finite volume
  [PortVolume](Modelica_Media_Examples_Tes method
  ts_Components.html#Modelica.Media.Exampl 
  es.Tests.Components.PortVolume)          

  ![image11](Modelica.Media.Examples.Tests Ideal pump that produces a
  .Components.FixedMassFlowRateS.png)      constant mass flow rate from a
  [FixedMassFlowRate](Modelica_Media_Examp large reservoir at fixed
  les_Tests_Components.html#Modelica.Media temperature and mass fraction
  .Examples.Tests.Components.FixedMassFlow 
  Rate)                                    

  ![image12](Modelica.Media.Examples.Tests Ambient pressure, temperature
  .Components.FixedAmbientS.png)           and mass fraction source
  [FixedAmbient](Modelica_Media_Examples_T 
  ests_Components.html#Modelica.Media.Exam 
  ples.Tests.Components.FixedAmbient)      

  ![image13](Modelica.Media.Examples.Tests Simple pressure loss in pipe
  .Components.ShortPipeS.png)              
  [ShortPipe](Modelica_Media_Examples_Test 
  s_Components.html#Modelica.Media.Example 
  s.Tests.Components.ShortPipe)            

  [PartialTestModel](Modelica_Media_Exampl Basic test model to test a
  es_Tests_Components.html#Modelica.Media. medium
  Examples.Tests.Components.PartialTestMod 
  el)                                      

  [PartialTestModel2](Modelica_Media_Examp slightly larger test model to
  les_Tests_Components.html#Modelica.Media test a medium
  .Examples.Tests.Components.PartialTestMo 
  del2)                                    
  ------------------------------------------------------------------------

* * * * *

[Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).FluidPort
============================================================================================================================================

**Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)**

Information
-----------

::

::

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name   Description
  --------------------------------- ------ --------------------------------
  [AbsolutePressure](Modelica_Media p      Pressure in the connection point
  _Interfaces_PartialMedium.html#Mo        [Pa]
  delica.Media.Interfaces.PartialMe        
  dium.AbsolutePressure)                   

  flow                              m\_flo Mass flow rate from the
  [MassFlowRate](Modelica_Media_Int w      connection point into the
  erfaces_PartialMedium.html#Modeli        component [kg/s]
  ca.Media.Interfaces.PartialMedium        
  .MassFlowRate)                           

  [SpecificEnthalpy](Modelica_Media h      Specific mixture enthalpy in the
  _Interfaces_PartialMedium.html#Mo        connection point [J/kg]
  delica.Media.Interfaces.PartialMe        
  dium.SpecificEnthalpy)                   

  flow                              H\_flo Enthalpy flow rate into the
  [EnthalpyFlowRate](Modelica_Media w      component (if m\_flow \> 0,
  _Interfaces_PartialMedium.html#Mo        H\_flow = m\_flow\*h) [W]
  delica.Media.Interfaces.PartialMe        
  dium.EnthalpyFlowRate)                   

  [MassFraction](Modelica_Media_Int Xi[Med Independent mixture mass
  erfaces_PartialMedium.html#Modeli ium.nX fractions m\_i/m in the
  ca.Media.Interfaces.PartialMedium i]     connection point [kg/kg]
  .MassFraction)                           

  flow                              mXi\_f Mass flow rates of the
  [MassFlowRate](Modelica_Media_Int low[Me independent substances from the
  erfaces_PartialMedium.html#Modeli dium.n connection point into the
  ca.Media.Interfaces.PartialMedium Xi]    component (if m\_flow \> 0,
  .MassFlowRate)                           mX\_flow = m\_flow\*X) [kg/s]

  [ExtraProperty](Modelica_Media_In C[Medi properties c\_i/m in the
  terfaces_PartialMedium.html#Model um.nC] connection point
  ica.Media.Interfaces.PartialMediu        
  m.ExtraProperty)                         

  flow                              mC\_fl Flow rates of auxiliary
  [ExtraPropertyFlowRate](Modelica_ ow[Med properties from the connection
  Media_Interfaces_PartialMedium.ht ium.nC point into the component (if
  ml#Modelica.Media.Interfaces.Part ]      m\_flow \> 0, mC\_flow =
  ialMedium.ExtraPropertyFlowRate)         m\_flow\*C) [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPort 
      "Interface for quasi one-dimensional fluid flow in a piping network (incompressible or compressible, one or more phases, one or more substances)"

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";

      Medium.AbsolutePressure p "Pressure in the connection point";
      flow Medium.MassFlowRate m_flow 
        "Mass flow rate from the connection point into the component";

      Medium.SpecificEnthalpy h "Specific mixture enthalpy in the connection point";
      flow Medium.EnthalpyFlowRate H_flow 
        "Enthalpy flow rate into the component (if m_flow > 0, H_flow = m_flow*h)";

      Medium.MassFraction Xi[Medium.nXi] 
        "Independent mixture mass fractions m_i/m in the connection point";
      flow Medium.MassFlowRate mXi_flow[Medium.nXi] 
        "Mass flow rates of the independent substances from the connection point into the component (if m_flow > 0, mX_flow = m_flow*X)";

      Medium.ExtraProperty C[Medium.nC] "properties c_i/m in the connection point";
      flow Medium.ExtraPropertyFlowRate mC_flow[Medium.nC] 
        "Flow rates of auxiliary properties from the connection point into the component (if m_flow > 0, mC_flow = m_flow*C)";

    end FluidPort;

* * * * *

![image14](Modelica.Media.Examples.Tests.Components.FluidPort_aI.png) [Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).FluidPort\_a
=====================================================================================================================================================================================================================

**Fluid connector with filled icon**

Information
-----------

::

Modelica.Media.Examples.Tests.Components.FluidPort\_a

::

Extends from
[FluidPort](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.FluidPort)
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
----------

  -------------------------------------------------------------------------
  Type         Name                                         Default Descrip
                                                                    tion
  ------------ -------------------------------------------- ------- -------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_Pa Medium  
  package      rtialMedium.html#Modelica.Media.Interfaces.P model   
  Medium       artialMedium)                                        
  -------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name   Description
  --------------------------------- ------ --------------------------------
  [AbsolutePressure](Modelica_Media p      Pressure in the connection point
  _Interfaces_PartialMedium.html#Mo        [Pa]
  delica.Media.Interfaces.PartialMe        
  dium.AbsolutePressure)                   

  flow                              m\_flo Mass flow rate from the
  [MassFlowRate](Modelica_Media_Int w      connection point into the
  erfaces_PartialMedium.html#Modeli        component [kg/s]
  ca.Media.Interfaces.PartialMedium        
  .MassFlowRate)                           

  [SpecificEnthalpy](Modelica_Media h      Specific mixture enthalpy in the
  _Interfaces_PartialMedium.html#Mo        connection point [J/kg]
  delica.Media.Interfaces.PartialMe        
  dium.SpecificEnthalpy)                   

  flow                              H\_flo Enthalpy flow rate into the
  [EnthalpyFlowRate](Modelica_Media w      component (if m\_flow \> 0,
  _Interfaces_PartialMedium.html#Mo        H\_flow = m\_flow\*h) [W]
  delica.Media.Interfaces.PartialMe        
  dium.EnthalpyFlowRate)                   

  [MassFraction](Modelica_Media_Int Xi[Med Independent mixture mass
  erfaces_PartialMedium.html#Modeli ium.nX fractions m\_i/m in the
  ca.Media.Interfaces.PartialMedium i]     connection point [kg/kg]
  .MassFraction)                           

  flow                              mXi\_f Mass flow rates of the
  [MassFlowRate](Modelica_Media_Int low[Me independent substances from the
  erfaces_PartialMedium.html#Modeli dium.n connection point into the
  ca.Media.Interfaces.PartialMedium Xi]    component (if m\_flow \> 0,
  .MassFlowRate)                           mX\_flow = m\_flow\*X) [kg/s]

  [ExtraProperty](Modelica_Media_In C[Medi properties c\_i/m in the
  terfaces_PartialMedium.html#Model um.nC] connection point
  ica.Media.Interfaces.PartialMediu        
  m.ExtraProperty)                         

  flow                              mC\_fl Flow rates of auxiliary
  [ExtraPropertyFlowRate](Modelica_ ow[Med properties from the connection
  Media_Interfaces_PartialMedium.ht ium.nC point into the component (if
  ml#Modelica.Media.Interfaces.Part ]      m\_flow \> 0, mC\_flow =
  ialMedium.ExtraPropertyFlowRate)         m\_flow\*C) [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPort_a "Fluid connector with filled icon"
      extends FluidPort;
    end FluidPort_a;

* * * * *

![image15](Modelica.Media.Examples.Tests.Components.FluidPort_bI.png) [Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).FluidPort\_b
=====================================================================================================================================================================================================================

**Fluid connector with outlined icon**

Information
-----------

::

::

Extends from
[FluidPort](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.FluidPort)
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
----------

  -------------------------------------------------------------------------
  Type         Name                                         Default Descrip
                                                                    tion
  ------------ -------------------------------------------- ------- -------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_Pa Medium  
  package      rtialMedium.html#Modelica.Media.Interfaces.P model   
  Medium       artialMedium)                                        
  -------------------------------------------------------------------------

Contents
--------

  -------------------------------------------------------------------------
  Type                              Name   Description
  --------------------------------- ------ --------------------------------
  [AbsolutePressure](Modelica_Media p      Pressure in the connection point
  _Interfaces_PartialMedium.html#Mo        [Pa]
  delica.Media.Interfaces.PartialMe        
  dium.AbsolutePressure)                   

  flow                              m\_flo Mass flow rate from the
  [MassFlowRate](Modelica_Media_Int w      connection point into the
  erfaces_PartialMedium.html#Modeli        component [kg/s]
  ca.Media.Interfaces.PartialMedium        
  .MassFlowRate)                           

  [SpecificEnthalpy](Modelica_Media h      Specific mixture enthalpy in the
  _Interfaces_PartialMedium.html#Mo        connection point [J/kg]
  delica.Media.Interfaces.PartialMe        
  dium.SpecificEnthalpy)                   

  flow                              H\_flo Enthalpy flow rate into the
  [EnthalpyFlowRate](Modelica_Media w      component (if m\_flow \> 0,
  _Interfaces_PartialMedium.html#Mo        H\_flow = m\_flow\*h) [W]
  delica.Media.Interfaces.PartialMe        
  dium.EnthalpyFlowRate)                   

  [MassFraction](Modelica_Media_Int Xi[Med Independent mixture mass
  erfaces_PartialMedium.html#Modeli ium.nX fractions m\_i/m in the
  ca.Media.Interfaces.PartialMedium i]     connection point [kg/kg]
  .MassFraction)                           

  flow                              mXi\_f Mass flow rates of the
  [MassFlowRate](Modelica_Media_Int low[Me independent substances from the
  erfaces_PartialMedium.html#Modeli dium.n connection point into the
  ca.Media.Interfaces.PartialMedium Xi]    component (if m\_flow \> 0,
  .MassFlowRate)                           mX\_flow = m\_flow\*X) [kg/s]

  [ExtraProperty](Modelica_Media_In C[Medi properties c\_i/m in the
  terfaces_PartialMedium.html#Model um.nC] connection point
  ica.Media.Interfaces.PartialMediu        
  m.ExtraProperty)                         

  flow                              mC\_fl Flow rates of auxiliary
  [ExtraPropertyFlowRate](Modelica_ ow[Med properties from the connection
  Media_Interfaces_PartialMedium.ht ium.nC point into the component (if
  ml#Modelica.Media.Interfaces.Part ]      m\_flow \> 0, mC\_flow =
  ialMedium.ExtraPropertyFlowRate)         m\_flow\*C) [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector FluidPort_b "Fluid connector with outlined icon"
      extends FluidPort;
    end FluidPort_b;

* * * * *

![image16](Modelica.Media.Examples.Tests.Components.PortVolumeI.png) [Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).PortVolume
==================================================================================================================================================================================================================

**Fixed volume associated with a port by the finite volume method**

Information
-----------

::

This component models the **volume** of **fixed size** that is
associated with the **fluid port** to which it is connected. This means
that all medium properties inside the volume, are identical to the port
medium properties. In particular, the specific enthalpy inside the
volume (= medium.h) is always identical to the specific enthalpy in the
port (port.h = medium.h). Usually, this model is used when discretizing
a component according to the finite volume method into volumes in
internal ports that only store energy and mass and into transport
elements that just transport energy, mass and momentum between the
internal ports without storing these quantities during the transport.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                     Name    Default     Description
  ---------------------------------------- ------- ----------- -------------
  [Volume](Modelica_SIunits.html#Modelica. V       1e-6        Fixed size of
  SIunits.Volume)                                              junction
                                                               volume [m3]

  Initial pressure or initial density                          

  Boolean                                  use\_p\ true        select
                                           _start              p\_start or
                                                               d\_start

  [AbsolutePressure](Modelica_Media_Interf p\_star 101325      Initial
  aces_PartialMedium.html#Modelica.Media.I t                   pressure [Pa]
  nterfaces.PartialMedium.AbsolutePressure                     
  )                                                            

  [Density](Modelica_Media_Interfaces_Part d\_star 1           Initial
  ialMedium.html#Modelica.Media.Interfaces t                   density
  .PartialMedium.Density)                                      [kg/m3]

  Initial temperature or initial specific                      
  enthalpy                                                     

  Boolean                                  use\_T\ true        select
                                           _start              T\_start or
                                                               h\_start

  [Temperature](Modelica_Media_Interfaces_ T\_star Modelica.SI Initial
  PartialMedium.html#Modelica.Media.Interf t       units.Conve temperature
  aces.PartialMedium.Temperature)                  rsions...   [K]

  [SpecificEnthalpy](Modelica_Media_Interf h\_star 1.e4        Initial
  aces_PartialMedium.html#Modelica.Media.I t                   specific
  nterfaces.PartialMedium.SpecificEnthalpy                     enthalpy
  )                                                            [J/kg]

  Only for multi-substance flow                                

  [MassFraction](Modelica_Media_Interfaces X\_star             Initial mass
  _PartialMedium.html#Modelica.Media.Inter t[Mediu             fractions
  faces.PartialMedium.MassFraction)        m.nX]               m\_i/m
                                                               [kg/kg]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                        Name Descrip
                                                                   tion
  ----------------------------------------------------------- ---- -------
  [FluidPort\_a](Modelica_Media_Examples_Tests_Components.htm port 
  l#Modelica.Media.Examples.Tests.Components.FluidPort_a)          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PortVolume 
      "Fixed volume associated with a port by the finite volume method"
      import SI = Modelica.SIunits;

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";

      parameter SI.Volume V=1e-6 "Fixed size of junction volume";

      parameter Boolean use_p_start=true "select p_start or d_start";
      parameter Medium.AbsolutePressure p_start = 101325 "Initial pressure";
      parameter Medium.Density d_start=1 "Initial density";
      parameter Boolean use_T_start=true "select T_start or h_start";
      parameter Medium.Temperature T_start = Modelica.SIunits.Conversions.from_degC(20) 
        "Initial temperature";
      parameter Medium.SpecificEnthalpy h_start = 1.e4 "Initial specific enthalpy";
      parameter Medium.MassFraction X_start[Medium.nX] 
        "Initial mass fractions m_i/m";

      FluidPort_a port(redeclare package Medium = Medium);
      Medium.BaseProperties medium(preferredMediumStates=true);
      SI.Energy U "Internal energy of port volume";
      SI.Mass m "Mass of junction volume";
      SI.Mass mXi[Medium.nXi] "Independent substance masses of junction volume";

    initial equation 
      if not Medium.singleState then
        if use_p_start then
           medium.p = p_start;
        else
           medium.d = d_start;
        end if;
      end if;

      if use_T_start then
         medium.T = T_start;
      else
         medium.h = h_start;
      end if;

      medium.Xi = X_start[1:Medium.nXi];
    equation 
      // Connect port to medium variables
         medium.p = port.p;
         medium.h = port.h;
         medium.Xi = port.Xi;

      // Total quantities
         m    = V*medium.d;
         mXi = m*medium.Xi;
         U    = m*medium.u;

      // Mass and energy balance
         der(m)    = port.m_flow;
         der(mXi) = port.mXi_flow;
         der(U)    = port.H_flow;
    end PortVolume;

* * * * *

![image17](Modelica.Media.Examples.Tests.Components.FixedMassFlowRateI.png) [Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).FixedMassFlowRate
================================================================================================================================================================================================================================

**Ideal pump that produces a constant mass flow rate from a large
reservoir at fixed temperature and mass fraction**

Information
-----------

::

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name    Default   Description
  ---------------------------------- ------- --------- --------------------
  [MassFlowRate](Modelica_Media_Inte m\_flow           Fixed mass flow rate
  rfaces_PartialMedium.html#Modelica                   from an infinite
  .Media.Interfaces.PartialMedium.Ma                   reservoir to the
  ssFlowRate)                                          fluid port [kg/s]

  [MassFraction](Modelica_Media_Inte X\_ambi           Ambient mass
  rfaces_PartialMedium.html#Modelica ent[Med           fractions m\_i/m of
  .Media.Interfaces.PartialMedium.Ma ium.nX]           reservoir [kg/kg]
  ssFraction)                                          

  Ambient temperature or ambient                       
  specific enthalpy                                    

  Boolean                            use\_T\ true      select T\_ambient or
                                     _ambien           h\_ambient
                                     t                 

  [Temperature](Modelica_Media_Inter T\_ambi Modelica. Ambient temperature
  faces_PartialMedium.html#Modelica. ent     SIunits.C [K]
  Media.Interfaces.PartialMedium.Tem         onversion 
  perature)                                  s...      

  [SpecificEnthalpy](Modelica_Media_ h\_ambi 1.e4      Ambient specific
  Interfaces_PartialMedium.html#Mode ent               enthalpy [J/kg]
  lica.Media.Interfaces.PartialMediu                   
  m.SpecificEnthalpy)                                  
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                        Name Descrip
                                                                   tion
  ----------------------------------------------------------- ---- -------
  [FluidPort\_b](Modelica_Media_Examples_Tests_Components.htm port 
  l#Modelica.Media.Examples.Tests.Components.FluidPort_b)          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedMassFlowRate 
      "Ideal pump that produces a constant mass flow rate from a large reservoir at fixed temperature and mass fraction"

      parameter Medium.MassFlowRate m_flow 
        "Fixed mass flow rate from an infinite reservoir to the fluid port";

      parameter Boolean use_T_ambient=true "select T_ambient or h_ambient";
      parameter Medium.Temperature T_ambient=
          Modelica.SIunits.Conversions.from_degC(20) "Ambient temperature";
      parameter Medium.SpecificEnthalpy h_ambient=
          1.e4 "Ambient specific enthalpy";
      parameter Medium.MassFraction X_ambient[Medium.nX] 
        "Ambient mass fractions m_i/m of reservoir";

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";

      Medium.BaseProperties medium "Medium in the source";
      FluidPort_b port(redeclare package Medium = Medium);
    equation 
       if use_T_ambient then
         medium.T = T_ambient;
       else
         medium.h = h_ambient;
       end if;

       medium.Xi     = X_ambient[1:Medium.nXi];
       medium.p      = port.p;
       port.m_flow   = -m_flow;
       port.mXi_flow = semiLinear(port.m_flow, port.Xi, medium.Xi);
       port.H_flow   = semiLinear(port.m_flow, port.h, medium.h);
    end FixedMassFlowRate;

* * * * *

![image18](Modelica.Media.Examples.Tests.Components.FixedAmbientI.png) [Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).FixedAmbient
======================================================================================================================================================================================================================

**Ambient pressure, temperature and mass fraction source**

Information
-----------

::

Model **FixedAmbient\_pt** defines constant values for ambient
conditions:

-   Ambient pressure.
-   Ambient temperature.
-   Ambient mass fractions (only for multi-substance flow).

Note, that ambient temperature and mass fractions have only an effect if
the mass flow is from the ambient into the port. If mass is flowing from
the port into the ambient, the ambient definitions, with exception of
ambient pressure, do not have an effect.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                    Name     Default     Description
  --------------------------------------- -------- ----------- -------------
  Ambient pressure or ambient density                          

  Boolean                                 use\_p\_ true        select
                                          ambient              p\_ambient or
                                                               d\_ambient

  [AbsolutePressure](Modelica_Media_Inter p\_ambie 101325      Ambient
  faces_PartialMedium.html#Modelica.Media nt                   pressure [Pa]
  .Interfaces.PartialMedium.AbsolutePress                      
  ure)                                                         

  [Density](Modelica_Media_Interfaces_Par d\_ambie 1           Ambient
  tialMedium.html#Modelica.Media.Interfac nt                   density
  es.PartialMedium.Density)                                    [kg/m3]

  Ambient temperature or ambient specific                      
  enthalpy                                                     

  Boolean                                 use\_T\_ true        select
                                          ambient              T\_ambient or
                                                               h\_ambient

  [Temperature](Modelica_Media_Interfaces T\_ambie Modelica.SI Ambient
  _PartialMedium.html#Modelica.Media.Inte nt       units.Conve temperature
  rfaces.PartialMedium.Temperature)                rsions...   [K]

  [SpecificEnthalpy](Modelica_Media_Inter h\_ambie 1.e4        Ambient
  faces_PartialMedium.html#Modelica.Media nt                   specific
  .Interfaces.PartialMedium.SpecificEntha                      enthalpy
  lpy)                                                         [J/kg]

  Only for multi-substance flow                                

  [MassFraction](Modelica_Media_Interface X\_ambie             Ambient mass
  s_PartialMedium.html#Modelica.Media.Int nt[Mediu             fractions
  erfaces.PartialMedium.MassFraction)     m.nX]                m\_i/m
                                                               [kg/kg]
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                        Name Descrip
                                                                   tion
  ----------------------------------------------------------- ---- -------
  [FluidPort\_b](Modelica_Media_Examples_Tests_Components.htm port 
  l#Modelica.Media.Examples.Tests.Components.FluidPort_b)          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model FixedAmbient 
      "Ambient pressure, temperature and mass fraction source"
      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";

      parameter Boolean use_p_ambient=true "select p_ambient or d_ambient";
      parameter Medium.AbsolutePressure p_ambient= 101325 "Ambient pressure";
      parameter Medium.Density d_ambient=1 "Ambient density";
      parameter Boolean use_T_ambient=true "select T_ambient or h_ambient";
      parameter Medium.Temperature T_ambient=
          Modelica.SIunits.Conversions.from_degC(20) "Ambient temperature";
      parameter Medium.SpecificEnthalpy h_ambient=
          1.e4 "Ambient specific enthalpy";
      parameter Medium.MassFraction X_ambient[Medium.nX] 
        "Ambient mass fractions m_i/m";

      Medium.BaseProperties medium "Medium in the source";
      FluidPort_b port(redeclare package Medium = Medium);

    equation 
      if use_p_ambient or Medium.singleState then
        medium.p = p_ambient;
      else
        medium.d = d_ambient;
      end if;

      if use_T_ambient then
        medium.T = T_ambient;
      else
        medium.h = h_ambient;
      end if;

      medium.Xi = X_ambient[1:Medium.nXi];

      port.p = medium.p;
      port.H_flow   = semiLinear(port.m_flow, port.h, medium.h);
      port.mXi_flow = semiLinear(port.m_flow, port.Xi, medium.Xi);
    end FixedAmbient;

* * * * *

![image19](Modelica.Media.Examples.Tests.Components.ShortPipeI.png) [Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).ShortPipe
================================================================================================================================================================================================================

**Simple pressure loss in pipe**

Information
-----------

::

Model **ShortPipe** defines a simple pipe model with pressure loss due
to friction. It is assumed that no mass or energy is stored in the pipe.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                      Name   Def Description
                                                   aul 
                                                   t   
  ----------------------------------------- ------ --- -------------------
  [AbsolutePressure](Modelica_Media_Interfa dp\_no     Nominal pressure
  ces_PartialMedium.html#Modelica.Media.Int minal      drop [Pa]
  erfaces.PartialMedium.AbsolutePressure)              

  [MassFlowRate](Modelica_Media_Interfaces_ m\_flo     Nominal mass flow
  PartialMedium.html#Modelica.Media.Interfa w\_nom     rate at nominal
  ces.PartialMedium.MassFlowRate)           inal       pressure drop
                                                       [kg/s]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [FluidPort\_a](Modelica_Media_Examples_Tests_Components.ht port\ 
  ml#Modelica.Media.Examples.Tests.Components.FluidPort_a)   _a    

  [FluidPort\_b](Modelica_Media_Examples_Tests_Components.ht port\ 
  ml#Modelica.Media.Examples.Tests.Components.FluidPort_b)   _b    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ShortPipe "Simple pressure loss in pipe"
       replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";

      parameter Medium.AbsolutePressure dp_nominal(min=1.e-10) 
        "Nominal pressure drop";
      parameter Medium.MassFlowRate m_flow_nominal(min=1.e-10) 
        "Nominal mass flow rate at nominal pressure drop";

      FluidPort_a port_a(redeclare package Medium = Medium);
      FluidPort_b port_b(redeclare package Medium = Medium);
      // Medium.BaseProperties medium_a(p=port_a.p, h=port_a.h, Xi=port_a.Xi)
      //   "Medium properties in port_a";
      // Medium.BaseProperties medium_b(p=port_b.p, h=port_b.h, Xi=port_b.Xi)
      //   "Medium properties in port_b";
      Medium.MassFlowRate m_flow 
        "Mass flow rate from port_a to port_b (m_flow > 0 is design flow direction)";
      Modelica.SIunits.Pressure dp "Pressure drop from port_a to port_b";
    equation 
      /* Handle reverse and zero flow */
      port_a.H_flow   = semiLinear(port_a.m_flow, port_a.h,   port_b.h);
      port_a.mXi_flow = semiLinear(port_a.m_flow, port_a.Xi, port_b.Xi);

      /* Energy, mass and substance mass balance */
      port_a.H_flow + port_b.H_flow = 0;
      port_a.m_flow + port_b.m_flow = 0;
      port_a.mXi_flow + port_b.mXi_flow = zeros(Medium.nXi);

      // Design direction of mass flow rate
      m_flow = port_a.m_flow;

      // Pressure drop
      dp = port_a.p - port_b.p;
      m_flow = (m_flow_nominal/dp_nominal)*dp;
    end ShortPipe;

* * * * *

[Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).PartialTestModel
===================================================================================================================================================

**Basic test model to test a medium**

Information
-----------

::

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name      Default   Description
  --------------------------------- --------- --------- -------------------
  [AbsolutePressure](Modelica_SIuni p\_start  Medium.p\ Initial value of
  ts.html#Modelica.SIunits.Absolute           _default  pressure [Pa]
  Pressure)                                             

  [Temperature](Modelica_SIunits.ht T\_start  Medium.T\ Initial value of
  ml#Modelica.SIunits.Temperature)            _default  temperature [K]

  [SpecificEnthalpy](Modelica_SIuni h\_start  Medium.h\ Initial value of
  ts.html#Modelica.SIunits.Specific           _default  specific enthalpy
  Enthalpy)                                             [J/kg]

  Real                              X\_start[ Medium.X\ Initial value of
                                    Medium.nX _default  mass fractions
                                    ]                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialTestModel "Basic test model to test a medium"
      import SI = Modelica.SIunits;

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";
      parameter SI.AbsolutePressure p_start = Medium.p_default 
        "Initial value of pressure";
      parameter SI.Temperature T_start = Medium.T_default 
        "Initial value of temperature";
      parameter SI.SpecificEnthalpy h_start = Medium.h_default 
        "Initial value of specific enthalpy";
      parameter Real X_start[Medium.nX] = Medium.X_default 
        "Initial value of mass fractions";

    /*
      parameter SI.AbsolutePressure p_start = 1.0e5 "Initial value of pressure";
      parameter SI.Temperature T_start = 300 "Initial value of temperature";
      parameter SI.Density h_start = 1 "Initial value of specific enthalpy";
      parameter Real X_start[Medium.nX] = Medium.reference_X
        "Initial value of mass fractions";
    */
      PortVolume volume(redeclare package Medium = Medium,
                        p_start=p_start,
                        T_start=T_start,
                        h_start=h_start,
                        X_start = X_start,
                        V=0.1);
      FixedMassFlowRate fixedMassFlowRate(redeclare package Medium = Medium,
        T_ambient=1.2*T_start,
        h_ambient=1.2*h_start,
        m_flow=1,
        X_ambient=0.5*X_start);
      FixedAmbient ambient(
        redeclare package Medium = Medium,
        T_ambient=T_start,
        h_ambient=h_start,
        X_ambient=X_start,
        p_ambient=p_start);
      ShortPipe shortPipe(redeclare package Medium = Medium,
        m_flow_nominal=1,
        dp_nominal=0.1e5);
    equation 
      connect(fixedMassFlowRate.port, volume.port);
      connect(volume.port, shortPipe.port_a);
      connect(shortPipe.port_b, ambient.port);
    end PartialTestModel;

* * * * *

[Modelica.Media.Examples.Tests.Components](Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components).PartialTestModel2
====================================================================================================================================================

**slightly larger test model to test a medium**

Information
-----------

::

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                              Name      Default   Description
  --------------------------------- --------- --------- ------------------
  [AbsolutePressure](Modelica_SIuni p\_start  1.0e5     Initial value of
  ts.html#Modelica.SIunits.Absolute                     pressure [Pa]
  Pressure)                                             

  [Temperature](Modelica_SIunits.ht T\_start  300       Initial value of
  ml#Modelica.SIunits.Temperature)                      temperature [K]

  [SpecificEnthalpy](Modelica_SIuni h\_start  1         Initial value of
  ts.html#Modelica.SIunits.Specific                     specific enthalpy
  Enthalpy)                                             [J/kg]

  Real                              X\_start[ Medium.re Initial value of
                                    Medium.nX ference\_ mass fractions
                                    ]         X         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model PartialTestModel2 
      "slightly larger test model to test a medium"
      import SI = Modelica.SIunits;

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";
      parameter SI.AbsolutePressure p_start = 1.0e5 "Initial value of pressure";
      parameter SI.Temperature T_start = 300 "Initial value of temperature";
      parameter SI.SpecificEnthalpy h_start = 1 
        "Initial value of specific enthalpy";
      parameter Real X_start[Medium.nX] = Medium.reference_X 
        "Initial value of mass fractions";
      PortVolume volume(redeclare package Medium = Medium,
                        p_start=p_start,
                        T_start=T_start,
                        h_start=h_start,
                        X_start = X_start,
                        V=0.1);
      FixedMassFlowRate fixedMassFlowRate(redeclare package Medium = Medium,
        T_ambient=1.2*T_start,
        h_ambient=1.2*h_start,
        m_flow=1,
        X_ambient=0.5*X_start);
      FixedAmbient ambient(
        redeclare package Medium = Medium,
        T_ambient=T_start,
        h_ambient=h_start,
        X_ambient=X_start,
        p_ambient=p_start);
      ShortPipe shortPipe(redeclare package Medium = Medium,
        m_flow_nominal=1,
        dp_nominal=0.1e5);
      PortVolume volume1(
                        redeclare package Medium = Medium,
                        p_start=p_start,
                        T_start=T_start,
                        h_start=h_start,
                        X_start = X_start,
                        V=0.1);
      ShortPipe shortPipe1(
                          redeclare package Medium = Medium,
        m_flow_nominal=1,
        dp_nominal=0.1e5);
    equation 
      connect(fixedMassFlowRate.port, volume.port);
      connect(volume.port, shortPipe.port_a);
      connect(volume1.port, shortPipe1.port_a);
      connect(shortPipe.port_b, volume1.port);
      connect(shortPipe1.port_b, ambient.port);
    end PartialTestModel2;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:26 2010.
