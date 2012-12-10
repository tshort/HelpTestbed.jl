% Modelica.Fluid.Valves.BaseClasses
% 
% 

[Modelica.Fluid.Valves](Modelica_Fluid_Valves.html#Modelica.Fluid.Valves).BaseClasses
=====================================================================================

**Base classes used in the Valves package (only of interest to build new
component models)**

Information
-----------

Extends from
[Modelica.Icons.BasesPackage](Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage)
(Icon for packages containing base classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image2](Modelica.Fluid.Valves.BaseClasses.PartialValveS.pn Base model
  g)                                                           for valves
  [PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modeli 
  ca.Fluid.Valves.BaseClasses.PartialValve)                    

  ![image3](Modelica.Fluid.Valves.BaseClasses.ValveCharacteris Functions
  ticsS.png)                                                   for valve
  [ValveCharacteristics](Modelica_Fluid_Valves_BaseClasses_Val characteris
  veCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.Val tics
  veCharacteristics)                                           
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Fluid.Valves.BaseClasses.PartialValveI.png) [Modelica.Fluid.Valves.BaseClasses](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses).PartialValve
=========================================================================================================================================================================================

**Base model for valves**

Information
-----------

::

This is the base model for the `ValveIncompressible`, `ValveVaporizing`,
and `ValveCompressible` valve models. The model is based on the IEC 534
/ ISA S.75 standards for valve sizing.

The model optionally supports reverse flow conditions (assuming
symmetrical behaviour) or check valve operation, and has been suitably
regularized, compared to the equations in the standard, in order to
avoid numerical singularities around zero pressure drop operating
conditions.

The model assumes adiabatic operation (no heat losses to the ambient);
changes in kinetic energy from inlet to outlet are neglected in the
energy balance.

**Modelling options**

The following options are available to specify the valve flow
coefficient in fully open conditions:

-   `CvData = Modelica.Fluid.Types.CvTypes.Av`: the flow coefficient is
    given by the metric `Av` coefficient (m\^2).
-   `CvData = Modelica.Fluid.Types.CvTypes.Kv`: the flow coefficient is
    given by the metric `Kv` coefficient (m\^3/h).
-   `CvData = Modelica.Fluid.Types.CvTypes.Cv`: the flow coefficient is
    given by the US `Cv` coefficient (USG/min).
-   `CvData = Modelica.Fluid.Types.CvTypes.OpPoint`: the flow is
    computed from the nominal operating point specified by `p_nominal`,
    `dp_nominal`, `m_flow_nominal`, `rho_nominal`, `opening_nominal`.

The nominal pressure drop `dp_nominal` must always be specified; to
avoid numerical singularities, the flow characteristic is modified for
pressure drops less than `b*dp_nominal` (the default value is 1% of the
nominal pressure drop). Increase this parameter if numerical problems
occur in valves with very low pressure drops.

If `checkValve` is true, then the flow is stopped when the outlet
pressure is higher than the inlet pressure; otherwise, reverse flow
takes place. Use this option only when neede, as it increases the
numerical complexity of the problem.

The valve opening characteristic `valveCharacteristic`, linear by
default, can be replaced by any user-defined function. Quadratic and
equal percentage with customizable rangeability are already provided by
the library. The characteristics for constant port\_a.p and port\_b.p
pressures with continuously changing opening are shown in the next two
figures:

The treatment of parameters **Kv** and **Cv** is explained in detail in
the [User's
Guide](Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.ValveCharacteristics).

With the optional parameter "filteredOpening", the opening can be
filtered with a **second order, criticalDamping** filter so that the
opening demand is delayed by parameter "riseTime". The filtered opening
is then available via the output signal "opening\_filtered" and is used
to control the valve equations. This approach approximates the driving
device of a valve. The "riseTime" parameter is used to compute the
cut-off frequency of the filter by the equation: f\_cut =
5/(2\*pi\*riseTime). It defines the time that is needed until
opening\_filtered reaches 99.6 % of a step input of opening. The icon of
a valve changes in the following way (left image: filteredOpening=false,
right image: filteredOpening=true):

If "filteredOpening = **true**", the input signal "opening" is limited
by parameter **leackageOpening**, i.e., if "opening" becomes smaller as
"leakageOpening", then "leakageOpening" is used instead of "opening" as
input for the filter. The reason is that "opening=0" might structurally
change the equations of the fluid network leading to a singularity. If a
small leakage flow is introduced (which is often anyway present in
reality), the singularity might be avoided.

In the next figure, "opening" and "filtered\_opening" are shown in the
case that filteredOpening = **true**, riseTime = 1 s, and
leackageOpening = 0.02.

::

Extends from
[Modelica.Fluid.Interfaces.PartialTwoPortTransport](Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport)
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
----------

  --------------------------------------------------------------------------
  Type                      Name                  Default Description
  ------------------------- --------------------- ------- ------------------
  replaceable package       [PartialMedium](Model Medium  
  Medium                    ica_Media_Interfaces_ in the  
                            PartialMedium.html#Mo compone 
                            delica.Media.Interfac nt      
                            es.PartialMedium)             

  Flow Coefficient                                        

  [CvTypes](Modelica_Fluid_ CvData                Modelic Selection of flow
  Types.html#Modelica.Fluid                       a.Fluid coefficient
  .Types.CvTypes)                                 .Types. 
                                                  CvTypes 
                                                  ...     

  [Area](Modelica_SIunits.h Av                    0       Av (metric) flow
  tml#Modelica.SIunits.Area                               coefficient [m2]
  )                                                       

  Real                      Kv                    0       Kv (metric) flow
                                                          coefficient [m3/h]

  Real                      Cv                    0       Cv (US) flow
                                                          coefficient
                                                          [USG/min]

  Nominal operating point                                 

  [Pressure](Modelica_SIuni dp\_nominal                   Nominal pressure
  ts.html#Modelica.SIunits.                               drop [Pa]
  Pressure)                                               

  [MassFlowRate](Modelica_M m\_flow\_nominal              Nominal mass
  edia_Interfaces_PartialMe                               flowrate [kg/s]
  dium.html#Modelica.Media.                               
  Interfaces.PartialMedium.                               
  MassFlowRate)                                           

  [Density](Modelica_Media_ rho\_nominal          Medium. Nominal inlet
  Interfaces_PartialMedium.                       density density [kg/m3]
  html#Modelica.Media.Inter                       \_pTX(M 
  faces.PartialMedium.Densi                       edium.p 
  ty)                                             \_...   

  Real                      opening\_nominal      1       Nominal opening

  Filtered opening                                        

  Boolean                   filteredOpening       false   = true, if opening
                                                          is filtered with a
                                                          2nd order
                                                          CriticalDamping
                                                          filter

  [Time](Modelica_SIunits.h riseTime              1       Rise time of the
  tml#Modelica.SIunits.Time                               filter (time to
  )                                                       reach 99.6 % of an
                                                          opening step) [s]

  Real                      leakageOpening        1e-3    The opening signal
                                                          is limited by
                                                          leakageOpening (to
                                                          improve the
                                                          numerics)

  **Assumptions**                                         

  Boolean                   allowFlowReversal     system. = true to allow
                                                  allowFl flow reversal,
                                                  owRever false restricts to
                                                  sal     design direction
                                                          (port\_a -\>
                                                          port\_b)

  Boolean                   checkValve            false   Reverse flow
                                                          stopped

  **Advanced**                                            

  [AbsolutePressure](Modeli dp\_start             dp\_nom Guess value of dp
  ca_Media_Interfaces_Parti                       inal    = port\_a.p -
  alMedium.html#Modelica.Me                               port\_b.p [Pa]
  dia.Interfaces.PartialMed                               
  ium.AbsolutePressure)                                   

  [MassFlowRate](Modelica_M m\_flow\_start        m\_flow Guess value of
  edia_Interfaces_PartialMe                       \_nomin m\_flow =
  dium.html#Modelica.Media.                       al      port\_a.m\_flow
  Interfaces.PartialMedium.                               [kg/s]
  MassFlowRate)                                           

  [MassFlowRate](Modelica_M m\_flow\_small        system. Small mass flow
  edia_Interfaces_PartialMe                       m\_flow rate for
  dium.html#Modelica.Media.                       \_small regularization of
  Interfaces.PartialMedium.                               zero flow [kg/s]
  MassFlowRate)                                           

  [Pressure](Modelica_SIuni dp\_small             system. Regularisation of
  ts.html#Modelica.SIunits.                       dp\_sma zero flow [Pa]
  Pressure)                                       ll      

  Diagnostics                                             

  Boolean                   show\_T               true    = true, if
                                                          temperatures at
                                                          port\_a and
                                                          port\_b are
                                                          computed

  Boolean                   show\_V\_flow         true    = true, if volume
                                                          flow rate at
                                                          inflowing port is
                                                          computed
  --------------------------------------------------------------------------

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

    partial model PartialValve "Base model for valves"

      import Modelica.Fluid.Types.CvTypes;
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport(
        dp_start = dp_nominal,
        m_flow_start = m_flow_nominal,
        m_flow_small = system.m_flow_small);

      parameter Modelica.Fluid.Types.CvTypes CvData=Modelica.Fluid.Types.CvTypes.OpPoint 
        "Selection of flow coefficient";
      parameter SI.Area Av(
        fixed=if CvData == Modelica.Fluid.Types.CvTypes.Av then true else false,
        start=m_flow_nominal/(sqrt(rho_nominal*dp_nominal))*valveCharacteristic(
            opening_nominal)) = 0 "Av (metric) flow coefficient";
      parameter Real Kv = 0 "Kv (metric) flow coefficient [m3/h]";
      parameter Real Cv = 0 "Cv (US) flow coefficient [USG/min]";
      parameter SI.Pressure dp_nominal "Nominal pressure drop";
      parameter Medium.MassFlowRate m_flow_nominal "Nominal mass flowrate";
      parameter Medium.Density rho_nominal=Medium.density_pTX(Medium.p_default, Medium.T_default, Medium.X_default) 
        "Nominal inlet density";
      parameter Real opening_nominal(min=0,max=1)=1 "Nominal opening";

      parameter Boolean filteredOpening=false 
        "= true, if opening is filtered with a 2nd order CriticalDamping filter";
      parameter Modelica.SIunits.Time riseTime=1 
        "Rise time of the filter (time to reach 99.6 % of an opening step)";
      parameter Real leakageOpening(min=0,max=1)=1e-3 
        "The opening signal is limited by leakageOpening (to improve the numerics)";
      parameter Boolean checkValve=false "Reverse flow stopped";

      replaceable function valveCharacteristic =
          Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.linear
        constrainedby 
        Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun 
        "Inherent flow characteristic";

      parameter SI.Pressure dp_small=system.dp_small "Regularisation of zero flow";

      constant SI.Area Kv2Av = 27.7e-6 "Conversion factor";
      constant SI.Area Cv2Av = 24.0e-6 "Conversion factor";

      Modelica.Blocks.Interfaces.RealInput opening(min=0, max=1) 
        "Valve position in the range 0..1";

      Modelica.Blocks.Interfaces.RealOutput opening_filtered if filteredOpening 
        "Filtered valve position in the range 0..1";

      Modelica.Blocks.Continuous.Filter filter(order=2, f_cut=5/(2*Modelica.Constants.pi
            *riseTime)) if filteredOpening;

    protected 
      Modelica.Blocks.Interfaces.RealOutput opening_actual;

    block MinLimiter "Limit the signal above a threshold"
     parameter Real uMin=0 "Lower limit of input signal";
      extends Modelica.Blocks.Interfaces.SISO;

    equation 
      y = smooth(0, noEvent( if u < uMin then uMin else u));
    end MinLimiter;

      MinLimiter minLimiter(uMin=leakageOpening);
    initial equation 
      if CvData == CvTypes.Kv then
        Av = Kv*Kv2Av "Unit conversion";
      elseif CvData == CvTypes.Cv then
        Av = Cv*Cv2Av "Unit conversion";
      end if;

    equation 
      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

      connect(filter.y, opening_filtered);

      if filteredOpening then
         connect(filter.y, opening_actual);
      else
         connect(opening, opening_actual);
      end if;

      connect(minLimiter.y, filter.u);
      connect(minLimiter.u, opening);
    end PartialValve;

* * * * *

![Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiter](Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiterI.png) [Modelica.Fluid.Valves.BaseClasses.PartialValve](Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve).MinLimiter
===============================================================================================================================================================================================================================================================================

**Limit the signal above a threshold**

Information
-----------

::

The block passes its input signal as output signal as long as the input
is above uMin. If this is not the case, y=uMin is passed as output.

::

Extends from
[Modelica.Blocks.Interfaces.SISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO)
(Single Input Single Output continuous control block).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ --------------------------------
  Real      uMin      0            Lower limit of input signal

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Model      input signal
  ica.Blocks.Interfaces.RealInput)                       

  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block MinLimiter "Limit the signal above a threshold"
     parameter Real uMin=0 "Lower limit of input signal";
      extends Modelica.Blocks.Interfaces.SISO;

    equation 
      y = smooth(0, noEvent( if u < uMin then uMin else u));
    end MinLimiter;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:17 2010.
