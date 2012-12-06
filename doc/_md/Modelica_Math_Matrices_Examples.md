% Modelica.Math.Matrices.Examples
% 
% 

[Modelica.Math.Matrices](Modelica_Math_Matrices.html#Modelica.Math.Matrices).Examples
=====================================================================================

**Examples demonstrating the usage of the Math.Matrices functions**

Information
-----------

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image1](Modelica.Math.Matrices.Examples.solveLinearE Demonstrate the
  quationsS.png)                                         solution of
  [solveLinearEquations](Modelica_Math_Matrices_Examples linear equation
  .html#Modelica.Math.Matrices.Examples.solveLinearEquat systems
  ions)                                                  
  ------------------------------------------------------------------------

* * * * *

[Modelica.Math.Matrices.Examples](Modelica_Math_Matrices_Examples.html#Modelica.Math.Matrices.Examples).solveLinearEquations
============================================================================================================================

**Demonstrate the solution of linear equation systems**

Information
-----------

::

With simple examples this function demonstrates how to solve regular
linear equation systems with Matrices.solve and Matrices.solve2, and how
to solve singular linear equation systems with Matrices.leastSquares and
Matrices.leastSquares2.

::

Modelica definition
-------------------

    function solveLinearEquations 
      "Demonstrate the solution of linear equation systems"
      import Modelica.Utilities.Streams.print;
      // solve and solve2
    protected 
      Real A0[0,0];
      Real A1[2,2] = [1,2;3,4];
      Real x1_ref[2] = {-2,3};
      Real b1[2] = A1*x1_ref;
      Real x1[2];
      Real B2[2,3] = [b1, 2*b1, -3*b1];
      Real X2[2,3];

      // leastSquares and leastSquares2
      Integer rank;
      Real a[3] = {2,3,-1};
      Real A3[3,3] = transpose( [{2,3,-4}, a, 3*a]);
      Real x3_ref[3] = {-2,3,5};
      Real b3[3] = A3*x3_ref;
      Real x3[3];
      Real B3[3,2] = [b3, -3*b3];
      Real X3[3,2];

    algorithm 
      print("\nDemonstrate how to solve linear equation systems:\n");

      // Solve regular linear equation with a right hand side vector
      x1 :=Math.Matrices.solve(A1, b1);
      print("diff1 = " + String(Vectors.norm(x1 - x1_ref)));

      // Solve regular linear equation with a right hand side matrix
      X2 :=Math.Matrices.solve2(A1, B2);
      print("diff2 = " + String(Matrices.norm(X2 - [x1_ref,2*x1_ref, -3*x1_ref])));

      // Solve singular linear equation with a right hand side vector
      (x3, rank) :=Math.Matrices.leastSquares(A3, b3);
      print("diff3 = " + String(Vectors.norm(A3*x3 - b3)) +
            ", n = " + String(size(A3,1)) + ", rank = " + String(rank));

      // Solve singular linear equation with a right hand side matrix
      (X3, rank) :=Math.Matrices.leastSquares2(A3, B3);
      print("diff4 = " + String(Matrices.norm(A3*X3 - B3)) +
            ", n = " + String(size(A3,1)) + ", rank = " + String(rank));

    end solveLinearEquations;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:48 2010.
