======================================================
Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent
======================================================

`Modelica.Fluid.Fittings.BaseClasses <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses>`_.QuadraticTurbulent
----------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss components that are mainly defined by a quadratic
turbulent regime with constant loss factor data**

Information
~~~~~~~~~~~

::

This library provides pressure loss factors of a pipe segment (orifice,
bending etc.) with a minimum amount of data. If available, data can be
provided for **both flow directions**, i.e., flow from port\_a to
port\_b and from port\_b to port\_a, as well as for the **laminar** and
the **turbulent** region. It is also an option to provide the loss
factor **only** for the **turbulent** region for a flow from port\_a to
port\_b. Basically, the pressure drop is defined by the following
equation:

::

       Δp = 0.5*ζ*ρ*v*|v|
          = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
          = 8*ζ/(π^2*D^4*ρ) * m_flow*|m_flow|

where

-  Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-  v is the mean velocity.
-  ρ is the density.
-  ζ is the loss factor that depends on the geometry of the pipe. In the
   turbulent flow regime, it is assumed that ζ is constant and is given
   by "zeta1" and "zeta2" depending on the flow direction.
-  
-  D is the diameter of the pipe segment. If this is not a circular
   cross section, D = 4\*A/P, where A is the cross section area and P is
   the wetted perimeter.

::

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                              | Description                                                                                                                             |
+===================================================================================================================================================================================================================================================================================================+=========================================================================================================================================+
| |image9| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_                                                                                                                                    | Data structure defining constant loss factor data for dp = zeta\*rho\*v\*\|v\|/2 and functions providing the data for some loss types   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image10| `massFlowRate\_dp <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dp>`_                                                                                                                                | Return mass flow rate from constant loss factor data and pressure drop (m\_flow = f(dp))                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image11| `massFlowRate\_dp\_and\_Re <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dp_and_Re>`_                                                                                                                | Return mass flow rate from constant loss factor data, pressure drop and Re (m\_flow = f(dp))                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image12| `pressureLoss\_m\_flow <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss_m_flow>`_                                                                                                                       | Return pressure drop from constant loss factor and mass flow rate (dp = f(m\_flow))                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image13| `pressureLoss\_m\_flow\_and\_Re <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss_m_flow_and_Re>`_                                                                                                       | Return pressure drop from constant loss factor, mass flow rate and Re (dp = f(m\_flow))                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image14| `BaseModel <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel>`_                                                                                                                                             | Generic pressure drop component with constant turbulent loss factor data and without an icon                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image15| `TestWallFriction <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFriction>`_                                                                                                                               | Pressure drop in pipe due to wall friction (only for test purposes; if needed use Pipes.StaticPipe instead)                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image16| `BaseModelNonconstantCrossSectionArea <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea>`_                                                                                       | Generic pressure drop component with constant turbulent loss factor data and without an icon, for non-constant cross section area       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+
| |image17| `pressureLoss\_m\_flow\_totalPressure <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss_m_flow_totalPressure>`_                                                                                          | Return pressure drop from constant loss factor and mass flow rate (dp = f(m\_flow))                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image18| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.LossFactorData
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Data structure defining constant loss factor data for dp =
zeta\*rho\*v\*\|v\|/2 and functions providing the data for some loss
types**

Information
~~~~~~~~~~~

::

This record defines the pressure loss factors of a pipe segment
(orifice, bending etc.) with a minimum amount of data. If available,
data should be provided for **both flow directions**, i.e., flow from
port\_a to port\_b and from port\_b to port\_a, as well as for the
**laminar** and the **turbulent** region. It is also an option to
provide the loss factor **only** for the **turbulent** region for a flow
from port\_a to port\_b.

The following equations are used:

::

       Δp = 0.5*ζ*ρ*v*|v|
          = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
          = 8*ζ/(π^2*D^4*ρ) * m_flow*|m_flow|
            Re = |v|*D*ρ/μ

+-----------------+----------------------+-----------------------------------------------+
| **flow type**   | **ζ** =              | **flow region**                               |
+-----------------+----------------------+-----------------------------------------------+
| turbulent       | **zeta1** = const.   | Re ≥ Re\_turbulent, v ≥ 0                     |
+-----------------+----------------------+-----------------------------------------------+
|                 | **zeta2** = const.   | Re ≥ Re\_turbulent, v < 0                     |
+-----------------+----------------------+-----------------------------------------------+
| laminar         | **c0**/Re            | both flow directions, Re small; c0 = const.   |
+-----------------+----------------------+-----------------------------------------------+

where

-  Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-  v is the mean velocity.
-  ρ is the density.
-  ζ is the loss factor that depends on the geometry of the pipe. In the
   turbulent flow regime, it is assumed that ζ is constant and is given
   by "zeta1" and "zeta2" depending on the flow direction.
    When the Reynolds number Re is below "Re\_turbulent", the flow is
   laminar for small flow velocities. For higher velocities there is a
   transition region from laminar to turbulent flow. The loss factor for
   laminar flow at small velocities is defined by the often occuring
   approximation c0/Re. If c0 is different for the two flow directions,
   the mean value has to be used (c0 = (c0\_ab + c0\_ba)/2).
-  
-  The equation "Δp = 0.5\*ζ\*ρ\*v\*\|v\|" is either with respect to
   port\_a or to port\_b, depending on the definition of the particular
   loss factor ζ (in some references loss factors are defined with
   respect to port\_a, in other references with respect to port\_b).
-  Re = \|v\|\*D\_Re\*ρ/μ = \|m\_flow\|\*D\_Re/(A\_Re\*μ) is the
   Reynolds number at the smallest cross section area. This is often at
   port\_a or at port\_b, but can also be between the two ports. In the
   record, the diameter D\_Re of this smallest cross section area has to
   be provided, as well, as Re\_turbulent, the absolute value of the
   Reynolds number at which the turbulent flow starts. If Re\_turbulent
   is different for the two flow directions, use the smaller value as
   Re\_turbulent.
-  D is the diameter of the pipe. If the pipe has not a circular cross
   section, D = 4\*A/P, where A is the cross section area and P is the
   wetted perimeter.
-  A is the cross section area with A = π(D/2)^2.
-  μ is the dynamic viscosity.

The laminar and the transition region is usually of not much technical
interest because the operating point is mostly in the turbulent regime.
For simplification and for numercial reasons, this whole region is
described by two polynomials of third order, one polynomial for m\_flow
≥ 0 and one for m\_flow < 0. The polynomials start at Re =
\|m\_flow\|\*4/(π\*D\_Re\*μ), where D\_Re is the smallest diameter
between port\_a and port\_b. The common derivative of the two
polynomials at Re = 0 is computed from the equation "c0/Re". Note, the
pressure drop equation above in the laminar region is always defined
with respect to the smallest diameter D\_Re.

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

 Fritsch F.N. and Carlson R.E. (1980):
    **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
    Vol. 17, No. 2, April 1980, pp. 238-246

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                        | Name               | Default   | Description                                                                     |
+=============================================================================+====================+===========+=================================================================================+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_               | diameter\_a        |           | Diameter at port\_a [m]                                                         |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_               | diameter\_b        |           | Diameter at port\_b [m]                                                         |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| Real                                                                        | zeta1              |           | Loss factor for flow port\_a -> port\_b                                         |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| Real                                                                        | zeta2              |           | Loss factor for flow port\_b -> port\_a                                         |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| `ReynoldsNumber <Modelica_SIunits.html#Modelica.SIunits.ReynoldsNumber>`_   | Re\_turbulent      |           | Loss factors suited for Re >= Re\_turbulent [1]                                 |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_               | D\_Re              |           | Diameter used to compute Re [m]                                                 |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| Boolean                                                                     | zeta1\_at\_a       | true      | dp = zeta1\*(if zeta1\_at\_a then rho\_a\*v\_a^2/2 else rho\_b\*v\_b^2/2)       |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| Boolean                                                                     | zeta2\_at\_a       | false     | dp = -zeta2\*(if zeta2\_at\_a then rho\_a\*v\_a^2/2 else rho\_b\*v\_b^2/2)      |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| Boolean                                                                     | zetaLaminarKnown   | false     | = true, if zeta = c0/Re in laminar region                                       |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+
| Real                                                                        | c0                 | 1         | zeta = c0/Re; dp = zeta\*rho\_Re\*v\_Re^2/2, Re=v\_Re\*D\_Re\*rho\_Re/mu\_Re)   |
+-----------------------------------------------------------------------------+--------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image19| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.massFlowRate\_dp
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate from constant loss factor data and pressure drop
(m\_flow = f(dp))**

Information
~~~~~~~~~~~

::

Compute mass flow rate from constant loss factor and pressure drop
(m\_flow = f(dp)). For small pressure drops (dp < dp\_small), the
characteristic is approximated by a polynomial in order to have a finite
derivative at zero mass flow rate.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------+
| Type                                                                                                                                                    | Name        | Default   | Description                                       |
+=========================================================================================================================================================+=============+===========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                           | dp          |           | Pressure drop (dp = port\_a.p - port\_b.p) [Pa]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_a      |           | Density at port\_a [kg/m3]                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_b      |           | Density at port\_b [kg/m3]                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data        |           | Constant loss factors for both flow directions    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_                                                                           | dp\_small   | 1         | Turbulent flow if \|dp\| >= dp\_small [Pa]        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+-----------+---------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-------------------------------------------------+
| Type                                                                    | Name      | Description                                     |
+=========================================================================+===========+=================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | m\_flow   | Mass flow rate from port\_a to port\_b [kg/s]   |
+-------------------------------------------------------------------------+-----------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image20| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.massFlowRate\_dp\_and\_Re
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate from constant loss factor data, pressure drop
and Re (m\_flow = f(dp))**

Information
~~~~~~~~~~~

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

 Fritsch F.N. and Carlson R.E. (1980):
    **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
    Vol. 17, No. 2, April 1980, pp. 238-246

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| Type                                                                                                                                                    | Name     | Default   | Description                                       |
+=========================================================================================================================================================+==========+===========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                           | dp       |           | Pressure drop (dp = port\_a.p - port\_b.p) [Pa]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_a   |           | Density at port\_a [kg/m3]                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_b   |           | Density at port\_b [kg/m3]                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | mu\_a    |           | Dynamic viscosity at port\_a [Pa.s]               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | mu\_b    |           | Dynamic viscosity at port\_b [Pa.s]               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data     |           | Constant loss factors for both flow directions    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+----------+-----------+---------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+-------------------------------------------------+
| Type                                                                    | Name      | Description                                     |
+=========================================================================+===========+=================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | m\_flow   | Mass flow rate from port\_a to port\_b [kg/s]   |
+-------------------------------------------------------------------------+-----------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image21| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.pressureLoss\_m\_flow
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure drop from constant loss factor and mass flow rate (dp
= f(m\_flow))**

Information
~~~~~~~~~~~

::

Compute pressure drop from constant loss factor and mass flow rate (dp =
f(m\_flow)). For small mass flow rates(\|m\_flow\| < m\_flow\_small),
the characteristic is approximated by a polynomial in order to have a
finite derivative at zero mass flow rate.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------+
| Type                                                                                                                                                    | Name             | Default   | Description                                              |
+=========================================================================================================================================================+==================+===========+==========================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                   | m\_flow          |           | Mass flow rate from port\_a to port\_b [kg/s]            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_a           |           | Density at port\_a [kg/m3]                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_b           |           | Density at port\_b [kg/m3]                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data             |           | Constant loss factors for both flow directions           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                   | m\_flow\_small   | 0.01      | Turbulent flow if \|m\_flow\| >= m\_flow\_small [kg/s]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+----------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------------+
| Type                                                            | Name   | Description                                       |
+=================================================================+========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp     | Pressure drop (dp = port\_a.p - port\_b.p) [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image22| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.pressureLoss\_m\_flow\_and\_Re
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure drop from constant loss factor, mass flow rate and Re
(dp = f(m\_flow))**

Information
~~~~~~~~~~~

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

 Fritsch F.N. and Carlson R.E. (1980):
    **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
    Vol. 17, No. 2, April 1980, pp. 238-246

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| Type                                                                                                                                                    | Name      | Default   | Description                                      |
+=========================================================================================================================================================+===========+===========+==================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                   | m\_flow   |           | Mass flow rate from port\_a to port\_b [kg/s]    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_a    |           | Density at port\_a [kg/m3]                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_b    |           | Density at port\_b [kg/m3]                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | mu\_a     |           | Dynamic viscosity at port\_a [Pa.s]              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                           | mu\_b     |           | Dynamic viscosity at port\_b [Pa.s]              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data      |           | Constant loss factors for both flow directions   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+--------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------------+
| Type                                                            | Name   | Description                                       |
+=================================================================+========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp     | Pressure drop (dp = port\_a.p - port\_b.p) [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image23| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.BaseModel
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure drop component with constant turbulent loss factor
data and without an icon**

.. figure:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel

   Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel

Information
~~~~~~~~~~~

::

This model computes the pressure loss of a pipe segment (orifice,
bending etc.) with a minimum amount of data provided via parameter
**data**. If available, data should be provided for **both flow
directions**, i.e., flow from port\_a to port\_b and from port\_b to
port\_a, as well as for the **laminar** and the **turbulent** region. It
is also an option to provide the loss factor **only** for the
**turbulent** region for a flow from port\_a to port\_b.

The following equations are used:

::

       Δp = 0.5*ζ*ρ*v*|v|
          = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
            Re = |v|*D*ρ/μ

+-----------------+----------------------+-----------------------------------------------+
| **flow type**   | **ζ** =              | **flow region**                               |
+-----------------+----------------------+-----------------------------------------------+
| turbulent       | **zeta1** = const.   | Re ≥ Re\_turbulent, v ≥ 0                     |
+-----------------+----------------------+-----------------------------------------------+
|                 | **zeta2** = const.   | Re ≥ Re\_turbulent, v < 0                     |
+-----------------+----------------------+-----------------------------------------------+
| laminar         | **c0**/Re            | both flow directions, Re small; c0 = const.   |
+-----------------+----------------------+-----------------------------------------------+

where

-  Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-  v is the mean velocity.
-  ρ is the density.
-  ζ is the loss factor that depends on the geometry of the pipe. In the
   turbulent flow regime, it is assumed that ζ is constant and is given
   by "zeta1" and "zeta2" depending on the flow direction.
    When the Reynolds number Re is below "Re\_turbulent", the flow is
   laminar for small flow velocities. For higher velocities there is a
   transition region from laminar to turbulent flow. The loss factor for
   laminar flow at small velocities is defined by the often occuring
   approximation c0/Re. If c0 is different for the two flow directions,
   the mean value has to be used (c0 = (c0\_ab + c0\_ba)/2).
-  
-  The equation "Δp = 0.5\*ζ\*ρ\*v\*\|v\|" is either with respect to
   port\_a or to port\_b, depending on the definition of the particular
   loss factor ζ (in some references loss factors are defined with
   respect to port\_a, in other references with respect to port\_b).
-  Re = \|v\|\*D\_Re\*ρ/μ = \|m\_flow\|\*D\_Re/(A\_Re\*μ) is the
   Reynolds number at the smallest cross section area. This is often at
   port\_a or at port\_b, but can also be between the two ports. In the
   record, the diameter D\_Re of this smallest cross section area has to
   be provided, as well, as Re\_turbulent, the absolute value of the
   Reynolds number at which the turbulent flow starts. If Re\_turbulent
   is different for the two flow directions, use the smaller value as
   Re\_turbulent.
-  D is the diameter of the pipe. If the pipe has not a circular cross
   section, D = 4\*A/P, where A is the cross section area and P is the
   wetted perimeter.
-  A is the cross section area with A = π(D/2)^2.
-  μ is the dynamic viscosity.

The laminar and the transition region is usually of not much technical
interest because the operating point is mostly in the turbulent regime.
For simplification and for numercial reasons, this whole region is
described by two polynomials of third order, one polynomial for m\_flow
≥ 0 and one for m\_flow < 0. The polynomials start at Re =
\|m\_flow\|\*4/(π\*D\_Re\*μ), where D\_Re is the smallest diameter
between port\_a and port\_b. The common derivative of the two
polynomials at Re = 0 is computed from the equation "c0/Re". Note, the
pressure drop equation above in the laminar region is always defined
with respect to the smallest diameter D\_Re.

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

 Fritsch F.N. and Carlson R.E. (1980):
    **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
    Vol. 17, No. 2, April 1980, pp. 238-246

::

Extends from
`Modelica.Fluid.Interfaces.PartialTwoPortTransport <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport>`_
(Partial element transporting fluid between two ports without storage of
mass or energy),
`Modelica.Fluid.Interfaces.PartialLumpedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedFlow>`_
(Base class for a lumped momentum balance).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name                                                                                                      | Default                      | Description                                                                               |
+=========================================================================================================================================================+===========================================================================================================+==============================+===========================================================================================+
| replaceable package Medium                                                                                                                              | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                               | pathLength                                                                                                | 0                            | Length flow path [m]                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data                                                                                                      |                              | Loss factor data                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | allowFlowReversal                                                                                         | system.allowFlowReversal     | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Dynamics                                                                                                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                                                   | momentumDynamics                                                                                          | Types.Dynamics.SteadyState   | Formulation of momentum balance                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_start                                                                                                 | 0.01\*system.p\_start        | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_start                                                                                            | system.m\_flow\_start        | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_small                                                                                            | system.m\_flow\_small        | Small mass flow rate for regularization of zero flow [kg/s]                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | from\_dp                                                                                                  | true                         | = true, use m\_flow = f(dp) else dp = f(m\_flow)                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | use\_Re                                                                                                   | false                        | = true, if turbulent region is defined by Re, otherwise by dp\_small or m\_flow\_small    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_small                                                                                                 | system.dp\_small             | Turbulent flow if \|dp\| >= dp\_small [Pa]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_T                                                                                                   | true                         | = true, if temperatures at port\_a and port\_b are computed                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_V\_flow                                                                                             | true                         | = true, if volume flow rate at inflowing port is computed                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_Re                                                                                                  | false                        | = true, if Reynolds number is included for plotting                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                     | Name      | Description                                                                     |
+==========================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image24| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.TestWallFriction
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure drop in pipe due to wall friction (only for test purposes; if
needed use Pipes.StaticPipe instead)**

.. figure:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFriction

   Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFriction

Information
~~~~~~~~~~~

::

::

Extends from
`BaseModel <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel>`_
(Generic pressure drop component with constant turbulent loss factor
data and without an icon).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name                                                                                                      | Default                           | Description                                                                               |
+=========================================================================================================================================================+===========================================================================================================+===================================+===========================================================================================+
| replaceable package Medium                                                                                                                              | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data                                                                                                      | LossFactorData.wallFriction(...   | Loss factor data                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                               | length                                                                                                    |                                   | Length of pipe [m]                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                           | diameter                                                                                                  |                                   | Inner diameter of pipe [m]                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                               | roughness                                                                                                 |                                   | Absolute roughness of pipe (> 0 required, details see info layer) [m]                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | allowFlowReversal                                                                                         | system.allowFlowReversal          | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_start                                                                                                 | 0.01\*system.p\_start             | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_start                                                                                            | system.m\_flow\_start             | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_small                                                                                            | system.m\_flow\_small             | Small mass flow rate for regularization of zero flow [kg/s]                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | from\_dp                                                                                                  | true                              | = true, use m\_flow = f(dp) else dp = f(m\_flow)                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | use\_Re                                                                                                   | false                             | = true, if turbulent region is defined by Re, otherwise by dp\_small or m\_flow\_small    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_small                                                                                                 | system.dp\_small                  | Turbulent flow if \|dp\| >= dp\_small [Pa]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_T                                                                                                   | true                              | = true, if temperatures at port\_a and port\_b are computed                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_V\_flow                                                                                             | true                              | = true, if volume flow rate at inflowing port is computed                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_Re                                                                                                  | false                             | = true, if Reynolds number is included for plotting                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                     | Name      | Description                                                                     |
+==========================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image25| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.BaseModelNonconstantCrossSectionArea
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Generic pressure drop component with constant turbulent loss factor
data and without an icon, for non-constant cross section area**

.. figure:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea

   Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea

Information
~~~~~~~~~~~

::

This model computes the pressure loss of a pipe segment (orifice,
bending etc.) with a minimum amount of data provided via parameter
**data**. If available, data should be provided for **both flow
directions**, i.e., flow from port\_a to port\_b and from port\_b to
port\_a, as well as for the **laminar** and the **turbulent** region. It
is also an option to provide the loss factor **only** for the
**turbulent** region for a flow from port\_a to port\_b.

The following equations are used:

::

       Δp = 0.5*ζ*ρ*v*|v|
          = 0.5*ζ/A^2 * (1/ρ) * m_flow*|m_flow|
            Re = |v|*D*ρ/μ

+-----------------+----------------------+-----------------------------------------------+
| **flow type**   | **ζ** =              | **flow region**                               |
+-----------------+----------------------+-----------------------------------------------+
| turbulent       | **zeta1** = const.   | Re ≥ Re\_turbulent, v ≥ 0                     |
+-----------------+----------------------+-----------------------------------------------+
|                 | **zeta2** = const.   | Re ≥ Re\_turbulent, v < 0                     |
+-----------------+----------------------+-----------------------------------------------+
| laminar         | **c0**/Re            | both flow directions, Re small; c0 = const.   |
+-----------------+----------------------+-----------------------------------------------+

where

-  Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-  v is the mean velocity.
-  ρ is the density.
-  ζ is the loss factor that depends on the geometry of the pipe. In the
   turbulent flow regime, it is assumed that ζ is constant and is given
   by "zeta1" and "zeta2" depending on the flow direction.
    When the Reynolds number Re is below "Re\_turbulent", the flow is
   laminar for small flow velocities. For higher velocities there is a
   transition region from laminar to turbulent flow. The loss factor for
   laminar flow at small velocities is defined by the often occuring
   approximation c0/Re. If c0 is different for the two flow directions,
   the mean value has to be used (c0 = (c0\_ab + c0\_ba)/2).
-  
-  The equation "Δp = 0.5\*ζ\*ρ\*v\*\|v\|" is either with respect to
   port\_a or to port\_b, depending on the definition of the particular
   loss factor ζ (in some references loss factors are defined with
   respect to port\_a, in other references with respect to port\_b).
-  Re = \|v\|\*D\_Re\*ρ/μ = \|m\_flow\|\*D\_Re/(A\_Re\*μ) is the
   Reynolds number at the smallest cross section area. This is often at
   port\_a or at port\_b, but can also be between the two ports. In the
   record, the diameter D\_Re of this smallest cross section area has to
   be provided, as well, as Re\_turbulent, the absolute value of the
   Reynolds number at which the turbulent flow starts. If Re\_turbulent
   is different for the two flow directions, use the smaller value as
   Re\_turbulent.
-  D is the diameter of the pipe. If the pipe has not a circular cross
   section, D = 4\*A/P, where A is the cross section area and P is the
   wetted perimeter.
-  A is the cross section area with A = π(D/2)^2.
-  μ is the dynamic viscosity.

The laminar and the transition region is usually of not much technical
interest because the operating point is mostly in the turbulent regime.
For simplification and for numercial reasons, this whole region is
described by two polynomials of third order, one polynomial for m\_flow
≥ 0 and one for m\_flow < 0. The polynomials start at Re =
\|m\_flow\|\*4/(π\*D\_Re\*μ), where D\_Re is the smallest diameter
between port\_a and port\_b. The common derivative of the two
polynomials at Re = 0 is computed from the equation "c0/Re". Note, the
pressure drop equation above in the laminar region is always defined
with respect to the smallest diameter D\_Re.

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

 Fritsch F.N. and Carlson R.E. (1980):
    **Monotone piecewise cubic interpolation**. SIAM J. Numerc. Anal.,
    Vol. 17, No. 2, April 1980, pp. 238-246

::

Extends from
`Modelica.Fluid.Interfaces.PartialTwoPortTransport <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport>`_
(Partial element transporting fluid between two ports without storage of
mass or energy),
`Modelica.Fluid.Interfaces.PartialLumpedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedFlow>`_
(Base class for a lumped momentum balance).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name                                                                                                      | Default                      | Description                                                                               |
+=========================================================================================================================================================+===========================================================================================================+==============================+===========================================================================================+
| replaceable package Medium                                                                                                                              | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                               | pathLength                                                                                                | 0                            | Length flow path [m]                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data                                                                                                      |                              | Loss factor data                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | allowFlowReversal                                                                                         | system.allowFlowReversal     | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Dynamics                                                                                                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                                                   | momentumDynamics                                                                                          | Types.Dynamics.SteadyState   | Formulation of momentum balance                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_start                                                                                                 | 0.01\*system.p\_start        | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_start                                                                                            | system.m\_flow\_start        | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_small                                                                                            | system.m\_flow\_small        | Small mass flow rate for regularization of zero flow [kg/s]                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_small                                                                                                 | system.dp\_small             | Turbulent flow if \|dp\| >= dp\_small [Pa]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_T                                                                                                   | true                         | = true, if temperatures at port\_a and port\_b are computed                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_V\_flow                                                                                             | true                         | = true, if volume flow rate at inflowing port is computed                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_Re                                                                                                  | false                        | = true, if Reynolds number is included for plotting                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_totalPressures                                                                                      | false                        | = true, if total pressures are included for plotting                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_portVelocities                                                                                      | false                        | = true, if port velocities are included for plotting                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                     | Name      | Description                                                                     |
+==========================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image26| `Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent>`_.pressureLoss\_m\_flow\_totalPressure
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure drop from constant loss factor and mass flow rate (dp
= f(m\_flow))**

Information
~~~~~~~~~~~

::

Compute pressure drop from constant loss factor and mass flow rate (dp =
f(m\_flow)). For small mass flow rates(\|m\_flow\| < m\_flow\_small),
the characteristic is approximated by a polynomial in order to have a
finite derivative at zero mass flow rate.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name             | Default   | Description                                                             |
+=========================================================================================================================================================+==================+===========+=========================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                   | m\_flow          |           | Mass flow rate from port\_a to port\_b [kg/s]                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_a\_des      |           | Density at port\_a, mass flow in design direction a -> b [kg/m3]        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_b\_des      |           | Density at port\_b, mass flow in design direction a -> b [kg/m3]        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_b\_nondes   |           | Density at port\_b, mass flow against design direction a <- b [kg/m3]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                             | rho\_a\_nondes   |           | Density at port\_a, mass flow against design direction a <- b [kg/m3]   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data             |           | Constant loss factors for both flow directions                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                   | m\_flow\_small   | 0.01      | Turbulent flow if \|m\_flow\| >= m\_flow\_small [kg/s]                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+-------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------------------------------------+
| Type                                                            | Name   | Description                                       |
+=================================================================+========+===================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp     | Pressure drop (dp = port\_a.p - port\_b.p) [Pa]   |
+-----------------------------------------------------------------+--------+---------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:18
2010.

.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorDataS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate\_dp| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate\_dp\_and\_Re| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss\_m\_flow| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss\_m\_flow\_and\_Re| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFriction| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFrictionS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionAreaS.png
.. |Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss\_m\_flow\_totalPressure| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss_m_flow_totalPressureS.png
.. |image9| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorDataS.png
.. |image10| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |image11| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |image12| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |image13| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpS.png
.. |image14| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelS.png
.. |image15| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFrictionS.png
.. |image16| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionAreaS.png
.. |image17| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss_m_flow_totalPressureS.png
.. |image18| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorDataI.png
.. |image19| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png
.. |image20| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png
.. |image21| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png
.. |image22| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.massFlowRate_dpI.png
.. |image23| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelI.png
.. |image24| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.TestWallFrictionI.png
.. |image25| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionAreaI.png
.. |image26| image:: Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.pressureLoss_m_flow_totalPressureI.png
