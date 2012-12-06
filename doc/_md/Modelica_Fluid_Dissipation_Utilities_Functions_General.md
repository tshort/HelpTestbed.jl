% Modelica.Fluid.Dissipation.Utilities.Functions.General
% 
% 

[Modelica.Fluid.Dissipation.Utilities.Functions](Modelica_Fluid_Dissipation_Utilities_Functions.html#Modelica.Fluid.Dissipation.Utilities.Functions).General
============================================================================================================================================================

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image10](Modelica.Fluid.Dissipation.Utilities.Functi 
  ons.HeatTransfer.TwoPhase.kc_twoPhase_condensationHori 
  zontal_KCS.png)                                        
  [CubicInterpolation\_DP](Modelica_Fluid_Dissipation_Ut 
  ilities_Functions_General.html#Modelica.Fluid.Dissipat 
  ion.Utilities.Functions.General.CubicInterpolation_DP) 

  ![image11](Modelica.Fluid.Dissipation.Utilities.Functi 
  ons.HeatTransfer.TwoPhase.kc_twoPhase_condensationHori 
  zontal_KCS.png)                                        
  [CubicInterpolation\_MFLOW](Modelica_Fluid_Dissipation 
  _Utilities_Functions_General.html#Modelica.Fluid.Dissi 
  pation.Utilities.Functions.General.CubicInterpolation_ 
  MFLOW)                                                 

  ![image12](Modelica.Fluid.Dissipation.Utilities.Functi Closed
  ons.HeatTransfer.TwoPhase.kc_twoPhase_condensationHori approximation of
  zontal_KCS.png)                                        lambert's w
  [LambertW](Modelica_Fluid_Dissipation_Utilities_Functi function for
  ons_General.html#Modelica.Fluid.Dissipation.Utilities. solving f(x) = x
  Functions.General.LambertW)                            exp(x) for x

  ![image13](Modelica.Fluid.Dissipation.Utilities.Functi Iterative form of
  ons.HeatTransfer.TwoPhase.kc_twoPhase_condensationHori lambert's w
  zontal_KCS.png)                                        function for
  [LambertWIter](Modelica_Fluid_Dissipation_Utilities_Fu solving f(x) = x
  nctions_General.html#Modelica.Fluid.Dissipation.Utilit exp(x) for x
  ies.Functions.General.LambertWIter)                    

  ![image14](Modelica.Fluid.Dissipation.Utilities.Functi calculation of
  ons.HeatTransfer.TwoPhase.kc_twoPhase_condensationHori Prandtl number
  zontal_KCS.png)                                        
  [PrandtlNumber](Modelica_Fluid_Dissipation_Utilities_F 
  unctions_General.html#Modelica.Fluid.Dissipation.Utili 
  ties.Functions.General.PrandtlNumber)                  

  ![image15](Modelica.Fluid.Dissipation.Utilities.Functi calculation of
  ons.HeatTransfer.TwoPhase.kc_twoPhase_condensationHori Reynolds number
  zontal_KCS.png)                                        
  [ReynoldsNumber](Modelica_Fluid_Dissipation_Utilities_ 
  Functions_General.html#Modelica.Fluid.Dissipation.Util 
  ities.Functions.General.ReynoldsNumber)                

  ![image16](Modelica.Fluid.Dissipation.Utilities.Functi Limiting the
  ons.General.SmoothPowerS.png)                          derivative of
  [SmoothPower](Modelica_Fluid_Dissipation_Utilities_Fun function y = if
  ctions_General.html#Modelica.Fluid.Dissipation.Utiliti x\>=0 then x\^pow
  es.Functions.General.SmoothPower)                      else -(-x)\^pow

  ![image17](Modelica.Fluid.Dissipation.Utilities.Functi The derivative of
  ons.General.SmoothPowerS.png)                          function
  [SmoothPower\_der](Modelica_Fluid_Dissipation_Utilitie SmoothPower
  s_Functions_General.html#Modelica.Fluid.Dissipation.Ut 
  ilities.Functions.General.SmoothPower_der)             

  ![image18](Modelica.Fluid.Dissipation.Utilities.Functi Continuous
  ons.General.SmoothPowerS.png)                          interpolation for
  [Stepsmoother](Modelica_Fluid_Dissipation_Utilities_Fu x
  nctions_General.html#Modelica.Fluid.Dissipation.Utilit 
  ies.Functions.General.Stepsmoother)                    

  ![image19](Modelica.Fluid.Dissipation.Utilities.Functi Derivative of
  ons.General.SmoothPowerS.png)                          function
  [Stepsmoother\_der](Modelica_Fluid_Dissipation_Utiliti Stepsmoother
  es_Functions_General.html#Modelica.Fluid.Dissipation.U 
  tilities.Functions.General.Stepsmoother_der)           
  ------------------------------------------------------------------------

* * * * *

[Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).CubicInterpolation\_DP
===================================================================================================================================================================================================

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Name       Defaul Descripti
                                                           t      on
  --------------------------------------------- ---------- ------ ---------
  Real                                          Re\_turbul        
                                                ent               

  [ReynoldsNumber](Modelica_SIunits.html#Modeli Re1               [1]
  ca.SIunits.ReynoldsNumber)                                      

  [ReynoldsNumber](Modelica_SIunits.html#Modeli Re2               [1]
  ca.SIunits.ReynoldsNumber)                                      

  Real                                          Delta             

  Real                                          lambda2           
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name   Description
  ------------------------------------------------------ ------ -----------
  [ReynoldsNumber](Modelica_SIunits.html#Modelica.SIunit Re     [1]
  s.ReynoldsNumber)                                             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function CubicInterpolation_DP
      import Modelica.Math;
      input Real Re_turbulent;
      input SI.ReynoldsNumber Re1;
      input SI.ReynoldsNumber Re2;
      input Real Delta;
      input Real lambda2;
      output SI.ReynoldsNumber Re;
      // point lg(lambda2(Re1)) with derivative at lg(Re1)
    protected 
      Real x1=Math.log10(64*Re1);
      Real y1=Math.log10(Re1);
      Real yd1=1;

      // Point lg(lambda2(Re2)) with derivative at lg(Re2)
      Real aux1=(0.5/Math.log(10))*5.74*0.9;
      Real aux2=Delta/3.7 + 5.74/Re2^0.9;
      Real aux3=Math.log10(aux2);
      Real L2=0.25*(Re2/aux3)^2;
      Real aux4=2.51/sqrt(L2) + 0.27*Delta;
      Real aux5=-2*sqrt(L2)*Math.log10(aux4);
      Real x2=Math.log10(L2);
      Real y2=Math.log10(aux5);
      Real yd2=0.5 + (2.51/Math.log(10))/(aux5*aux4);

      // Constants: Cubic polynomial between lg(Re1) and lg(Re2)
      Real diff_x=x2 - x1;
      Real m=(y2 - y1)/diff_x;
      Real c2=(3*m - 2*yd1 - yd2)/diff_x;
      Real c3=(yd1 + yd2 - 2*m)/(diff_x*diff_x);
      Real lambda2_1=64*Re1;
      Real dx=Math.log10(lambda2/lambda2_1);

    algorithm 
      Re := Re1*(lambda2/lambda2_1)^(1 + dx*(c2 + dx*c3));
    end CubicInterpolation_DP;

* * * * *

[Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).CubicInterpolation\_MFLOW
======================================================================================================================================================================================================

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Name   Default Descripti
                                                                  on
  ------------------------------------------------ ------ ------- ---------
  [ReynoldsNumber](Modelica_SIunits.html#Modelica. Re             [1]
  SIunits.ReynoldsNumber)                                         

  [ReynoldsNumber](Modelica_SIunits.html#Modelica. Re1            [1]
  SIunits.ReynoldsNumber)                                         

  [ReynoldsNumber](Modelica_SIunits.html#Modelica. Re2            [1]
  SIunits.ReynoldsNumber)                                         

  Real                                             Delta          
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name         Description
  --------- ------------ ----------------
  Real      lambda2      

Modelica definition
-------------------

    function CubicInterpolation_MFLOW
      import Modelica.Math;
      input SI.ReynoldsNumber Re;
      input SI.ReynoldsNumber Re1;
      input SI.ReynoldsNumber Re2;
      input Real Delta;
      output Real lambda2;
      // point lg(lambda2(Re1)) with derivative at lg(Re1)
    protected 
      Real x1=Math.log10(Re1);
      Real y1=Math.log10(64*Re1);
      Real yd1=1;

      // Point lg(lambda2(Re2)) with derivative at lg(Re2)
      Real aux1=(0.5/Math.log(10))*5.74*0.9;
      Real aux2=Delta/3.7 + 5.74/Re2^0.9;
      Real aux3=Math.log10(aux2);
      Real L2=0.25*(Re2/aux3)^2;
      Real aux4=2.51/sqrt(L2) + 0.27*Delta;
      Real aux5=-2*sqrt(L2)*Math.log10(aux4);
      Real x2=Math.log10(Re2);
      Real y2=Math.log10(L2);
      Real yd2=2 + 4*aux1/(aux2*aux3*(Re2)^0.9);

      // Constants: Cubic polynomial between lg(Re1) and lg(Re2)
      Real diff_x=x2 - x1;
      Real m=(y2 - y1)/diff_x;
      Real c2=(3*m - 2*yd1 - yd2)/diff_x;
      Real c3=(yd1 + yd2 - 2*m)/(diff_x*diff_x);
      Real dx=Math.log10(Re/Re1);

    algorithm 
      lambda2 := 64*Re1*(Re/Re1)^(1 + dx*(c2 + dx*c3));
    end CubicInterpolation_MFLOW;

* * * * *

[Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).LambertW
=====================================================================================================================================================================================

**Closed approximation of lambert's w function for solving f(x) = x
exp(x) for x**

Information
-----------

::

This function calculates an approximation of the **inverse** for

    f(x) = y = x * exp( x )

within ∞ \> y \> -1/e. The relative deviation of this approximation for
lambert's w function **x = W(y)** is diplayed in the following graph.

For y \> 10 and higher values the relative deviation is smaller 2%.

::

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      y                      f(x)

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      x         W(y)

Modelica definition
-------------------

    function LambertW 
      "Closed approximation of lambert's w function for solving f(x) = x exp(x) for x"
      input Real y "f(x)";
      output Real x "W(y)";
    protected 
      Real xl;

    algorithm 
      if (y <= 500.0) then
        xl := Modelica.Math.log(y + 1.0);
        x := 0.665*(1 + 0.0195*xl)*xl + 0.04;
      else
        xl := 0;
        x := Modelica.Math.log(y - 4.0) - (1.0 - 1.0/Modelica.Math.log(y))*
          Modelica.Math.log(Modelica.Math.log(y));
      end if;

      assert(y > -1/Modelica.Math.exp(1),
        "Lambert-w-function is only valid for inputs y > -1/Modelica.Math.exp(1)!");

    end LambertW;

* * * * *

[Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).LambertWIter
=========================================================================================================================================================================================

**Iterative form of lambert's w function for solving f(x) = x exp(x) for
x**

Information
-----------

::

This function calculates an approximation of the **inverse** for

    f(x) = y = x * exp( x )

within ∞ \> y \> -1/e. Please note, that for negative inputs **two**
solutions exists. The function currently delivers the result x = -1 ...
0 for that particular range.

::

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      y                      f(x)

Outputs
-------

  Type         Name      Description
  ------------ --------- ----------------
  Real         x         W(y)
  Integer      iter      

Modelica definition
-------------------

    function LambertWIter 
      "Iterative form of lambert's w function for solving f(x) = x exp(x) for x"
      input Real y "f(x)";
      output Real x "W(y)";
      output Integer iter;
    protected 
      Real w;
      Real prec=1e-12;
      Real c1;
      Real c2;
      Real dw;
      Real w1;
      /*Real wTimesExpW;
      Real wPlusOneTimesExpW;*/
      Real dev;
      Integer i;

    algorithm 
      w := if y > 0.1 then Modelica.Fluid.Dissipation.Utilities.Functions.General.LambertW(
        y) else sqrt(5.43656*max(y, -1/Modelica.Math.exp(1)) + 2) - 1;
      dev := 1;
      i := 0;
      while prec < dev and i < 100 loop
        /*wTimesExpW := w*Modelica.Math.exp(w);
                    wPlusOneTimesExpW := (w+1)*Modelica.Math.exp(w);
                    w := w-(wTimesExpW-y)/(wPlusOneTimesExpW-(w+2)*(wTimesExpW-y)/(2*w+2));
                    dev := abs((y-wTimesExpW)/wPlusOneTimesExpW);
                    i := i+1;*/

        c1 := Modelica.Math.exp(w);
        c2 := w*c1 - y;
        w1 := if w <> 1 then w + 1 else w;
        dw := c2/(c1*w1 - ((w + 2)*c2/(2*w1)));
        w := w - dw;
        //dev := abs(dw)/(2+abs(w));
        dev := abs((y - w*c1)/(w + 1)*c1);
        i := i + 1;
      end while;
      x := w;
      iter := i;

    end LambertWIter;

* * * * *

[Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).PrandtlNumber
==========================================================================================================================================================================================

**calculation of Prandtl number**

Inputs
------

  ------------------------------------------------------------------------
  Type                                      Nam Def Description
                                            e   aul 
                                                t   
  ----------------------------------------- --- --- ----------------------
  [SpecificHeatCapacityAtConstantPressure]( cp      specific heat capacity
  Modelica_SIunits.html#Modelica.SIunits.Sp         of fluid at constant
  ecificHeatCapacityAtConstantPressure)             pressure [J/(kg.K)]

  [DynamicViscosity](Modelica_SIunits.html# eta     dynamic viscosity of
  Modelica.SIunits.DynamicViscosity)                fluid [Pa.s]

  [ThermalConductivity](Modelica_SIunits.ht lam     thermal conductivity
  ml#Modelica.SIunits.ThermalConductivity)  bda     of fluid [W/(m.K)]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name   Description
  -------------------------------------------------- ------ ---------------
  [PrandtlNumber](Modelica_SIunits.html#Modelica.SIu Pr     Prandtl number
  nits.PrandtlNumber)                                       [1]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function PrandtlNumber "calculation of Prandtl number"

      import SI = Modelica.SIunits;
      import MIN = Modelica.Constants.eps;

      //fluid properties
      input SI.SpecificHeatCapacityAtConstantPressure cp 
        "specific heat capacity of fluid at constant pressure";
      input SI.DynamicViscosity eta "dynamic viscosity of fluid";
      input SI.ThermalConductivity lambda "thermal conductivity of fluid";

      output SI.PrandtlNumber Pr "Prandtl number";

    algorithm 
      Pr := eta*cp/max(MIN, lambda);
    end PrandtlNumber;

* * * * *

[Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).ReynoldsNumber
===========================================================================================================================================================================================

**calculation of Reynolds number**

Inputs
------

  ------------------------------------------------------------------------
  Type                                     Name   Defau Description
                                                  lt    
  ---------------------------------------- ------ ----- ------------------
  [Area](Modelica_SIunits.html#Modelica.SI A\_cro       Cross sectional
  units.Area)                              ss           area [m2]

  [Length](Modelica_SIunits.html#Modelica. perime       Wetted perimeter
  SIunits.Length)                          ter          [m]

  [Density](Modelica_SIunits.html#Modelica rho          Density of fluid
  .SIunits.Density)                                     [kg/m3]

  [DynamicViscosity](Modelica_SIunits.html eta          Dynamic viscosity
  #Modelica.SIunits.DynamicViscosity)                   of fluid [Pa.s]

  [MassFlowRate](Modelica_SIunits.html#Mod m\_flo       Mass flow rate
  elica.SIunits.MassFlowRate)              w            [kg/s]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                             Name     Description
  ------------------------------------------------ -------- ---------------
  [ReynoldsNumber](Modelica_SIunits.html#Modelica. Re       Reynolds number
  SIunits.ReynoldsNumber)                                   [1]

  [Velocity](Modelica_SIunits.html#Modelica.SIunit velocity Mean velocity
  s.Velocity)                                               [m/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function ReynoldsNumber "calculation of Reynolds number"

      import SI = Modelica.SIunits;
      import MIN = Modelica.Constants.eps;

      //geometry
      input SI.Area A_cross "Cross sectional area";
      input SI.Length perimeter "Wetted perimeter";

      //fluid properties
      input SI.Density rho "Density of fluid";
      input SI.DynamicViscosity eta "Dynamic viscosity of fluid";

      input SI.MassFlowRate m_flow "Mass flow rate";

      output SI.ReynoldsNumber Re "Reynolds number";
      output SI.Velocity velocity "Mean velocity";

    protected 
      SI.Diameter d_hyd=4*A_cross/max(MIN, perimeter) "Hydraulic diameter";

    algorithm 
      Re := 4*abs(m_flow)/max(MIN, (perimeter*eta));
      velocity := m_flow/max(MIN, (rho*A_cross));
    end ReynoldsNumber;

* * * * *

![image20](Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPowerI.png) [Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).SmoothPower
============================================================================================================================================================================================================================================================================

**Limiting the derivative of function y = if x\>=0 then x\^pow else
-(-x)\^pow**

Information
-----------

::

The function is used to limit the derivative of the following function
at x=0:

    y = if x ≥ 0 then xpow else -(-x)pow;  // pow > 0

by approximating the function in the range -**deltax**< x < **deltax**
with a third order polynomial that has the same derivative at
**abs**(x)=deltax, as the function above.

### Example

In the picture below the input x is increased from -1 to 1. The range of
interpolation is defined by the same range. Displayed is the output of
the function SmoothPower compared to

    y=x*|x|

For |x| \> 1 both functions return identical results.

### References

ThermoFluid Library
  ~ \*\*[http://sourceforge.net/projects/thermofluid/\*\*](http://sourceforge.net/projects/thermofluid/**).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name        Default      Description
  --------- ----------- ------------ ----------------------------
  Real      x                        input variable
  Real      deltax                   range for interpolation
  Real      pow                      exponent for x

Outputs
-------

  Type      Name      Description
  --------- --------- --------------------
  Real      y         output variable

Modelica definition
-------------------

    function SmoothPower 
      "Limiting the derivative of function y = if x>=0 then x^pow else -(-x)^pow"
      annotation(derivative=SmoothPower_der);
      extends Modelica.Icons.Function;
      input Real x "input variable";
      input Real deltax "range for interpolation";
      input Real pow "exponent for x";
      output Real y "output variable";
    protected 
      Real adeltax=abs(deltax);
      Real C3=(pow - 1)/2*adeltax^(pow - 3);
      Real C1=(3 - pow)/2*adeltax^(pow - 1);

    algorithm 
      y := if x >= adeltax then x^pow else if x <= -adeltax then -(-x)^pow else (C1
         + C3*x*x)*x;
    end SmoothPower;

* * * * *

![image21](Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPowerI.png) [Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).SmoothPower\_der
=================================================================================================================================================================================================================================================================================

**The derivative of function SmoothPower**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ---------------------------
  Real      x                         input variable
  Real      deltax                    range of interpolation
  Real      pow                       exponent for x
  Real      dx                        derivative of x
  Real      ddeltax                   derivative of deltax
  Real      dpow                      derivative of pow

Outputs
-------

  Type      Name      Description
  --------- --------- ------------------------------
  Real      dy        derivative of SmoothPower

Modelica definition
-------------------

    function SmoothPower_der "The derivative of function SmoothPower"
      extends Modelica.Icons.Function;
      input Real x "input variable";
      input Real deltax "range of interpolation";
      input Real pow "exponent for x";
      input Real dx "derivative of x";
      input Real ddeltax "derivative of deltax";
      input Real dpow "derivative of pow";
      output Real dy "derivative of SmoothPower";
    protected 
      Real C3;
      Real C1;
      Real adeltax;

    algorithm 
      adeltax := abs(deltax);
      if noEvent(x >= adeltax) then
        dy := dx*pow*x^(pow - 1);
      elseif noEvent(x <= -adeltax) then
        dy := -dx*pow*(-x)^(pow - 1);
      else
        C3 := (pow - 1)/2*adeltax^(pow - 3);
        C1 := (3 - pow)/2*adeltax^(pow - 1);
        dy := (C1 + 3*C3*x*x)*dx;
      end if;
    end SmoothPower_der;

* * * * *

![image22](Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPowerI.png) [Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).Stepsmoother
=============================================================================================================================================================================================================================================================================

**Continuous interpolation for x**

Information
-----------

::

The function is used for continuous fading of variable inputs within a
defined range. It allows a differentiable and smooth transition between
function outputs, e.g., laminar and turbulent pressure drop or
correlations for certain ranges.

### Function

The tanh-function is used, since it provides an existing derivative and
the derivative is zero at the borders [**nofunc**, **func**] of the
interpolation domain (smooth derivative for transitions). In order to
work correctly, the internal interpolation range in terms of the
external arbitrary input **x** needs to be scaled such that:

    f(func)   = 0.5 π
    f(nofunc) = -0.5 π

### Example

In the picture below the input x is increased from 0 to 1. The range of
interpolation is defined by:

-   func = 0.75
-   nofunc = 0.25

### References

Wischhusen, St.
  ~ **Simulation von Kältemaschinen-Prozessen mit MODELICA / DYMOLA**.
    Diploma thesis, Hamburg University of Technology, Institute of
    Thermofluiddynamics, 2000.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type     Name      Default    Description
  -------- --------- ---------- -------------------------------------------
  Real     func                 input value for that result = 100%
  Real     nofunc               input value for that result = 0%
  Real     x                    input variable for continuous interpolation

Outputs
-------

  Type      Name        Description
  --------- ----------- -----------------
  Real      result      output value

Modelica definition
-------------------

    function Stepsmoother "Continuous interpolation for x "
      annotation(derivative=Stepsmoother_der);

      extends Modelica.Icons.Function;
      input Real func "input value for that result = 100%";
      input Real nofunc "input value for that result = 0%";
      input Real x "input variable for continuous interpolation";
      output Real result "output value";

    protected 
      Real m=Modelica.Constants.pi/(func - nofunc);
      Real b=-Modelica.Constants.pi/2 - m*nofunc;
      Real r_1=tan(m*x + b);

    algorithm 
      result := if x >= 0.999999*(func - nofunc) + nofunc and func > nofunc or x
         <= 0.999999*(func - nofunc) + nofunc and nofunc > func then 1 else if x
         <= 0.000001*(func - nofunc) + nofunc and func > nofunc or x >= 0.000001*(
        func - nofunc) + nofunc and nofunc > func then 0 else ((0.5*(exp(r_1) - exp(
        -r_1))/(0.5*(exp(r_1) + exp(-r_1))) + 1)/2);
    end Stepsmoother;

* * * * *

![image23](Modelica.Fluid.Dissipation.Utilities.Functions.General.SmoothPowerI.png) [Modelica.Fluid.Dissipation.Utilities.Functions.General](Modelica_Fluid_Dissipation_Utilities_Functions_General.html#Modelica.Fluid.Dissipation.Utilities.Functions.General).Stepsmoother\_der
==================================================================================================================================================================================================================================================================================

**Derivative of function Stepsmoother**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ---------------------------------
  Real      func                      input for that result = 100%
  Real      nofunc                    input for that result = 0%
  Real      x                         input for interpolation
  Real      dfunc                     derivative of func
  Real      dnofunc                   derivative of nofunc
  Real      dx                        derivative of x

Outputs
-------

  Type      Name         Description
  --------- ------------ ----------------
  Real      dresult      

Modelica definition
-------------------

    function Stepsmoother_der "Derivative of function Stepsmoother"

      extends Modelica.Icons.Function;
      input Real func "input for that result = 100%";
      input Real nofunc "input for that result = 0%";
      input Real x "input for interpolation";
      input Real dfunc "derivative of func";
      input Real dnofunc "derivative of nofunc";
      input Real dx "derivative of x";
      output Real dresult;

    protected 
      Real m=Modelica.Constants.pi/(func - nofunc);
      Real b=-Modelica.Constants.pi/2 - m*nofunc;

    algorithm 
      dresult := if x >= 0.999*(func - nofunc) + nofunc and func > nofunc or x <=
        0.999*(func - nofunc) + nofunc and nofunc > func or x <= 0.001*(func -
        nofunc) + nofunc and func > nofunc or x >= 0.001*(func - nofunc) + nofunc
         and nofunc > func then 0 else (1 - Modelica.Math.tanh(Modelica.Math.tan(m*
        x + b))^2)*(1 + Modelica.Math.tan(m*x + b)^2)*m*dx;
    end Stepsmoother_der;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:24 2010.
