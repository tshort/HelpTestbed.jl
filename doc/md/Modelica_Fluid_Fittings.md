% Modelica.Fluid.Fittings
% 
% 

[Modelica.Fluid](Modelica_Fluid.html#Modelica.Fluid).Fittings
=============================================================

**Adaptors for connections of fluid components and the regulation of
fluid flow**

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
  Name                                       Description
  ------------------------------------------ -----------------------------
  ![image10](Modelica.Fluid.Fittings.BendsS. Flow models for bends
  png)                                       
  [Bends](Modelica_Fluid_Fittings_Bends.html 
  #Modelica.Fluid.Fittings.Bends)            

  ![image11](Modelica.Fluid.Fittings.BendsS. Flow models for orifices
  png)                                       
  [Orifices](Modelica_Fluid_Fittings_Orifice 
  s.html#Modelica.Fluid.Fittings.Orifices)   

  ![image12](Modelica.Fluid.Fittings.BendsS. Flow models for generic
  png)                                       resistances
  [GenericResistances](Modelica_Fluid_Fittin 
  gs_GenericResistances.html#Modelica.Fluid. 
  Fittings.GenericResistances)               

  ![image13](Modelica.Fluid.Fittings.SimpleG Simple generic orifice
  enericOrificeS.png)                        defined by pressure loss
  [SimpleGenericOrifice](Modelica_Fluid_Fitt coefficient and diameter
  ings.html#Modelica.Fluid.Fittings.SimpleGe (only for flow from port\_a
  nericOrifice)                              to port\_b)

  ![image14](Modelica.Fluid.Fittings.SharpEd Pressure drop due to sharp
  gedOrificeS.png)                           edged orifice (for both flow
  [SharpEdgedOrifice](Modelica_Fluid_Fitting directions)
  s.html#Modelica.Fluid.Fittings.SharpEdgedO 
  rifice)                                    

  ![image15](Modelica.Fluid.Fittings.AbruptA Pressure drop in pipe due to
  daptorS.png)                               suddenly expanding or
  [AbruptAdaptor](Modelica_Fluid_Fittings.ht reducing area (for both flow
  ml#Modelica.Fluid.Fittings.AbruptAdaptor)  directions)

  ![image16](Modelica.Fluid.Fittings.MultiPo Multiply a port; useful if
  rtS.png)                                   multiple connections shall be
  [MultiPort](Modelica_Fluid_Fittings.html#M made to a port exposing a
  odelica.Fluid.Fittings.MultiPort)          state

  ![image17](Modelica.Fluid.Fittings.TeeJunc Splitting/joining component
  tionIdealS.png)                            with static balances for an
  [TeeJunctionIdeal](Modelica_Fluid_Fittings infinitesimal control volume
  .html#Modelica.Fluid.Fittings.TeeJunctionI 
  deal)                                      

  ![image18](Modelica.Fluid.Fittings.TeeJunc Splitting/joining component
  tionVolumeS.png)                           with static balances for a
  [TeeJunctionVolume](Modelica_Fluid_Fitting dynamic control volume
  s.html#Modelica.Fluid.Fittings.TeeJunction 
  Volume)                                    

  ![image19](Modelica.Fluid.Fittings.BaseCla Base classes used in the
  ssesS.png)                                 Fittings package (only of
  [BaseClasses](Modelica_Fluid_Fittings_Base interest to build new
  Classes.html#Modelica.Fluid.Fittings.BaseC component models)
  lasses)                                    
  ------------------------------------------------------------------------

* * * * *

![image20](Modelica.Fluid.Fittings.SimpleGenericOrificeI.png) [Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).SimpleGenericOrifice
==================================================================================================================================================================

**Simple generic orifice defined by pressure loss coefficient and
diameter (only for flow from port\_a to port\_b)**

Information
-----------

::

This pressure drop component defines a simple, generic orifice, where
the loss factor ζ is provided for one flow direction (e.g., from loss
table of a book):

    Δp = 0.5*ζ*ρ*v*|v|
       = 8*ζ/(π^2*D^4*ρ) * m_flow*|m_flow|

where

-   Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-   D is the diameter of the orifice at the position where ζ is defined
    (either at port\_a or port\_b). If the orifice has not a circular
    cross section, D = 4\*A/P, where A is the cross section area and P
    is the wetted perimeter.
-   ζ is the loss factor with respect to D that depends on the geometry
    of the orifice. In the turbulent flow regime, it is assumed that ζ
    is constant. For small mass flow rates, the flow is laminar and is
    approximated by a polynomial that has a finite derivative for
    m\_flow=0.
-   v is the mean velocity.
-   ρ is the upstream density.

Since the pressure loss factor zeta is provided only for a mass flow
from port\_a to port\_b, the pressure loss is not correct when the flow
is reversing. If reversing flow only occurs in a short time interval,
this is most likely uncritical. If significant reversing flow can
appear, this component should not be used.

::

Extends from
[Modelica.Fluid.Interfaces.PartialTwoPortTransport](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport)
(Partial element transporting fluid between two ports without storage of
mass or energy),
[Modelica.Fluid.Interfaces.PartialLumpedFlow](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedFlow)
(Base class for a lumped momentum balance).

Parameters
----------

  -------------------------------------------------------------------------
  Type                      Name                  Defaul Description
                                                  t      
  ------------------------- --------------------- ------ ------------------
  replaceable package       [PartialMedium](Model Medium 
  Medium                    ica_Media_Interfaces_ in the 
                            PartialMedium.html#Mo compon 
                            delica.Media.Interfac ent    
                            es.PartialMedium)            

  [Length](Modelica_SIunits pathLength            0      Length flow path
  .html#Modelica.SIunits.Le                              [m]
  ngth)                                                  

  [Diameter](Modelica_SIuni diameter                     Diameter of
  ts.html#Modelica.SIunits.                              orifice [m]
  Diameter)                                              

  Real                      zeta                         Loss factor for
                                                         flow of port\_a
                                                         -\> port\_b

  Boolean                   use\_zeta             true   = false to obtain
                                                         zeta from
                                                         dp\_nominal and
                                                         m\_flow\_nominal

  [AbsolutePressure](Modeli dp\_nominal           1e3    Nominal pressure
  ca_SIunits.html#Modelica.                              drop [Pa]
  SIunits.AbsolutePressure)                              

  [MassFlowRate](Modelica_S m\_flow\_nominal      1      Mass flow rate for
  Iunits.html#Modelica.SIun                              dp\_nominal [kg/s]
  its.MassFlowRate)                                      

  **Assumptions**                                        

  Boolean                   allowFlowReversal     system = true to allow
                                                  .allow flow reversal,
                                                  FlowRe false restricts to
                                                  versal design direction
                                                         (port\_a -\>
                                                         port\_b)

  Dynamics                                               

  [Dynamics](Modelica_Fluid momentumDynamics      Types. Formulation of
  _Types.html#Modelica.Flui                       Dynami momentum balance
  d.Types.Dynamics)                               cs.Ste 
                                                  adySta 
                                                  te     

  **Advanced**                                           

  [AbsolutePressure](Modeli dp\_start             0.01\* Guess value of dp
  ca_Media_Interfaces_Parti                       system = port\_a.p -
  alMedium.html#Modelica.Me                       .p\_st port\_b.p [Pa]
  dia.Interfaces.PartialMed                       art    
  ium.AbsolutePressure)                                  

  [MassFlowRate](Modelica_M m\_flow\_start        system Guess value of
  edia_Interfaces_PartialMe                       .m\_fl m\_flow =
  dium.html#Modelica.Media.                       ow\_st port\_a.m\_flow
  Interfaces.PartialMedium.                       art    [kg/s]
  MassFlowRate)                                          

  [MassFlowRate](Modelica_M m\_flow\_small        system Small mass flow
  edia_Interfaces_PartialMe                       .m\_fl rate for
  dium.html#Modelica.Media.                       ow\_sm regularization of
  Interfaces.PartialMedium.                       all    zero flow [kg/s]
  MassFlowRate)                                          

  Boolean                   from\_dp              true   = true, use
                                                         m\_flow = f(dp)
                                                         else dp =
                                                         f(m\_flow)

  [AbsolutePressure](Modeli dp\_small             system Turbulent flow if
  ca_Media_Interfaces_Parti                       .dp\_s |dp| \>= dp\_small
  alMedium.html#Modelica.Me                       mall   [Pa]
  dia.Interfaces.PartialMed                              
  ium.AbsolutePressure)                                  

  Diagnostics                                            

  Boolean                   show\_T               true   = true, if
                                                         temperatures at
                                                         port\_a and
                                                         port\_b are
                                                         computed

  Boolean                   show\_V\_flow         true   = true, if volume
                                                         flow rate at
                                                         inflowing port is
                                                         computed
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Inter port Fluid connector a (positive
  faces.html#Modelica.Fluid.Interface \_a  design flow direction is from
  s.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inter port Fluid connector b (positive
  faces.html#Modelica.Fluid.Interface \_b  design flow direction is from
  s.FluidPort_b)                           port\_a to port\_b)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SimpleGenericOrifice 
      "Simple generic orifice defined by pressure loss coefficient and diameter (only for flow from port_a to port_b)"

      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;

      extends Modelica.Fluid.Interfaces.PartialLumpedFlow(
        final pathLength = 0,
        final momentumDynamics = Types.Dynamics.SteadyState);

      parameter SI.Diameter diameter "Diameter of orifice";
      parameter Real zeta "Loss factor for flow of port_a -> port_b";
      parameter Boolean use_zeta = true 
        "= false to obtain zeta from dp_nominal and m_flow_nominal";

      // Operational conditions
      parameter SI.AbsolutePressure dp_nominal = 1e3 "Nominal pressure drop";
      parameter SI.MassFlowRate m_flow_nominal = 1 "Mass flow rate for dp_nominal";

      parameter Boolean from_dp = true 
        "= true, use m_flow = f(dp) else dp = f(m_flow)";
      parameter Medium.AbsolutePressure dp_small = system.dp_small 
        "Turbulent flow if |dp| >= dp_small";

      // Variables
      Real zeta_nominal(start = zeta);
      Medium.Density d = 0.5*(Medium.density(state_a) + Medium.density(state_b));
      Modelica.SIunits.Pressure dp_fg(start=dp_start) 
        "pressure loss due to friction and gravity";
      Modelica.SIunits.Area A_mean = Modelica.Constants.pi/4*diameter^2 
        "mean cross flow area";

    equation 
      if use_zeta then
        zeta_nominal = zeta;
      else
        dp_nominal = BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal)/d*m_flow_nominal^2;
      end if;

      Ib_flow = 0;
      F_p = A_mean*(Medium.pressure(state_b) - Medium.pressure(state_a));
      F_fg = A_mean*dp_fg;

      /*
       dp = 0.5*zeta*d*v*|v|
          = 0.5*zeta*d*1/(d*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/d * m_flow * |m_flow|
          = k/d * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      if from_dp then
        m_flow = Utilities.regRoot2(
            dp_fg,
            dp_small,
            Medium.density(state_a)/BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal),
            Medium.density(state_b)/BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal));
      else
        dp_fg = Utilities.regSquare2(
            m_flow,
            m_flow_small,
            BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal)/Medium.density(state_a),
            BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal)/Medium.density(state_b));
      end if;

      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

    end SimpleGenericOrifice;

* * * * *

![image21](Modelica.Fluid.Fittings.SharpEdgedOrificeI.png) [Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).SharpEdgedOrifice
============================================================================================================================================================

**Pressure drop due to sharp edged orifice (for both flow directions)**

Information
-----------

::

::

Extends from
[BaseClasses.QuadraticTurbulent.BaseModel](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel)
(Generic pressure drop component with constant turbulent loss factor
data and without an icon).

Parameters
----------

  ------------------------------------------------------------------------
  Type                         Name                Defaul Description
                                                   t      
  ---------------------------- ------------------- ------ ----------------
  replaceable package Medium   [PartialMedium](Mod Medium 
                               elica_Media_Interfa in the 
                               ces_PartialMedium.h compon 
                               tml#Modelica.Media. ent    
                               Interfaces.PartialM        
                               edium)                     

  [LossFactorData](Modelica_Fl data                BaseCl Loss factor data
  uid_Fittings_BaseClasses_Qua                     asses. 
  draticTurbulent.html#Modelic                     Quadra 
  a.Fluid.Fittings.BaseClasses                     ticTur 
  .QuadraticTurbulent.LossFact                     bule.. 
  orData)                                          .      

  [Length](Modelica_SIunits.ht length                     Length of
  ml#Modelica.SIunits.Length)                             orifice [m]

  [Diameter](Modelica_SIunits. diameter                   Inner diameter
  html#Modelica.SIunits.Diamet                            of pipe (= same
  er)                                                     at port\_a and
                                                          port\_b) [m]

  [Diameter](Modelica_SIunits. leastDiameter              Smallest
  html#Modelica.SIunits.Diamet                            diameter of
  er)                                                     orifice [m]

  [Angle\_deg](Modelica_SIunit alpha                      Angle of orifice
  s_Conversions_NonSIunits.htm                            [deg]
  l#Modelica.SIunits.Conversio                            
  ns.NonSIunits.Angle_deg)                                

  **Assumptions**                                         

  Boolean                      allowFlowReversal   system = true to allow
                                                   .allow flow reversal,
                                                   FlowRe false restricts
                                                   versal to design
                                                          direction
                                                          (port\_a -\>
                                                          port\_b)

  **Advanced**                                            

  [AbsolutePressure](Modelica_ dp\_start           0.01\* Guess value of
  Media_Interfaces_PartialMedi                     system dp = port\_a.p -
  um.html#Modelica.Media.Inter                     .p\_st port\_b.p [Pa]
  faces.PartialMedium.Absolute                     art    
  Pressure)                                               

  [MassFlowRate](Modelica_Medi m\_flow\_start      system Guess value of
  a_Interfaces_PartialMedium.h                     .m\_fl m\_flow =
  tml#Modelica.Media.Interface                     ow\_st port\_a.m\_flow
  s.PartialMedium.MassFlowRate                     art    [kg/s]
  )                                                       

  [MassFlowRate](Modelica_Medi m\_flow\_small      system Small mass flow
  a_Interfaces_PartialMedium.h                     .m\_fl rate for
  tml#Modelica.Media.Interface                     ow\_sm regularization
  s.PartialMedium.MassFlowRate                     all    of zero flow
  )                                                       [kg/s]

  Boolean                      from\_dp            true   = true, use
                                                          m\_flow = f(dp)
                                                          else dp =
                                                          f(m\_flow)

  Boolean                      use\_Re             false  = true, if
                                                          turbulent region
                                                          is defined by
                                                          Re, otherwise by
                                                          dp\_small or
                                                          m\_flow\_small

  [AbsolutePressure](Modelica_ dp\_small           system Turbulent flow
  Media_Interfaces_PartialMedi                     .dp\_s if |dp| \>=
  um.html#Modelica.Media.Inter                     mall   dp\_small [Pa]
  faces.PartialMedium.Absolute                            
  Pressure)                                               

  Diagnostics                                             

  Boolean                      show\_T             true   = true, if
                                                          temperatures at
                                                          port\_a and
                                                          port\_b are
                                                          computed

  Boolean                      show\_V\_flow       true   = true, if
                                                          volume flow rate
                                                          at inflowing
                                                          port is computed

  Boolean                      show\_Re            false  = true, if
                                                          Reynolds number
                                                          is included for
                                                          plotting
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Inter port Fluid connector a (positive
  faces.html#Modelica.Fluid.Interface \_a  design flow direction is from
  s.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inter port Fluid connector b (positive
  faces.html#Modelica.Fluid.Interface \_b  design flow direction is from
  s.FluidPort_b)                           port\_a to port\_b)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SharpEdgedOrifice 
      "Pressure drop due to sharp edged orifice (for both flow directions)"
        import NonSI = Modelica.SIunits.Conversions.NonSIunits;
      extends BaseClasses.QuadraticTurbulent.BaseModel(final data=
              BaseClasses.QuadraticTurbulent.LossFactorData.sharpEdgedOrifice(
              diameter,
              leastDiameter,
              length,
              alpha));
      parameter SI.Length length "Length of orifice";
      parameter SI.Diameter diameter 
        "Inner diameter of pipe (= same at port_a and port_b)";
      parameter SI.Diameter leastDiameter "Smallest diameter of orifice";
      parameter NonSI.Angle_deg alpha "Angle of orifice";

    end SharpEdgedOrifice;

* * * * *

![image22](Modelica.Fluid.Fittings.AbruptAdaptorI.png) [Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).AbruptAdaptor
====================================================================================================================================================

**Pressure drop in pipe due to suddenly expanding or reducing area (for
both flow directions)**

Information
-----------

::

::

Extends from
[BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea)
(Generic pressure drop component with constant turbulent loss factor
data and without an icon, for non-constant cross section area).

Parameters
----------

  ------------------------------------------------------------------------
  Type                         Name                Defaul Description
                                                   t      
  ---------------------------- ------------------- ------ ----------------
  replaceable package Medium   [PartialMedium](Mod Medium 
                               elica_Media_Interfa in the 
                               ces_PartialMedium.h compon 
                               tml#Modelica.Media. ent    
                               Interfaces.PartialM        
                               edium)                     

  [LossFactorData](Modelica_Fl data                BaseCl Loss factor data
  uid_Fittings_BaseClasses_Qua                     asses. 
  draticTurbulent.html#Modelic                     Quadra 
  a.Fluid.Fittings.BaseClasses                     ticTur 
  .QuadraticTurbulent.LossFact                     bule.. 
  orData)                                          .      

  [Diameter](Modelica_SIunits. diameter\_a                Inner diameter
  html#Modelica.SIunits.Diamet                            of pipe at
  er)                                                     port\_a [m]

  [Diameter](Modelica_SIunits. diameter\_b                Inner diameter
  html#Modelica.SIunits.Diamet                            of pipe at
  er)                                                     port\_b [m]

  **Assumptions**                                         

  Boolean                      allowFlowReversal   system = true to allow
                                                   .allow flow reversal,
                                                   FlowRe false restricts
                                                   versal to design
                                                          direction
                                                          (port\_a -\>
                                                          port\_b)

  **Advanced**                                            

  [AbsolutePressure](Modelica_ dp\_start           0.01\* Guess value of
  Media_Interfaces_PartialMedi                     system dp = port\_a.p -
  um.html#Modelica.Media.Inter                     .p\_st port\_b.p [Pa]
  faces.PartialMedium.Absolute                     art    
  Pressure)                                               

  [MassFlowRate](Modelica_Medi m\_flow\_start      system Guess value of
  a_Interfaces_PartialMedium.h                     .m\_fl m\_flow =
  tml#Modelica.Media.Interface                     ow\_st port\_a.m\_flow
  s.PartialMedium.MassFlowRate                     art    [kg/s]
  )                                                       

  [MassFlowRate](Modelica_Medi m\_flow\_small      system Small mass flow
  a_Interfaces_PartialMedium.h                     .m\_fl rate for
  tml#Modelica.Media.Interface                     ow\_sm regularization
  s.PartialMedium.MassFlowRate                     all    of zero flow
  )                                                       [kg/s]

  [AbsolutePressure](Modelica_ dp\_small           system Turbulent flow
  Media_Interfaces_PartialMedi                     .dp\_s if |dp| \>=
  um.html#Modelica.Media.Inter                     mall   dp\_small [Pa]
  faces.PartialMedium.Absolute                            
  Pressure)                                               

  Diagnostics                                             

  Boolean                      show\_T             true   = true, if
                                                          temperatures at
                                                          port\_a and
                                                          port\_b are
                                                          computed

  Boolean                      show\_V\_flow       true   = true, if
                                                          volume flow rate
                                                          at inflowing
                                                          port is computed

  Boolean                      show\_Re            false  = true, if
                                                          Reynolds number
                                                          is included for
                                                          plotting

  Boolean                      show\_totalPressure false  = true, if total
                               s                          pressures are
                                                          included for
                                                          plotting

  Boolean                      show\_portVelocitie false  = true, if port
                               s                          velocities are
                                                          included for
                                                          plotting
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                Name Description
  ----------------------------------- ---- -------------------------------
  [FluidPort\_a](Modelica_Fluid_Inter port Fluid connector a (positive
  faces.html#Modelica.Fluid.Interface \_a  design flow direction is from
  s.FluidPort_a)                           port\_a to port\_b)

  [FluidPort\_b](Modelica_Fluid_Inter port Fluid connector b (positive
  faces.html#Modelica.Fluid.Interface \_b  design flow direction is from
  s.FluidPort_b)                           port\_a to port\_b)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model AbruptAdaptor 
      "Pressure drop in pipe due to suddenly expanding or reducing area (for both flow directions)"
      extends BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea(final data=
              BaseClasses.QuadraticTurbulent.LossFactorData.suddenExpansion(
              diameter_a, diameter_b));
      parameter SI.Diameter diameter_a "Inner diameter of pipe at port_a";
      parameter SI.Diameter diameter_b "Inner diameter of pipe at port_b";

    end AbruptAdaptor;

* * * * *

![image23](Modelica.Fluid.Fittings.MultiPortI.png) [Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).MultiPort
============================================================================================================================================

**Multiply a port; useful if multiple connections shall be made to a
port exposing a state**

Information
-----------

::

This model is useful if multiple connections shall be made to a port of
a volume model exposing a state, like a pipe with ModelStructure av\_vb.
The mixing is shifted into the volume connected to port\_a and the
result is propageted back to each ports\_b.

If multiple connections were directly made to the volume, then ideal
mixing would take place in the connection set, outside the volume. This
is normally not intended.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Name         Descript
                                                                  ion
  -------------------------------------------------- ------------ --------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Mode port\_a      
  lica.Fluid.Interfaces.FluidPort_a)                              

  [FluidPorts\_b](Modelica_Fluid_Interfaces.html#Mod ports\_b[nPo 
  elica.Fluid.Interfaces.FluidPorts_b)               rts\_b]      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model MultiPort 
      "Multiply a port; useful if multiple connections shall be made to a port exposing a state"

      function positiveMax
        input Real x;
        output Real y;
      algorithm 
        y :=max(x, 1e-10);
      end positiveMax;

      import Modelica.Constants;

      replaceable package Medium=Modelica.Media.Interfaces.PartialMedium;

      // Ports
      parameter Integer nPorts_b=0 
        "Number of outlet ports (mass is distributed evenly between the outlet ports";

      Modelica.Fluid.Interfaces.FluidPort_a port_a(
        redeclare package Medium=Medium);
      Modelica.Fluid.Interfaces.FluidPorts_b ports_b[nPorts_b](
        redeclare each package Medium=Medium);

      Medium.MassFraction ports_b_Xi_inStream[nPorts_b,Medium.nXi] 
        "inStream mass fractions at ports_b";
      Medium.ExtraProperty ports_b_C_inStream[nPorts_b,Medium.nC] 
        "inStream extra properties at ports_b";

    equation 
      // Only one connection allowed to a port to avoid unwanted ideal mixing
      for i in 1:nPorts_b loop
        assert(cardinality(ports_b[i]) <= 1,"
    each ports_b[i] of boundary shall at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections, which is usually not the intention
    of the modeller. Increase nPorts_b to add an additional port.
    ");
      end for;

      // mass and momentum balance
      0 = port_a.m_flow + sum(ports_b.m_flow);
      ports_b.p = fill(port_a.p, nPorts_b);

      // mixing at port_a
      port_a.h_outflow = sum({positiveMax(ports_b[j].m_flow)*inStream(ports_b[j].h_outflow) for j in 1:nPorts_b})
                           / sum({positiveMax(ports_b[j].m_flow) for j in 1:nPorts_b});
      for j in 1:nPorts_b loop
         // expose stream values from port_a to ports_b
         ports_b[j].h_outflow  = inStream(port_a.h_outflow);
         ports_b[j].Xi_outflow = inStream(port_a.Xi_outflow);
         ports_b[j].C_outflow  = inStream(port_a.C_outflow);

         ports_b_Xi_inStream[j,:] = inStream(ports_b[j].Xi_outflow);
         ports_b_C_inStream[j,:] = inStream(ports_b[j].C_outflow);
      end for;
      for i in 1:Medium.nXi loop
        port_a.Xi_outflow[i] = (positiveMax(ports_b.m_flow)*ports_b_Xi_inStream[:,i])
                             / sum(positiveMax(ports_b.m_flow));
      end for;
      for i in 1:Medium.nC loop
        port_a.C_outflow[i] = (positiveMax(ports_b.m_flow)*ports_b_C_inStream[:,i])
                             / sum(positiveMax(ports_b.m_flow));
      end for;
    end MultiPort;

* * * * *

![image24](Modelica.Fluid.Fittings.TeeJunctionIdealI.png) [Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).TeeJunctionIdeal
==========================================================================================================================================================

**Splitting/joining component with static balances for an infinitesimal
control volume**

Information
-----------

::

This model is the simplest implementation for a splitting/joining
component for three flows. Its use is not required. It just formulates
the balance equations in the same way that the connect symmantics would
formulate them anyways. The main advantage of using this component is,
that the user does not get confused when looking at the specific
enthalpy at each port which might be confusing when not using a
splitting/joining component. The reason for the confusion is that one
exmanins the mixing enthalpy of the infinitesimal control volume
introduced with the connect statement when looking at the specific
enthalpy in the connector which might not be equal to the specific
enthalpy at the port in the "real world".

::

Extends from
[Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction](Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction)
(Base class for a splitting/joining component with three ports).

Parameters
----------

  --------------------------------------------------------------------------
  Type         Name                                       Default     Descri
                                                                      ption
  ------------ ------------------------------------------ ----------- ------
  replaceable  [PartialMedium](Modelica_Media_Interfaces_ Medium in   
  package      PartialMedium.html#Modelica.Media.Interfac the         
  Medium       es.PartialMedium)                          component   
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name    Descripti
                                                                  on
  ------------------------------------------------------- ------- ---------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica. port\_1 
  Fluid.Interfaces.FluidPort_a)                                   

  [FluidPort\_b](Modelica_Fluid_Interfaces.html#Modelica. port\_2 
  Fluid.Interfaces.FluidPort_b)                                   

  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica. port\_3 
  Fluid.Interfaces.FluidPort_a)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model TeeJunctionIdeal 
      "Splitting/joining component with static balances for an infinitesimal control volume"
      extends Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction;

    equation 
      connect(port_1, port_2);
      connect(port_1, port_3);
    end TeeJunctionIdeal;

* * * * *

![image25](Modelica.Fluid.Fittings.TeeJunctionVolumeI.png) [Modelica.Fluid.Fittings](Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings).TeeJunctionVolume
============================================================================================================================================================

**Splitting/joining component with static balances for a dynamic control
volume**

Information
-----------

::

This model introduces a mixing volume into a junction. This might be
useful to examine the non-ideal mixing taking place in a real junction.

::

Extends from
[Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction](Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction)
(Base class for a splitting/joining component with three ports),
[Modelica.Fluid.Interfaces.PartialLumpedVolume](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedVolume)
(Lumped volume with mass and energy balance).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name                     Default  Descriptio
                                                                 n
  ---------------------------- ------------------------ -------- ----------
  replaceable package Medium   [PartialMedium](Modelica Medium   
                               _Media_Interfaces_Partia in the   
                               lMedium.html#Modelica.Me componen 
                               dia.Interfaces.PartialMe t        
                               dium)                             

  [Volume](Modelica_SIunits.ht fluidVolume              V        Volume
  ml#Modelica.SIunits.Volume)                                    [m3]

  [Volume](Modelica_SIunits.ht V                                 Mixing
  ml#Modelica.SIunits.Volume)                                    volume
                                                                 inside
                                                                 junction
                                                                 [m3]

  **Assumptions**                                                

  Dynamics                                                       

  [Dynamics](Modelica_Fluid_Ty energyDynamics           system.e Formulatio
  pes.html#Modelica.Fluid.Type                          nergyDyn n
  s.Dynamics)                                           amics    of energy
                                                                 balance

  [Dynamics](Modelica_Fluid_Ty massDynamics             system.m Formulatio
  pes.html#Modelica.Fluid.Type                          assDynam n
  s.Dynamics)                                           ics      of mass
                                                                 balance

  **Initialization**                                             

  [AbsolutePressure](Modelica_ p\_start                 system.p Start
  Media_Interfaces_PartialMedi                          \_start  value of
  um.html#Modelica.Media.Inter                                   pressure
  faces.PartialMedium.Absolute                                   [Pa]
  Pressure)                                                      

  Boolean                      use\_T\_start            true     = true,
                                                                 use
                                                                 T\_start,
                                                                 otherwise
                                                                 h\_start

  [Temperature](Modelica_Media T\_start                 if       Start
  _Interfaces_PartialMedium.ht                          use\_T\_ value of
  ml#Modelica.Media.Interfaces                          start    temperatur
  .PartialMedium.Temperature)                           then     e
                                                        system.T [K]
                                                        ...      

  [SpecificEnthalpy](Modelica_ h\_start                 if       Start
  Media_Interfaces_PartialMedi                          use\_T\_ value of
  um.html#Modelica.Media.Inter                          start    specific
  faces.PartialMedium.Specific                          then     enthalpy
  Enthalpy)                                             Medium.s [J/kg]
                                                        ...      

  [MassFraction](Modelica_Medi X\_start[Medium.nX]      Medium.X Start
  a_Interfaces_PartialMedium.h                          \_defaul value of
  tml#Modelica.Media.Interface                          t        mass
  s.PartialMedium.MassFraction                                   fractions
  )                                                              m\_i/m
                                                                 [kg/kg]

  [ExtraProperty](Modelica_Med C\_start[Medium.nC]      fill(0,  Start
  ia_Interfaces_PartialMedium.                          Medium.n value of
  html#Modelica.Media.Interfac                          C)       trace
  es.PartialMedium.ExtraProper                                   substances
  ty)                                                            
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                    Name    Descripti
                                                                  on
  ------------------------------------------------------- ------- ---------
  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica. port\_1 
  Fluid.Interfaces.FluidPort_a)                                   

  [FluidPort\_b](Modelica_Fluid_Interfaces.html#Modelica. port\_2 
  Fluid.Interfaces.FluidPort_b)                                   

  [FluidPort\_a](Modelica_Fluid_Interfaces.html#Modelica. port\_3 
  Fluid.Interfaces.FluidPort_a)                                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model TeeJunctionVolume 
      "Splitting/joining component with static balances for a dynamic control volume"
      extends Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction;
      extends Modelica.Fluid.Interfaces.PartialLumpedVolume(
        final fluidVolume = V);

      parameter SI.Volume V "Mixing volume inside junction";

    equation 
      // Only one connection allowed to a port to avoid unwanted ideal mixing
      assert(cardinality(port_1) <= 1,"
    port_1 of volume can at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections which is usually not the intention
    of the modeller.
    ");
      assert(cardinality(port_2) <= 1,"
    port_2 of volume can at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections which is usually not the intention
    of the modeller.
    ");
      assert(cardinality(port_3) <= 1,"
    port_3 of volume can at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections which is usually not the intention
    of the modeller.
    ");

      // Boundary conditions
      port_1.h_outflow = medium.h;
      port_2.h_outflow = medium.h;
      port_3.h_outflow = medium.h;

      port_1.Xi_outflow = medium.Xi;
      port_2.Xi_outflow = medium.Xi;
      port_3.Xi_outflow = medium.Xi;

      port_1.C_outflow = C;
      port_2.C_outflow = C;
      port_3.C_outflow = C;

      // Mass balances
      mb_flow = port_1.m_flow + port_2.m_flow + port_3.m_flow "Mass balance";
      mbXi_flow = port_1.m_flow*actualStream(port_1.Xi_outflow)
                  + port_2.m_flow*actualStream(port_2.Xi_outflow)
                  + port_3.m_flow*actualStream(port_3.Xi_outflow) 
        "Component mass balances";

      mbC_flow  = port_1.m_flow*actualStream(port_1.C_outflow)
                + port_2.m_flow*actualStream(port_2.C_outflow)
                + port_3.m_flow*actualStream(port_3.C_outflow) 
        "Trace substance mass balances";

      // Momentum balance (suitable for compressible media)
      port_1.p = medium.p;
      port_2.p = medium.p;
      port_3.p = medium.p;

      // Energy balance
      Hb_flow = port_1.m_flow*actualStream(port_1.h_outflow)
                + port_2.m_flow*actualStream(port_2.h_outflow)
                + port_3.m_flow*actualStream(port_3.h_outflow);
      Qb_flow = 0;
      Wb_flow = 0;

    end TeeJunctionVolume;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:17 2010.
