% Modelica.Math
% 
% 

[Modelica](Modelica.html#Modelica).Math
=======================================

**Library of mathematical functions (e.g., sin, cos) and of functions
operating on vectors and matrices**

Information
-----------

::

This package contains **basic mathematical functions** (such as
sin(..)), as well as functions operating on
[vectors](Modelica_Math_Vectors.html#Modelica.Math.Vectors),
[matrices](Modelica_Math_Matrices.html#Modelica.Math.Matrices),
[nonlinear
functions](Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear), and
[Boolean
vectors](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors).

**Main Authors:**

[Martin Otter](http://www.robotic.dlr.de/Martin.Otter/) and Marcus Baur
Deutsches Zentrum für Luft und Raumfahrt e.V. (DLR) Institut für Robotik
und Mechatronik Postfach 1116 D-82230 Wessling Germany email:
[[Martin.Otter@dlr.de](mailto:Martin.Otter@dlr.de)](mailto:Martin.Otter@dlr.de)

Copyright © 1998-2010, Modelica Association and DLR.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                      Description
  ----------------------------------------- ------------------------------
  ![image25](Modelica.Math.VectorsS.png)    Library of functions operating
  [Vectors](Modelica_Math_Vectors.html#Mode on vectors
  lica.Math.Vectors)                        

  ![image26](Modelica.Math.VectorsS.png)    Library of functions operating
  [Matrices](Modelica_Math_Matrices.html#Mo on matrices
  delica.Math.Matrices)                     

  ![image27](Modelica.Math.VectorsS.png)    Library of functions operating
  [Nonlinear](Modelica_Math_Nonlinear.html# on nonlinear equations
  Modelica.Math.Nonlinear)                  

  ![image28](Modelica.Math.VectorsS.png)    Library of functions operating
  [BooleanVectors](Modelica_Math_BooleanVec on Boolean vectors
  tors.html#Modelica.Math.BooleanVectors)   

  ![image29](Modelica.Math.isEqualS.png)    Determine if two Real scalars
  [isEqual](Modelica_Math.html#Modelica.Mat are numerically identical
  h.isEqual)                                

  ![image30](Modelica.Math.sinS.png)        Sine
  [sin](Modelica_Math.html#Modelica.Math.si 
  n)                                        

  ![image31](Modelica.Math.cosS.png)        Cosine
  [cos](Modelica_Math.html#Modelica.Math.co 
  s)                                        

  ![image32](Modelica.Math.tanS.png)        Tangent (u shall not be -pi/2,
  [tan](Modelica_Math.html#Modelica.Math.ta pi/2, 3\*pi/2, ...)
  n)                                        

  ![image33](Modelica.Math.asinS.png)       Inverse sine (-1 <= u <= 1)
  [asin](Modelica_Math.html#Modelica.Math.a 
  sin)                                      

  ![image34](Modelica.Math.acosS.png)       Inverse cosine (-1 <= u <= 1)
  [acos](Modelica_Math.html#Modelica.Math.a 
  cos)                                      

  ![image35](Modelica.Math.atanS.png)       Inverse tangent
  [atan](Modelica_Math.html#Modelica.Math.a 
  tan)                                      

  ![image36](Modelica.Math.atan2S.png)      Four quadrant inverse tangent
  [atan2](Modelica_Math.html#Modelica.Math. 
  atan2)                                    

  ![image37](Modelica.Math.atan2S.png)      Four quadrant inverse tangent
  [atan3](Modelica_Math.html#Modelica.Math. (select solution that is
  atan3)                                    closest to given angle y0)

  ![image38](Modelica.Math.sinhS.png)       Hyperbolic sine
  [sinh](Modelica_Math.html#Modelica.Math.s 
  inh)                                      

  ![image39](Modelica.Math.coshS.png)       Hyperbolic cosine
  [cosh](Modelica_Math.html#Modelica.Math.c 
  osh)                                      

  ![image40](Modelica.Math.tanhS.png)       Hyperbolic tangent
  [tanh](Modelica_Math.html#Modelica.Math.t 
  anh)                                      

  ![image41](Modelica.Math.asinhS.png)      Inverse of sinh (area
  [asinh](Modelica_Math.html#Modelica.Math. hyperbolic sine)
  asinh)                                    

  ![image42](Modelica.Math.acoshS.png)      Inverse of cosh (area
  [acosh](Modelica_Math.html#Modelica.Math. hyperbolic cosine)
  acosh)                                    

  ![image43](Modelica.Math.expS.png)        Exponential, base e
  [exp](Modelica_Math.html#Modelica.Math.ex 
  p)                                        

  ![image44](Modelica.Math.logS.png)        Natural (base e) logarithm (u
  [log](Modelica_Math.html#Modelica.Math.lo shall be \> 0)
  g)                                        

  ![image45](Modelica.Math.logS.png)        Base 10 logarithm (u shall be
  [log10](Modelica_Math.html#Modelica.Math. \> 0)
  log10)                                    

  ![image46](Modelica.Math.baseIcon1S.png)  Basic icon for mathematical
  [baseIcon1](Modelica_Math.html#Modelica.M function with y-axis on left
  ath.baseIcon1)                            side

  ![image47](Modelica.Math.baseIcon2S.png)  Basic icon for mathematical
  [baseIcon2](Modelica_Math.html#Modelica.M function with y-axis in middle
  ath.baseIcon2)                            

  ![image48](Modelica.Math.tempInterpol1S.p Temporary function for linear
  ng)                                       interpolation (will be
  [tempInterpol1](Modelica_Math.html#Modeli removed)
  ca.Math.tempInterpol1)                    

  ![image49](Modelica.Math.tempInterpol1S.p Temporary function for
  ng)                                       vectorized linear
  [tempInterpol2](Modelica_Math.html#Modeli interpolation (will be
  ca.Math.tempInterpol2)                    removed)
  ------------------------------------------------------------------------

* * * * *

![image50](Modelica.Math.isEqualI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).isEqual
================================================================================================

**Determine if two Real scalars are numerically identical**

Information
-----------

::

### Syntax

>     Math.isEqual(s1, s2);
>     Math.isEqual(s1, s2, eps=0);

### Description

The function call "`Math.isEqual(s1, s2)`" returns **true**, if the two
Real scalars s1 and s2 are identical. Otherwise the function returns
**false**. The equality check is performed by "abs(s1-s2) ≤ eps", where
"eps" can be provided as third argument of the function. Default is "eps
= 0".

### Example

>     Real s1 = 2.0;
>     Real s2 = 2.0;
>     Real s3 = 2.000001;
>     Boolean result;
>
> > algorithm
> >   ~ result := Math.isEqual(s1,s2); // = true result :=
> >     Math.isEqual(s1,s3); // = false result :=
> >     Math.isEqual(s1,s3,0.1); // = true
> >
### See also

[Vectors.isEqual](Modelica_Math_Vectors.html#Modelica.Math.Vectors.isEqual),
[Matrices.isEqual](Modelica_Math_Matrices.html#Modelica.Math.Matrices.isEqual),
[Strings.isEqual](Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.isEqual)

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type    Name    Default    Description
  ------- ------- ---------- ----------------------------------------------
  Real    s1                 First scalar

  Real    s2                 Second scalar

  Real    eps     0          The two scalars are identical if abs(s1-s2) <=
                             eps
  -------------------------------------------------------------------------

Outputs
-------

  Type         Name        Description
  ------------ ----------- -------------------------------------
  Boolean      result      = true, if scalars are identical

Modelica definition
-------------------

    function isEqual 
      "Determine if two Real scalars are numerically identical"
      extends Modelica.Icons.Function;
      input Real s1 "First scalar";
      input Real s2 "Second scalar";
      input Real eps(min=0) = 0 
        "The two scalars are identical if abs(s1-s2) <= eps";
      output Boolean result "= true, if scalars are identical";
    algorithm 
      result :=abs(s1 - s2) <= eps;
    end isEqual;

* * * * *

![image51](Modelica.Math.sinI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).sin
========================================================================================

**Sine**

Information
-----------

::

This function returns y = sin(u), with -∞ < u < ∞:

::

Extends from [baseIcon1](Modelica_Math.html#Modelica.Math.baseIcon1)
(Basic icon for mathematical function with y-axis on left side).

Inputs
------

  ------------------------------------------------------------------------
  Type                                         Name   Default  Description
  -------------------------------------------- ------ -------- -----------
  [Angle](Modelica_SIunits.html#Modelica.SIuni u               [rad]
  ts.Angle)                                                    
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function sin "Sine"
      extends baseIcon1;
      input Modelica.SIunits.Angle u;
      output Real y;

    external "builtin" y = sin(u);
    end sin;

* * * * *

![image52](Modelica.Math.cosI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).cos
========================================================================================

**Cosine**

Information
-----------

::

This function returns y = cos(u), with -∞ < u < ∞:

::

Extends from [baseIcon1](Modelica_Math.html#Modelica.Math.baseIcon1)
(Basic icon for mathematical function with y-axis on left side).

Inputs
------

  ------------------------------------------------------------------------
  Type                                         Name   Default  Description
  -------------------------------------------- ------ -------- -----------
  [Angle](Modelica_SIunits.html#Modelica.SIuni u               [rad]
  ts.Angle)                                                    
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function cos "Cosine"
      extends baseIcon1;
      input SI.Angle u;
      output Real y;

    external "builtin" y = cos(u);
    end cos;

* * * * *

![image53](Modelica.Math.tanI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).tan
========================================================================================

**Tangent (u shall not be -pi/2, pi/2, 3\*pi/2, ...)**

Information
-----------

::

This function returns y = tan(u), with -∞ < u < ∞ (if u is a multiple of
(2n-1)\*pi/2, y = tan(u) is +/- infinity).

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  ------------------------------------------------------------------------
  Type                                         Name   Default  Description
  -------------------------------------------- ------ -------- -----------
  [Angle](Modelica_SIunits.html#Modelica.SIuni u               [rad]
  ts.Angle)                                                    
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function tan "Tangent (u shall not be -pi/2, pi/2, 3*pi/2, ...)"
      extends baseIcon2;
      input SI.Angle u;
      output Real y;

    external "builtin" y = tan(u);
    end tan;

* * * * *

![image54](Modelica.Math.asinI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).asin
==========================================================================================

**Inverse sine (-1 <= u <= 1)**

Information
-----------

::

This function returns y = asin(u), with -1 ≤ u ≤ +1:

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- -------------
  [Angle](Modelica_SIunits.html#Modelica.SIunits.Ang y       [rad]
  le)                                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function asin "Inverse sine (-1 <= u <= 1)"
      extends baseIcon2;
      input Real u;
      output SI.Angle y;

    external "builtin" y = asin(u);
    end asin;

* * * * *

![image55](Modelica.Math.acosI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).acos
==========================================================================================

**Inverse cosine (-1 <= u <= 1)**

Information
-----------

::

This function returns y = acos(u), with -1 ≤ u ≤ +1:

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- -------------
  [Angle](Modelica_SIunits.html#Modelica.SIunits.Ang y       [rad]
  le)                                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function acos "Inverse cosine (-1 <= u <= 1)"
      extends baseIcon2;
      input Real u;
      output SI.Angle y;

    external "builtin" y = acos(u);
    end acos;

* * * * *

![image56](Modelica.Math.atanI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).atan
==========================================================================================

**Inverse tangent**

Information
-----------

::

This function returns y = atan(u), with -∞ < u < ∞:

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- -------------
  [Angle](Modelica_SIunits.html#Modelica.SIunits.Ang y       [rad]
  le)                                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function atan "Inverse tangent"
      extends baseIcon2;
      input Real u;
      output SI.Angle y;

    external "builtin" y = atan(u);
    end atan;

* * * * *

![image57](Modelica.Math.atan2I.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).atan2
============================================================================================

**Four quadrant inverse tangent**

Information
-----------

::

This function returns y = atan2(u1,u2) such that tan(y) = u1/u2 and y is
in the range -pi < y ≤ pi. u2 may be zero, provided u1 is not zero.
Usually u1, u2 is provided in such a form that u1 = sin(y) and u2 =
cos(y):

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u1                     
  Real      u2                     

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- -------------
  [Angle](Modelica_SIunits.html#Modelica.SIunits.Ang y       [rad]
  le)                                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function atan2 "Four quadrant inverse tangent"
      extends baseIcon2;
      input Real u1;
      input Real u2;
      output SI.Angle y;

    external "builtin" y = atan2(u1, u2);
    end atan2;

* * * * *

![image58](Modelica.Math.atan2I.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).atan3
============================================================================================

**Four quadrant inverse tangent (select solution that is closest to
given angle y0)**

Information
-----------

::

This function returns y = **atan3**(u1,u2,y0) such that **tan**(y) =
u1/u2 and y is in the range: -pi < y-y0 < pi. u2 may be zero, provided
u1 is not zero. The difference to Modelica.Math.atan2(..) is the
optional third argument y0 that allows to specify which of the infinite
many solutions shall be returned:

::

Extends from
[Modelica.Math.baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  ------------------------------------------------------------------------
  Type                             Name Defaul Description
                                        t      
  -------------------------------- ---- ------ ---------------------------
  Real                             u1          

  Real                             u2          

  [Angle](Modelica_SIunits.html#Mo y0   0      y shall be in the range:
  delica.SIunits.Angle)                        -pi < y-y0 < pi [rad]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                               Name    Description
  -------------------------------------------------- ------- -------------
  [Angle](Modelica_SIunits.html#Modelica.SIunits.Ang y       [rad]
  le)                                                        
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function atan3 
      "Four quadrant inverse tangent (select solution that is closest to given angle y0)"
      import Modelica.Math;
      extends Modelica.Math.baseIcon2;
      input Real u1;
      input Real u2;
      input Modelica.SIunits.Angle y0=0 "y shall be in the range: -pi < y-y0 < pi";
      output Modelica.SIunits.Angle y;

    protected 
      Real pi = Modelica.Constants.pi;
      Real w;
    algorithm 
      w :=Math.atan2(u1, u2);
      y := w + 2*pi*div(abs(w-y0)+pi,2*pi)*(if y0 > w then +1 else -1);
    end atan3;

* * * * *

![image59](Modelica.Math.sinhI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).sinh
==========================================================================================

**Hyperbolic sine**

Information
-----------

::

This function returns y = sinh(u), with -∞ < u < ∞:

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function sinh "Hyperbolic sine"
      extends baseIcon2;
      input Real u;
      output Real y;

    external "builtin" y = sinh(u);
    end sinh;

* * * * *

![image60](Modelica.Math.coshI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).cosh
==========================================================================================

**Hyperbolic cosine**

Information
-----------

::

This function returns y = cosh(u), with -∞ < u < ∞:

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function cosh "Hyperbolic cosine"
      extends baseIcon2;
      input Real u;
      output Real y;

    external "builtin" y = cosh(u);
    end cosh;

* * * * *

![image61](Modelica.Math.tanhI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).tanh
==========================================================================================

**Hyperbolic tangent**

Information
-----------

::

This function returns y = tanh(u), with -∞ < u < ∞:

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function tanh "Hyperbolic tangent"
      extends baseIcon2;
      input Real u;
      output Real y;

    external "builtin" y = tanh(u);
    end tanh;

* * * * *

![image62](Modelica.Math.asinhI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).asinh
============================================================================================

**Inverse of sinh (area hyperbolic sine)**

Information
-----------

::

The function returns the area hyperbolic sine of its input argument u.
This inverse of sinh(..) is unique and there is no restriction on the
input argument u of asinh(u) (-∞ < u < ∞):

::

Extends from
[Modelica.Math.baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function asinh "Inverse of sinh (area hyperbolic sine)"
      extends Modelica.Math.baseIcon2;
      input Real u;
      output Real y;

    algorithm 
      y :=Modelica.Math.log(u + sqrt(u*u + 1));
    end asinh;

* * * * *

![image63](Modelica.Math.acoshI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).acosh
============================================================================================

**Inverse of cosh (area hyperbolic cosine)**

Information
-----------

::

This function returns the area hyperbolic cosine of its input argument
u. The valid range of u is

    +1 ≤ u < +∞

If the function is called with u < 1, an error occurs. The function
cosh(u) has two inverse functions (the curve looks similar to a sqrt(..)
function). acosh(..) returns the inverse that is positive. At u=1, the
derivative dy/du is infinite. Therefore, this function should not be
used in a model, if u can become close to 1:

::

Extends from
[Modelica.Math.baseIcon1](Modelica_Math.html#Modelica.Math.baseIcon1)
(Basic icon for mathematical function with y-axis on left side).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function acosh "Inverse of cosh (area hyperbolic cosine)"
      import Modelica.Utilities.Streams.*;
      extends Modelica.Math.baseIcon1;
      input Real u;
      output Real y;

    algorithm 
      assert(u>=1.0, "Input argument u (= " + String(u) + ") of acosh(u) must be >= 1.0");
      y :=Modelica.Math.log(u + sqrt(u*u - 1));
    end acosh;

* * * * *

![image64](Modelica.Math.expI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).exp
========================================================================================

**Exponential, base e**

Information
-----------

::

This function returns y = exp(u), with -∞ < u < ∞:

::

Extends from [baseIcon2](Modelica_Math.html#Modelica.Math.baseIcon2)
(Basic icon for mathematical function with y-axis in middle).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function exp "Exponential, base e"
      extends baseIcon2;
      input Real u;
      output Real y;

    external "builtin" y = exp(u);
    end exp;

* * * * *

![image65](Modelica.Math.logI.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).log
========================================================================================

**Natural (base e) logarithm (u shall be \> 0)**

Information
-----------

::

This function returns y = log(10) (the natural logarithm of u), with u
\> 0:

::

Extends from [baseIcon1](Modelica_Math.html#Modelica.Math.baseIcon1)
(Basic icon for mathematical function with y-axis on left side).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function log "Natural (base e) logarithm (u shall be > 0)"
      extends baseIcon1;
      input Real u;
      output Real y;

    external "builtin" y = log(u);
    end log;

* * * * *

![image66](Modelica.Math.log10I.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).log10
============================================================================================

**Base 10 logarithm (u shall be \> 0)**

Information
-----------

::

This function returns y = log10(u), with u \> 0:

::

Extends from [baseIcon1](Modelica_Math.html#Modelica.Math.baseIcon1)
(Basic icon for mathematical function with y-axis on left side).

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ ----------------
  Real      u                      

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      y         

Modelica definition
-------------------

    function log10 "Base 10 logarithm (u shall be > 0)"
      extends baseIcon1;
      input Real u;
      output Real y;

    external "builtin" y = log10(u);
    end log10;

* * * * *

![image67](Modelica.Math.baseIcon1I.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).baseIcon1
====================================================================================================

**Basic icon for mathematical function with y-axis on left side**

Information
-----------

::

Icon for a mathematical function, consisting of an y-axis on the left
side. It is expected, that an x-axis is added and a plot of the
function.

::

Modelica definition
-------------------

    partial function baseIcon1 
      "Basic icon for mathematical function with y-axis on left side"

    end baseIcon1;

* * * * *

![image68](Modelica.Math.baseIcon2I.png) [Modelica.Math](Modelica_Math.html#Modelica.Math).baseIcon2
====================================================================================================

**Basic icon for mathematical function with y-axis in middle**

Information
-----------

::

Icon for a mathematical function, consisting of an y-axis in the middle.
It is expected, that an x-axis is added and a plot of the function.

::

Modelica definition
-------------------

    partial function baseIcon2 
      "Basic icon for mathematical function with y-axis in middle"

    end baseIcon2;

* * * * *

[Modelica.Math](Modelica_Math.html#Modelica.Math).tempInterpol1
===============================================================

**Temporary function for linear interpolation (will be removed)**

Information
-----------

::

::

Inputs
------

  Type       Name           Default    Description
  ---------- -------------- ---------- ------------------------------------
  Real       u                         input value (first column of table)
  Real       table[:, :]               table to be interpolated
  Integer    icol                      column of table to be interpolated

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------------------------------------------
  Real      y         interpolated input value (icol column of table)

Modelica definition
-------------------

    function tempInterpol1 
      "Temporary function for linear interpolation (will be removed)"
      input Real u "input value (first column of table)";
      input Real table[:, :] "table to be interpolated";
      input Integer icol "column of table to be interpolated";
      output Real y "interpolated input value (icol column of table)";
    protected 
      Integer i;
      Integer n "number of rows of table";
      Real u1;
      Real u2;
      Real y1;
      Real y2;
    algorithm 
      n := size(table, 1);

      if n <= 1 then
        y := table[1, icol];

      else
        // Search interval

        if u <= table[1, 1] then
          i := 1;

        else
          i := 2;
          // Supports duplicate table[i, 1] values
          // in the interior to allow discontinuities.
          // Interior means that
          // if table[i, 1] = table[i+1, 1] we require i>1 and i+1<n

          while i < n and u >= table[i, 1] loop
            i := i + 1;

          end while;
          i := i - 1;

        end if;

        // Get interpolation data
        u1 := table[i, 1];
        u2 := table[i + 1, 1];
        y1 := table[i, icol];
        y2 := table[i + 1, icol];

        assert(u2 > u1, "Table index must be increasing");
        // Interpolate
        y := y1 + (y2 - y1)*(u - u1)/(u2 - u1);

      end if;

    end tempInterpol1;

* * * * *

[Modelica.Math](Modelica_Math.html#Modelica.Math).tempInterpol2
===============================================================

**Temporary function for vectorized linear interpolation (will be
removed)**

Information
-----------

::

::

Inputs
------

  -------------------------------------------------------------------------
  Type       Name           Default    Description
  ---------- -------------- ---------- ------------------------------------
  Real       u                         input value (first column of table)

  Real       table[:, :]               table to be interpolated

  Integer    icol[:]                   column(s) of table to be
                                       interpolated
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type    Name               Description
  ------- ------------------ ---------------------------------------------
  Real    y[1, size(icol,    interpolated input value(s) (column(s) icol
          1)]                of table)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function tempInterpol2 
      "Temporary function for vectorized linear interpolation (will be removed)"

      input Real u "input value (first column of table)";
      input Real table[:, :] "table to be interpolated";
      input Integer icol[:] "column(s) of table to be interpolated";
      output Real y[1, size(icol, 1)] 
        "interpolated input value(s) (column(s) icol of table)";
    protected 
      Integer i;
      Integer n "number of rows of table";
      Real u1;
      Real u2;
      Real y1[1, size(icol, 1)];
      Real y2[1, size(icol, 1)];
    algorithm 
      n := size(table, 1);

      if n <= 1 then
        y := transpose([table[1, icol]]);

      else
        // Search interval

        if u <= table[1, 1] then
          i := 1;

        else
          i := 2;
          // Supports duplicate table[i, 1] values
          // in the interior to allow discontinuities.
          // Interior means that
          // if table[i, 1] = table[i+1, 1] we require i>1 and i+1<n

          while i < n and u >= table[i, 1] loop
            i := i + 1;

          end while;
          i := i - 1;

        end if;

        // Get interpolation data
        u1 := table[i, 1];
        u2 := table[i + 1, 1];
        y1 := transpose([table[i, icol]]);
        y2 := transpose([table[i + 1, icol]]);

        assert(u2 > u1, "Table index must be increasing");
        // Interpolate
        y := y1 + (y2 - y1)*(u - u1)/(u2 - u1);

      end if;

    end tempInterpol2;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:48 2010.
