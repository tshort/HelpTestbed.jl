=======================
Modelica.Math.Nonlinear
=======================

`Modelica.Math <Modelica_Math.html#Modelica.Math>`_.Nonlinear
-------------------------------------------------------------

**Library of functions operating on nonlinear equations**

Information
~~~~~~~~~~~

::

This package contains functions to perform tasks such as numerically
integrating a function, or solving a nonlinear algebraic equation
system. The common feature of the functions in this package is that the
nonlinear characteristics are passed as user defineable functions.

For details about how to define and to use functions as input arguments
to functions, see
`ModelicaReference.Classes.Function <../../ModelicaReference/help/ModelicaReference_Classes.html#ModelicaReference.Classes.Function>`_
or the Modelica Language Specification, Chapter 12.4.2.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                | Description                                                                                               |
+=====================================================================================================================================================================+===========================================================================================================+
| |image4| `Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_                                                                       | Examples demonstrating the usage of the functions in package Nonlinear                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image5| `Interfaces <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces>`_                                                                 | Interfaces for functions                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image6| `quadratureLobatto <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear.quadratureLobatto>`_                                                              | Return the integral of an integrand function using an adaptive Lobatto rule                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+
| |image7| `solveOneNonlinearEquation <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear.solveOneNonlinearEquation>`_                                              | Solve f(u) = 0 in a very reliable and efficient way (f(u\_min) and f(u\_max) must have different signs)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Math.Nonlinear <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear>`_.quadratureLobatto
---------------------------------------------------------------------------------------------------

**Return the integral of an integrand function using an adaptive Lobatto
rule**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        quadratureLobatto(function f(), a, b);
        quadratureLobatto(function f(), a, b, tolerance=100*Modelica.Constants.eps);

Description
^^^^^^^^^^^

Compute definite integral over function f(u,...) from u=a up to u=b
using the adaptive Lobatto rule according to:

    Walter Gander:
        **Adaptive Quadrature - Revisited**. 1998.
        `ftp://ftp.inf.ethz.ch/doc/tech-reports/1998/306.ps <ftp://ftp.inf.ethz.ch/doc/tech-reports/1998/306.ps>`_

Example
^^^^^^^

See the examples in
`Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+-----------------------------------------+
| Type                                                                                                                          | Name        | Default                       | Description                             |
+===============================================================================================================================+=============+===============================+=========================================+
| `partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_   | f           |                               | Integrand function                      |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+-----------------------------------------+
| Real                                                                                                                          | a           |                               | Lower limit of integration interval     |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+-----------------------------------------+
| Real                                                                                                                          | b           |                               | Upper limit of integration interval     |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+-----------------------------------------+
| Real                                                                                                                          | tolerance   | 100\*Modelica.Constants.eps   | Relative tolerance for integral value   |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+-----------------------------------------+

Outputs
~~~~~~~

+--------+------------+------------------+
| Type   | Name       | Description      |
+========+============+==================+
| Real   | integral   | integral value   |
+--------+------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function quadratureLobatto 
      "Return the integral of an integrand function using an adaptive Lobatto rule"
      input Modelica.Math.Nonlinear.Interfaces.partialScalarFunction
                                                           f "Integrand function";
      input Real a "Lower limit of integration interval";
      input Real b "Upper limit of integration interval";
      input Real tolerance = 100*Modelica.Constants.eps 
        "Relative tolerance for integral value";
      output Real integral "integral value";

    protected 
      constant Real x1=0.942882415695480;
      constant Real x2=0.641853342345781;
      constant Real x3=0.236383199662150;
      constant Real eps=10*Modelica.Constants.eps;
      Real m;
      Real h;
      Real alpha;
      Real beta;
      Real x[13];
      Real y[13];
      Real fa;
      Real fb;
      Real i1;
      Real i2;
      Real is;
      Real erri1;
      Real erri2;
      Real R;
      Real tol;
      Integer s;

      function quadStep "Recursive function used by quadrature"
        input Modelica.Math.Nonlinear.Interfaces.partialScalarFunction
                                                             f;
        input Real a "Right interval end";
        input Real b "Left interval end";
        input Real fa "Function value at a";
        input Real fb "Function value at b";
        input Real is "First approximation of the integral";
        output Real I "integral value";
      protected 
        Real m;
        Real h;
        Real alpha;
        Real beta;
        Real x[5];
        Real y[5];
        Real mll;
        Real ml;
        Real mr;
        Real mrr;
        Real fmll;
        Real fml;
        Real fm;
        Real fmr;
        Real fmrr;
        Real i1;
        Real i2;
      algorithm 
        h := (b - a)/2;
        m := (a + b)/2;
        alpha := sqrt(2/3);
        beta := 1/sqrt(5);
        mll := m - alpha*h;
        ml := m - beta*h;
        mr := m + beta*h;
        mrr := m + alpha*h;
        x := {mll,ml,m,mr,mrr};
        for i in 1:size(x,1) loop
          y[i] := f(x[i]);
        end for;
        fmll := y[1];
        fml := y[2];
        fm := y[3];
        fmr := y[4];
        fmrr := y[5];
        i2 := (h/6)*(fa + fb + 5*(fml + fmr));
        i1 := (h/1470)*(77*(fa + fb) + 432*(fmll + fmrr) + 625*(fml + fmr) +
          672*fm);

        if (is + (i1 - i2) == is) or (mll <= a) or (b <= mrr) then
          I := i1;

        else
          I := quadStep(f, a, mll, fa, fmll, is) +
               quadStep(f, mll, ml, fmll, fml, is) +
               quadStep(f, ml, m, fml, fm, is) +
               quadStep(f, m, mr, fm, fmr, is) +
               quadStep(f, mr, mrr, fmr, fmrr, is) +
               quadStep(f, mrr, b, fmrr, fb, is);
        end if;
      end quadStep;

    algorithm 
      /*
            Numerically evaluate integral using adaptive
            Lobatto rule.
            see Walter Gander: Adaptive Quadrature - Revisited, 1998
                            ftp.inf.ethz.ch in doc/tech-reports/1998/306.ps

            x[:] are the nodes
            y[:] = f(x[:]) are function values at the nodes
            */
      tol := tolerance;
      m := (a + b)/2;
      h := (b - a)/2;
      alpha := sqrt(2/3);
      beta := 1/sqrt(5);
      x := {a,
            m - x1*h,
            m - alpha*h,
            m - x2*h,
            m - beta*h,
            m - x3*h,
            m,
            m + x3*h,
            m + beta*h,
            m + x2*h,
            m + alpha*h,
            m + x1*h,
            b};
      for i in 1:size(x,1) loop
        y[i] := f(x[i]);
      end for;
      fa := y[1];
      fb := y[13];
      i2 := (h/6)*(y[1] + y[13] + 5*(y[5] + y[9]));
      i1 := (h/1470)*(77*(y[1] + y[13]) + 432*(y[3] + y[11]) + 625*(y[5] + y[9])
         + 672*y[7]);
      is := h*(.0158271919734802*(y[1] + y[13]) +.0942738402188500 *(y[2] + y[
        12]) +.155071987336585 *(y[3] + y[11]) +.188821573960182 *(y[4] + y[10])
         +.199773405226859 *(y[5] + y[9]) +.224926465333340 *(y[6] + y[8]) +.242611071901408
                        *y[7]);
      s := sign(is);
      if (s == 0) then
        s := 1;
      end if;
      erri1 := abs(i1 - is);
      erri2 := abs(i2 - is);
      R := 1;
      if (erri2 <> 0) then
        R := erri1/erri2;
      end if;
      if (R > 0 and R < 1) then
        tol := tol/R;
      end if;
      is := s*abs(is)*tol/eps;
      if (is == 0) then
        is := b - a;
      end if;
      integral := quadStep(
            f,
            a,
            b,
            fa,
            fb,
            is);

    end quadratureLobatto;

--------------

`Modelica.Math.Nonlinear <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear>`_.solveOneNonlinearEquation
-----------------------------------------------------------------------------------------------------------

**Solve f(u) = 0 in a very reliable and efficient way (f(u\_min) and
f(u\_max) must have different signs)**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        solveOneNonlinearEquation(function f(), u_min, u_max);
        solveOneNonlinearEquation(function f(), u_min, u_max, tolerance=100*Modelica.Constants.eps);

Description
^^^^^^^^^^^

This function determines the solution of **one non-linear algebraic
equation** "y=f(u)" in **one unknown** "u" in a reliable way. It is one
of the best numerical algorithms for this purpose. As input, the
nonlinear function f(u) has to be given, as well as an interval u\_min,
u\_max that contains the solution, i.e., "f(u\_min)" and "f(u\_max)"
must have a different sign. The function computes a smaller interval in
which a sign change is present using the relative tolerance "tolerance"
that can be given as 4th input argument.

The interval reduction is performed using inverse quadratic
interpolation (interpolating with a quadratic polynomial through the
last 3 points and computing the zero). If this fails, bisection is used,
which always reduces the interval by a factor of 2. The inverse
quadratic interpolation method has superlinear convergence. This is
roughly the same convergence rate as a globally convergent Newton
method, but without the need to compute derivatives of the non-linear
function. The solver function is a direct mapping of the Algol 60
procedure "zero" to Modelica, from:

     Brent R.P.:
        **Algorithms for Minimization without derivatives**. Prentice
        Hall, 1973, pp. 58-59.
         Download:
        `http://wwwmaths.anu.edu.au/~brent/pd/rpb011i.pdf <http://wwwmaths.anu.edu.au/~brent/pd/rpb011i.pdf>`_
         Errata and new print:
        `http://wwwmaths.anu.edu.au/~brent/pub/pub011.html <http://wwwmaths.anu.edu.au/~brent/pub/pub011.html>`_

Example
^^^^^^^

See the examples in
`Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+------------------------------------------------+
| Type                                                                                                                          | Name        | Default                       | Description                                    |
+===============================================================================================================================+=============+===============================+================================================+
| `partialScalarFunction <Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces.partialScalarFunction>`_   | f           |                               | Function y = f(u); u is computed so that y=0   |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+------------------------------------------------+
| Real                                                                                                                          | u\_min      |                               | Lower bound of search intervall                |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+------------------------------------------------+
| Real                                                                                                                          | u\_max      |                               | Upper bound of search intervall                |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+------------------------------------------------+
| Real                                                                                                                          | tolerance   | 100\*Modelica.Constants.eps   | Relative tolerance of solution u               |
+-------------------------------------------------------------------------------------------------------------------------------+-------------+-------------------------------+------------------------------------------------+

Outputs
~~~~~~~

+--------+--------+----------------------------------------------------+
| Type   | Name   | Description                                        |
+========+========+====================================================+
| Real   | u      | Value of independent variable u so that f(u) = 0   |
+--------+--------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function solveOneNonlinearEquation 
      "Solve f(u) = 0 in a very reliable and efficient way (f(u_min) and f(u_max) must have different signs)"
      import Modelica.Utilities.Streams.error;

      input Modelica.Math.Nonlinear.Interfaces.partialScalarFunction
                                                           f 
        "Function y = f(u); u is computed so that y=0";
      input Real u_min "Lower bound of search intervall";
      input Real u_max "Upper bound of search intervall";
      input Real tolerance=100*Modelica.Constants.eps 
        "Relative tolerance of solution u";
      output Real u "Value of independent variable u so that f(u) = 0";

    protected 
      constant Real eps=Modelica.Constants.eps "machine epsilon";
      Real a=u_min "Current best minimum interval value";
      Real b=u_max "Current best maximum interval value";
      Real c "Intermediate point a <= c <= b";
      Real d;
      Real e "b - a";
      Real m;
      Real s;
      Real p;
      Real q;
      Real r;
      Real tol;
      Real fa "= f(a)";
      Real fb "= f(b)";
      Real fc;
      Boolean found=false;
    algorithm 
      // Check that f(u_min) and f(u_max) have different sign
      fa := f(u_min);
      fb := f(u_max);
      fc := fb;
      if fa > 0.0 and fb > 0.0 or fa < 0.0 and fb < 0.0 then
        error(
          "The arguments u_min and u_max to solveOneNonlinearEquation(..)\n" +
          "do not bracket the root of the single non-linear equation:\n" +
          "  u_min  = " + String(u_min) + "\n" + "  u_max  = " + String(u_max)
           + "\n" + "  fa = f(u_min) = " + String(fa) + "\n" +
          "  fb = f(u_max) = " + String(fb) + "\n" +
          "fa and fb must have opposite sign which is not the case");
      end if;

      // Initialize variables
      c := a;
      fc := fa;
      e := b - a;
      d := e;

      // Search loop
      while not found loop
        if abs(fc) < abs(fb) then
          a := b;
          b := c;
          c := a;
          fa := fb;
          fb := fc;
          fc := fa;
        end if;

        tol := 2*eps*abs(b) + tolerance;
        m := (c - b)/2;

        if abs(m) <= tol or fb == 0.0 then
          // root found (interval is small enough)
          found := true;
          u := b;
        else
          // Determine if a bisection is needed
          if abs(e) < tol or abs(fa) <= abs(fb) then
            e := m;
            d := e;
          else
            s := fb/fa;
            if a == c then
              // linear interpolation
              p := 2*m*s;
              q := 1 - s;
            else
              // inverse quadratic interpolation
              q := fa/fc;
              r := fb/fc;
              p := s*(2*m*q*(q - r) - (b - a)*(r - 1));
              q := (q - 1)*(r - 1)*(s - 1);
            end if;

            if p > 0 then
              q := -q;
            else
              p := -p;
            end if;

            s := e;
            e := d;
            if 2*p < 3*m*q - abs(tol*q) and p < abs(0.5*s*q) then
              // interpolation successful
              d := p/q;
            else
              // use bi-section
              e := m;
              d := e;
            end if;
          end if;

          // Best guess value is defined as "a"
          a := b;
          fa := fb;
          b := b + (if abs(d) > tol then d else if m > 0 then tol else -tol);
          fb := f(b);

          if fb > 0 and fc > 0 or fb < 0 and fc < 0 then
            // initialize variables
            c := a;
            fc := fa;
            e := b - a;
            d := e;
          end if;
        end if;
      end while;

    end solveOneNonlinearEquation;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:48
2010.

.. |Modelica.Math.Nonlinear.Examples| image:: Modelica.Math.Nonlinear.ExamplesS.png
.. |Modelica.Math.Nonlinear.Interfaces| image:: Modelica.Math.Nonlinear.InterfacesS.png
.. |Modelica.Math.Nonlinear.quadratureLobatto| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |Modelica.Math.Nonlinear.solveOneNonlinearEquation| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |image4| image:: Modelica.Math.Nonlinear.ExamplesS.png
.. |image5| image:: Modelica.Math.Nonlinear.InterfacesS.png
.. |image6| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |image7| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
