% Modelica.Media.Incompressible.TableBased.Polynomials\_Temp
% 
% 

[Modelica.Media.Incompressible.TableBased](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased).Polynomials\_Temp
====================================================================================================================================================

**Temporary Functions operating on polynomials (including polynomial
fitting); only to be used in Modelica.Media.Incompressible.TableBased**

Information
-----------

::

This package contains functions to operate on polynomials, in particular
to determine the derivative and the integral of a polynomial and to use
a polynomial to fit a given set of data points.

**Copyright © 2004-2010, Modelica Association and DLR.**

*This package is**free*\* software. It can be redistributed and/or
modified under the terms of the **Modelica license**, see the license
conditions and the accompanying **disclaimer** in the documentation of
package Modelica in file "Modelica/package.mo".\*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  ![image10](Modelica.Media.Incompressible.TableB Evaluate polynomial at a
  ased.Polynomials_Temp.evaluateS.png)            given abszissa value
  [evaluate](Modelica_Media_Incompressible_TableB 
  ased_Polynomials_Temp.html#Modelica.Media.Incom 
  pressible.TableBased.Polynomials_Temp.evaluate) 

  ![image11](Modelica.Media.Incompressible.TableB Derivative of polynomial
  ased.Polynomials_Temp.evaluateS.png)            
  [derivative](Modelica_Media_Incompressible_Tabl 
  eBased_Polynomials_Temp.html#Modelica.Media.Inc 
  ompressible.TableBased.Polynomials_Temp.derivat 
  ive)                                            

  ![image12](Modelica.Media.Incompressible.TableB Value of derivative of
  ased.Polynomials_Temp.evaluateS.png)            polynomial at abszissa
  [derivativeValue](Modelica_Media_Incompressible value u
  _TableBased_Polynomials_Temp.html#Modelica.Medi 
  a.Incompressible.TableBased.Polynomials_Temp.de 
  rivativeValue)                                  

  ![image13](Modelica.Media.Incompressible.TableB Value of 2nd derivative
  ased.Polynomials_Temp.evaluateS.png)            of polynomial at
  [secondDerivativeValue](Modelica_Media_Incompre abszissa value u
  ssible_TableBased_Polynomials_Temp.html#Modelic 
  a.Media.Incompressible.TableBased.Polynomials_T 
  emp.secondDerivativeValue)                      

  ![image14](Modelica.Media.Incompressible.TableB Indefinite integral of
  ased.Polynomials_Temp.evaluateS.png)            polynomial p(u)
  [integral](Modelica_Media_Incompressible_TableB 
  ased_Polynomials_Temp.html#Modelica.Media.Incom 
  pressible.TableBased.Polynomials_Temp.integral) 

  ![image15](Modelica.Media.Incompressible.TableB Integral of polynomial
  ased.Polynomials_Temp.evaluateS.png)            p(u) from u\_low to
  [integralValue](Modelica_Media_Incompressible_T u\_high
  ableBased_Polynomials_Temp.html#Modelica.Media. 
  Incompressible.TableBased.Polynomials_Temp.inte 
  gralValue)                                      

  ![image16](Modelica.Media.Incompressible.TableB Computes the
  ased.Polynomials_Temp.evaluateS.png)            coefficients of a
  [fitting](Modelica_Media_Incompressible_TableBa polynomial that fits a
  sed_Polynomials_Temp.html#Modelica.Media.Incomp set of data points in a
  ressible.TableBased.Polynomials_Temp.fitting)   least-squares sense

  ![image17](Modelica.Media.Incompressible.TableB Evaluate polynomial at a
  ased.Polynomials_Temp.evaluateS.png)            given abszissa value
  [evaluate\_der](Modelica_Media_Incompressible_T 
  ableBased_Polynomials_Temp.html#Modelica.Media. 
  Incompressible.TableBased.Polynomials_Temp.eval 
  uate_der)                                       

  ![image18](Modelica.Media.Incompressible.TableB Time derivative of
  ased.Polynomials_Temp.evaluateS.png)            integral of polynomial
  [integralValue\_der](Modelica_Media_Incompressi p(u) from u\_low to
  ble_TableBased_Polynomials_Temp.html#Modelica.M u\_high, assuming only
  edia.Incompressible.TableBased.Polynomials_Temp u\_high as
  .integralValue_der)                             time-dependent (Leibnitz
                                                  rule)

  ![image19](Modelica.Media.Incompressible.TableB time derivative of
  ased.Polynomials_Temp.evaluateS.png)            derivative of polynomial
  [derivativeValue\_der](Modelica_Media_Incompres 
  sible_TableBased_Polynomials_Temp.html#Modelica 
  .Media.Incompressible.TableBased.Polynomials_Te 
  mp.derivativeValue_der)                         
  ------------------------------------------------------------------------

* * * * *

![image20](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).evaluate
===================================================================================================================================================================================================================================================================================

**Evaluate polynomial at a given abszissa value**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type   Name   Default  Description
  ------ ------ -------- -------------------------------------------------
  Real   p[:]            Polynomial coefficients (p[1] is coefficient of
                         highest power)

  Real   u               Abszissa value
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- -----------------------------
  Real      y         Value of polynomial at u

Modelica definition
-------------------

    function evaluate "Evaluate polynomial at a given abszissa value"
      annotation(derivative=evaluate_der);
      extends Modelica.Icons.Function;
      input Real p[:] 
        "Polynomial coefficients (p[1] is coefficient of highest power)";
      input Real u "Abszissa value";
      output Real y "Value of polynomial at u";
    algorithm 
      y := p[1];
      for j in 2:size(p, 1) loop
        y := p[j] + u*y;
      end for;
    end evaluate;

* * * * *

![image21](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).derivative
=====================================================================================================================================================================================================================================================================================

**Derivative of polynomial**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type   Name    Default  Description
  ------ ------- -------- -------------------------------------------------
  Real   p1[:]            Polynomial coefficients (p1[1] is coefficient of
                          highest power)
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name                     Description
  --------- ------------------------ --------------------------------
  Real      p2[size(p1, 1) - 1]      Derivative of polynomial p1

Modelica definition
-------------------

    function derivative "Derivative of polynomial"
      extends Modelica.Icons.Function;
      input Real p1[:] 
        "Polynomial coefficients (p1[1] is coefficient of highest power)";
      output Real p2[size(p1, 1) - 1] "Derivative of polynomial p1";
    protected 
      Integer n=size(p1, 1);
    algorithm 
      for j in 1:n-1 loop
        p2[j] := p1[j]*(n - j);
      end for;
    end derivative;

* * * * *

![image22](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).derivativeValue
==========================================================================================================================================================================================================================================================================================

**Value of derivative of polynomial at abszissa value u**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type   Name   Default  Description
  ------ ------ -------- -------------------------------------------------
  Real   p[:]            Polynomial coefficients (p[1] is coefficient of
                         highest power)

  Real   u               Abszissa value
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- -------------------------------------------
  Real      y         Value of derivative of polynomial at u

Modelica definition
-------------------

    function derivativeValue 
      "Value of derivative of polynomial at abszissa value u"
      annotation(derivative=derivativeValue_der);
      extends Modelica.Icons.Function;
      input Real p[:] 
        "Polynomial coefficients (p[1] is coefficient of highest power)";
      input Real u "Abszissa value";
      output Real y "Value of derivative of polynomial at u";
    protected 
      Integer n=size(p, 1);
    algorithm 
      y := p[1]*(n - 1);
      for j in 2:size(p, 1)-1 loop
        y := p[j]*(n - j) + u*y;
      end for;
    end derivativeValue;

* * * * *

![image23](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).secondDerivativeValue
================================================================================================================================================================================================================================================================================================

**Value of 2nd derivative of polynomial at abszissa value u**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type   Name   Default  Description
  ------ ------ -------- -------------------------------------------------
  Real   p[:]            Polynomial coefficients (p[1] is coefficient of
                         highest power)

  Real   u               Abszissa value
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- -----------------------------------------------
  Real      y         Value of 2nd derivative of polynomial at u

Modelica definition
-------------------

    function secondDerivativeValue 
      "Value of 2nd derivative of polynomial at abszissa value u"
      extends Modelica.Icons.Function;
      input Real p[:] 
        "Polynomial coefficients (p[1] is coefficient of highest power)";
      input Real u "Abszissa value";
      output Real y "Value of 2nd derivative of polynomial at u";
    protected 
      Integer n=size(p, 1);
    algorithm 
      y := p[1]*(n - 1)*(n - 2);
      for j in 2:size(p, 1)-2 loop
        y := p[j]*(n - j)*(n - j - 1) + u*y;
      end for;
    end secondDerivativeValue;

* * * * *

![image24](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).integral
===================================================================================================================================================================================================================================================================================

**Indefinite integral of polynomial p(u)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type   Name    Default  Description
  ------ ------- -------- -------------------------------------------------
  Real   p1[:]            Polynomial coefficients (p1[1] is coefficient of
                          highest power)
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Typ Name      Description
  e             
  --- --------- -----------------------------------------------------------
  Rea p2[size(p Polynomial coefficients of indefinite integral of
  l   1,        polynomial p1 (polynomial p2 + C is the indefinite integral
      1) + 1]   of p1, where C is an arbitrary constant)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function integral "Indefinite integral of polynomial p(u)"
      extends Modelica.Icons.Function;
      input Real p1[:] 
        "Polynomial coefficients (p1[1] is coefficient of highest power)";
      output Real p2[size(p1, 1) + 1] 
        "Polynomial coefficients of indefinite integral of polynomial p1 (polynomial p2 + C is the indefinite integral of p1, where C is an arbitrary constant)";
    protected 
      Integer n=size(p1, 1) + 1 "degree of output polynomial";
    algorithm 
      for j in 1:n-1 loop
        p2[j] := p1[j]/(n-j);
      end for;
    end integral;

* * * * *

![image25](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).integralValue
========================================================================================================================================================================================================================================================================================

**Integral of polynomial p(u) from u\_low to u\_high**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ -----------------------------------
  Real      p[:]                      Polynomial coefficients
  Real      u\_high                   High integrand value
  Real      u\_low       0            Low integrand value, default 0

Outputs
-------

  Type     Name         Description
  -------- ------------ --------------------------------------------------
  Real     integral     Integral of polynomial p from u\_low to u\_high

Modelica definition
-------------------

    function integralValue 
      "Integral of polynomial p(u) from u_low to u_high"
      annotation(derivative=integralValue_der);
      extends Modelica.Icons.Function;
      input Real p[:] "Polynomial coefficients";
      input Real u_high "High integrand value";
      input Real u_low=0 "Low integrand value, default 0";
      output Real integral=0.0 "Integral of polynomial p from u_low to u_high";
    protected 
      Integer n=size(p, 1) "degree of integrated polynomial";
      Real y_low=0 "value at lower integrand";
    algorithm 
      for j in 1:n loop
        integral := u_high*(p[j]/(n - j + 1) + integral);
        y_low := u_low*(p[j]/(n - j + 1) + y_low);
      end for;
      integral := integral - y_low;
    end integralValue;

* * * * *

![image26](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).fitting
==================================================================================================================================================================================================================================================================================

**Computes the coefficients of a polynomial that fits a set of data
points in a least-squares sense**

Information
-----------

::

Polynomials.fitting(u,y,n) computes the coefficients of a polynomial
p(u) of degree "n" that fits the data "p(u[i]) - y[i]" in a least
squares sense. The polynomial is returned as a vector p[n+1] that has
the following definition:

    p(u) = p[1]*u^n + p[2]*u^(n-1) + ... + p[n]*u + p[n+1];

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type     Name         Default  Description
  -------- ------------ -------- -------------------------------------------
  Real     u[:]                  Abscissa data values

  Real     y[size(u,             Ordinate data values
           1)]                   

  Integer  n                     Order of desired polynomial that fits the
                                 data points (u,y)
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name       Description
  ------- ---------- ------------------------------------------------------
  Real    p[n + 1]   Polynomial coefficients of polynomial that fits the
                     date points
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function fitting 
      "Computes the coefficients of a polynomial that fits a set of data points in a least-squares sense"
      extends Modelica.Icons.Function;
      input Real u[:] "Abscissa data values";
      input Real y[size(u, 1)] "Ordinate data values";
      input Integer n(min=1) 
        "Order of desired polynomial that fits the data points (u,y)";
      output Real p[n + 1] 
        "Polynomial coefficients of polynomial that fits the date points";
    protected 
      Real V[size(u, 1), n + 1] "Vandermonde matrix";
    algorithm 
      // Construct Vandermonde matrix
      V[:, n + 1] := ones(size(u, 1));
      for j in n:-1:1 loop
        V[:, j] := {u[i] * V[i, j + 1] for i in 1:size(u,1)};
      end for;

      // Solve least squares problem
      p :=Modelica.Math.Matrices.leastSquares(V, y);
    end fitting;

* * * * *

![image27](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).evaluate\_der
========================================================================================================================================================================================================================================================================================

**Evaluate polynomial at a given abszissa value**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type   Name   Default  Description
  ------ ------ -------- -------------------------------------------------
  Real   p[:]            Polynomial coefficients (p[1] is coefficient of
                         highest power)

  Real   u               Abszissa value

  Real   du              Abszissa value
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- -----------------------------
  Real      dy        Value of polynomial at u

Modelica definition
-------------------

    function evaluate_der "Evaluate polynomial at a given abszissa value"
      extends Modelica.Icons.Function;
      input Real p[:] 
        "Polynomial coefficients (p[1] is coefficient of highest power)";
      input Real u "Abszissa value";
      input Real du "Abszissa value";
      output Real dy "Value of polynomial at u";
    protected 
      Integer n=size(p, 1);
    algorithm 
      dy := p[1]*(n - 1);
      for j in 2:size(p, 1)-1 loop
        dy := p[j]*(n - j) + u*dy;
      end for;
      dy := dy*du;
    end evaluate_der;

* * * * *

![image28](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).integralValue\_der
=============================================================================================================================================================================================================================================================================================

**Time derivative of integral of polynomial p(u) from u\_low to u\_high,
assuming only u\_high as time-dependent (Leibnitz rule)**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name          Default      Description
  --------- ------------- ------------ -----------------------------------
  Real      p[:]                       Polynomial coefficients
  Real      u\_high                    High integrand value
  Real      u\_low        0            Low integrand value, default 0
  Real      du\_high                   High integrand value
  Real      du\_low       0            Low integrand value, default 0

Outputs
-------

  Type     Name          Description
  -------- ------------- -------------------------------------------------
  Real     dintegral     Integral of polynomial p from u\_low to u\_high

Modelica definition
-------------------

    function integralValue_der 
      "Time derivative of integral of polynomial p(u) from u_low to u_high, assuming only u_high as time-dependent (Leibnitz rule)"
      extends Modelica.Icons.Function;
      input Real p[:] "Polynomial coefficients";
      input Real u_high "High integrand value";
      input Real u_low=0 "Low integrand value, default 0";
      input Real du_high "High integrand value";
      input Real du_low=0 "Low integrand value, default 0";
      output Real dintegral=0.0 "Integral of polynomial p from u_low to u_high";
    algorithm 
      dintegral := evaluate(p,u_high)*du_high;
    end integralValue_der;

* * * * *

![image29](Modelica.Media.Incompressible.TableBased.Polynomials_Temp.evaluateI.png) [Modelica.Media.Incompressible.TableBased.Polynomials\_Temp](Modelica_Media_Incompressible_TableBased_Polynomials_Temp.html#Modelica.Media.Incompressible.TableBased.Polynomials_Temp).derivativeValue\_der
===============================================================================================================================================================================================================================================================================================

**time derivative of derivative of polynomial**

Information
-----------

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type   Name   Default  Description
  ------ ------ -------- -------------------------------------------------
  Real   p[:]            Polynomial coefficients (p[1] is coefficient of
                         highest power)

  Real   u               Abszissa value

  Real   du              delta of abszissa value
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type   Name   Description
  ------ ------ ----------------------------------------------------------
  Real   dy     time-derivative of derivative of polynomial w.r.t. input
                variable at u
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function derivativeValue_der 
      "time derivative of derivative of polynomial"
      extends Modelica.Icons.Function;
      input Real p[:] 
        "Polynomial coefficients (p[1] is coefficient of highest power)";
      input Real u "Abszissa value";
      input Real du "delta of abszissa value";
      output Real dy 
        "time-derivative of derivative of polynomial w.r.t. input variable at u";
    protected 
      Integer n=size(p, 1);
    algorithm 
      dy := secondDerivativeValue(p,u)*du;
    end derivativeValue_der;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:34 2010.
