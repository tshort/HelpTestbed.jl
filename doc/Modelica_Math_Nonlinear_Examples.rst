================================
Modelica.Math.Nonlinear.Examples
================================

`Modelica.Math.Nonlinear <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear>`_.Examples
------------------------------------------------------------------------------------------

**Examples demonstrating the usage of the functions in package
Nonlinear**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| Name                                                                                                                                                                                        | Description                                                             |
+=============================================================================================================================================================================================+=========================================================================+
| |image6| `quadratureLobatto1 <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples.quadratureLobatto1>`_                                                                  | Integrate integral with fixed inputs                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image7| `quadratureLobatto2 <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples.quadratureLobatto2>`_                                                                  | Integrate integral with user dependent inputs                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image8| `solveNonlinearEquations1 <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples.solveNonlinearEquations1>`_                                                      | Solve nonlinear equations with fixed inputs                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image9| `solveNonlinearEquations2 <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples.solveNonlinearEquations2>`_                                                      | Solve nonlinear equations with user dependent inputs                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image10| `quadratureLobatto3 <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples.quadratureLobatto3>`_                                                                 | Integrate function in a model                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+
| |image11| `UtilityFunctions <Modelica_Math_Nonlinear_Examples_UtilityFunctions.html#Modelica.Math.Nonlinear.Examples.UtilityFunctions>`_                                                    | Utility functions that are used as function arguments to the examples   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------+

--------------

`Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.quadratureLobatto1
-------------------------------------------------------------------------------------------------------------------------------

**Integrate integral with fixed inputs**

Information
~~~~~~~~~~~

::

This examples integrates the following integrands with function
`quadratureLobatto <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear.quadratureLobatto>`_
and compares the result with an analytical solution. The examples also
demonstrate how additional input arguments to the integrand function can
be passed as additional arguments. The following integrals are computed:

-  integral(sin(x)\*dx) from x=0 to x=1
-  integral(sin(5\*x)\*dx) from x=0 to x=13
-  elliptic integral from x=0 to pi/2

::

Inputs
~~~~~~

+--------+-------------+-----------+--------------------------------------+
| Type   | Name        | Default   | Description                          |
+========+=============+===========+======================================+
| Real   | tolerance   | 1e-5      | Error tolerance of integral values   |
+--------+-------------+-----------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function quadratureLobatto1 "Integrate integral with fixed inputs"
      input Real tolerance=1e-5 "Error tolerance of integral values";

      import Modelica.Utilities.Streams.print;

    protected 
      Real I_numerical[3] "Numerical integral values";
      Real I_analytical[size(I_numerical, 1)] "Analytical integral values";
      Real I_err[size(I_numerical, 1)] 
        "Absolute errors between numerical and analytical integral values";

    algorithm 
      I_numerical[1] := Modelica.Math.Nonlinear.quadratureLobatto(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun4(),
          0,
          1,
          tolerance);
      I_analytical[1] := -cos(1) + cos(0);

      I_numerical[2] := Modelica.Math.Nonlinear.quadratureLobatto(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun5(w=5),
          0,
          13,
          tolerance);
      I_analytical[2] := -cos(5*13)/5 + cos(5*0)/5;

      I_numerical[3] := Modelica.Math.Nonlinear.quadratureLobatto(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun6(k=1/
          sqrt(2)),
          0,
          Modelica.Constants.pi/2,
          tolerance);
      I_analytical[3] := 1.8540746773013719184338503;

      I_err := abs(I_numerical - I_analytical);

      print("\n... Results of Modelica.Math.Nonlinear.Examples.quadratureLobatto1:");
      print("Function 1 ( integral(sin(x)*dx) from x=0 to x=1): ");
      print("Analytical integral value = " + String(I_analytical[1], format=
        "2.16f"));
      print("Numerical integral value  = " + String(I_numerical[1], format=
        "2.16f"));
      print("Absolute difference       = " + String(I_err[1], format="2.0e"));

      print("");
      print("Function 2 (integral(sin(5*x)*dx) from x=0 to x=13): ");
      print("Analytical integral value = " + String(I_analytical[2], format=
        "2.16f"));
      print("Numerical integral value  = " + String(I_numerical[2], format=
        "2.16f"));
      print("Absolute difference       = " + String(I_err[2], format="2.0e"));

      print("");
      print("Function 3 (Elliptic integral from x=0 to pi/2): ");
      print("Analytical integral value = " + String(I_analytical[3], format=
        "2.16f"));
      print("Numerical integral value  = " + String(I_numerical[3], format=
        "2.16f"));
      print("Absolute difference       = " + String(I_err[3], format="2.0e"));

    end quadratureLobatto1;

--------------

`Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.quadratureLobatto2
-------------------------------------------------------------------------------------------------------------------------------

**Integrate integral with user dependent inputs**

Information
~~~~~~~~~~~

::

This examples solves the following integrands with function
`quadratureLobatto <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear.quadratureLobatto>`_.
The user can set the parameters, like "w" or "k", and can experiment
with different integration intervals. The following integrals are
computed:

-  integral(sin(x)\*dx)
-  integral(sin(w\*x)\*dx)
-  elliptic integral

::

Inputs
~~~~~~

+---------------------+-------------+---------------------------+-------------------------------------+
| Type                | Name        | Default                   | Description                         |
+=====================+=============+===========================+=====================================+
| General             |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | Tolerance   | 1e-5                      | Error tolerance of integral value   |
+---------------------+-------------+---------------------------+-------------------------------------+
| Sine                |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | a1          | 0                         | Lower limit                         |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | b1          | 1                         | Upper limit                         |
+---------------------+-------------+---------------------------+-------------------------------------+
| Sine w              |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | a2          | 0                         | Lower limit                         |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | b2          | 13                        | Upper limit                         |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | w           | 5                         | Angular velocity                    |
+---------------------+-------------+---------------------------+-------------------------------------+
| Elliptic integral   |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | a3          | 0                         | Lower limit                         |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | b3          | Modelica.Constants.pi/2   | Upper limit                         |
+---------------------+-------------+---------------------------+-------------------------------------+
| Real                | k           | 1/sqrt(2)                 | Modul                               |
+---------------------+-------------+---------------------------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function quadratureLobatto2 
      "Integrate integral with user dependent inputs"
      input Real Tolerance=1e-5 "Error tolerance of integral value";
      input Real a1=0 "Lower limit";
      input Real b1=1 "Upper limit";

      input Real a2=0 "Lower limit";
      input Real b2=13 "Upper limit";
      input Real w=5 "Angular velocity";

      input Real a3=0 "Lower limit";
      input Real b3=Modelica.Constants.pi/2 "Upper limit";
      input Real k=1/sqrt(2) "Modul";

      import Modelica.Utilities.Streams.print;

    protected 
      Real I[3] "Numerical integral values";

    algorithm 
      I[1] := Modelica.Math.Nonlinear.quadratureLobatto(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun4(),
          a1,
          b1,
          Tolerance);

      I[2] := Modelica.Math.Nonlinear.quadratureLobatto(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun5(w=w),
          a2,
          b2,
          Tolerance);

      I[3] := Modelica.Math.Nonlinear.quadratureLobatto(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun6(k=k),
          a3,
          b3,
          Tolerance);

      print("\n... Results of Modelica.Math.Nonlinear.Examples.quadratureLobatto2:");
      print("Function 1 (integral(sin(x)*dx)): ");
      print("Numerical integral value  = " + String(I[1], format="2.16f"));

      print("");
      print("Function 2 (integral(sin(w*x)*dx)): ");
      print("Numerical integral value  = " + String(I[2], format="2.16f"));

      print("");
      print("Function 3 (Elliptic integral): ");
      print("Numerical integral value  = " + String(I[3], format="2.16f"));

    end quadratureLobatto2;

--------------

`Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.solveNonlinearEquations1
-------------------------------------------------------------------------------------------------------------------------------------

**Solve nonlinear equations with fixed inputs**

Information
~~~~~~~~~~~

::

This examples solves the following nonlinear equations with function
`solveOneNonlinearEquation <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear.solveOneNonlinearEquation>`_
and compares the result with the available analytical solution. The
examples also demonstrate how additional input arguments to the
nonlinear equation function can be passes as additional arguments. The
following nonlinear equations are solved:

-  0 = u^2 - 1
-  0 = 3\*u - sin(3\*u) - 1
-  0 = 5 + log(u) - u

::

Inputs
~~~~~~

+--------+-------------+-------------------------------+------------------------------------+
| Type   | Name        | Default                       | Description                        |
+========+=============+===============================+====================================+
| Real   | tolerance   | 100\*Modelica.Constants.eps   | Relative tolerance of solution u   |
+--------+-------------+-------------------------------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function solveNonlinearEquations1 
      "Solve nonlinear equations with fixed inputs"
      input Real tolerance=100*Modelica.Constants.eps 
        "Relative tolerance of solution u";

    protected 
      Real u_numerical[3];
      Real u_analytical[3];
      Real u_err[3];

      import Modelica.Utilities.Streams.print;

    algorithm 
      u_numerical[1] := Modelica.Math.Nonlinear.solveOneNonlinearEquation(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1(),
          -0.5,
          10,
          tolerance);
      u_analytical[1] := 1.0;

      u_numerical[2] := Modelica.Math.Nonlinear.solveOneNonlinearEquation(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun2(w=3),
          0,
          5,
          tolerance);
      u_analytical[2] := 0.6448544035840080891877538;

      u_numerical[3] := Modelica.Math.Nonlinear.solveOneNonlinearEquation(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun3(p={5,1},
          m=1),
          1,
          8,
          tolerance);
      u_analytical[3] := 6.9368474072202187221643182;

      u_err := abs(u_numerical - u_analytical);

      print("\n... Results of Modelica.Math.Nonlinear.Examples.solveNonlinearEquations1:");
      print("Solve 3 nonlinear equations with relative tolerance = " + String(tolerance) +"\n");
      print("Function 1 (u^2 - 1 = 0): ");
      print("Analytical zero     = " + String(u_analytical[1], format="2.16f"));
      print("Numerical zero      = " + String(u_numerical[1], format="2.16f"));
      print("Absolute difference = " + String(u_err[1], format="2.0e"));

      print("");
      print("Function 2 (3*u - sin(3*u) - 1 = 0): ");
      print("Analytical zero     = " + String(u_analytical[2], format="2.16f"));
      print("Numerical zero      = " + String(u_numerical[2], format="2.16f"));
      print("Absolute difference = " + String(u_err[2], format="2.0e"));

      print("");
      print("Function 3 (5 + log(u) - u = 0): ");
      print("Analytical zero     = " + String(u_analytical[3], format="2.16f"));
      print("Numerical zero      = " + String(u_numerical[3], format="2.16f"));
      print("Absolute difference = " + String(u_err[3], format="2.0e"));

    end solveNonlinearEquations1;

--------------

`Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.solveNonlinearEquations2
-------------------------------------------------------------------------------------------------------------------------------------

**Solve nonlinear equations with user dependent inputs**

Information
~~~~~~~~~~~

::

This examples solves the following nonlinear equations with function
`solveOneNonlinearEquation <Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear.solveOneNonlinearEquation>`_.
The user can set the parameters, like "w" or "m", and can experiment
with different start intervals. The following nonlinear equations are
solved:

-  0 = u^2 - 1
-  0 = 3\*u - sin(w\*u) - 1
-  0 = p[1] + log(p[2]\*u) - m\*u

::

Inputs
~~~~~~

+------------------------------+-------------+-------------------------------+------------------------------------+
| Type                         | Name        | Default                       | Description                        |
+==============================+=============+===============================+====================================+
| General                      |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | tolerance   | 100\*Modelica.Constants.eps   | Relative tolerance of solution u   |
+------------------------------+-------------+-------------------------------+------------------------------------+
| u^2-1                        |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | u\_min1     | -0.5                          | Lower limit                        |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | u\_max1     | 10                            | Upper limit                        |
+------------------------------+-------------+-------------------------------+------------------------------------+
| 3\*u - sin(w\*u) - 1         |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | u\_min2     | 0                             | Lower limit                        |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | u\_max2     | 5                             | Upper limit                        |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | w           | 3                             | Angular velocity                   |
+------------------------------+-------------+-------------------------------+------------------------------------+
| p[1] + log(p[2]\*u) - m\*u   |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | u\_min3     | 1                             | Lower limit                        |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | u\_max3     | 8                             | Upper limit                        |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | p[2]        | {5,1}                         | Parameter vector                   |
+------------------------------+-------------+-------------------------------+------------------------------------+
| Real                         | m           | 1                             | Parameter                          |
+------------------------------+-------------+-------------------------------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function solveNonlinearEquations2 
      "Solve nonlinear equations with user dependent inputs"
        input Real tolerance=100*Modelica.Constants.eps 
        "Relative tolerance of solution u";
      input Real u_min1=-0.5 "Lower limit";
      input Real u_max1=10 "Upper limit";
      input Real u_min2=0 "Lower limit";
      input Real u_max2=5 "Upper limit";
      input Real w=3 "Angular velocity ";
      input Real u_min3=1 "Lower limit";
      input Real u_max3=8 "Upper limit";
      input Real p[2]={5,1} "Parameter vector";
      input Real m=1 "Parameter";

    protected 
      Real u[3];

      import Modelica.Utilities.Streams.print;

    algorithm 
      u[1] := Modelica.Math.Nonlinear.solveOneNonlinearEquation(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun1(),
          u_min1,
          u_max1,
          tolerance);

      u[2] := Modelica.Math.Nonlinear.solveOneNonlinearEquation(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun2(w=w),
          u_min2,
          u_max2,
          tolerance);

      u[3] := Modelica.Math.Nonlinear.solveOneNonlinearEquation(
          function Modelica.Math.Nonlinear.Examples.UtilityFunctions.fun3(p=p, m=
          m),
          u_min3,
          u_max3,
          tolerance);

      print("\n... Results of Modelica.Math.Nonlinear.Examples.solveNonlinearEquations2:");
      print("Solve 3 nonlinear equations with relative tolerance = " + String(tolerance) +"\n");

      print("Function 1 (u^2 - 1): ");
      print("Numerical zero = " + String(u[1], format="2.16f"));

      print("");
      print("Function 2 (3*u - sin(w*u) - 1): ");
      print("Numerical zero = " + String(u[2], format="2.16f"));

      print("");
      print("Function 3 (p[1] + log(p[2]*u) - m*u): ");
      print("Numerical zero = " + String(u[3], format="2.16f"));

    end solveNonlinearEquations2;

--------------

|image12| `Modelica.Math.Nonlinear.Examples <Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples>`_.quadratureLobatto3
-----------------------------------------------------------------------------------------------------------------------------------------

**Integrate function in a model**

Information
~~~~~~~~~~~

::

This example demonstrates how to utilize a function as input argument to
a function in a model.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+--------+--------+-----------+---------------------------------------+
| Type   | Name   | Default   | Description                           |
+========+========+===========+=======================================+
| Real   | A      | 1         | Amplitude of integrand of s           |
+--------+--------+-----------+---------------------------------------+
| Real   | ws     | 2         | Angular frequency of integrand of s   |
+--------+--------+-----------+---------------------------------------+
| Real   | wq     | 3         | Angular frequency of q                |
+--------+--------+-----------+---------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model quadratureLobatto3 "Integrate function in a model"
      extends Modelica.Icons.Example;
      parameter Real A=1 "Amplitude of integrand of s";
      parameter Real ws=2 "Angular frequency of integrand of s";
      parameter Real wq=3 "Angular frequency of q";
      Real q(start=1, fixed=true);
      Real qd(start=0, fixed=true);
      Real x;
      final parameter Real s = Modelica.Math.Nonlinear.quadratureLobatto(
                                  function UtilityFunctions.fun7(A=A, w=ws),
                                  0,1);
    equation 
      qd = der(q);
      der(qd) + wq*q = 0;
      x = s*q;
    end quadratureLobatto3;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:49
2010.

.. |Modelica.Math.Nonlinear.Examples.quadratureLobatto1| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |Modelica.Math.Nonlinear.Examples.quadratureLobatto2| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |Modelica.Math.Nonlinear.Examples.solveNonlinearEquations1| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |Modelica.Math.Nonlinear.Examples.solveNonlinearEquations2| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |Modelica.Math.Nonlinear.Examples.quadratureLobatto3| image:: Modelica.Math.Nonlinear.Examples.quadratureLobatto3S.png
.. |Modelica.Math.Nonlinear.Examples.UtilityFunctions| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctionsS.png
.. |image6| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |image7| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |image8| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |image9| image:: Modelica.Math.Nonlinear.quadratureLobattoS.png
.. |image10| image:: Modelica.Math.Nonlinear.Examples.quadratureLobatto3S.png
.. |image11| image:: Modelica.Math.Nonlinear.Examples.UtilityFunctionsS.png
.. |image12| image:: Modelica.Math.Nonlinear.Examples.quadratureLobatto3I.png
