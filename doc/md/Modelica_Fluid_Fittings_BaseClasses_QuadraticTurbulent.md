% Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent
% 
% 

[Modelica.Fluid.Fittings.BaseClasses](Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses).QuadraticTurbulent
======================================================================================================================================

**Pressure loss components that are mainly defined by a quadratic
turbulent regime with constant loss factor data**

Information
-----------

::

This library provides pressure loss factors of a pipe segment (orifice,
bending etc.) with a minimum amount of data. If available, data can be
provided for **both flow directions**, i.e., flow from port\_a to
port\_b and from port\_b to port\_a, as well as for the **laminar** and
the **turbulent** region. It is also an option to provide the loss
factor **only** for the **turbulent** region for a flow from port\_a to
port\_b. Basically, the pressure drop is defined by the following
equation:

    Δp = 0.5*ζ*ρ*v*|v|
       = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
       = 8*ζ/(π^2*D^4*ρ) * m_flow*|m_flow|

where

-   Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-   v is the mean velocity.
-   ρ is the density.
-   ζ is the loss factor that depends on the geometry of the pipe. In
    the turbulent flow regime, it is assumed that ζ is constant and is
    given by "zeta1" and "zeta2" depending on the flow direction.
-   
-   D is the diameter of the pipe segment. If this is not a circular
    cross section, D = 4\*A/P, where A is the cross section area and P
    is the wetted perimeter.

::

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image9](Modelica.Fluid.Fittings.BaseClasses.Qu Data structure defining
  adraticTurbulent.LossFactorDataS.png)            constant loss factor
  [LossFactorData](Modelica_Fluid_Fittings_BaseCla data for dp =
  sses_QuadraticTurbulent.html#Modelica.Fluid.Fitt zeta\*rho\*v\*|v|/2 and
  ings.BaseClasses.QuadraticTurbulent.LossFactorDa functions providing the
  ta)                                              data for some loss
                                                   types

  ![image10](Modelica.Fluid.Fittings.BaseClasses.Q Return mass flow rate
  uadraticTurbulent.massFlowRate_dpS.png)          from constant loss
  [massFlowRate\_dp](Modelica_Fluid_Fittings_BaseC factor data and
  lasses_QuadraticTurbulent.html#Modelica.Fluid.Fi pressure drop (m\_flow
  ttings.BaseClasses.QuadraticTurbulent.massFlowRa = f(dp))
  te_dp)                                           

  ![image11](Modelica.Fluid.Fittings.BaseClasses.Q Return mass flow rate
  uadraticTurbulent.massFlowRate_dpS.png)          from constant loss
  [massFlowRate\_dp\_and\_Re](Modelica_Fluid_Fitti factor data, pressure
  ngs_BaseClasses_QuadraticTurbulent.html#Modelica drop and Re (m\_flow =
  .Fluid.Fittings.BaseClasses.QuadraticTurbulent.m f(dp))
  assFlowRate_dp_and_Re)                           

  ![image12](Modelica.Fluid.Fittings.BaseClasses.Q Return pressure drop
  uadraticTurbulent.massFlowRate_dpS.png)          from constant loss
  [pressureLoss\_m\_flow](Modelica_Fluid_Fittings_ factor and mass flow
  BaseClasses_QuadraticTurbulent.html#Modelica.Flu rate (dp = f(m\_flow))
  id.Fittings.BaseClasses.QuadraticTurbulent.press 
  ureLoss_m_flow)                                  

  ![image13](Modelica.Fluid.Fittings.BaseClasses.Q Return pressure drop
  uadraticTurbulent.massFlowRate_dpS.png)          from constant loss
  [pressureLoss\_m\_flow\_and\_Re](Modelica_Fluid_ factor, mass flow rate
  Fittings_BaseClasses_QuadraticTurbulent.html#Mod and Re (dp =
  elica.Fluid.Fittings.BaseClasses.QuadraticTurbul f(m\_flow))
  ent.pressureLoss_m_flow_and_Re)                  

  ![image14](Modelica.Fluid.Fittings.BaseClasses.Q Generic pressure drop
  uadraticTurbulent.BaseModelS.png)                component with constant
  [BaseModel](Modelica_Fluid_Fittings_BaseClasses_ turbulent loss factor
  QuadraticTurbulent.html#Modelica.Fluid.Fittings. data and without an
  BaseClasses.QuadraticTurbulent.BaseModel)        icon

  ![image15](Modelica.Fluid.Fittings.BaseClasses.Q Pressure drop in pipe
  uadraticTurbulent.TestWallFrictionS.png)         due to wall friction
  [TestWallFriction](Modelica_Fluid_Fittings_BaseC (only for test
  lasses_QuadraticTurbulent.html#Modelica.Fluid.Fi purposes; if needed use
  ttings.BaseClasses.QuadraticTurbulent.TestWallFr Pipes.StaticPipe
  iction)                                          instead)

  ![image16](Modelica.Fluid.Fittings.BaseClasses.Q Generic pressure drop
  uadraticTurbulent.BaseModelNonconstantCrossSecti component with constant
  onAreaS.png)                                     turbulent loss factor
  [BaseModelNonconstantCrossSectionArea](Modelica_ data and without an
  Fluid_Fittings_BaseClasses_QuadraticTurbulent.ht icon, for non-constant
  ml#Modelica.Fluid.Fittings.BaseClasses.Quadratic cross section area
  Turbulent.BaseModelNonconstantCrossSectionArea)  

  ![image17](Modelica.Fluid.Fittings.BaseClasses.Q Return pressure drop
  uadraticTurbulent.pressureLoss_m_flow_totalPress from constant loss
  ureS.png)                                        factor and mass flow
  [pressureLoss\_m\_flow\_totalPressure](Modelica_ rate (dp = f(m\_flow))
  Fluid_Fittings_BaseClasses_QuadraticTurbulent.ht 
  ml#Modelica.Fluid.Fittings.BaseClasses.Quadratic 
  Turbulent.pressureLoss_m_flow_totalPressure)     
  ------------------------------------------------------------------------

* * * * *

![image18](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorDataI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).LossFactorData
==================================================================================================================================================================================================================================================================================

**Data structure defining constant loss factor data for dp =
zeta\*rho\*v\*|v|/2 and functions providing the data for some loss
types**

Information
-----------

::

This record defines the pressure loss factors of a pipe segment
(orifice, bending etc.) with a minimum amount of data. If available,
data should be provided for **both flow directions**, i.e., flow from
port\_a to port\_b and from port\_b to port\_a, as well as for the
**laminar** and the **turbulent** region. It is also an option to
provide the loss factor **only** for the **turbulent** region for a flow
from port\_a to port\_b.

The following equations are used:

    Δp = 0.5*ζ*ρ*v*|v|
       = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
       = 8*ζ/(π^2*D^4*ρ) * m_flow*|m_flow|
         Re = |v|*D*ρ/μ

  -------------- ------------------ --------------------------------------
  **flow type**  **ζ** =            **flow region**

  turbulent      **zeta1** = const. Re ≥ Re\_turbulent, v ≥ 0

                 **zeta2** = const. Re ≥ Re\_turbulent, v < 0

  laminar        **c0**/Re          both flow directions, Re small; c0 =
                                    const.
  -------------- ------------------ --------------------------------------

where

-   Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-   v is the mean velocity.
-   ρ is the density.
-   ζ is the loss factor that depends on the geometry of the pipe. In
    the turbulent flow regime, it is assumed that ζ is constant and is
    given by "zeta1" and "zeta2" depending on the flow direction. When
    the Reynolds number Re is below "Re\_turbulent", the flow is laminar
    for small flow velocities. For higher velocities there is a
    transition region from laminar to turbulent flow. The loss factor
    for laminar flow at small velocities is defined by the often
    occuring approximation c0/Re. If c0 is different for the two flow
    directions, the mean value has to be used (c0 = (c0\_ab +
    c0\_ba)/2).
-   
-   The equation "Δp = 0.5\*ζ\*ρ\*v\*|v|" is either with respect to
    port\_a or to port\_b, depending on the definition of the particular
    loss factor ζ (in some references loss factors are defined with
    respect to port\_a, in other references with respect to port\_b).
-   Re = |v|\*D\_Re\*ρ/μ = |m\_flow|\*D\_Re/(A\_Re\*μ) is the Reynolds
    number at the smallest cross section area. This is often at port\_a
    or at port\_b, but can also be between the two ports. In the record,
    the diameter D\_Re of this smallest cross section area has to be
    provided, as well, as Re\_turbulent, the absolute value of the
    Reynolds number at which the turbulent flow starts. If Re\_turbulent
    is different for the two flow directions, use the smaller value as
    Re\_turbulent.
-   D is the diameter of the pipe. If the pipe has not a circular cross
    section, D = 4\*A/P, where A is the cross section area and P is the
    wetted perimeter.
-   A is the cross section area with A = π(D/2)\^2.
-   μ is the dynamic viscosity.

The laminar and the transition region is usually of not much technical
interest because the operating point is mostly in the turbulent regime.
For simplification and for numercial reasons, this whole region is
described by two polynomials of third order, one polynomial for m\_flow
≥ 0 and one for m\_flow < 0. The polynomials start at Re =
|m\_flow|\*4/(π\*D\_Re\*μ), where D\_Re is the smallest diameter between
port\_a and port\_b. The common derivative of the two polynomials at Re
= 0 is computed from the equation "c0/Re". Note, the pressure drop
equation above in the laminar region is always defined with respect to
the smallest diameter D\_Re.

If no data for c0 is available, the derivative at Re = 0 is computed in
such a way, that the second derivatives of the two polynomials are
identical at Re = 0. The polynomials are constructed, such that they
smoothly touch the characteristic curves in the turbulent regions. The
whole characteristic is therefore **continuous** and has a **finite**,
**continuous first derivative everywhere**. In some cases, the
constructed polynomials would "vibrate". This is avoided by reducing the
derivative at Re=0 in such a way that the polynomials are guaranteed to
be monotonically increasing. The used sufficient criteria for
monotonicity follows from:

> Fritsch F.N. and Carlson R.E. (1980):
>   ~ **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
>     Vol. 17, No. 2, April 1980, pp. 238-246
>
::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                          Name    Defa Description
                                        ult  
  ----------------------------- ------- ---- ------------------------------
  [Diameter](Modelica_SIunits.h diamete      Diameter at port\_a [m]
  tml#Modelica.SIunits.Diameter r\_a         
  )                                          

  [Diameter](Modelica_SIunits.h diamete      Diameter at port\_b [m]
  tml#Modelica.SIunits.Diameter r\_b         
  )                                          

  Real                          zeta1        Loss factor for flow port\_a
                                             -\> port\_b

  Real                          zeta2        Loss factor for flow port\_b
                                             -\> port\_a

  [ReynoldsNumber](Modelica_SIu Re\_tur      Loss factors suited for Re \>=
  nits.html#Modelica.SIunits.Re bulent       Re\_turbulent [1]
  ynoldsNumber)                              

  [Diameter](Modelica_SIunits.h D\_Re        Diameter used to compute Re
  tml#Modelica.SIunits.Diameter              [m]
  )                                          

  Boolean                       zeta1\_ true dp = zeta1\*(if zeta1\_at\_a
                                at\_a        then rho\_a\*v\_a\^2/2 else
                                             rho\_b\*v\_b\^2/2)

  Boolean                       zeta2\_ fals dp = -zeta2\*(if zeta2\_at\_a
                                at\_a   e    then rho\_a\*v\_a\^2/2 else
                                             rho\_b\*v\_b\^2/2)

  Boolean                       zetaLam fals = true, if zeta = c0/Re in
                                inarKno e    laminar region
                                wn           

  Real                          c0      1    zeta = c0/Re; dp =
                                             zeta\*rho\_Re\*v\_Re\^2/2,
                                             Re=v\_Re\*D\_Re\*rho\_Re/mu\_R
                                             e)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record LossFactorData 
      "Data structure defining constant loss factor data for dp = zeta*rho*v*|v|/2 and functions providing the data for some loss types"

           extends Modelica.Icons.Record;

     SI.Diameter diameter_a "Diameter at port_a";
     SI.Diameter diameter_b "Diameter at port_b";
     Real zeta1 "Loss factor for flow port_a -> port_b";
     Real zeta2 "Loss factor for flow port_b -> port_a";
     SI.ReynoldsNumber Re_turbulent "Loss factors suited for Re >= Re_turbulent";
     SI.Diameter D_Re "Diameter used to compute Re";
     Boolean zeta1_at_a = true 
        "dp = zeta1*(if zeta1_at_a then rho_a*v_a^2/2 else rho_b*v_b^2/2)";
     Boolean zeta2_at_a = false 
        "dp = -zeta2*(if zeta2_at_a then rho_a*v_a^2/2 else rho_b*v_b^2/2)";
     Boolean zetaLaminarKnown = false "= true, if zeta = c0/Re in laminar region";
     Real c0 = 1 
        "zeta = c0/Re; dp = zeta*rho_Re*v_Re^2/2, Re=v_Re*D_Re*rho_Re/mu_Re)";

      encapsulated function wallFriction 
        "Return pressure loss data due to friction in a straight pipe with walls of nonuniform roughness (not useful for smooth pipes, since zeta is no function of Re)"
         import Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData;
         import lg = Modelica.Math.log10;
         import SI = Modelica.SIunits;

        input SI.Length length "Length of pipe";
        input SI.Diameter diameter "Inner diameter of pipe";
        input SI.Length roughness(min=1e-10) 
          "Absolute roughness of pipe (> 0 required, details see info layer)";
        output LossFactorData data "Pressure loss factors for both flow directions";
      protected 
        Real Delta = roughness/diameter "relative roughness";
      algorithm 
        data.diameter_a          := diameter;
        data.diameter_b          := diameter;
        data.zeta1        := (length/diameter)/(2*lg(3.7 /Delta))^2;
        data.zeta2        := data.zeta1;
        data.Re_turbulent := 4000 
          ">= 560/Delta flow does not depend on Re, but interpolation is bad";
        data.D_Re         := diameter;
        data.zeta1_at_a   := true;
        data.zeta2_at_a   := false;
        data.zetaLaminarKnown := true;
        data.c0               := 64*(length/diameter);
      end wallFriction;

      encapsulated function suddenExpansion 
        "Return pressure loss data for sudden expansion or contraction in a pipe (for both flow directions)"
         import Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData;
         import SI = Modelica.SIunits;
        input SI.Diameter diameter_a "Inner diameter of pipe at port_a";
        input SI.Diameter diameter_b "Inner diameter of pipe at port_b";
        output LossFactorData data "Pressure loss factors for both flow directions";
      protected 
        Real A_rel;
      algorithm 
        data.diameter_a          := diameter_a;
        data.diameter_b          := diameter_b;
        data.Re_turbulent := 100;
        data.zetaLaminarKnown := true;
        data.c0 := 30;

        if diameter_a <= diameter_b then
           A_rel :=(diameter_a/diameter_b)^2;
           data.zeta1 :=(1 - A_rel)^2;
           data.zeta2 :=0.5*(1 - A_rel)^0.75;
           data.zeta1_at_a :=true;
           data.zeta2_at_a :=true;
           data.D_Re := diameter_a;
        else
           A_rel :=(diameter_b/diameter_a)^2;
           data.zeta1 :=0.5*(1 - A_rel)^0.75;
           data.zeta2 :=(1 - A_rel)^2;
           data.zeta1_at_a :=false;
           data.zeta2_at_a :=false;
           data.D_Re := diameter_b;
        end if;
      end suddenExpansion;

      encapsulated function sharpEdgedOrifice 
        "Return pressure loss data for sharp edged orifice (for both flow directions)"
         import NonSI = Modelica.SIunits.Conversions.NonSIunits;
         import Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData;
         import SI = Modelica.SIunits;
         input SI.Diameter diameter 
          "Inner diameter of pipe (= same at port_a and port_b)";
         input SI.Diameter leastDiameter "Smallest diameter of orifice";
         input SI.Diameter length "Length of orifice";
         input NonSI.Angle_deg alpha "Angle of orifice";
         output LossFactorData data 
          "Pressure loss factors for both flow directions";
      protected 
         Real D_rel=leastDiameter/diameter;
         Real LD=length/leastDiameter;
         Real k=0.13 + 0.34*10^(-(3.4*LD + 88.4*LD^2.3));
      algorithm 
         data.diameter_a := diameter;
         data.diameter_b := diameter;
         data.zeta1 := ((1 - D_rel) + 0.707*(1 - D_rel)^0.375)^2*(1/D_rel)^2;
         data.zeta2 := k*(1 - D_rel)^0.75 + (1 - D_rel)^2 + 2*sqrt(k*(1 -
           D_rel)^0.375) + (1 - D_rel);
         data.Re_turbulent := 1e4;
         data.D_Re := leastDiameter;
         data.zeta1_at_a := true;
         data.zeta2_at_a := false;
         data.zetaLaminarKnown := false;
         data.c0 := 0;
      end sharpEdgedOrifice;

    end LossFactorData;

* * * * *

![image19](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).massFlowRate\_dp
=====================================================================================================================================================================================================================================================================================

**Return mass flow rate from constant loss factor data and pressure drop
(m\_flow = f(dp))**

Information
-----------

::

Compute mass flow rate from constant loss factor and pressure drop
(m\_flow = f(dp)). For small pressure drops (dp < dp\_small), the
characteristic is approximated by a polynomial in order to have a finite
derivative at zero mass flow rate.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                            Name Def Description
                                                       aul 
                                                       t   
  ----------------------------------------------- ---- --- ----------------
  [Pressure](Modelica_SIunits.html#Modelica.SIuni dp       Pressure drop
  ts.Pressure)                                             (dp = port\_a.p
                                                           - port\_b.p)
                                                           [Pa]

  [Density](Modelica_SIunits.html#Modelica.SIunit rho\     Density at
  s.Density)                                      _a       port\_a [kg/m3]

  [Density](Modelica_SIunits.html#Modelica.SIunit rho\     Density at
  s.Density)                                      _b       port\_b [kg/m3]

  [LossFactorData](Modelica_Fluid_Fittings_BaseCl data     Constant loss
  asses_QuadraticTurbulent.html#Modelica.Fluid.Fi          factors for both
  ttings.BaseClasses.QuadraticTurbulent.LossFacto          flow directions
  rData)                                                   

  [AbsolutePressure](Modelica_SIunits.html#Modeli dp\_ 1   Turbulent flow
  ca.SIunits.AbsolutePressure)                    smal     if |dp| \>=
                                                  l        dp\_small [Pa]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [MassFlowRate](Modelica_SIunits.html#Mo m\_flo Mass flow rate from
  delica.SIunits.MassFlowRate)            w      port\_a to port\_b [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function massFlowRate_dp 
      "Return mass flow rate from constant loss factor data and pressure drop (m_flow = f(dp))"
            //import Modelica.Fluid.PressureLosses.BaseClasses.lossConstant_D_zeta;
      extends Modelica.Icons.Function;

      input SI.Pressure dp "Pressure drop (dp = port_a.p - port_b.p)";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input LossFactorData data "Constant loss factors for both flow directions";
      input SI.AbsolutePressure dp_small = 1 "Turbulent flow if |dp| >= dp_small";
      output SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";

    protected 
      Real k1 = lossConstant_D_zeta(if data.zeta1_at_a then data.diameter_a else data.diameter_b,data.zeta1);
      Real k2 = lossConstant_D_zeta(if data.zeta2_at_a then data.diameter_a else data.diameter_b,data.zeta2);
    algorithm 
      /*
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      m_flow :=Utilities.regRoot2(dp, dp_small, rho_a/k1, rho_b/k2);
    end massFlowRate_dp;

* * * * *

![image20](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).massFlowRate\_dp\_and\_Re
==============================================================================================================================================================================================================================================================================================

**Return mass flow rate from constant loss factor data, pressure drop
and Re (m\_flow = f(dp))**

Information
-----------

::

Compute mass flow rate from constant loss factor and pressure drop
(m\_flow = f(dp)). If the Reynolds-number Re ≥ data.Re\_turbulent, the
flow is treated as a turbulent flow with constant loss factor zeta. If
the Reynolds-number Re < data.Re\_turbulent, the flow is laminar and/or
in a transition region between laminar and turbulent. This region is
approximated by two polynomials of third order, one polynomial for
m\_flow ≥ 0 and one for m\_flow < 0. The common derivative of the two
polynomials at Re = 0 is computed from the equation "data.c0/Re".

If no data for c0 is available, the derivative at Re = 0 is computed in
such a way, that the second derivatives of the two polynomials are
identical at Re = 0. The polynomials are constructed, such that they
smoothly touch the characteristic curves in the turbulent regions. The
whole characteristic is therefore **continuous** and has a **finite**,
**continuous first derivative everywhere**. In some cases, the
constructed polynomials would "vibrate". This is avoided by reducing the
derivative at Re=0 in such a way that the polynomials are guaranteed to
be monotonically increasing. The used sufficient criteria for
monotonicity follows from:

> Fritsch F.N. and Carlson R.E. (1980):
>   ~ **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
>     Vol. 17, No. 2, April 1980, pp. 238-246
>
::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  [Pressure](Modelica_SIunits.html#Modelica.SIunit dp      Pressure drop
  s.Pressure)                                              (dp = port\_a.p
                                                           - port\_b.p)
                                                           [Pa]

  [Density](Modelica_SIunits.html#Modelica.SIunits rho     Density at
  .Density)                                        \_a     port\_a [kg/m3]

  [Density](Modelica_SIunits.html#Modelica.SIunits rho     Density at
  .Density)                                        \_b     port\_b [kg/m3]

  [DynamicViscosity](Modelica_SIunits.html#Modelic mu\     Dynamic
  a.SIunits.DynamicViscosity)                      _a      viscosity at
                                                           port\_a [Pa.s]

  [DynamicViscosity](Modelica_SIunits.html#Modelic mu\     Dynamic
  a.SIunits.DynamicViscosity)                      _b      viscosity at
                                                           port\_b [Pa.s]

  [LossFactorData](Modelica_Fluid_Fittings_BaseCla dat     Constant loss
  sses_QuadraticTurbulent.html#Modelica.Fluid.Fitt a       factors for both
  ings.BaseClasses.QuadraticTurbulent.LossFactorDa         flow directions
  ta)                                                      
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [MassFlowRate](Modelica_SIunits.html#Mo m\_flo Mass flow rate from
  delica.SIunits.MassFlowRate)            w      port\_a to port\_b [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function massFlowRate_dp_and_Re 
      "Return mass flow rate from constant loss factor data, pressure drop and Re (m_flow = f(dp))"
            extends Modelica.Icons.Function;

      input SI.Pressure dp "Pressure drop (dp = port_a.p - port_b.p)";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a "Dynamic viscosity at port_a";
      input SI.DynamicViscosity mu_b "Dynamic viscosity at port_b";
      input LossFactorData data "Constant loss factors for both flow directions";
      output SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";

    protected 
      constant Real pi=Modelica.Constants.pi;
      Real k0=2*data.c0/(pi*data.D_Re^3);
      Real k1 = lossConstant_D_zeta(if data.zeta1_at_a then data.diameter_a else data.diameter_b,data.zeta1);
      Real k2 = lossConstant_D_zeta(if data.zeta2_at_a then data.diameter_a else data.diameter_b,data.zeta2);
      Real yd0 "Derivative of m_flow=m_flow(dp) at zero, if data.zetaLaminarKnown";
      SI.AbsolutePressure dp_turbulent 
        "The turbulent region is: |dp| >= dp_turbulent";
    algorithm 
    /*
    Turbulent region:
       Re = m_flow*(4/pi)/(D_Re*mu)
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
       m_flow_turbulent = (pi/4)*D_Re*mu*Re_turbulent
       dp_turbulent     =  k/rho *(D_Re*mu*pi/4)^2 * Re_turbulent^2

       The start of the turbulent region is computed with mean values
       of dynamic viscosity mu and density rho. Otherwise, one has
       to introduce different "delta" values for both flow directions.
       In order to simplify the approach, only one delta is used.

    Laminar region:
       dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
          = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
          = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
          = 2*c0/(pi*D_Re^3) * mu/rho * m_flow
          = k0 * mu/rho * m_flow
       k0 = 2*c0/(pi*D_Re^3)

       In order that the derivative of dp=f(m_flow) is continuous
       at m_flow=0, the mean values of mu and d are used in the
       laminar region: mu/rho = (mu_a + mu_b)/(rho_a + rho_b)
       If data.zetaLaminarKnown = false then mu_a and mu_b are potentially zero
       (because dummy values) and therefore the division is only performed
       if zetaLaminarKnown = true.
    */
       dp_turbulent :=(k1 + k2)/(rho_a + rho_b)*
                      ((mu_a + mu_b)*data.D_Re*pi/8)^2*data.Re_turbulent^2;
       yd0 :=if data.zetaLaminarKnown then 
                (rho_a + rho_b)/(k0*(mu_a + mu_b)) else 0;
       m_flow := Utilities.regRoot2(dp, dp_turbulent, rho_a/k1, rho_b/k2,
                                                   data.zetaLaminarKnown, yd0);
    end massFlowRate_dp_and_Re;

* * * * *

![image21](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).pressureLoss\_m\_flow
==========================================================================================================================================================================================================================================================================================

**Return pressure drop from constant loss factor and mass flow rate (dp
= f(m\_flow))**

Information
-----------

::

Compute pressure drop from constant loss factor and mass flow rate (dp =
f(m\_flow)). For small mass flow rates(|m\_flow| < m\_flow\_small), the
characteristic is approximated by a polynomial in order to have a finite
derivative at zero mass flow rate.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Name  Def Description
                                                      aul 
                                                      t   
  --------------------------------------------- ----- --- -----------------
  [MassFlowRate](Modelica_SIunits.html#Modelica m\_fl     Mass flow rate
  .SIunits.MassFlowRate)                        ow        from port\_a to
                                                          port\_b [kg/s]

  [Density](Modelica_SIunits.html#Modelica.SIun rho\_     Density at
  its.Density)                                  a         port\_a [kg/m3]

  [Density](Modelica_SIunits.html#Modelica.SIun rho\_     Density at
  its.Density)                                  b         port\_b [kg/m3]

  [LossFactorData](Modelica_Fluid_Fittings_Base data      Constant loss
  Classes_QuadraticTurbulent.html#Modelica.Flui           factors for both
  d.Fittings.BaseClasses.QuadraticTurbulent.Los           flow directions
  sFactorData)                                            

  [MassFlowRate](Modelica_SIunits.html#Modelica m\_fl 0.0 Turbulent flow if
  .SIunits.MassFlowRate)                        ow\_s 1   |m\_flow| \>=
                                                mall      m\_flow\_small
                                                          [kg/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Pressure](Modelica_SIunits.html#Mode dp    Pressure drop (dp = port\_a.p
  lica.SIunits.Pressure)                      - port\_b.p) [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function pressureLoss_m_flow 
      "Return pressure drop from constant loss factor and mass flow rate (dp = f(m_flow))"
            extends Modelica.Icons.Function;

      input SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input LossFactorData data "Constant loss factors for both flow directions";
      input SI.MassFlowRate m_flow_small = 0.01 
        "Turbulent flow if |m_flow| >= m_flow_small";
      output SI.Pressure dp "Pressure drop (dp = port_a.p - port_b.p)";

    protected 
      Real k1 = lossConstant_D_zeta(if data.zeta1_at_a then data.diameter_a else data.diameter_b,data.zeta1);
      Real k2 = lossConstant_D_zeta(if data.zeta2_at_a then data.diameter_a else data.diameter_b,data.zeta2);
    algorithm 
      /*
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      dp :=Utilities.regSquare2(m_flow, m_flow_small, k1/rho_a, k2/rho_b);
    end pressureLoss_m_flow;

* * * * *

![image22](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).pressureLoss\_m\_flow\_and\_Re
===================================================================================================================================================================================================================================================================================================

**Return pressure drop from constant loss factor, mass flow rate and Re
(dp = f(m\_flow))**

Information
-----------

::

Compute pressure drop from constant loss factor and mass flow rate (dp =
f(m\_flow)). If the Reynolds-number Re ≥ data.Re\_turbulent, the flow is
treated as a turbulent flow with constant loss factor zeta. If the
Reynolds-number Re < data.Re\_turbulent, the flow is laminar and/or in a
transition region between laminar and turbulent. This region is
approximated by two polynomials of third order, one polynomial for
m\_flow ≥ 0 and one for m\_flow < 0. The common derivative of the two
polynomials at Re = 0 is computed from the equation "data.c0/Re".

If no data for c0 is available, the derivative at Re = 0 is computed in
such a way, that the second derivatives of the two polynomials are
identical at Re = 0. The polynomials are constructed, such that they
smoothly touch the characteristic curves in the turbulent regions. The
whole characteristic is therefore **continuous** and has a **finite**,
**continuous first derivative everywhere**. In some cases, the
constructed polynomials would "vibrate". This is avoided by reducing the
derivative at Re=0 in such a way that the polynomials are guaranteed to
be monotonically increasing. The used sufficient criteria for
monotonicity follows from:

> Fritsch F.N. and Carlson R.E. (1980):
>   ~ **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
>     Vol. 17, No. 2, April 1980, pp. 238-246
>
::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Def Description
                                                   e   aul 
                                                       t   
  ------------------------------------------------ --- --- ----------------
  [MassFlowRate](Modelica_SIunits.html#Modelica.SI m\_     Mass flow rate
  units.MassFlowRate)                              flo     from port\_a to
                                                   w       port\_b [kg/s]

  [Density](Modelica_SIunits.html#Modelica.SIunits rho     Density at
  .Density)                                        \_a     port\_a [kg/m3]

  [Density](Modelica_SIunits.html#Modelica.SIunits rho     Density at
  .Density)                                        \_b     port\_b [kg/m3]

  [DynamicViscosity](Modelica_SIunits.html#Modelic mu\     Dynamic
  a.SIunits.DynamicViscosity)                      _a      viscosity at
                                                           port\_a [Pa.s]

  [DynamicViscosity](Modelica_SIunits.html#Modelic mu\     Dynamic
  a.SIunits.DynamicViscosity)                      _b      viscosity at
                                                           port\_b [Pa.s]

  [LossFactorData](Modelica_Fluid_Fittings_BaseCla dat     Constant loss
  sses_QuadraticTurbulent.html#Modelica.Fluid.Fitt a       factors for both
  ings.BaseClasses.QuadraticTurbulent.LossFactorDa         flow directions
  ta)                                                      
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Pressure](Modelica_SIunits.html#Mode dp    Pressure drop (dp = port\_a.p
  lica.SIunits.Pressure)                      - port\_b.p) [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function pressureLoss_m_flow_and_Re 
      "Return pressure drop from constant loss factor, mass flow rate and Re (dp = f(m_flow))"
            extends Modelica.Icons.Function;

      input SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
      input SI.Density rho_a "Density at port_a";
      input SI.Density rho_b "Density at port_b";
      input SI.DynamicViscosity mu_a "Dynamic viscosity at port_a";
      input SI.DynamicViscosity mu_b "Dynamic viscosity at port_b";
      input LossFactorData data "Constant loss factors for both flow directions";
      output SI.Pressure dp "Pressure drop (dp = port_a.p - port_b.p)";

    protected 
      constant Real pi=Modelica.Constants.pi;
      Real k0 = 2*data.c0/(pi*data.D_Re^3);
      Real k1 = lossConstant_D_zeta(if data.zeta1_at_a then data.diameter_a else data.diameter_b,data.zeta1);
      Real k2 = lossConstant_D_zeta(if data.zeta2_at_a then data.diameter_a else data.diameter_b,data.zeta2);
      Real yd0 "Derivative of dp = f(m_flow) at zero, if data.zetaLaminarKnown";
      SI.MassFlowRate m_flow_turbulent 
        "The turbulent region is: |m_flow| >= m_flow_turbulent";
    algorithm 
    /*
    Turbulent region:
       Re = m_flow*(4/pi)/(D_Re*mu)
       dp = 0.5*zeta*rho*v*|v|
          = 0.5*zeta*rho*1/(rho*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/rho * m_flow * |m_flow|
          = k/rho * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
       m_flow_turbulent = (pi/4)*D_Re*mu*Re_turbulent
       dp_turbulent     =  k/rho *(D_Re*mu*pi/4)^2 * Re_turbulent^2

       The start of the turbulent region is computed with mean values
       of dynamic viscosity mu and density rho. Otherwise, one has
       to introduce different "delta" values for both flow directions.
       In order to simplify the approach, only one delta is used.

    Laminar region:
       dp = 0.5*zeta/(A^2*d) * m_flow * |m_flow|
          = 0.5 * c0/(|m_flow|*(4/pi)/(D_Re*mu)) / ((pi*(D_Re/2)^2)^2*d) * m_flow*|m_flow|
          = 0.5 * c0*(pi/4)*(D_Re*mu) * 16/(pi^2*D_Re^4*d) * m_flow*|m_flow|
          = 2*c0/(pi*D_Re^3) * mu/rho * m_flow
          = k0 * mu/rho * m_flow
       k0 = 2*c0/(pi*D_Re^3)

       In order that the derivative of dp=f(m_flow) is continuous
       at m_flow=0, the mean values of mu and d are used in the
       laminar region: mu/rho = (mu_a + mu_b)/(rho_a + rho_b)
       If data.zetaLaminarKnown = false then mu_a and mu_b are potentially zero
       (because dummy values) and therefore the division is only performed
       if zetaLaminarKnown = true.
    */
      m_flow_turbulent :=(pi/8)*data.D_Re*(mu_a + mu_b)*data.Re_turbulent;
      yd0 :=if data.zetaLaminarKnown then k0*(mu_a + mu_b)/(rho_a + rho_b) else 0;
      dp :=Utilities.regSquare2(m_flow, m_flow_turbulent, k1/rho_a, k2/rho_b,
                                               data.zetaLaminarKnown, yd0);
    end pressureLoss_m_flow_and_Re;

* * * * *

![image23](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).BaseModel
========================================================================================================================================================================================================================================================================

**Generic pressure drop component with constant turbulent loss factor
data and without an icon**

Information
-----------

::

This model computes the pressure loss of a pipe segment (orifice,
bending etc.) with a minimum amount of data provided via parameter
**data**. If available, data should be provided for **both flow
directions**, i.e., flow from port\_a to port\_b and from port\_b to
port\_a, as well as for the **laminar** and the **turbulent** region. It
is also an option to provide the loss factor **only** for the
**turbulent** region for a flow from port\_a to port\_b.

The following equations are used:

    Δp = 0.5*ζ*ρ*v*|v|
       = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
         Re = |v|*D*ρ/μ

  -------------- ------------------ --------------------------------------
  **flow type**  **ζ** =            **flow region**

  turbulent      **zeta1** = const. Re ≥ Re\_turbulent, v ≥ 0

                 **zeta2** = const. Re ≥ Re\_turbulent, v < 0

  laminar        **c0**/Re          both flow directions, Re small; c0 =
                                    const.
  -------------- ------------------ --------------------------------------

where

-   Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-   v is the mean velocity.
-   ρ is the density.
-   ζ is the loss factor that depends on the geometry of the pipe. In
    the turbulent flow regime, it is assumed that ζ is constant and is
    given by "zeta1" and "zeta2" depending on the flow direction. When
    the Reynolds number Re is below "Re\_turbulent", the flow is laminar
    for small flow velocities. For higher velocities there is a
    transition region from laminar to turbulent flow. The loss factor
    for laminar flow at small velocities is defined by the often
    occuring approximation c0/Re. If c0 is different for the two flow
    directions, the mean value has to be used (c0 = (c0\_ab +
    c0\_ba)/2).
-   
-   The equation "Δp = 0.5\*ζ\*ρ\*v\*|v|" is either with respect to
    port\_a or to port\_b, depending on the definition of the particular
    loss factor ζ (in some references loss factors are defined with
    respect to port\_a, in other references with respect to port\_b).
-   Re = |v|\*D\_Re\*ρ/μ = |m\_flow|\*D\_Re/(A\_Re\*μ) is the Reynolds
    number at the smallest cross section area. This is often at port\_a
    or at port\_b, but can also be between the two ports. In the record,
    the diameter D\_Re of this smallest cross section area has to be
    provided, as well, as Re\_turbulent, the absolute value of the
    Reynolds number at which the turbulent flow starts. If Re\_turbulent
    is different for the two flow directions, use the smaller value as
    Re\_turbulent.
-   D is the diameter of the pipe. If the pipe has not a circular cross
    section, D = 4\*A/P, where A is the cross section area and P is the
    wetted perimeter.
-   A is the cross section area with A = π(D/2)\^2.
-   μ is the dynamic viscosity.

The laminar and the transition region is usually of not much technical
interest because the operating point is mostly in the turbulent regime.
For simplification and for numercial reasons, this whole region is
described by two polynomials of third order, one polynomial for m\_flow
≥ 0 and one for m\_flow < 0. The polynomials start at Re =
|m\_flow|\*4/(π\*D\_Re\*μ), where D\_Re is the smallest diameter between
port\_a and port\_b. The common derivative of the two polynomials at Re
= 0 is computed from the equation "c0/Re". Note, the pressure drop
equation above in the laminar region is always defined with respect to
the smallest diameter D\_Re.

If no data for c0 is available, the derivative at Re = 0 is computed in
such a way, that the second derivatives of the two polynomials are
identical at Re = 0. The polynomials are constructed, such that they
smoothly touch the characteristic curves in the turbulent regions. The
whole characteristic is therefore **continuous** and has a **finite**,
**continuous first derivative everywhere**. In some cases, the
constructed polynomials would "vibrate". This is avoided by reducing the
derivative at Re=0 in such a way that the polynomials are guaranteed to
be monotonically increasing. The used sufficient criteria for
monotonicity follows from:

> Fritsch F.N. and Carlson R.E. (1980):
>   ~ **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
>     Vol. 17, No. 2, April 1980, pp. 238-246
>
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
  Type                         Name                 Defau Description
                                                    lt    
  ---------------------------- -------------------- ----- -----------------
  replaceable package Medium   [PartialMedium](Mode Mediu 
                               lica_Media_Interface m     
                               s_PartialMedium.html in    
                               #Modelica.Media.Inte the   
                               rfaces.PartialMedium compo 
                               )                    nent  

  [Length](Modelica_SIunits.ht pathLength           0     Length flow path
  ml#Modelica.SIunits.Length)                             [m]

  [LossFactorData](Modelica_Fl data                       Loss factor data
  uid_Fittings_BaseClasses_Qua                            
  draticTurbulent.html#Modelic                            
  a.Fluid.Fittings.BaseClasses                            
  .QuadraticTurbulent.LossFact                            
  orData)                                                 

  **Assumptions**                                         

  Boolean                      allowFlowReversal    syste = true to allow
                                                    m.all flow reversal,
                                                    owFlo false restricts
                                                    wReve to design
                                                    rsal  direction
                                                          (port\_a -\>
                                                          port\_b)

  Dynamics                                                

  [Dynamics](Modelica_Fluid_Ty momentumDynamics     Types Formulation of
  pes.html#Modelica.Fluid.Type                      .Dyna momentum balance
  s.Dynamics)                                       mics. 
                                                    Stead 
                                                    yStat 
                                                    e     

  **Advanced**                                            

  [AbsolutePressure](Modelica_ dp\_start            0.01\ Guess value of dp
  Media_Interfaces_PartialMedi                      *syst = port\_a.p -
  um.html#Modelica.Media.Inter                      em.p\ port\_b.p [Pa]
  faces.PartialMedium.Absolute                      _star 
  Pressure)                                         t     

  [MassFlowRate](Modelica_Medi m\_flow\_start       syste Guess value of
  a_Interfaces_PartialMedium.h                      m.m\_ m\_flow =
  tml#Modelica.Media.Interface                      flow\ port\_a.m\_flow
  s.PartialMedium.MassFlowRate                      _star [kg/s]
  )                                                 t     

  [MassFlowRate](Modelica_Medi m\_flow\_small       syste Small mass flow
  a_Interfaces_PartialMedium.h                      m.m\_ rate for
  tml#Modelica.Media.Interface                      flow\ regularization of
  s.PartialMedium.MassFlowRate                      _smal zero flow [kg/s]
  )                                                 l     

  Boolean                      from\_dp             true  = true, use
                                                          m\_flow = f(dp)
                                                          else dp =
                                                          f(m\_flow)

  Boolean                      use\_Re              false = true, if
                                                          turbulent region
                                                          is defined by Re,
                                                          otherwise by
                                                          dp\_small or
                                                          m\_flow\_small

  [AbsolutePressure](Modelica_ dp\_small            syste Turbulent flow if
  Media_Interfaces_PartialMedi                      m.dp\ |dp| \>=
  um.html#Modelica.Media.Inter                      _smal dp\_small [Pa]
  faces.PartialMedium.Absolute                      l     
  Pressure)                                               

  Diagnostics                                             

  Boolean                      show\_T              true  = true, if
                                                          temperatures at
                                                          port\_a and
                                                          port\_b are
                                                          computed

  Boolean                      show\_V\_flow        true  = true, if volume
                                                          flow rate at
                                                          inflowing port is
                                                          computed

  Boolean                      show\_Re             false = true, if
                                                          Reynolds number
                                                          is included for
                                                          plotting
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

    partial model BaseModel 
      "Generic pressure drop component with constant turbulent loss factor data and without an icon"

      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;
      extends Modelica.Fluid.Interfaces.PartialLumpedFlow(
        final pathLength = 0,
        final momentumDynamics = Types.Dynamics.SteadyState);

      parameter LossFactorData data "Loss factor data";

      // Advanced
      parameter Boolean from_dp = true 
        "= true, use m_flow = f(dp) else dp = f(m_flow)";
      parameter Boolean use_Re = false 
        "= true, if turbulent region is defined by Re, otherwise by dp_small or m_flow_small";
      parameter Medium.AbsolutePressure dp_small = system.dp_small 
        "Turbulent flow if |dp| >= dp_small";
      parameter Medium.MassFlowRate m_flow_small = system.m_flow_small 
        "Turbulent flow if |m_flow| >= m_flow_small";

      // Diagnostics
      parameter Boolean show_Re = false 
        "= true, if Reynolds number is included for plotting";
      SI.ReynoldsNumber Re = Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber_m_flow(
            m_flow,
            noEvent(if m_flow>0 then Medium.dynamicViscosity(state_a) else Medium.dynamicViscosity(state_b)),
            data.D_Re) if show_Re "Reynolds number at diameter data.D_Re";

      // Variables
      Modelica.SIunits.Pressure dp_fg "pressure loss due to friction and gravity";
      Modelica.SIunits.Area A_mean = Modelica.Constants.pi/4*(data.diameter_a^2+data.diameter_b^2)/2 
        "mean cross flow area";

    equation 
      Ib_flow = 0;
      F_p = A_mean*(Medium.pressure(state_b) - Medium.pressure(state_a));
      F_fg = A_mean*dp_fg;
      if from_dp then
         m_flow = if use_Re then 
                     massFlowRate_dp_and_Re(
                        dp_fg, Medium.density(state_a), Medium.density(state_b),
                        Medium.dynamicViscosity(state_a),
                        Medium.dynamicViscosity(state_b),
                        data) else 
                     massFlowRate_dp(dp_fg, Medium.density(state_a), Medium.density(state_b), data, dp_small);
      else
         dp_fg = if use_Re then 
                 pressureLoss_m_flow_and_Re(
                     m_flow, Medium.density(state_a), Medium.density(state_b),
                     Medium.dynamicViscosity(state_a),
                     Medium.dynamicViscosity(state_b),
                     data) else 
                 pressureLoss_m_flow(m_flow, Medium.density(state_a), Medium.density(state_b), data, m_flow_small);
      end if;

      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

    end BaseModel;

* * * * *

![image24](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFrictionI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).TestWallFriction
======================================================================================================================================================================================================================================================================================

**Pressure drop in pipe due to wall friction (only for test purposes; if
needed use Pipes.StaticPipe instead)**

Information
-----------

::

::

Extends from
[BaseModel](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel)
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

  [LossFactorData](Modelica_Fl data                LossFa Loss factor data
  uid_Fittings_BaseClasses_Qua                     ctorDa 
  draticTurbulent.html#Modelic                     ta.wal 
  a.Fluid.Fittings.BaseClasses                     lFrict 
  .QuadraticTurbulent.LossFact                     ion(.. 
  orData)                                          .      

  [Length](Modelica_SIunits.ht length                     Length of pipe
  ml#Modelica.SIunits.Length)                             [m]

  [Diameter](Modelica_SIunits. diameter                   Inner diameter
  html#Modelica.SIunits.Diamet                            of pipe [m]
  er)                                                     

  [Length](Modelica_SIunits.ht roughness                  Absolute
  ml#Modelica.SIunits.Length)                             roughness of
                                                          pipe (\> 0
                                                          required,
                                                          details see info
                                                          layer) [m]

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

    model TestWallFriction 
      "Pressure drop in pipe due to wall friction (only for test purposes; if needed use Pipes.StaticPipe instead)"
            extends BaseModel(final data=
              LossFactorData.wallFriction(
              length,
              diameter,
              roughness));
      parameter SI.Length length "Length of pipe";
      parameter SI.Diameter diameter "Inner diameter of pipe";
      parameter SI.Length roughness(min=1e-10) 
        "Absolute roughness of pipe (> 0 required, details see info layer)";
    end TestWallFriction;

* * * * *

![image25](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionAreaI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).BaseModelNonconstantCrossSectionArea
==============================================================================================================================================================================================================================================================================================================================

**Generic pressure drop component with constant turbulent loss factor
data and without an icon, for non-constant cross section area**

Information
-----------

::

This model computes the pressure loss of a pipe segment (orifice,
bending etc.) with a minimum amount of data provided via parameter
**data**. If available, data should be provided for **both flow
directions**, i.e., flow from port\_a to port\_b and from port\_b to
port\_a, as well as for the **laminar** and the **turbulent** region. It
is also an option to provide the loss factor **only** for the
**turbulent** region for a flow from port\_a to port\_b.

The following equations are used:

    Δp = 0.5*ζ*ρ*v*|v|
       = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
         Re = |v|*D*ρ/μ

  -------------- ------------------ --------------------------------------
  **flow type**  **ζ** =            **flow region**

  turbulent      **zeta1** = const. Re ≥ Re\_turbulent, v ≥ 0

                 **zeta2** = const. Re ≥ Re\_turbulent, v < 0

  laminar        **c0**/Re          both flow directions, Re small; c0 =
                                    const.
  -------------- ------------------ --------------------------------------

where

-   Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-   v is the mean velocity.
-   ρ is the density.
-   ζ is the loss factor that depends on the geometry of the pipe. In
    the turbulent flow regime, it is assumed that ζ is constant and is
    given by "zeta1" and "zeta2" depending on the flow direction. When
    the Reynolds number Re is below "Re\_turbulent", the flow is laminar
    for small flow velocities. For higher velocities there is a
    transition region from laminar to turbulent flow. The loss factor
    for laminar flow at small velocities is defined by the often
    occuring approximation c0/Re. If c0 is different for the two flow
    directions, the mean value has to be used (c0 = (c0\_ab +
    c0\_ba)/2).
-   
-   The equation "Δp = 0.5\*ζ\*ρ\*v\*|v|" is either with respect to
    port\_a or to port\_b, depending on the definition of the particular
    loss factor ζ (in some references loss factors are defined with
    respect to port\_a, in other references with respect to port\_b).
-   Re = |v|\*D\_Re\*ρ/μ = |m\_flow|\*D\_Re/(A\_Re\*μ) is the Reynolds
    number at the smallest cross section area. This is often at port\_a
    or at port\_b, but can also be between the two ports. In the record,
    the diameter D\_Re of this smallest cross section area has to be
    provided, as well, as Re\_turbulent, the absolute value of the
    Reynolds number at which the turbulent flow starts. If Re\_turbulent
    is different for the two flow directions, use the smaller value as
    Re\_turbulent.
-   D is the diameter of the pipe. If the pipe has not a circular cross
    section, D = 4\*A/P, where A is the cross section area and P is the
    wetted perimeter.
-   A is the cross section area with A = π(D/2)\^2.
-   μ is the dynamic viscosity.

The laminar and the transition region is usually of not much technical
interest because the operating point is mostly in the turbulent regime.
For simplification and for numercial reasons, this whole region is
described by two polynomials of third order, one polynomial for m\_flow
≥ 0 and one for m\_flow < 0. The polynomials start at Re =
|m\_flow|\*4/(π\*D\_Re\*μ), where D\_Re is the smallest diameter between
port\_a and port\_b. The common derivative of the two polynomials at Re
= 0 is computed from the equation "c0/Re". Note, the pressure drop
equation above in the laminar region is always defined with respect to
the smallest diameter D\_Re.

If no data for c0 is available, the derivative at Re = 0 is computed in
such a way, that the second derivatives of the two polynomials are
identical at Re = 0. The polynomials are constructed, such that they
smoothly touch the characteristic curves in the turbulent regions. The
whole characteristic is therefore **continuous** and has a **finite**,
**continuous first derivative everywhere**. In some cases, the
constructed polynomials would "vibrate". This is avoided by reducing the
derivative at Re=0 in such a way that the polynomials are guaranteed to
be monotonically increasing. The used sufficient criteria for
monotonicity follows from:

> Fritsch F.N. and Carlson R.E. (1980):
>   ~ **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
>     Vol. 17, No. 2, April 1980, pp. 238-246
>
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
  Type                         Name                 Defau Description
                                                    lt    
  ---------------------------- -------------------- ----- -----------------
  replaceable package Medium   [PartialMedium](Mode Mediu 
                               lica_Media_Interface m     
                               s_PartialMedium.html in    
                               #Modelica.Media.Inte the   
                               rfaces.PartialMedium compo 
                               )                    nent  

  [Length](Modelica_SIunits.ht pathLength           0     Length flow path
  ml#Modelica.SIunits.Length)                             [m]

  [LossFactorData](Modelica_Fl data                       Loss factor data
  uid_Fittings_BaseClasses_Qua                            
  draticTurbulent.html#Modelic                            
  a.Fluid.Fittings.BaseClasses                            
  .QuadraticTurbulent.LossFact                            
  orData)                                                 

  **Assumptions**                                         

  Boolean                      allowFlowReversal    syste = true to allow
                                                    m.all flow reversal,
                                                    owFlo false restricts
                                                    wReve to design
                                                    rsal  direction
                                                          (port\_a -\>
                                                          port\_b)

  Dynamics                                                

  [Dynamics](Modelica_Fluid_Ty momentumDynamics     Types Formulation of
  pes.html#Modelica.Fluid.Type                      .Dyna momentum balance
  s.Dynamics)                                       mics. 
                                                    Stead 
                                                    yStat 
                                                    e     

  **Advanced**                                            

  [AbsolutePressure](Modelica_ dp\_start            0.01\ Guess value of dp
  Media_Interfaces_PartialMedi                      *syst = port\_a.p -
  um.html#Modelica.Media.Inter                      em.p\ port\_b.p [Pa]
  faces.PartialMedium.Absolute                      _star 
  Pressure)                                         t     

  [MassFlowRate](Modelica_Medi m\_flow\_start       syste Guess value of
  a_Interfaces_PartialMedium.h                      m.m\_ m\_flow =
  tml#Modelica.Media.Interface                      flow\ port\_a.m\_flow
  s.PartialMedium.MassFlowRate                      _star [kg/s]
  )                                                 t     

  [MassFlowRate](Modelica_Medi m\_flow\_small       syste Small mass flow
  a_Interfaces_PartialMedium.h                      m.m\_ rate for
  tml#Modelica.Media.Interface                      flow\ regularization of
  s.PartialMedium.MassFlowRate                      _smal zero flow [kg/s]
  )                                                 l     

  [AbsolutePressure](Modelica_ dp\_small            syste Turbulent flow if
  Media_Interfaces_PartialMedi                      m.dp\ |dp| \>=
  um.html#Modelica.Media.Inter                      _smal dp\_small [Pa]
  faces.PartialMedium.Absolute                      l     
  Pressure)                                               

  Diagnostics                                             

  Boolean                      show\_T              true  = true, if
                                                          temperatures at
                                                          port\_a and
                                                          port\_b are
                                                          computed

  Boolean                      show\_V\_flow        true  = true, if volume
                                                          flow rate at
                                                          inflowing port is
                                                          computed

  Boolean                      show\_Re             false = true, if
                                                          Reynolds number
                                                          is included for
                                                          plotting

  Boolean                      show\_totalPressures false = true, if total
                                                          pressures are
                                                          included for
                                                          plotting

  Boolean                      show\_portVelocities false = true, if port
                                                          velocities are
                                                          included for
                                                          plotting
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

    partial model BaseModelNonconstantCrossSectionArea 
      "Generic pressure drop component with constant turbulent loss factor data and without an icon, for non-constant cross section area"

      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;
      extends Modelica.Fluid.Interfaces.PartialLumpedFlow(
        final pathLength = 0,
        final momentumDynamics = Types.Dynamics.SteadyState);

      parameter LossFactorData data "Loss factor data";

      // Advanced
      /// Other settings than the final values are not yet implemented ///
      final parameter Boolean from_dp = false 
        "= true, use m_flow = f(dp) else dp = f(m_flow)";
      final parameter Boolean use_Re = false 
        "= true, if turbulent region is defined by Re, otherwise by dp_small or m_flow_small";
      // End not yet implemented /////////////////////////////////////////
      parameter Medium.AbsolutePressure dp_small = system.dp_small 
        "Turbulent flow if |dp| >= dp_small";
      parameter Medium.MassFlowRate m_flow_small = system.m_flow_small 
        "Turbulent flow if |m_flow| >= m_flow_small";

      // Diagnostics
      parameter Boolean show_Re = false 
        "= true, if Reynolds number is included for plotting";
      SI.ReynoldsNumber Re = Modelica.Fluid.Pipes.BaseClasses.CharacteristicNumbers.ReynoldsNumber_m_flow(
            m_flow,
            noEvent(if m_flow>0 then Medium.dynamicViscosity(state_a) else Medium.dynamicViscosity(state_b)),
            data.D_Re) if show_Re "Reynolds number at diameter data.D_Re";
      parameter Boolean show_totalPressures = false 
        "= true, if total pressures are included for plotting";
      SI.AbsolutePressure p_total_a = port_a.p + 0.5 * m_flow^2 /((Modelica.Constants.pi/4 * data.diameter_a^2)^2 * noEvent(if port_a.m_flow > 0 then Medium.density(state_a) else Medium.density(state_b))) if 
        show_totalPressures "Total pressure at port_a";
      SI.AbsolutePressure p_total_b = port_b.p + 0.5 * m_flow^2 /((Modelica.Constants.pi/4 * data.diameter_b^2)^2 * noEvent(if port_b.m_flow > 0 then Medium.density(state_b) else Medium.density(state_a))) if 
        show_totalPressures "Total pressure at port_a";
      parameter Boolean show_portVelocities = false 
        "= true, if port velocities are included for plotting";
      SI.Velocity v_a = port_a.m_flow /(Modelica.Constants.pi/4 * data.diameter_a^2 * noEvent(if port_a.m_flow > 0 then Medium.density(state_a) else Medium.density(state_b))) if 
        show_portVelocities "Fluid velocity into port_a";
      SI.Velocity v_b = port_b.m_flow /(Modelica.Constants.pi/4 * data.diameter_b^2 * noEvent(if port_b.m_flow > 0 then Medium.density(state_b) else Medium.density(state_a))) if 
        show_portVelocities "Fluid velocity into port_b";

      // Variables
      Modelica.SIunits.Pressure dp_fg "pressure loss due to friction and gravity";
      Modelica.SIunits.Area A_mean = Modelica.Constants.pi/4*(data.diameter_a^2+data.diameter_b^2)/2 
        "mean cross flow area";

      Medium.ThermodynamicState state_b_des 
        "Thermodynamic state at port b for flow a -> b";
      Medium.ThermodynamicState state_a_nondes 
        "Thermodynamic state at port a for flow a <- b";

    equation 
      Ib_flow = 0;
      F_p = A_mean*(Medium.pressure(state_b) - Medium.pressure(state_a));
      F_fg = A_mean*dp_fg;
      if from_dp then
         m_flow = if use_Re then 
                     massFlowRate_dp_and_Re(
                        dp_fg, Medium.density(state_a), Medium.density(state_b),
                        Medium.dynamicViscosity(state_a),
                        Medium.dynamicViscosity(state_b),
                        data) else 
                     massFlowRate_dp(dp_fg, Medium.density(state_a), Medium.density(state_b), data, dp_small);
      else
         dp_fg = if use_Re then 
                 pressureLoss_m_flow_and_Re(
                     m_flow, Medium.density(state_a), Medium.density(state_b),
                     Medium.dynamicViscosity(state_a),
                     Medium.dynamicViscosity(state_b),
                     data) else 
                 pressureLoss_m_flow_totalPressure(m_flow,
                   Medium.density(state_a),
                   Medium.density(state_b_des),
                   Medium.density(state_b),
                   Medium.density(state_a_nondes),
                   data, m_flow_small);
      end if;

      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

      // medium states for downstream properties, may want to change this neglecting the only difference from state_a, state_b, which is in pressure
      // This will remove the extra interation variables
      state_b_des = Medium.setState_phX(port_b.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow));
      state_a_nondes = Medium.setState_phX(port_a.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow));

    end BaseModelNonconstantCrossSectionArea;

* * * * *

![image26](Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss_m_flow_totalPressureI.png) [Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent](Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent).pressureLoss\_m\_flow\_totalPressure
===========================================================================================================================================================================================================================================================================================================================

**Return pressure drop from constant loss factor and mass flow rate (dp
= f(m\_flow))**

Information
-----------

::

Compute pressure drop from constant loss factor and mass flow rate (dp =
f(m\_flow)). For small mass flow rates(|m\_flow| < m\_flow\_small), the
characteristic is approximated by a polynomial in order to have a finite
derivative at zero mass flow rate.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                       Name  Def Description
                                                   aul 
                                                   t   
  ------------------------------------------ ----- --- --------------------
  [MassFlowRate](Modelica_SIunits.html#Model m\_fl     Mass flow rate from
  ica.SIunits.MassFlowRate)                  ow        port\_a to port\_b
                                                       [kg/s]

  [Density](Modelica_SIunits.html#Modelica.S rho\_     Density at port\_a,
  Iunits.Density)                            a\_de     mass flow in design
                                             s         direction a -\> b
                                                       [kg/m3]

  [Density](Modelica_SIunits.html#Modelica.S rho\_     Density at port\_b,
  Iunits.Density)                            b\_de     mass flow in design
                                             s         direction a -\> b
                                                       [kg/m3]

  [Density](Modelica_SIunits.html#Modelica.S rho\_     Density at port\_b,
  Iunits.Density)                            b\_no     mass flow against
                                             ndes      design direction a
                                                       <- b [kg/m3]

  [Density](Modelica_SIunits.html#Modelica.S rho\_     Density at port\_a,
  Iunits.Density)                            a\_no     mass flow against
                                             ndes      design direction a
                                                       <- b [kg/m3]

  [LossFactorData](Modelica_Fluid_Fittings_B data      Constant loss
  aseClasses_QuadraticTurbulent.html#Modelic           factors for both
  a.Fluid.Fittings.BaseClasses.QuadraticTurb           flow directions
  ulent.LossFactorData)                                

  [MassFlowRate](Modelica_SIunits.html#Model m\_fl 0.0 Turbulent flow if
  ica.SIunits.MassFlowRate)                  ow\_s 1   |m\_flow| \>=
                                             mall      m\_flow\_small
                                                       [kg/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name  Description
  ------------------------------------- ----- -----------------------------
  [Pressure](Modelica_SIunits.html#Mode dp    Pressure drop (dp = port\_a.p
  lica.SIunits.Pressure)                      - port\_b.p) [Pa]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function pressureLoss_m_flow_totalPressure 
      "Return pressure drop from constant loss factor and mass flow rate (dp = f(m_flow))"
            extends Modelica.Icons.Function;

      input SI.MassFlowRate m_flow "Mass flow rate from port_a to port_b";
      input SI.Density rho_a_des 
        "Density at port_a, mass flow in design direction a -> b";
      input SI.Density rho_b_des 
        "Density at port_b, mass flow in design direction a -> b";
      input SI.Density rho_b_nondes 
        "Density at port_b, mass flow against design direction a <- b";
      input SI.Density rho_a_nondes 
        "Density at port_a, mass flow against design direction a <- b";
      input LossFactorData data "Constant loss factors for both flow directions";
      input SI.MassFlowRate m_flow_small = 0.01 
        "Turbulent flow if |m_flow| >= m_flow_small";
      output SI.Pressure dp "Pressure drop (dp = port_a.p - port_b.p)";

    protected 
      SI.Area A_a = Modelica.Constants.pi * data.diameter_a^2/4 
        "Cross section area at port_a";
      SI.Area A_b = Modelica.Constants.pi * data.diameter_b^2/4 
        "Cross section area at port_b";
    algorithm 
        dp := 1/2 * m_flow^2 *( if m_flow > 0 then 
          data.zeta1/(if data.zeta1_at_a then rho_a_des    * A_a^2 else    rho_b_des * A_b^2) - 1/(rho_a_des    * A_a^2) + 1/(rho_b_des    * A_b^2) else 
          -data.zeta2/(if data.zeta2_at_a then rho_a_nondes * A_a^2 else rho_b_nondes * A_b^2) - 1/(rho_a_nondes * A_a^2) + 1/(rho_b_nondes * A_b^2));
    end pressureLoss_m_flow_totalPressure;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:18 2010.
