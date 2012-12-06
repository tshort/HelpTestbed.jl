======================
Modelica.Math.Matrices
======================

`Modelica.Math <Modelica_Math.html#Modelica.Math>`_.Matrices
------------------------------------------------------------

**Library of functions operating on matrices**

Information
~~~~~~~~~~~

::

Library content
^^^^^^^^^^^^^^^

This library provides functions operating on matrices. Below, the
functions are ordered according to categories and a typical call of the
respective function is shown. Most functions are solely an interface to
the external
`LAPACK <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK>`_
library.

Note: A' is a short hand notation of transpose(A):

**Basic Information**

-  `toString <Modelica_Math_Matrices.html#Modelica.Math.Matrices.toString>`_(A)
   - returns the string representation of matrix A.
-  `isEqual <Modelica_Math_Matrices.html#Modelica.Math.Matrices.isEqual>`_(M1,
   M2) - returns true if matrices M1 and M2 have the same size and the
   same elements.

**Linear Equations**

-  `solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_(A,b)
   - returns solution x of the linear equation A\*x=b (where b is a
   vector, and A is a square matrix that must be regular).
-  `solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve2>`_(A,B)
   - returns solution X of the linear equation A\*X=B (where B is a
   matrix, and A is a square matrix that must be regular)
-  `leastSquares <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares>`_(A,b)
   - returns solution x of the linear equation A\*x=b in a least squares
   sense (where b is a vector and A may be non-square and may be rank
   deficient)
-  `leastSquares2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares2>`_(A,B)
   - returns solution X of the linear equation A\*X=B in a least squares
   sense (where B is a matrix and A may be non-square and may be rank
   deficient)
-  `equalityLeastSquares <Modelica_Math_Matrices.html#Modelica.Math.Matrices.equalityLeastSquares>`_(A,a,B,b)
   - returns solution x of a linear equality constrained least squares
   problem: min\|A\*x-a\|^2 subject to B\*x=b
-  (LU,p,info) =
   `LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_(A) -
   returns the LU decomposition with row pivoting of a rectangular
   matrix A.
-  `LU\_solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve>`_(LU,p,b)
   - returns solution x of the linear equation L\*U\*x[p]=b with a b
   vector and an LU decomposition from "LU(..)".
-  `LU\_solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve2>`_(LU,p,B)
   - returns solution X of the linear equation L\*U\*X[p,:]=B with a B
   matrix and an LU decomposition from "LU(..)".

**Matrix Factorizations**

-  (eval,evec) =
   `eigenValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValues>`_(A)
   - returns eigen values "eval" and eigen vectors "evec" for a real,
   nonsymmetric matrix A in a Real representation.
-  `eigenValueMatrix <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValueMatrix>`_(eval)
   - returns real valued block diagonal matrix of the eigenvalues "eval"
   of matrix A.
-  (sigma,U,VT) =
   `singularValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.singularValues>`_(A)
   - returns singular values "sigma" and left and right singular vectors
   U and VT of a rectangular matrix A.
-  (Q,R,p) =
   `QR <Modelica_Math_Matrices.html#Modelica.Math.Matrices.QR>`_(A) -
   returns the QR decomposition with column pivoting of a rectangular
   matrix A such that Q\*R = A[:,p].
-  (H,U) =
   `hessenberg <Modelica_Math_Matrices.html#Modelica.Math.Matrices.hessenberg>`_(A)
   - returns the upper Hessenberg form H and the orthogonal
   transformation matrix U of a square matrix A such that H = U'\*A\*U.
-  `realSchur <Modelica_Math_Matrices.html#Modelica.Math.Matrices.realSchur>`_(A)
   - returns the real Schur form of a square matrix A.
-  `cholesky <Modelica_Math_Matrices.html#Modelica.Math.Matrices.cholesky>`_(A)
   - returns the cholesky factor H of a real symmetric positive definite
   matrix A so that A = H'\*H.
-  (D,Aimproved) =
   `balance <Modelica_Math_Matrices.html#Modelica.Math.Matrices.balance>`_(A)
   - returns an improved form Aimproved of a square matrix A that has a
   smaller condition as A, with Aimproved =
   inv(diagonal(D))\*A\*diagonal(D).

**Matrix Properties**

-  `trace <Modelica_Math_Matrices.html#Modelica.Math.Matrices.trace>`_(A)
   - returns the trace of square matrix A, i.e., the sum of the diagonal
   elements.
-  `det <Modelica_Math_Matrices.html#Modelica.Math.Matrices.det>`_(A) -
   returns the determinant of square matrix A (using LU decomposition;
   try to avoid det(..))
-  `inv <Modelica_Math_Matrices.html#Modelica.Math.Matrices.inv>`_(A) -
   returns the inverse of square matrix A (try to avoid, use instead
   "solve2(..) with B=identity(..))
-  `rank <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rank>`_(A)
   - returns the rank of square matrix A (computed with singular value
   decomposition)
-  `conditionNumber <Modelica_Math_Matrices.html#Modelica.Math.Matrices.conditionNumber>`_(A)
   - returns the condition number norm(A)\*norm(inv(A)) of a square
   matrix A in the range 1..∞.
-  `rcond <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rcond>`_(A)
   - returns the reciprocal condition number 1/conditionNumber(A) of a
   square matrix A in the range 0..1.
-  `norm <Modelica_Math_Matrices.html#Modelica.Math.Matrices.norm>`_(A)
   - returns the 1-, 2-, or infinity-norm of matrix A.
-  `frobeniusNorm <Modelica_Math_Matrices.html#Modelica.Math.Matrices.frobeniusNorm>`_(A)
   - returns the Frobenius norm of matrix A.
-  `nullSpace <Modelica_Math_Matrices.html#Modelica.Math.Matrices.nullSpace>`_(A)
   - returns the null space of matrix A.

**Matrix Exponentials**

-  `exp <Modelica_Math_Matrices.html#Modelica.Math.Matrices.exp>`_(A) -
   returns the exponential e^A of a matrix A by adaptive Taylor series
   expansion with scaling and balancing
-  (phi, gamma) =
   `integralExp <Modelica_Math_Matrices.html#Modelica.Math.Matrices.integralExp>`_(A,B)
   - returns the exponential phi=e^A and the integral
   gamma=integral(exp(A\*t)\*dt)\*B as needed for a discretized system
   with zero order hold.
-  (phi, gamma, gamma1) =
   `integralExpT <Modelica_Math_Matrices.html#Modelica.Math.Matrices.integralExpT>`_(A,B)
   - returns the exponential phi=e^A, the integral
   gamma=integral(exp(A\*t)\*dt)\*B, and the time-weighted integral
   gamma1 = integral((T-t)\*exp(A\*t)\*dt)\*B as needed for a
   discretized system with first order hold.

**Matrix Equations**

-  `continuousLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousLyapunov>`_(A,C)
   - returns solution X of the continuous-time Lyapunov equation X\*A +
   A'\*X = C
-  `continuousSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousSylvester>`_(A,B,C)
   - returns solution X of the continuous-time Sylvester equation A\*X +
   X\*B = C
-  `continuousRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousRiccati>`_(A,B,R,Q)
   - returns solution X of the continuous-time algebraic Riccat equation
   A'\*X + X\*A - X\*B\*inv(R)\*B'\*X + Q = 0
-  `discreteLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteLyapunov>`_(A,C)
   - returns solution X of the discretes-time Lyapunov equation A'\*X\*A
   + sgn\*X = C
-  `discreteSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteSylvester>`_(A,B,C)
   - returns solution X of the discrete-time Sylvester equation A\*X\*B
   + sgn\*X = C
-  `discreteRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteRiccati>`_(A,B,R,Q)
   - returns solution X of the discrete-time algebraic Riccat equation
   A'\*X\*A - X - A'\*X\*B\*inv(R + B'\*X\*B)\*B'\*X\*A + Q = 0

**Matrix Manipulation**

-  `sort <Modelica_Math_Matrices.html#Modelica.Math.Matrices.sort>`_(M)
   - returns the sorted rows or columns of matrix M in ascending or
   descending order.
-  `flipLeftRight <Modelica_Math_Matrices.html#Modelica.Math.Matrices.flipLeftRight>`_(M)
   - returns matrix M so that the columns of M are flipped in left/right
   direction.
-  `flipUpDown <Modelica_Math_Matrices.html#Modelica.Math.Matrices.flipUpDown>`_(M)
   - returns matrix M so that the rows of M are flipped in up/down
   direction.

See also
^^^^^^^^

`Vectors <Modelica_Math_Vectors.html#Modelica.Math.Vectors>`_

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                              | Description                                                                                                                                 |
+===================================================================================================================================================+=============================================================================================================================================+
| |image42| `Examples <Modelica_Math_Matrices_Examples.html#Modelica.Math.Matrices.Examples>`_                                                      | Examples demonstrating the usage of the Math.Matrices functions                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image43| `toString <Modelica_Math_Matrices.html#Modelica.Math.Matrices.toString>`_                                                               | Convert a matrix into its string representation                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image44| `isEqual <Modelica_Math_Matrices.html#Modelica.Math.Matrices.isEqual>`_                                                                 | Compare whether two Real matrices are identical                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image45| `solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_                                                                     | Solve real system of linear equations A\*x=b with a b vector (Gaussian elemination with partial pivoting)                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image46| `solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve2>`_                                                                   | Solve real system of linear equations A\*X=B with a B matrix (Gaussian elemination with partial pivoting)                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image47| `leastSquares <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares>`_                                                       | Solve linear equation A\*x = b (exactly if possible, or otherwise in a least square sense; A may be non-square and may be rank deficient)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image48| `leastSquares2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares2>`_                                                     | Solve linear equation A\*X = B (exactly if possible, or otherwise in a least square sense; A may be non-square and may be rank deficient)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image49| `equalityLeastSquares <Modelica_Math_Matrices.html#Modelica.Math.Matrices.equalityLeastSquares>`_                                       | Solve a linear equality constrained least squares problem                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image50| `LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_                                                                           | LU decomposition of square or rectangular matrix                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image51| `LU\_solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve>`_                                                              | Solve real system of linear equations P\*L\*U\*x=b with a b vector and an LU decomposition (from LU(..))                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image52| `LU\_solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve2>`_                                                            | Solve real system of linear equations P\*L\*U\*X=B with a B matrix and an LU decomposition (from LU(..))                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image53| `eigenValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValues>`_                                                         | Return eigenvalues and eigenvectors for a real, nonsymmetric matrix in a Real representation                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image54| `eigenValueMatrix <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValueMatrix>`_                                               | Return real valued block diagonal matrix J of eigenvalues of matrix A (A=V\*J\*Vinv)                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image55| `singularValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.singularValues>`_                                                   | Return singular values and left and right singular vectors                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image56| `QR <Modelica_Math_Matrices.html#Modelica.Math.Matrices.QR>`_                                                                           | Return the QR decomposition of a square matrix with optional column pivoting (A(:,p) = Q\*R)                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image57| `hessenberg <Modelica_Math_Matrices.html#Modelica.Math.Matrices.hessenberg>`_                                                           | Return upper Hessenberg form of a matrix                                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image58| `realSchur <Modelica_Math_Matrices.html#Modelica.Math.Matrices.realSchur>`_                                                             | Return the real Schur form (rsf) S of a square matrix A, A=QZ\*S\*QZ'                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image59| `cholesky <Modelica_Math_Matrices.html#Modelica.Math.Matrices.cholesky>`_                                                               | Return the Cholesky factorization of a symmetric positive definite matrix                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image60| `balance <Modelica_Math_Matrices.html#Modelica.Math.Matrices.balance>`_                                                                 | Return a balanced form of matrix A to improve the condition of A                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image61| `trace <Modelica_Math_Matrices.html#Modelica.Math.Matrices.trace>`_                                                                     | Return the trace of matrix A, i.e., the sum of the diagonal elements                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image62| `det <Modelica_Math_Matrices.html#Modelica.Math.Matrices.det>`_                                                                         | Return determinant of a matrix (computed by LU decomposition; try to avoid det(..))                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image63| `inv <Modelica_Math_Matrices.html#Modelica.Math.Matrices.inv>`_                                                                         | Return inverse of a matrix (try to avoid inv(..))                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image64| `rank <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rank>`_                                                                       | Return rank of a rectangular matrix (computed with singular values)                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image65| `conditionNumber <Modelica_Math_Matrices.html#Modelica.Math.Matrices.conditionNumber>`_                                                 | Return the condition number norm(A)\*norm(inv(A)) of a matrix A                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image66| `rcond <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rcond>`_                                                                     | Return the reciprocal condition number of a matrix                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image67| `norm <Modelica_Math_Matrices.html#Modelica.Math.Matrices.norm>`_                                                                       | Return the p-norm of a matrix                                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image68| `frobeniusNorm <Modelica_Math_Matrices.html#Modelica.Math.Matrices.frobeniusNorm>`_                                                     | Return the Frobenius norm of a matrix                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image69| `nullSpace <Modelica_Math_Matrices.html#Modelica.Math.Matrices.nullSpace>`_                                                             | Return the orthonormal nullspace of a matrix                                                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image70| `exp <Modelica_Math_Matrices.html#Modelica.Math.Matrices.exp>`_                                                                         | Return the exponential of a matrix by adaptive Taylor series expansion with scaling and balancing                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image71| `integralExp <Modelica_Math_Matrices.html#Modelica.Math.Matrices.integralExp>`_                                                         | Return the exponential and the integral of the exponential of a matrix                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image72| `integralExpT <Modelica_Math_Matrices.html#Modelica.Math.Matrices.integralExpT>`_                                                       | Return the exponential, the integral of the exponential, and time-weighted integral of the exponential of a matrix                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image73| `continuousLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousLyapunov>`_                                           | Return solution X of the continuous-time Lyapunov equation X\*A + A'\*X = C                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image74| `continuousSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousSylvester>`_                                         | Return solution X of the continuous-time Sylvester equation A\*X + X\*B = C                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image75| `continuousRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousRiccati>`_                                             | Return solution X of the continuous-time algebraic Riccati equation A'\*X + X\*A - X\*B\*inv(R)\*B'\*X + Q = 0 (care)                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image76| `discreteLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteLyapunov>`_                                               | Return solution X of the discrete-time Lyapunov equation A'\*X\*A + sgn\*X = C                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image77| `discreteSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteSylvester>`_                                             | Return solution of the discrete-time Sylvester equation A\*X\*B + sgn\*X = C                                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image78| `discreteRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteRiccati>`_                                                 | Return solution of discrete-time algebraic Riccati equation A'\*X\*A - X - A'\*X\*B\*inv(R + B'\*X\*B)\*B'\*X\*A + Q = 0 (dare)             |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image79| `sort <Modelica_Math_Matrices.html#Modelica.Math.Matrices.sort>`_                                                                       | Sort the rows or columns of a matrix in ascending or descending order                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image80| `flipLeftRight <Modelica_Math_Matrices.html#Modelica.Math.Matrices.flipLeftRight>`_                                                     | Flip the columns of a matrix in left/right direction                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image81| `flipUpDown <Modelica_Math_Matrices.html#Modelica.Math.Matrices.flipUpDown>`_                                                           | Flip the rows of a matrix in up/down direction                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image82| `LAPACK <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK>`_                                                            | Interface to LAPACK library (should usually not directly be used but only indirectly via Modelica.Math.Matrices)                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| |image83| `Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_                                                   | Utility functions that should not be directly utilized by the user                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.toString
---------------------------------------------------------------------------------------

**Convert a matrix into its string representation**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.toString(A);
        Matrices.toString(A, name="", significantDigits=6);

Description
^^^^^^^^^^^

The function call "``Matrices.toString(A)``" returns the string
representation of matrix **A**. With the optional arguments "name" and
"significantDigits", a name and the number of the digits are defined.
The default values of name and significantDigits are "" and 6
respectively. If name=="" then the prefix "<name> =" is leaved out.

Example
^^^^^^^

    ::

          A = [2.12, -4.34; -2.56, -1.67];

          toString(A);
          // = "
          //      2.12   -4.34
          //     -2.56   -1.67";

          toString(A,"A",1);
          // = "A =
          //         2     -4
          //        -3     -2"

See also
^^^^^^^^

`Vectors.toString <Modelica_Math_Vectors.html#Modelica.Math.Vectors.toString>`_

::

Inputs
~~~~~~

+-----------+---------------------+-----------+-----------------------------------------------+
| Type      | Name                | Default   | Description                                   |
+===========+=====================+===========+===============================================+
| Real      | M[:, :]             |           | Real matrix                                   |
+-----------+---------------------+-----------+-----------------------------------------------+
| String    | name                | ""        | Independent variable name used for printing   |
+-----------+---------------------+-----------+-----------------------------------------------+
| Integer   | significantDigits   | 6         | Number of significant digits that are shown   |
+-----------+---------------------+-----------+-----------------------------------------------+

Outputs
~~~~~~~

+----------+--------+---------------------------------+
| Type     | Name   | Description                     |
+==========+========+=================================+
| String   | s      | String expression of matrix M   |
+----------+--------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function toString "Convert a matrix into its string representation "
      import Modelica.Utilities.Strings;

      input Real M[:,:] "Real matrix";
      input String name="" "Independent variable name used for printing";
      input Integer significantDigits=6 
        "Number of significant digits that are shown";
      output String s="" "String expression of matrix M";
    protected 
      String blanks=Strings.repeat(significantDigits);
      String space=Strings.repeat(8);
      String space2=Strings.repeat(3);
      Integer r=size(M, 1);
      Integer c=size(M, 2);

    algorithm 
      if r == 0 or c == 0 then
        s := name + " = []";
      else
        s := if name == "" then "\n" else "\n" + name + " = \n";
        for i in 1:r loop
          s := s + space;
          for j in 1:c loop
            if M[i, j] >= 0 then
              s := s + " ";
            end if;
            s := s + String(M[i, j], significantDigits=significantDigits) +
              Strings.repeat(significantDigits + 8 - Strings.length(String(abs(M[i,
              j]))));
          end for;
          s := s + "\n";
        end for;

      end if;

    end toString;

--------------

|image84| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.isEqual
------------------------------------------------------------------------------------------------

**Compare whether two Real matrices are identical**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.isEqual(M1, M2);
        Matrices.isEqual(M1, M2, eps=0);

Description
^^^^^^^^^^^

The function call "``Matrices.isEqual(M1, M2)``" returns **true**, if
the two Real matrices M1 and M2 have the same dimensions and the same
elements. Otherwise the function returns **false**. Two elements e1 and
e2 of the two matrices are checked on equality by the test "abs(e1-e2) ≤
eps", where "eps" can be provided as third argument of the function.
Default is "eps = 0".

Example
^^^^^^^

    ::

          Real A1[2,2] = [1,2; 3,4];
          Real A2[3,2] = [1,2; 3,4; 5,6];
          Real A3[2,2] = [1,2, 3,4.0001];
          Boolean result;
        algorithm
          result := Matrices.isEqual(M1,M2);     // = false
          result := Matrices.isEqual(M1,M3);     // = false
          result := Matrices.isEqual(M1,M1);     // = true
          result := Matrices.isEqual(M1,M3,0.1); // = true

See also
^^^^^^^^

`Vectors.isEqual <Modelica_Math_Vectors.html#Modelica.Math.Vectors.isEqual>`_,
`Strings.isEqual <Modelica_Utilities_Strings.html#Modelica.Utilities.Strings.isEqual>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+------------+-----------+---------------------------------------------------------------------------------+
| Type   | Name       | Default   | Description                                                                     |
+========+============+===========+=================================================================================+
| Real   | M1[:, :]   |           | First matrix                                                                    |
+--------+------------+-----------+---------------------------------------------------------------------------------+
| Real   | M2[:, :]   |           | Second matrix (may have different size as M1                                    |
+--------+------------+-----------+---------------------------------------------------------------------------------+
| Real   | eps        | 0         | Two elements e1 and e2 of the two matrices are identical if abs(e1-e2) <= eps   |
+--------+------------+-----------+---------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------+----------+----------------------------------------------------------------+
| Type      | Name     | Description                                                    |
+===========+==========+================================================================+
| Boolean   | result   | = true, if matrices have the same size and the same elements   |
+-----------+----------+----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function isEqual "Compare whether two Real matrices are identical"
      extends Modelica.Icons.Function;
      input Real M1[:, :] "First matrix";
      input Real M2[:, :] "Second matrix (may have different size as M1";
      input Real eps(min=0) = 0 
        "Two elements e1 and e2 of the two matrices are identical if abs(e1-e2) <= eps";
      output Boolean result 
        "= true, if matrices have the same size and the same elements";

    protected 
      Integer nrow=size(M1, 1) "Number of rows of matrix M1";
      Integer ncol=size(M1, 2) "Number of columns of matrix M1";
      Integer i=1;
      Integer j;
    algorithm 
      result := false;
      if size(M2, 1) == nrow and size(M2, 2) == ncol then
        result := true;
        while i <= nrow loop
          j := 1;
          while j <= ncol loop
            if abs(M1[i, j] - M2[i, j]) > eps then
              result := false;
              i := nrow;
              j := ncol;
            end if;
            j := j + 1;
          end while;
          i := i + 1;
        end while;
      end if;

    end isEqual;

--------------

|image85| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.solve
----------------------------------------------------------------------------------------------

**Solve real system of linear equations A\*x=b with a b vector (Gaussian
elemination with partial pivoting)**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.solve(A,b);

Description
^^^^^^^^^^^

This function call returns the solution **x** of the linear system of
equations

    **A**\***x** = **b**

If a unique solution **x** does not exist (since **A** is singular), an
assertion is triggered. If this is not desired, use instead
`Matrices.leastSquares <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares>`_
and inquire the singularity of the solution with the return argument
rank (a unique solution is computed if rank = size(A,1)).

Note, the solution is computed with the LAPACK function "dgesv", i.e.,
by Gaussian elemination with partial pivoting.

Example
^^^^^^^

    ::

          Real A[3,3] = [1,2,3;
                         3,4,5;
                         2,1,4];
          Real b[3] = {10,22,12};
          Real x[3];
        algorithm
          x := Matrices.solve(A,b);  // x = {3,2,1}

See also
^^^^^^^^

`Matrices.LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_,
`Matrices.LU\_solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve>`_,
`Matrices.leastSquares <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares>`_.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+--------------------+-----------+------------------------+
| Type   | Name               | Default   | Description            |
+========+====================+===========+========================+
| Real   | A[:, size(A, 1)]   |           | Matrix A of A\*x = b   |
+--------+--------------------+-----------+------------------------+
| Real   | b[size(A, 1)]      |           | Vector b of A\*x = b   |
+--------+--------------------+-----------+------------------------+

Outputs
~~~~~~~

+--------+-----------------+-------------------------------+
| Type   | Name            | Description                   |
+========+=================+===============================+
| Real   | x[size(b, 1)]   | Vector x such that A\*x = b   |
+--------+-----------------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function solve 
      "Solve real system of linear equations A*x=b with a b vector (Gaussian elemination with partial pivoting)"

      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)] "Matrix A of A*x = b";
      input Real b[size(A, 1)] "Vector b of A*x = b";
      output Real x[size(b, 1)] "Vector x such that A*x = b";

    protected 
      Integer info;
    algorithm 
      (x,info) := LAPACK.dgesv_vec(A, b);
      assert(info == 0, "Solving a linear system of equations with function
    \"Matrices.solve\" is not possible, because the system has either
    no or infinitely many solutions (A is singular).");
    end solve;

--------------

|image86| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.solve2
-----------------------------------------------------------------------------------------------

**Solve real system of linear equations A\*X=B with a B matrix (Gaussian
elemination with partial pivoting)**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.solve2(A,b);

Description
^^^^^^^^^^^

This function call returns the solution **X** of the linear system of
equations

    **A**\***X** = **B**

If a unique solution **X** does not exist (since **A** is singular), an
assertion is triggered. If this is not desired, use instead
`Matrices.leastSquares2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares2>`_
and inquire the singularity of the solution with the return argument
rank (a unique solution is computed if rank = size(A,1)).

Note, the solution is computed with the LAPACK function "dgesv", i.e.,
by Gaussian elemination with partial pivoting.

Example
^^^^^^^

    ::

          Real A[3,3] = [1,2,3;
                         3,4,5;
                         2,1,4];
          Real B[3,2] = [10, 20;
                         22, 44;
                         12, 24];
          Real X[3,2];
        algorithm
          (LU, pivots) := Matrices.LU(A);
          X := Matrices.solve2(A, B1);  /* X = [3, 6;
                                                2, 4;
                                                1, 2] */

See also
^^^^^^^^

`Matrices.LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_,
`Matrices.LU\_solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve2>`_,
`Matrices.leastSquares2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares2>`_.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+--------------------+-----------+------------------------+
| Type   | Name               | Default   | Description            |
+========+====================+===========+========================+
| Real   | A[:, size(A, 1)]   |           | Matrix A of A\*X = B   |
+--------+--------------------+-----------+------------------------+
| Real   | B[size(A, 1), :]   |           | Matrix B of A\*X = B   |
+--------+--------------------+-----------+------------------------+

Outputs
~~~~~~~

+--------+-----------------------------+-------------------------------+
| Type   | Name                        | Description                   |
+========+=============================+===============================+
| Real   | X[size(B, 1), size(B, 2)]   | Matrix X such that A\*X = B   |
+--------+-----------------------------+-------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function solve2 
      "Solve real system of linear equations A*X=B with a B matrix (Gaussian elemination with partial pivoting)"

      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)] "Matrix A of A*X = B";
      input Real B[size(A, 1),:] "Matrix B of A*X = B";
      output Real X[size(B, 1), size(B,2)] "Matrix X such that A*X = B";

    protected 
      Integer info;
    algorithm 
      (X,info) := LAPACK.dgesv(A, B);
      assert(info == 0, "Solving a linear system of equations with function
    \"Matrices.solve2\" is not possible, because the system has either
    no or infinitely many solutions (A is singular).");
    end solve2;

--------------

|image87| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.leastSquares
-----------------------------------------------------------------------------------------------------

**Solve linear equation A\*x = b (exactly if possible, or otherwise in a
least square sense; A may be non-square and may be rank deficient)**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        x = Matrices.leastSquares(A,b);

Description
^^^^^^^^^^^

Returns a solution of equation A\*x = b in a least square sense (A may
be rank deficient):

::

      minimize | A*x - b |

Several different cases can be distinguished (note, **rank** is an
output argument of this function):

**size(A,1) = size(A,2)**

A solution is returned for a regular, as well as a singular matrix A:

-  **rank** = size(A,1):
    A is **regular** and the returned solution x fulfills the equation
   A\*x = b uniquely.
-  **rank** < size(A,1):
    A is **singular** and no unique solution for equation A\*x = b
   exists.

   -  If an infinite number of solutions exists, the one is selected
      that fulfills the equation and at the same time has the minimum
      norm \|x\| for all solution vectors that fulfill the equation.
   -  If no solution exists, x is selected such that \|A\*x - b\| is as
      small as possible (but A\*x - b is not zero).

**size(A,1) > size(A,2):**

The equation A\*x = b has no unique solution. The solution x is selected
such that \|A\*x - b\| is as small as possible. If rank = size(A,2),
this minimum norm solution is unique. If rank < size(A,2), there are an
infinite number of solutions leading to the same minimum value of \|A\*x
- b\|. From these infinite number of solutions, the one with the minimum
norm \|x\| is selected. This gives a unique solution that minimizes both
\|A\*x - b\| and \|x\|.

**size(A,1) < size(A,2):**

-  **rank** = size(A,1):
    There are an infinite number of solutions that fulfill the equation
   A\*x = b. From this infinite number, the unique solution is selected
   that minimizes \|x\|.
-  **rank** < size(A,1):
    There is either no solution of equation A\*x = b, or there are again
   an infinite number of solutions. The unique solution x is returned
   that minimizes both \|A\*x - b\| and \|x\|.

Note, the solution is computed with the LAPACK function "dgelsx", i.e.,
QR or LQ factorization of A with column pivoting.

Algorithmic details
^^^^^^^^^^^^^^^^^^^

The function first computes a QR factorization with column pivoting:

::

          A * P = Q * [ R11 R12 ]
                      [  0  R22 ]

with R11 defined as the largest leading submatrix whose estimated
condition number is less than 1/rcond. The order of R11, **rank**, is
the effective rank of A.

Then, R22 is considered to be negligible, and R12 is annihilated by
orthogonal transformations from the right, arriving at the complete
orthogonal factorization:

::

         A * P = Q * [ T11 0 ] * Z
                     [  0  0 ]

The minimum-norm solution is then

::

         x = P * Z' [ inv(T11)*Q1'*b ]
                    [        0       ]

where Q1 consists of the first "rank" columns of Q.

See also
^^^^^^^^

`Matrices.leastSquares2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares2>`_
(same as leastSquares, but with a right hand side matrix),

`Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_
(for square, regular matrices A)

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+-----------------+-------------------------------+---------------------------------------------------------+
| Type   | Name            | Default                       | Description                                             |
+========+=================+===============================+=========================================================+
| Real   | A[:, :]         |                               | Matrix A                                                |
+--------+-----------------+-------------------------------+---------------------------------------------------------+
| Real   | b[size(A, 1)]   |                               | Vector b                                                |
+--------+-----------------+-------------------------------+---------------------------------------------------------+
| Real   | rcond           | 100\*Modelica.Constants.eps   | Reciprocal condition number to estimate the rank of A   |
+--------+-----------------+-------------------------------+---------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-----------------+-------------------------------------------------------------------------------------------------------------------+
| Type      | Name            | Description                                                                                                       |
+===========+=================+===================================================================================================================+
| Real      | x[size(A, 2)]   | Vector x such that min\|A\*x-b\|^2 if size(A,1) >= size(A,2) or min\|x\|^2 and A\*x=b, if size(A,1) < size(A,2)   |
+-----------+-----------------+-------------------------------------------------------------------------------------------------------------------+
| Integer   | rank            | Rank of A                                                                                                         |
+-----------+-----------------+-------------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function leastSquares 
      "Solve linear equation A*x = b (exactly if possible, or otherwise in a least square sense; A may be non-square and may be rank deficient)"
      extends Modelica.Icons.Function;
      input Real A[:, :] "Matrix A";
      input Real b[size(A, 1)] "Vector b";
      input Real rcond=100*Modelica.Constants.eps 
        "Reciprocal condition number to estimate the rank of A";
      output Real x[size(A, 2)] 
        "Vector x such that min|A*x-b|^2 if size(A,1) >= size(A,2) or min|x|^2 and A*x=b, if size(A,1) < size(A,2)";
      output Integer rank "Rank of A";
    protected 
      Integer info;
      Real xx[max(size(A,1),size(A,2))];
    algorithm 
      if min(size(A)) > 0 then
        (xx,info,rank) := LAPACK.dgelsx_vec(A, b, rcond);
         x := xx[1:size(A,2)];
         assert(info == 0, "Solving an overdetermined or underdetermined linear system\n" +
                           "of equations with function \"Matrices.leastSquares\" failed.");
      else
         x := fill(0.0, size(A, 2));
      end if;
    end leastSquares;

--------------

|image88| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.leastSquares2
------------------------------------------------------------------------------------------------------

**Solve linear equation A\*X = B (exactly if possible, or otherwise in a
least square sense; A may be non-square and may be rank deficient)**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        X = Matrices.leastSquares2(A,B);

Description
^^^^^^^^^^^

Returns a solution of equation A\*X = B in a least square sense (A may
be rank deficient):

::

      minimize | A*X - B |

Several different cases can be distinguished (note, **rank** is an
output argument of this function):

**size(A,1) = size(A,2)**

A solution is returned for a regular, as well as a singular matrix A:

-  **rank** = size(A,1):
    A is **regular** and the returned solution X fulfills the equation
   A\*X = B uniquely.
-  **rank** < size(A,1):
    A is **singular** and no unique solution for equation A\*X = B
   exists.

   -  If an infinite number of solutions exists, the one is selected
      that fulfills the equation and at the same time has the minimum
      norm \|x\| for all solution vectors that fulfill the equation.
   -  If no solution exists, X is selected such that \|A\*X - B\| is as
      small as possible (but A\*X - B is not zero).

**size(A,1) > size(A,2):**

The equation A\*X = B has no unique solution. The solution X is selected
such that \|A\*X - B\| is as small as possible. If rank = size(A,2),
this minimum norm solution is unique. If rank < size(A,2), there are an
infinite number of solutions leading to the same minimum value of \|A\*X
- B\|. From these infinite number of solutions, the one with the minimum
norm \|X\| is selected. This gives a unique solution that minimizes both
\|A\*X - B\| and \|X\|.

**size(A,1) < size(A,2):**

-  **rank** = size(A,1):
    There are an infinite number of solutions that fulfill the equation
   A\*X = B. From this infinite number, the unique solution is selected
   that minimizes \|X\|.
-  **rank** < size(A,1):
    There is either no solution of equation A\*X = B, or there are again
   an infinite number of solutions. The unique solution X is returned
   that minimizes both \|A\*X - B\| and \|X\|.

Note, the solution is computed with the LAPACK function "dgelsx", i.e.,
QR or LQ factorization of A with column pivoting.

Algorithmic details
^^^^^^^^^^^^^^^^^^^

The function first computes a QR factorization with column pivoting:

::

          A * P = Q * [ R11 R12 ]
                      [  0  R22 ]

with R11 defined as the largest leading submatrix whose estimated
condition number is less than 1/rcond. The order of R11, **rank**, is
the effective rank of A.

Then, R22 is considered to be negligible, and R12 is annihilated by
orthogonal transformations from the right, arriving at the complete
orthogonal factorization:

::

         A * P = Q * [ T11 0 ] * Z
                     [  0  0 ]

The minimum-norm solution is then

::

         X = P * Z' [ inv(T11)*Q1'*B ]
                    [        0       ]

where Q1 consists of the first "rank" columns of Q.

See also
^^^^^^^^

`Matrices.leastSquares <Modelica_Math_Matrices.html#Modelica.Math.Matrices.leastSquares>`_
(same as leastSquares2, but with a right hand side vector),

`Matrices.solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve2>`_
(for square, regular matrices A)

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+--------------------+-------------------------------+-----------------------------------------------------+
| Type   | Name               | Default                       | Description                                         |
+========+====================+===============================+=====================================================+
| Real   | A[:, :]            |                               | Matrix A                                            |
+--------+--------------------+-------------------------------+-----------------------------------------------------+
| Real   | B[size(A, 1), :]   |                               | Matrix B                                            |
+--------+--------------------+-------------------------------+-----------------------------------------------------+
| Real   | rcond              | 100\*Modelica.Constants.eps   | Reciprocal condition number to estimate rank of A   |
+--------+--------------------+-------------------------------+-----------------------------------------------------+

Outputs
~~~~~~~

+-----------+-----------------------------+-------------------------------------------------------------------------------------------------------------------+
| Type      | Name                        | Description                                                                                                       |
+===========+=============================+===================================================================================================================+
| Real      | X[size(A, 2), size(B, 2)]   | Matrix X such that min\|A\*X-B\|^2 if size(A,1) >= size(A,2) or min\|X\|^2 and A\*X=B, if size(A,1) < size(A,2)   |
+-----------+-----------------------------+-------------------------------------------------------------------------------------------------------------------+
| Integer   | rank                        | Rank of A                                                                                                         |
+-----------+-----------------------------+-------------------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function leastSquares2 
      "Solve linear equation A*X = B (exactly if possible, or otherwise in a least square sense; A may be non-square and may be rank deficient)"
      extends Modelica.Icons.Function;
      input Real A[:, :] "Matrix A";
      input Real B[size(A, 1),:] "Matrix B";
      input Real rcond=100*Modelica.Constants.eps 
        "Reciprocal condition number to estimate rank of A";
      output Real X[size(A, 2), size(B,2)] 
        "Matrix X such that min|A*X-B|^2 if size(A,1) >= size(A,2) or min|X|^2 and A*X=B, if size(A,1) < size(A,2)";
      output Integer rank "Rank of A";
    protected 
      Integer info;
      Real XX[max(size(A,1),size(A,2)), size(B,2)];
    algorithm 
      (XX,info,rank) := LAPACK.dgelsx(A, B, rcond);
      X := XX[1:size(A,2), :];
      assert(info == 0, "Solving an overdetermined or underdetermined linear system of
    equations with function \"Matrices.leastSquares2\" failed.");
    end leastSquares2;

--------------

|image89| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.equalityLeastSquares
-------------------------------------------------------------------------------------------------------------

**Solve a linear equality constrained least squares problem**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        x = Matrices.equalityLeastSquares(A,a,B,b);

Description
^^^^^^^^^^^

This function returns the solution **x** of the linear
equality-constrained least squares problem:

    min\|**A**\***x** - **a**\|^2 over **x**, subject to **B**\***x** =
    **b**

It is required that the dimensions of A and B fulfill the following
relationship:

    size(B,1) ≤ size(A,2) ≤ size(A,1) + size(B,1)

Note, the solution is computed with the LAPACK function "dgglse" using
the generalized RQ factorization under the assumptions that B has full
row rank (= size(B,1)) and the matrix [A;B] has full column rank (=
size(A,2)). In this case, the problem has a unique solution.

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+--------------------+-----------+---------------------------+
| Type   | Name               | Default   | Description               |
+========+====================+===========+===========================+
| Real   | A[:, :]            |           | Minimize \|A\*x - a\|^2   |
+--------+--------------------+-----------+---------------------------+
| Real   | a[size(A, 1)]      |           |                           |
+--------+--------------------+-----------+---------------------------+
| Real   | B[:, size(A, 2)]   |           | subject to B\*x=b         |
+--------+--------------------+-----------+---------------------------+
| Real   | b[size(B, 1)]      |           |                           |
+--------+--------------------+-----------+---------------------------+

Outputs
~~~~~~~

+--------+-----------------+-------------------+
| Type   | Name            | Description       |
+========+=================+===================+
| Real   | x[size(A, 2)]   | solution vector   |
+--------+-----------------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function equalityLeastSquares 
      "Solve a linear equality constrained least squares problem"
      extends Modelica.Icons.Function;
      input Real A[:,:] "Minimize |A*x - a|^2";
      input Real a[size(A,1)];
      input Real B[:,size(A,2)] "subject to B*x=b";
      input Real b[size(B,1)];
      output Real x[size(A,2)] "solution vector";

    protected 
      Integer info;
    algorithm 
      assert(size(A,2) >= size(B,1) and size(A,2) <= size(A,1) + size(B,1),
             "It is required that size(B,1) <= size(A,2) <= size(A,1) + size(B,1)\n" +
             "This relationship is not fulfilled, since the matrices are declared as:\n" +
             "  A[" + String(size(A,1)) + "," + String(size(A,2)) + "], B[" +
             String(size(B,1)) + "," + String(size(B,2)) + "]\n");

      (x, info) := LAPACK.dgglse_vec(A, a, B, b);

      assert(info == 0, "Solving a linear equality-constrained least squares problem
    with function \"Matrices.equalityLeastSquares\" failed.");
    end equalityLeastSquares;

--------------

|image90| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.LU
-------------------------------------------------------------------------------------------

**LU decomposition of square or rectangular matrix**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        (LU, pivots)       = Matrices.LU(A);
        (LU, pivots, info) = Matrices.LU(A);

Description
^^^^^^^^^^^

This function call returns the LU decomposition of a "Real[m,n]" matrix
A, i.e.,

    **P**\***L**\***U** = **A**

where **P** is a permutation matrix (implicitely defined by vector
``pivots``), **L** is a lower triangular matrix with unit diagonal
elements (lower trapezoidal if m > n), and **U** is an upper triangular
matrix (upper trapezoidal if m < n). Matrices **L** and **U** are stored
in the returned matrix ``LU`` (the diagonal of **L** is not stored).
With the companion function
`Matrices.LU\_solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve>`_,
this decomposition can be used to solve linear systems
(**P**\***L**\***U**)\***x** = **b** with different right hand side
vectors **b**. If a linear system of equations with just one right hand
side vector **b** shall be solved, it is more convenient to just use the
function
`Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_.

The optional third (Integer) output argument has the following meaning:

+-------------+------------------------------------------------------------------------------+
| info = 0:   | successful exit                                                              |
+-------------+------------------------------------------------------------------------------+
| info > 0:   | if info = i, U[i,i] is exactly zero. The factorization has been completed,   |
|             |  but the factor U is exactly singular, and division by zero will occur       |
|             |  if it is used to solve a system of equations.                               |
+-------------+------------------------------------------------------------------------------+

The LU factorization is computed with the LAPACK function "dgetrf",
i.e., by Gaussian elemination using partial pivoting with row
interchanges. Vector "pivots" are the pivot indices, i.e., for 1 ≤ i ≤
min(m,n), row i of matrix A was interchanged with row pivots[i].

Example
^^^^^^^

    ::

          Real A[3,3] = [1,2,3;
                         3,4,5;
                         2,1,4];
          Real b1[3] = {10,22,12};
          Real b2[3] = { 7,13,10};
          Real    LU[3,3];
          Integer pivots[3];
          Real    x1[3];
          Real    x2[3];
        algorithm
          (LU, pivots) := Matrices.LU(A);
          x1 := Matrices.LU_solve(LU, pivots, b1);  // x1 = {3,2,1}
          x2 := Matrices.LU_solve(LU, pivots, b2);  // x2 = {1,0,2}

See also
^^^^^^^^

`Matrices.LU\_solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU_solve>`_,
`Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_,

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+-----------+-----------+--------------------------------+
| Type   | Name      | Default   | Description                    |
+========+===========+===========+================================+
| Real   | A[:, :]   |           | Square or rectangular matrix   |
+--------+-----------+-----------+--------------------------------+

Outputs
~~~~~~~

+-----------+---------------------------------------+-------------------------------------------+
| Type      | Name                                  | Description                               |
+===========+=======================================+===========================================+
| Real      | LU[size(A, 1), size(A, 2)]            | L,U factors (used with LU\_solve(..))     |
+-----------+---------------------------------------+-------------------------------------------+
| Integer   | pivots[min(size(A, 1), size(A, 2))]   | pivot indices (used with LU\_solve(..))   |
+-----------+---------------------------------------+-------------------------------------------+
| Integer   | info                                  | Information                               |
+-----------+---------------------------------------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function LU "LU decomposition of square or rectangular matrix"
      extends Modelica.Icons.Function;
      input Real A[:, :] "Square or rectangular matrix";
      output Real LU[size(A, 1), size(A,2)] = A 
        "L,U factors (used with LU_solve(..))";
      output Integer pivots[min(size(A, 1), size(A,2))] 
        "pivot indices (used with LU_solve(..))";
      output Integer info "Information";
    protected 
      Integer lda=max(1,size(A, 1));
      external "FORTRAN 77" dgetrf(size(A, 1), size(A, 2), LU, lda, pivots, info);

    end LU;

--------------

|image91| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.LU\_solve
--------------------------------------------------------------------------------------------------

**Solve real system of linear equations P\*L\*U\*x=b with a b vector and
an LU decomposition (from LU(..))**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.LU_solve(LU, pivots, b);

Description
^^^^^^^^^^^

This function call returns the solution **x** of the linear systems of
equations

    **P**\***L**\***U**\***x** = **b**;

where **P** is a permutation matrix (implicitely defined by vector
``pivots``), **L** is a lower triangular matrix with unit diagonal
elements (lower trapezoidal if m > n), and **U** is an upper triangular
matrix (upper trapezoidal if m < n). The matrices of this decomposition
are computed with function
`Matrices.LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_
that returns arguments ``LU`` and ``pivots`` used as input arguments of
``Matrices.LU_solve``. With ``Matrices.LU`` and ``Matrices.LU_solve`` it
is possible to efficiently solve linear systems with different right
hand side vectors. If a linear system of equations with just one right
hand side vector shall be solved, it is more convenient to just use the
function
`Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_.

If a unique solution **x** does not exist (since the LU decomposition is
singular), an exception is raised.

The LU factorization is computed with the LAPACK function "dgetrf",
i.e., by Gaussian elemination using partial pivoting with row
interchanges. Vector "pivots" are the pivot indices, i.e., for 1 ≤ i ≤
min(m,n), row i of matrix A was interchanged with row pivots[i].

Example
^^^^^^^

    ::

          Real A[3,3] = [1,2,3;
                         3,4,5;
                         2,1,4];
          Real b1[3] = {10,22,12};
          Real b2[3] = { 7,13,10};
          Real    LU[3,3];
          Integer pivots[3];
          Real    x1[3];
          Real    x2[3];
        algorithm
          (LU, pivots) := Matrices.LU(A);
          x1 := Matrices.LU_solve(LU, pivots, b1);  // x1 = {3,2,1}
          x2 := Matrices.LU_solve(LU, pivots, b2);  // x2 = {1,0,2}

See also
^^^^^^^^

`Matrices.LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_,
`Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_,

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------------+-----------+------------------------------------------------------+
| Type      | Name                  | Default   | Description                                          |
+===========+=======================+===========+======================================================+
| Real      | LU[:, size(LU, 1)]    |           | L,U factors of Matrices.LU(..) for a square matrix   |
+-----------+-----------------------+-----------+------------------------------------------------------+
| Integer   | pivots[size(LU, 1)]   |           | Pivots indices of Matrices.LU(..)                    |
+-----------+-----------------------+-----------+------------------------------------------------------+
| Real      | b[size(LU, 1)]        |           | Right hand side vector of P\*L\*U\*x=b               |
+-----------+-----------------------+-----------+------------------------------------------------------+

Outputs
~~~~~~~

+--------+-----------------+--------------------------------------------+
| Type   | Name            | Description                                |
+========+=================+============================================+
| Real   | x[size(b, 1)]   | Solution vector such that P\*L\*U\*x = b   |
+--------+-----------------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function LU_solve 
      "Solve real system of linear equations P*L*U*x=b with a b vector and an LU decomposition (from LU(..))"

      extends Modelica.Icons.Function;
      input Real LU[:, size(LU,1)] 
        "L,U factors of Matrices.LU(..) for a square matrix";
      input Integer pivots[size(LU, 1)] "Pivots indices of Matrices.LU(..)";
      input Real b[size(LU, 1)] "Right hand side vector of P*L*U*x=b";
      output Real x[size(b, 1)] "Solution vector such that P*L*U*x = b";

    algorithm 
      for i in 1:size(LU,1) loop
           assert(LU[i,i] <> 0, "Solving a linear system of equations with function
    \"Matrices.LU_solve\" is not possible, since the LU decomposition
    is singular, i.e., no unique solution exists.");
      end for;
      x := LAPACK.dgetrs_vec(LU, pivots, b);
    end LU_solve;

--------------

|image92| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.LU\_solve2
---------------------------------------------------------------------------------------------------

**Solve real system of linear equations P\*L\*U\*X=B with a B matrix and
an LU decomposition (from LU(..))**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.LU_solve(LU, pivots, B);

Description
^^^^^^^^^^^

This function call returns the solution **X** of the linear systems of
equations

    **P**\***L**\***U**\***X** = **B**;

where **P** is a permutation matrix (implicitely defined by vector
``pivots``), **L** is a lower triangular matrix with unit diagonal
elements (lower trapezoidal if m > n), and **U** is an upper triangular
matrix (upper trapezoidal if m < n). The matrices of this decomposition
are computed with function
`Matrices.LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_
that returns arguments ``LU`` and ``pivots`` used as input arguments of
``Matrices.LU_solve2``. With ``Matrices.LU`` and ``Matrices.LU_solve2``
it is possible to efficiently solve linear systems with different right
hand side **matrices**. If a linear system of equations with just one
right hand side matrix shall be solved, it is more convenient to just
use the function
`Matrices.solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve2>`_.

If a unique solution **X** does not exist (since the LU decomposition is
singular), an exception is raised.

The LU factorization is computed with the LAPACK function "dgetrf",
i.e., by Gaussian elemination using partial pivoting with row
interchanges. Vector "pivots" are the pivot indices, i.e., for 1 ≤ i ≤
min(m,n), row i of matrix A was interchanged with row pivots[i].

Example
^^^^^^^

    ::

          Real A[3,3] = [1,2,3;
                         3,4,5;
                         2,1,4];
          Real B1[3] = [10, 20;
                        22, 44;
                        12, 24];
          Real B2[3] = [ 7, 14;
                        13, 26;
                        10, 20];
          Real    LU[3,3];
          Integer pivots[3];
          Real    X1[3,2];
          Real    X2[3,2];
        algorithm
          (LU, pivots) := Matrices.LU(A);
          X1 := Matrices.LU_solve2(LU, pivots, B1);  /* X1 = [3, 6;
                                                              2, 4;
                                                              1, 2] */
          X2 := Matrices.LU_solve2(LU, pivots, B2);  /* X2 = [1, 2;
                                                              0, 0;
                                                              2, 4] */

See also
^^^^^^^^

`Matrices.LU <Modelica_Math_Matrices.html#Modelica.Math.Matrices.LU>`_,
`Matrices.solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve2>`_,

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+-----------------------+-----------+------------------------------------------------------+
| Type      | Name                  | Default   | Description                                          |
+===========+=======================+===========+======================================================+
| Real      | LU[:, size(LU, 1)]    |           | L,U factors of Matrices.LU(..) for a square matrix   |
+-----------+-----------------------+-----------+------------------------------------------------------+
| Integer   | pivots[size(LU, 1)]   |           | Pivots indices of Matrices.LU(..)                    |
+-----------+-----------------------+-----------+------------------------------------------------------+
| Real      | B[size(LU, 1), :]     |           | Right hand side matrix of P\*L\*U\*X=B               |
+-----------+-----------------------+-----------+------------------------------------------------------+

Outputs
~~~~~~~

+--------+-----------------------------+--------------------------------------------+
| Type   | Name                        | Description                                |
+========+=============================+============================================+
| Real   | X[size(B, 1), size(B, 2)]   | Solution matrix such that P\*L\*U\*X = B   |
+--------+-----------------------------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function LU_solve2 
      "Solve real system of linear equations P*L*U*X=B with a B matrix and an LU decomposition (from LU(..))"

      extends Modelica.Icons.Function;
      input Real LU[:, size(LU,1)] 
        "L,U factors of Matrices.LU(..) for a square matrix";
      input Integer pivots[size(LU, 1)] "Pivots indices of Matrices.LU(..)";
      input Real B[size(LU, 1),:] "Right hand side matrix of P*L*U*X=B";
      output Real X[size(B, 1), size(B,2)] "Solution matrix such that P*L*U*X = B";

    algorithm 
      for i in 1:size(LU,1) loop
           assert(LU[i,i] <> 0, "Solving a linear system of equations with function
    \"Matrices.LU_solve\" is not possible, since the LU decomposition
    is singular, i.e., no unique solution exists.");
      end for;
      X := Modelica.Math.Matrices.LAPACK.dgetrs(
        LU,
        pivots,
        B);
    end LU_solve2;

--------------

|image93| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.eigenValues
----------------------------------------------------------------------------------------------------

**Return eigenvalues and eigenvectors for a real, nonsymmetric matrix in
a Real representation**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                        eigenvalues = Matrices.eigenValues(A);
        (eigenvalues, eigenvectors) = Matrices.eigenValues(A);

Description
^^^^^^^^^^^

This function call returns the eigenvalues and optionally the (right)
eigenvectors of a square matrix **A**. The first column of "eigenvalues"
contains the real and the second column contains the imaginary part of
the eigenvalues. If the i-th eigenvalue has no imaginary part, then
eigenvectors[:,i] is the corresponding real eigenvector. If the i-th
eigenvalue has an imaginary part, then eigenvalues[i+1,:] is the
conjugate complex eigenvalue and eigenvectors[:,i] is the real and
eigenvectors[:,i+1] is the imaginary part of the eigenvector of the i-th
eigenvalue. With function
`Matrices.eigenValueMatrix <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValueMatrix>`_,
a real block diagonal matrix is constructed from the eigenvalues such
that

    ::

        A = eigenvectors * eigenValueMatrix(eigenvalues) * inv(eigenvectors)

provided the eigenvector matrix "eigenvectors" can be inverted (an
inversion is possible, if all eigenvalues are different; in some cases,
an inversion is also possible if some eigenvalues are the same).

Example
^^^^^^^

    ::

          Real A[3,3] = [1,2,3;
                         3,4,5;
                         2,1,4];
          Real eval;
        algorithm
          eval := Matrices.eigenValues(A);  // eval = [-0.618, 0;
                                            //          8.0  , 0;
                                            //          1.618, 0];

i.e., matrix A has the 3 real eigenvalues -0.618, 8, 1.618.

See also
^^^^^^^^

`Matrices.eigenValueMatrix <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValueMatrix>`_,
`Matrices.singularValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.singularValues>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+--------------------+-----------+---------------+
| Type   | Name               | Default   | Description   |
+========+====================+===========+===============+
| Real   | A[:, size(A, 1)]   |           | Matrix        |
+--------+--------------------+-----------+---------------+

Outputs
~~~~~~~

+--------+----------------------------------------+-----------------------------------------------------------------+
| Type   | Name                                   | Description                                                     |
+========+========================================+=================================================================+
| Real   | eigenvalues[size(A, 1), 2]             | Eigenvalues of matrix A (Re: first column, Im: second column)   |
+--------+----------------------------------------+-----------------------------------------------------------------+
| Real   | eigenvectors[size(A, 1), size(A, 2)]   | Real-valued eigenvector matrix                                  |
+--------+----------------------------------------+-----------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function eigenValues 
      "Return eigenvalues and eigenvectors for a real, nonsymmetric matrix in a Real representation"

      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)] "Matrix";
      output Real eigenvalues[size(A, 1), 2] 
        "Eigenvalues of matrix A (Re: first column, Im: second column)";
      output Real eigenvectors[size(A,1), size(A,2)] 
        "Real-valued eigenvector matrix";

    protected 
      Integer info;
      // replace with "isPresent(..)" if supported by Dymola
      Boolean onlyEigenvalues = false;
    algorithm 
    if size(A,1) > 0 then
      if onlyEigenvalues then
         (eigenvalues[:, 1],eigenvalues[:, 2],info) := LAPACK.dgeev_eigenValues(A);
         eigenvectors :=zeros(size(A, 1), size(A, 1));
      else
         (eigenvalues[:, 1],eigenvalues[:, 2],eigenvectors, info) := LAPACK.dgeev(A);
      end if;
      assert(info == 0, "Calculating the eigen values with function
    \"Matrices.eigenvalues\" is not possible, since the
    numerical algorithm does not converge.");
    end if;
    end eigenValues;

--------------

|image94| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.eigenValueMatrix
---------------------------------------------------------------------------------------------------------

**Return real valued block diagonal matrix J of eigenvalues of matrix A
(A=V\*J\*Vinv)**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.eigenValueMatrix(eigenvalues);

Description
^^^^^^^^^^^

The function call returns a block diagonal matrix **J** from the the
two-column matrix ``eigenvalues`` (computed by function
`Matrices.eigenValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValues>`_).
Matrix ``eigenvalues`` must have the real part of the eigenvalues in the
first column and the imaginary part in the second column. If an
eigenvalue i has a vanishing imaginary part, then **J**[i,i] =
eigenvalues[i,1], i.e., the diagonal element of **J** is the real
eigenvalue. Otherwise, eigenvalue i and conjugate complex eigenvalue i+1
are used to construct a 2 by 2 diagonal block of **J**:

    ::

          J[i  , i]   := eigenvalues[i,1];
          J[i  , i+1] := eigenvalues[i,2];
          J[i+1, i]   := eigenvalues[i+1,2];
          J[i+1, i+1] := eigenvalues[i+1,1];

See also
^^^^^^^^

`Matrices.eigenValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValues>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+---------------------+-----------+------------------------------------------------------------------------------------+
| Type   | Name                | Default   | Description                                                                        |
+========+=====================+===========+====================================================================================+
| Real   | eigenValues[:, 2]   |           | Eigen values from function eigenValues(..) (Re: first column, Im: second column)   |
+--------+---------------------+-----------+------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------------------------------------------+--------------------------------------------------------------------------------------+
| Type   | Name                                            | Description                                                                          |
+========+=================================================+======================================================================================+
| Real   | J[size(eigenValues, 1), size(eigenValues, 1)]   | Real valued block diagonal matrix with eigen values (Re: 1x1 block, Im: 2x2 block)   |
+--------+-------------------------------------------------+--------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function eigenValueMatrix 
      "Return real valued block diagonal matrix J of eigenvalues of matrix A (A=V*J*Vinv)"

      extends Modelica.Icons.Function;
      input Real eigenValues[:, 2] 
        "Eigen values from function eigenValues(..) (Re: first column, Im: second column)";
      output Real J[size(eigenValues, 1), size(eigenValues, 1)] 
        "Real valued block diagonal matrix with eigen values (Re: 1x1 block, Im: 2x2 block)";

    protected 
      Integer n=size(eigenValues, 1);
      Integer i;
    algorithm 
      J := zeros(n, n);
      i := 1;
      while i <= n loop
        if eigenValues[i, 2] == 0 then
          J[i, i] := eigenValues[i, 1];
          i := i + 1;
        else
          J[i, i] := eigenValues[i, 1];
          J[i, i + 1] := eigenValues[i, 2];
          J[i + 1, i] := eigenValues[i + 1, 2];
          J[i + 1, i + 1] := eigenValues[i + 1, 1];
          i := i + 2;
        end if;
      end while;
    end eigenValueMatrix;

--------------

|image95| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.singularValues
-------------------------------------------------------------------------------------------------------

**Return singular values and left and right singular vectors**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                 sigma = Matrices.singularValues(A);
        (sigma, U, VT) = Matrices.singularValues(A);

Description
^^^^^^^^^^^

This function computes the singular values and optionally the singular
vectors of matrix A. Basically the singular value decomposition of A is
computed, i.e.,

    ::

        A = U S VT
          = U*Sigma*VT

    where **U**and **V** are orthogonal matrices
    (**UU**\ :sup:`T`\ =**I,****VV**\ :sup:`T`\ =**I**). **S** =
    diag(s\ :sub:`i`\ ) has the same size as matrix A with nonnegative
    diagonal elements in decreasing order and with all other elements
    zero (s\ :sub:`1`\  is the largest element). The function returns
    the singular values s\ :sub:`i`\  in vector ``sigma`` and the
    orthogonal matrices in matrices ``U`` and ``V``.

    Example
    ^^^^^^^

        ::

              A = [1, 2,  3,  4;
                   3, 4,  5, -2;
                  -1, 2, -3,  5];
              (sigma, U, VT) = singularValues(A);
              results in:
                 sigma = {8.33, 6.94, 2.31};
              i.e.
                 Sigma = [8.33,    0,    0, 0;
                             0, 6.94,    0, 0;
                             0,    0, 2.31, 0]

    See also
    ^^^^^^^^

    `Matrices.eigenValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValues>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+-----------+-----------+---------------+
    | Type   | Name      | Default   | Description   |
    +========+===========+===========+===============+
    | Real   | A[:, :]   |           | Matrix        |
    +--------+-----------+-----------+---------------+

    Outputs
    ~~~~~~~

    +--------+--------------------------------------+--------------------------------------+
    | Type   | Name                                 | Description                          |
    +========+======================================+======================================+
    | Real   | sigma[min(size(A, 1), size(A, 2))]   | Singular values                      |
    +--------+--------------------------------------+--------------------------------------+
    | Real   | U[size(A, 1), size(A, 1)]            | Left orthogonal matrix               |
    +--------+--------------------------------------+--------------------------------------+
    | Real   | VT[size(A, 2), size(A, 2)]           | Transposed right orthogonal matrix   |
    +--------+--------------------------------------+--------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function singularValues 
          "Return singular values and left and right singular vectors"
          extends Modelica.Icons.Function;
          input Real A[:, :] "Matrix";
          output Real sigma[min(size(A, 1), size(A, 2))] "Singular values";
          output Real U[size(A, 1), size(A, 1)]=identity(size(A, 1)) 
            "Left orthogonal matrix";
          output Real VT[size(A, 2), size(A, 2)]=identity(size(A, 2)) 
            "Transposed right orthogonal matrix ";

        protected 
          Integer info;
          Integer n=min(size(A, 1), size(A, 2)) "Number of singular values";
        algorithm 
        if n>0 then
          (sigma,U,VT,info) := Modelica.Math.Matrices.LAPACK.dgesvd(A);
          assert(info == 0, "The numerical algorithm to compute the
        singular value decomposition did not converge");
        end if;
        end singularValues;

    --------------

    |image96| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.QR
    -------------------------------------------------------------------------------------------

    **Return the QR decomposition of a square matrix with optional
    column pivoting (A(:,p) = Q\*R)**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            (Q,R,p) = Matrices.QR(A);

    Description
    ^^^^^^^^^^^

    This function returns the QR decomposition of a rectangular matrix
    **A** (the number of columns of **A** must be less than or equal to
    the number of rows):

        **Q**\***R** = **A**[:,**p**]

    where **Q** is a rectangular matrix that has orthonormal columns and
    has the same size as A (**Q**\ :sup:`T`\ **Q**=**I**), **R** is a
    square, upper triangular matrix and **p** is a permutation vector.
    Matrix **R** has the following important properties:

    -  The absolute value of a diagonal element of **R** is the largest
       value in this row, i.e., abs(R[i,i]) ≥ abs(R[i,j]).
    -  The diagonal elements of **R** are sorted according to size, such
       that the largest absolute value is abs(R[1,1]) and abs(R[i,i]) ≥
       abs(R[j,j]) with i < j.

    This means that if abs(R[i,i]) ≤ ε then abs(R[j,k]) ≤ ε for j ≥ i,
    i.e., the i-th row up to the last row of **R** have small elements
    and can be treated as being zero. This allows to, e.g., estimate the
    row-rank of **R** (which is the same row-rank as **A**).
    Furthermore, **R** can be partitioned in two parts

        ::

               A[:,p] = Q * [R1, R2;
                             0,  0]

    where **R**\ :sub:`1`\  is a regular, upper triangular matrix.

    Note, the solution is computed with the LAPACK functions "dgeqpf"
    and "dorgqr", i.e., by Housholder transformations with column
    pivoting. If **Q** is not needed, the function may be called as:
    ``(,R,p) = QR(A)``.

    Example
    ^^^^^^^

        ::

              Real A[3,3] = [1,2,3;
                             3,4,5;
                             2,1,4];
              Real R[3,3];
            algorithm
              (,R) := Matrices.QR(A);  // R = [-7.07.., -4.24.., -3.67..;
                                                0     , -1.73.., -0.23..;
                                                0     ,  0     ,  0.65..];

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +-----------+------------+-----------+---------------------------------------------------------+
    | Type      | Name       | Default   | Description                                             |
    +===========+============+===========+=========================================================+
    | Real      | A[:, :]    |           | Rectangular matrix with size(A,1) >= size(A,2)          |
    +-----------+------------+-----------+---------------------------------------------------------+
    | Boolean   | pivoting   | true      | True if column pivoting is performed. True is default   |
    +-----------+------------+-----------+---------------------------------------------------------+

    Outputs
    ~~~~~~~

    +-----------+-----------------------------+---------------------------------------------------------------------+
    | Type      | Name                        | Description                                                         |
    +===========+=============================+=====================================================================+
    | Real      | Q[size(A, 1), size(A, 2)]   | Rectangular matrix with orthonormal columns such that Q\*R=A[:,p]   |
    +-----------+-----------------------------+---------------------------------------------------------------------+
    | Real      | R[size(A, 2), size(A, 2)]   | Square upper triangular matrix                                      |
    +-----------+-----------------------------+---------------------------------------------------------------------+
    | Integer   | p[size(A, 2)]               | Column permutation vector                                           |
    +-----------+-----------------------------+---------------------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function QR 
          "Return the QR decomposition of a square matrix with optional column pivoting (A(:,p) = Q*R)"

          extends Modelica.Icons.Function;
          input Real A[:, :] "Rectangular matrix with size(A,1) >= size(A,2)";
          input Boolean pivoting=true 
            "True if column pivoting is performed. True is default";
          output Real Q[size(A, 1), size(A, 2)] 
            "Rectangular matrix with orthonormal columns such that Q*R=A[:,p]";
          output Real R[size(A, 2), size(A, 2)] "Square upper triangular matrix";
          output Integer p[size(A, 2)] "Column permutation vector";

        protected 
          Integer nrow=size(A, 1);
          Integer ncol=size(A, 2);
          Real tau[ncol];
        algorithm 
          assert(nrow >= ncol, "\nInput matrix A[" + String(nrow) + "," + String(ncol) + "] has more columns as rows.
        This is not allowed when calling Modelica.Matrices.QR(A).");
          if pivoting then
            (Q,tau,p) := LAPACK.dgeqpf(A);
          else
            (Q,tau) := Modelica.Math.Matrices.LAPACK.dgeqrf(A);
             p := 1:ncol;
          end if;

          // determine R
          R := zeros(ncol,ncol);
          for i in 1:ncol loop
            for j in i:ncol loop
              R[i, j] := Q[i,j];
            end for;
          end for;

          // if isPresent(Q) then (not yet supported by Dymola)
          Q := LAPACK.dorgqr(Q, tau);
        end QR;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.hessenberg
    -----------------------------------------------------------------------------------------

    **Return upper Hessenberg form of a matrix**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     H = Matrices.hessenberg(A);
                (H, U) = Matrices.hessenberg(A);
             

    Description
    ^^^^^^^^^^^

    Function **hessenberg** computes the Hessenberg matrix **H** of
    matrix **A** as well as the orthogonal transformation matrix **U**
    that holds **H** = **U**'\***A**\***U**. The Hessenberg form of a
    matrix is computed by repeated Householder similarity
    transformation. The elementary reflectors and the corresponding
    scalar factors are provided by function
    "Utilities.toUpperHessenberg()". The transformation matrix **U** is
    then computed by
    `LAPACK.dorghr <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dorghr>`_.

    Example
    ^^^^^^^

        ::

             A  = [1, 2,  3;
                   6, 5,  4;
                   1, 0,  0];

             (H, U) = hessenberg(A);

              results in:

             H = [1.0,  -2.466,  2.630;
                 -6.083, 5.514, -3.081;
                  0.0,   0.919, -0.514]

             U = [1.0,    0.0,      0.0;
                  0.0,   -0.9864,  -0.1644;
                  0.0,   -0.1644,   0.9864]

              and therefore,

             U*H*transpose(U) = [1.0, 2.0, 3.0;
                                 6.0, 5.0, 4.0;
                                 1.0, 0.0, 0.0]

    See also
    ^^^^^^^^

    `Matrices.Utilities.toUpperHessenberg <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.toUpperHessenberg>`_

    ::

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+-------------------+
    | Type   | Name               | Default   | Description       |
    +========+====================+===========+===================+
    | Real   | A[:, size(A, 1)]   |           | Square matrix A   |
    +--------+--------------------+-----------+-------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+-------------------------+
    | Type   | Name                        | Description             |
    +========+=============================+=========================+
    | Real   | H[size(A, 1), size(A, 2)]   | Hessenberg form of A    |
    +--------+-----------------------------+-------------------------+
    | Real   | U[size(A, 1), size(A, 2)]   | Transformation matrix   |
    +--------+-----------------------------+-------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function hessenberg "Return upper Hessenberg form of a matrix"
          import Modelica;
          import Modelica.Math.Matrices;

          input Real A[:,size(A, 1)] "Square matrix A";

          output Real H[size(A, 1),size(A, 2)] "Hessenberg form of A";
          output Real U[size(A, 1),size(A, 2)] "Transformation matrix";

        protected 
          Real V[size(A, 1),size(A, 2)] 
            "V=[v1,v2,..vn-1,0] with vi are vectors which define the elementary reflectors";
          Real tau[max(0,size(A, 1) - 1)] "Scalar factors of the elementary reflectors";

        algorithm 
          (H, V, tau) := Matrices.Utilities.toUpperHessenberg(A, 1, size(A, 1));
           U := Matrices.LAPACK.dorghr(V,1,size(A, 1),tau);
        end hessenberg;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.realSchur
    ----------------------------------------------------------------------------------------

    **Return the real Schur form (rsf) S of a square matrix A,
    A=QZ\*S\*QZ'**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                                        S = Matrices.realSchur(A);
            (S, QZ, alphaReal, alphaImag) = Matrices.realSchur(A);

    Description
    ^^^^^^^^^^^

    Function **realSchur** calculates the real Schur form of a real
    square matrix **A**, i.e.

        ::

             A = QZ*S*transpose(QZ)

    with the real nxn matrices **S** and **QZ**. **S** is a block upper
    triangular matrix with 1x1 and 2x2 blocks in the diagonal. **QZ** is
    an orthogonal matrix. The 1x1 blocks contains the real eigenvalues
    of **A**. The 2x2 blocks [s11, s12; s21, s11] represents the
    conjugated complex pairs of eigenvalues, whereas the real parts of
    the eigenvalues are the elements of the diagonal (s11). The
    imaginary parts are the positive and negative square roots of the
    product of the two elements s12 and s21 (imag = +-sqrt(s12\*s21)).

    The calculation in lapack.dgees is performed stepwise, i.e., using
    the internal methods of balancing and scaling of dgees.

    Example
    ^^^^^^^

        ::

               Real A[3,3] = [1, 2, 3; 4, 5, 6; 7, 8, 9];
               Real T[3,3];
               Real Z[3,3];
               Real alphaReal[3];
               Real alphaImag[3];

            algorithm
              (T, Z, alphaReal, alphaImag):=Modelica.Math.Matrices.realSchur(A);
            //   T = [16.12, 4.9,   1.59E-015;
            //        0,    -1.12, -1.12E-015;
            //        0,     0,    -1.30E-015]
            //   Z = [-0.23,  -0.88,   0.41;
            //        -0.52,  -0.24,  -0.82;
            //        -0.82,   0.4,    0.41]
            //alphaReal = {16.12, -1.12, -1.32E-015}
            //alphaImag = {0, 0, 0}

    See also
    ^^^^^^^^

    `Math.Matrices.Utilities.reorderRSF <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.reorderRSF>`_

    ::

         

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+-----------------+
    | Type   | Name               | Default   | Description     |
    +========+====================+===========+=================+
    | Real   | A[:, size(A, 1)]   |           | Square matrix   |
    +--------+--------------------+-----------+-----------------+

    Outputs
    ~~~~~~~

    +--------+------------------------------+--------------------------------------------------------+
    | Type   | Name                         | Description                                            |
    +========+==============================+========================================================+
    | Real   | S[size(A, 1), size(A, 2)]    | Real Schur form of A                                   |
    +--------+------------------------------+--------------------------------------------------------+
    | Real   | QZ[size(A, 1), size(A, 2)]   | Schur vector Matrix                                    |
    +--------+------------------------------+--------------------------------------------------------+
    | Real   | alphaReal[size(A, 1)]        | Real part of eigenvalue=alphaReal+i\*alphaImag         |
    +--------+------------------------------+--------------------------------------------------------+
    | Real   | alphaImag[size(A, 1)]        | Imaginary part of eigenvalue=(alphaReal+i\*alphaImag   |
    +--------+------------------------------+--------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function realSchur 
          "Return the real Schur form (rsf) S of a square matrix A, A=QZ*S*QZ'"
          import Modelica.Math.Matrices;

          input Real A[:,size(A, 1)] "Square matrix";

        public 
          output Real S[size(A, 1),size(A, 2)] "Real Schur form of A";
          output Real QZ[size(A, 1),size(A, 2)] "Schur vector Matrix";
          output Real alphaReal[size(A, 1)] 
            "Real part of eigenvalue=alphaReal+i*alphaImag";
          output Real alphaImag[size(A, 1)] 
            "Imaginary part of eigenvalue=(alphaReal+i*alphaImag";

        protected 
          Integer info;

        algorithm 
          if size(A, 1) > 1 then
            (S,QZ,alphaReal,alphaImag) := Matrices.LAPACK.dgees(A);
            assert(info == 0, "The output info of LAPACK.dgees should be zero, else if\n
             info < 0:  if info = -i, the i-th argument of dgees had an illegal value\n
             info > 0:  if INFO = i, and i is
                       <= N: the QR algorithm failed to compute all the
                             eigenvalues; elements 1:ILO-1 and i+1:N of WR and WI
                             contain those eigenvalues which have converged; if
                             JOBVS = 'V', VS contains the matrix which reduces A
                             to its partially converged Schur form.\n");
          else
            S := A;
            if size(A, 1) > 0 then
              QZ := [1];
              alphaReal := {1};
              alphaImag := {0};
            else
              QZ := fill(1, 0, 0);
              alphaReal := fill(1, 0);
              alphaImag := fill(0, 0);
            end if;
          end if;

        end realSchur;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.cholesky
    ---------------------------------------------------------------------------------------

    **Return the Cholesky factorization of a symmetric positive definite
    matrix**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     H = Matrices.cholesky(A);
                     H = Matrices.cholesky(A, upper=true);
             

    Description
    ^^^^^^^^^^^

    Function **cholesky** computes the Cholesky factorization of a real
    symmetric positive definite matrix A. The optional Boolean input
    "upper" specifies wether the upper or the lower triangular matrix is
    returned, i.e.

        ::

             A = H'*H   if upper is true (H is upper triangular)
             A = H*H'   if upper is false (H is lower triangular)

    The computation is performed by
    `LAPACK.dpotrf <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dpotrf>`_.

    Example
    ^^^^^^^

        ::

              A  = [1, 0,  0;
                    6, 5,  0;
                    1, -2,  2];
              S = A*transpose(A);

              H = Matrices.cholesky(S);

              results in:

              H = [1.0,  6.0,  1.0;
                   0.0,  5.0, -2.0;
                   0.0,  0.0,  2.0]

              with

              transpose(H)*H = [1.0,  6.0,   1;
                                6.0, 61.0,  -4.0;
                                1.0, -4.0,   9.0] //=S

    ::

    Inputs
    ~~~~~~

    +-----------+--------------------+-----------+-------------------------------------------------------------------------+
    | Type      | Name               | Default   | Description                                                             |
    +===========+====================+===========+=========================================================================+
    | Real      | A[:, size(A, 1)]   |           | Symmetric positive definite matrix                                      |
    +-----------+--------------------+-----------+-------------------------------------------------------------------------+
    | Boolean   | upper              | true      | True if the right cholesky factor (upper triangle) should be returned   |
    +-----------+--------------------+-----------+-------------------------------------------------------------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+--------------------------------------------------------------------------------+
    | Type   | Name                        | Description                                                                    |
    +========+=============================+================================================================================+
    | Real   | H[size(A, 1), size(A, 2)]   | Cholesky factor U (upper=true) or L (upper=false) for A = U'\*U or A = L\*L'   |
    +--------+-----------------------------+--------------------------------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function cholesky 
          "Return the Cholesky factorization of a symmetric positive definite matrix"
          import Modelica.Math.Matrices.LAPACK;
          input Real A[:,size(A, 1)] "Symmetric positive definite matrix";
          input Boolean upper=true 
            "True if the right cholesky factor (upper triangle) should be returned";

          output Real H[size(A, 1),size(A, 2)] 
            "Cholesky factor U (upper=true) or L (upper=false) for A = U'*U or A = L*L'";

        protected 
          Integer n=size(A,1);
          Integer info;

        algorithm 
          if size(A, 1) > 0 then
            (H, info) := LAPACK.dpotrf(A, upper);
          else
            H := fill(0,0,0);
            info := 0;
          end if;
          if info<0 then
           assert(info==0,"Cholesky factorization failed in function \"Matrices.cholesky\" due to illegal value of input " +String(info)+" for LAPACK routine DPOTRF");
          else
            assert(info==0,"Cholesky factorization failed in function \"Matrices.cholesky\" since matrix A is not positive definite");
          end if;

          if upper then
            for i in 2:n loop
              for j in 1:i - 1 loop
                H[i, j] := 0.0;
              end for;
            end for;
          else
            for i in 1:n - 1 loop
              for j in i + 1:n loop
                H[i, j] := 0.0;
              end for;
            end for;
          end if;
        end cholesky;

    --------------

    |image97| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.balance
    ------------------------------------------------------------------------------------------------

    **Return a balanced form of matrix A to improve the condition of A**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            (D,B) = Matrices.balance(A);

    Description
    ^^^^^^^^^^^

    This function returns a vector D, such that
    B=inv(diagonal(D))\*A\*diagonal(D) has a better condition as matrix
    A, i.e., conditionNumber(B) ≤ conditionNumber(A). The elements of D
    are multiples of 2 which means that this function does not introduce
    round-off errors. Balancing attempts to make the norm of each row of
    B equal to the norm of the respective column.

    Balancing is used to minimize roundoff errors induced through large
    matrix calculations like Taylor-series approximation or computation
    of eigenvalues.

    Example
    ^^^^^^^

        ::

                   - A = [1, 10,  1000; 0.01,  0,  10; 0.005,  0.01,  10]
                   - Matrices.norm(A, 1);
                     = 1020.0
                   - (T,B)=Matrices.balance(A)
                   - T
                     = {256, 16, 0.5}
                   - B
                     =  [1,     0.625,   1.953125;
                         0.16,  0,       0.3125;
                         2.56,  0.32,   10.0]
                   - Matrices.norm(B, 1);
                     = 12.265625

    The Algorithm is taken from

    H. D. Joos, G. Grbel:

    **RASP'91 Regulator Analysis and Synthesis Programs**
     DLR - Control Systems Group 1991

    which based on the balanc function from EISPACK.

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+---------------+
    | Type   | Name               | Default   | Description   |
    +========+====================+===========+===============+
    | Real   | A[:, size(A, 1)]   |           |               |
    +--------+--------------------+-----------+---------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+-------------------------------------------------------------------------------------------------+
    | Type   | Name                        | Description                                                                                     |
    +========+=============================+=================================================================================================+
    | Real   | D[size(A, 1)]               | diagonal(D)=T is transformation matrix, such that B = inv(T)\*A\*T has smaller condition as A   |
    +--------+-----------------------------+-------------------------------------------------------------------------------------------------+
    | Real   | B[size(A, 1), size(A, 1)]   | Balanced matrix (= inv(diagonal(D))\*A\*diagonal(D) )                                           |
    +--------+-----------------------------+-------------------------------------------------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function balance 
          "Return a balanced form of matrix A to improve the condition of A"
          extends Modelica.Icons.Function;
          input Real A[:, size(A, 1)];
          output Real D[size(A, 1)] "diagonal(D)=T is transformation matrix, such that
                  B = inv(T)*A*T has smaller condition as A";
          output Real B[size(A, 1), size(A, 1)] 
            "Balanced matrix (= inv(diagonal(D))*A*diagonal(D) )";
        protected 
          Integer na=size(A, 1);
          Integer radix=2 "Radix of exponent representation must be 'radix'
                  or a multiple of 'radix'";
          Integer radix2=radix*radix;
          Boolean noconv=true;
          Integer i=1;
          Integer j=1;
          Real CO;
          Real RO;
          Real G;
          Real F;
          Real S;
          /*auxiliary variables*/

        algorithm 
          // B = inv(D)*A*D, so that cond(B)<=cond(A)
          D := ones(na);
          B := A;
          while noconv loop
            noconv := false;
            for i in 1:na loop
              CO := sum(abs(B[:, i])) - abs(B[i, i]);
              RO := sum(abs(B[i, :])) - abs(B[i, i]);
              G := RO/radix;
              F := 1;
              S := CO + RO;
              while not (CO >= G or CO == 0) loop
                F := F*radix;
                CO := CO*radix2;
              end while;
              G := RO*radix;
              while not (CO < G or RO == 0) loop
                F := F/radix;
                CO := CO/radix2;
              end while;
              if not ((CO + RO)/F >= 0.95*S) then
                G := 1/F;
                D[i] := D[i]*F;
                B[i, :] := B[i, :]*G;
                B[:, i] := B[:, i]*F;
                noconv := true;
              end if;
            end for;
          end while;
        end balance;

    --------------

    |image98| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.trace
    ----------------------------------------------------------------------------------------------

    **Return the trace of matrix A, i.e., the sum of the diagonal
    elements**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

              r = Matrices.trace(A);

    Description
    ^^^^^^^^^^^

    This function computes the trace, i.e., the sum of the elements in
    the diagonal of matrix **A**.

    Example
    ^^^^^^^

        ::

              A = [1, 3;
                   2, 1];
              r = trace(A);

              results in:

              r = 2.0

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+-------------------+
    | Type   | Name               | Default   | Description       |
    +========+====================+===========+===================+
    | Real   | A[:, size(A, 1)]   |           | Square matrix A   |
    +--------+--------------------+-----------+-------------------+

    Outputs
    ~~~~~~~

    +--------+----------+---------------+
    | Type   | Name     | Description   |
    +========+==========+===============+
    | Real   | result   | Trace of A    |
    +--------+----------+---------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function trace 
          "Return the trace of matrix A, i.e., the sum of the diagonal elements"
          extends Modelica.Icons.Function;

          input Real A[:,size(A, 1)] "Square matrix A";
          output Real result "Trace of A";
        algorithm 
          result := sum(A[i, i] for i in 1:size(A, 1));
        end trace;

    --------------

    |image99| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.det
    --------------------------------------------------------------------------------------------

    **Return determinant of a matrix (computed by LU decomposition; try
    to avoid det(..))**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            result = Matrices.det(A);

    Description
    ^^^^^^^^^^^

    This function returns the determinant "result" of matrix A computed
    by a LU decomposition with row pivoting. For details about
    determinants, see
    `http://en.wikipedia.org/wiki/Determinant <http://en.wikipedia.org/wiki/Determinant>`_.
    Usually, this function should never be used, because there are
    nearly always better numerical algorithms as by computing the
    determinant. Examples:

    -  Use
       `Matrices.rank <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rank>`_
       to compute whether det(A) = 0 (i.e., Matrices.rank(A) <
       size(A,1)).
    -  Use
       `Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_
       to solve the linear equation A\*x = b, instead of using
       determinantes to compute the solution.

    See also
    ^^^^^^^^

    `Matrices.rank <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rank>`_,
    `Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+---------------+
    | Type   | Name               | Default   | Description   |
    +========+====================+===========+===============+
    | Real   | A[:, size(A, 1)]   |           |               |
    +--------+--------------------+-----------+---------------+

    Outputs
    ~~~~~~~

    +--------+----------+---------------------------+
    | Type   | Name     | Description               |
    +========+==========+===========================+
    | Real   | result   | Determinant of matrix A   |
    +--------+----------+---------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function det 
          "Return determinant of a matrix (computed by LU decomposition; try to avoid det(..))"

          extends Modelica.Icons.Function;
          input Real A[:, size(A, 1)];
          output Real result "Determinant of matrix A";
        protected 
          Real LU[size(A,1),size(A,1)];
          Integer pivots[size(A,1)];

        algorithm 
          (LU,pivots) := Matrices.LU(A);
          result:=product(LU[i,i] for i in 1:size(A,1))*
            product(if pivots[i]==i then 1 else -1 for i in 1:size(pivots,1));
        end det;

    --------------

    |image100| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.inv
    ---------------------------------------------------------------------------------------------

    **Return inverse of a matrix (try to avoid inv(..))**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            invA = Matrices.inv(A);

    Description
    ^^^^^^^^^^^

    This function returns the inverse of matrix A, i.e., A\*inv(A) =
    identity(size(A,1)) computed by a LU decomposition with row
    pivoting. Usually, this function should not be used, because there
    are nearly always better numerical algorithms as by computing
    directly the inverse. Example:

        Use x =
        `Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_(A,b)
        to solve the linear equation A\*x = b, instead of computing the
        solution by x = inv(A)\*b, because this is much more efficient
        and much more reliable.

    See also
    ^^^^^^^^

    `Matrices.solve <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve>`_
    `Matrices.solve2 <Modelica_Math_Matrices.html#Modelica.Math.Matrices.solve2>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+---------------+
    | Type   | Name               | Default   | Description   |
    +========+====================+===========+===============+
    | Real   | A[:, size(A, 1)]   |           |               |
    +--------+--------------------+-----------+---------------+

    Outputs
    ~~~~~~~

    +--------+--------------------------------+-----------------------+
    | Type   | Name                           | Description           |
    +========+================================+=======================+
    | Real   | invA[size(A, 1), size(A, 2)]   | Inverse of matrix A   |
    +--------+--------------------------------+-----------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function inv "Return inverse of a matrix (try to avoid inv(..))"
          extends Modelica.Icons.Function;
          input Real A[:, size(A, 1)];
          output Real invA[size(A, 1), size(A, 2)] "Inverse of matrix A";
        protected 
          Integer info;
          Integer pivots[size(A, 1)] "Pivot vector";
          Real LU[size(A, 1), size(A, 2)] "LU factors of A";
        algorithm 
          (LU,pivots,info) := LAPACK.dgetrf(A);

          assert(info == 0, "Calculating an inverse matrix with function
        \"Matrices.inv\" is not possible, since matrix A is singular.");

          invA := LAPACK.dgetri(LU, pivots);

        end inv;

    --------------

    |image101| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.rank
    ----------------------------------------------------------------------------------------------

    **Return rank of a rectangular matrix (computed with singular
    values)**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            result = Matrices.rank(A);
            result = Matrices.rank(A,eps=0);

    Description
    ^^^^^^^^^^^

    This function returns the rank of a square or rectangular matrix A
    computed by singular value decomposition. For details about the rank
    of a matrix, see
    `http://en.wikipedia.org/wiki/Matrix\_rank <http://en.wikipedia.org/wiki/Matrix_rank>`_.
    To be more precise:

    -  rank(A) returns the number of singular values of A that are
       larger than max(size(A))\*norm(A)\*Modelica.Constants.eps.
    -  rank(A, eps) returns the number of singular values of A that are
       larger than "eps".

    See also
    ^^^^^^^^

    `Matrices.rcond <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rcond>`_.

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+-----------+-----------+--------------------------------------------------------------------------------------------------------------------------------+
    | Type   | Name      | Default   | Description                                                                                                                    |
    +========+===========+===========+================================================================================================================================+
    | Real   | A[:, :]   |           | Matrix                                                                                                                         |
    +--------+-----------+-----------+--------------------------------------------------------------------------------------------------------------------------------+
    | Real   | eps       | 0         | If eps > 0, the singular values are checked against eps; otherwise eps=max(size(A))\*norm(A)\*Modelica.Constants.eps is used   |
    +--------+-----------+-----------+--------------------------------------------------------------------------------------------------------------------------------+

    Outputs
    ~~~~~~~

    +-----------+----------+--------------------+
    | Type      | Name     | Description        |
    +===========+==========+====================+
    | Integer   | result   | Rank of matrix A   |
    +-----------+----------+--------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function rank 
          "Return rank of a rectangular matrix (computed with singular values)"
          extends Modelica.Icons.Function;
          input Real A[:, :] "Matrix";
          input Real eps=0 
            "If eps > 0, the singular values are checked against eps; otherwise eps=max(size(A))*norm(A)*Modelica.Constants.eps is used";
          output Integer result "Rank of matrix A";

        protected 
          Integer n=min(size(A, 1), size(A, 2));
          Integer i=n;
          Real sigma[n];
          Real eps2;
        algorithm 
          result := 0;
          if n > 0 then
            sigma := Modelica.Math.Matrices.singularValues(A);
            eps2 := if eps > 0 then eps else max(size(A))*sigma[1]*Modelica.Constants.eps;
            while i > 0 loop
              if sigma[i] > eps2 then
                result := i;
                i := 0;
              end if;
              i := i - 1;
            end while;
          end if;
        end rank;

    --------------

    |image102| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.conditionNumber
    ---------------------------------------------------------------------------------------------------------

    **Return the condition number norm(A)\*norm(inv(A)) of a matrix A**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            r = Matrices.conditionNumber(A);

    Description
    ^^^^^^^^^^^

    This function calculates the condition number (norm(A) \*
    norm(inv(A))) of a general real matrix **A**, in either the 1-norm,
    2-norm or the infinity-norm. In the case of 2-norm the result is the
    ratio of the largest to the smallest singular value of **A**. For
    more details, see
    `http://en.wikipedia.org/wiki/Condition\_number <http://en.wikipedia.org/wiki/Condition_number>`_.

    Example
    ^^^^^^^

        ::

              A = [1, 2;
                   2, 1];
              r = conditionNumber(A);

              results in:

              r = 3.0

    See also
    ^^^^^^^^

    `Matrices.rcond <Modelica_Math_Matrices.html#Modelica.Math.Matrices.rcond>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+-----------+-----------+-----------------------------------------------------------------+
    | Type   | Name      | Default   | Description                                                     |
    +========+===========+===========+=================================================================+
    | Real   | A[:, :]   |           | Input matrix                                                    |
    +--------+-----------+-----------+-----------------------------------------------------------------+
    | Real   | p         | 2         | Type of p-norm (only allowed: 1, 2 or Modelica.Constants.inf)   |
    +--------+-----------+-----------+-----------------------------------------------------------------+

    Outputs
    ~~~~~~~

    +--------+----------+----------------------+
    | Type   | Name     | Description          |
    +========+==========+======================+
    | Real   | result   | p-norm of matrix A   |
    +--------+----------+----------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function conditionNumber 
          "Return the condition number norm(A)*norm(inv(A)) of a matrix A"
          extends Modelica.Icons.Function;

          input Real A[:,:] "Input matrix";
          input Real p(min=1) = 2 
            "Type of p-norm (only allowed: 1, 2 or Modelica.Constants.inf)";
          output Real result=0.0 "p-norm of matrix A";

        protected 
          Real eps=1e-25;
          Real s[size(A, 1)] "singular values";

        algorithm 
          if min(size(A)) > 0 then
            if p == 2 then
              s := Modelica.Math.Matrices.singularValues(A);
              if min(s) < eps then
                result := Modelica.Constants.inf;
              else
                result := max(s)/min(s);
              end if;
            else
              result := Modelica.Math.Matrices.norm(A, p)*Modelica.Math.Matrices.norm(
                Modelica.Math.Matrices.inv(A), p);
            end if;
          end if;

        end conditionNumber;

    --------------

    |image103| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.rcond
    -----------------------------------------------------------------------------------------------

    **Return the reciprocal condition number of a matrix**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            r = Matrices.rcond(A);

    Description
    ^^^^^^^^^^^

    This function estimates the reciprocal of the condition number
    (norm(A) \* norm(inv(A))) of a general real matrix **A**, in either
    the 1-norm or the infinity-norm, using the LAPACK function
    `DGECON <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dgecon>`_.
    If rcond(A) is near 1.0, **A** is well conditioned and **A** is ill
    conditioned if rcond(A) is near zero.

    Example
    ^^^^^^^

        ::

              A = [1, 2;
                   2, 1];
              r = rcond(A);

              results in:

              r = 0.3333

    See also
    ^^^^^^^^

    `Matrices.conditionNumber <Modelica_Math_Matrices.html#Modelica.Math.Matrices.conditionNumber>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +-----------+--------------------+-----------+---------------------------------------------------------+
    | Type      | Name               | Default   | Description                                             |
    +===========+====================+===========+=========================================================+
    | Real      | A[:, size(A, 1)]   |           | Square real matrix                                      |
    +-----------+--------------------+-----------+---------------------------------------------------------+
    | Boolean   | inf                | false     | Is true if infinity norm is used and false for 1-norm   |
    +-----------+--------------------+-----------+---------------------------------------------------------+

    Outputs
    ~~~~~~~

    +-----------+---------+------------------------------------+
    | Type      | Name    | Description                        |
    +===========+=========+====================================+
    | Real      | rcond   | Reciprocal condition number of A   |
    +-----------+---------+------------------------------------+
    | Integer   | info    | Information                        |
    +-----------+---------+------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function rcond "Return the reciprocal condition number of a matrix"
          extends Modelica.Icons.Function;
          input Real A[:,size(A,1)] "Square real matrix";
          input Boolean inf = false 
            "Is true if infinity norm is used and false for 1-norm";
          output Real rcond "Reciprocal condition number of A";
          output Integer info "Information";
        protected 
          Real LU[size(A,1),size(A,1)] 
            "LU factorization of matrix A, returned by dgetrf";
          Real anorm "Norm of matrix A";
          String normspec= if inf then "I" else "1" "Specifies the norm 1 or inf";

        algorithm 
          if min(size(A)) > 0 then
            (LU,,info) := Modelica.Math.Matrices.LAPACK.dgetrf(A);
            anorm := Modelica.Math.Matrices.LAPACK.dlange(A,normspec);
            (rcond,info) := Modelica.Math.Matrices.LAPACK.dgecon(LU,inf,anorm);
          else
            rcond := Modelica.Constants.inf;
            info := 0;
          end if;

        end rcond;

    --------------

    |image104| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.norm
    ----------------------------------------------------------------------------------------------

    **Return the p-norm of a matrix**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            Matrices.norm(A);
            Matrices.norm(A, p=2);

    Description
    ^^^^^^^^^^^

    The function call "``Matrices.norm(A)``" returns the 2-norm of
    matrix A, i.e., the largest singular value of A.
     The function call "``Matrices.norm(A, p)``" returns the p-norm of
    matrix A. The only allowed values for p are

    -  "p=1": the largest column sum of A
    -  "p=2": the largest singular value of A
    -  "p=Modelica.Constants.inf": the largest row sum of A

    Note, for any matrices A1, A2 the following inequality holds:

        ::

            Matrices.norm(A1+A2,p) ≤ Matrices.norm(A1,p) + Matrices.norm(A2,p)

    Note, for any matrix A and vector v the following inequality holds:

        ::

            Vectors.norm(A*v,p) ≤ Matrices.norm(A,p)*Vectors.norm(A,p)

    See also
    ^^^^^^^^

    `Matrices.frobeniusNorm <Modelica_Math_Matrices.html#Modelica.Math.Matrices.frobeniusNorm>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+-----------+-----------+-----------------------------------------------------------------+
    | Type   | Name      | Default   | Description                                                     |
    +========+===========+===========+=================================================================+
    | Real   | A[:, :]   |           | Input matrix                                                    |
    +--------+-----------+-----------+-----------------------------------------------------------------+
    | Real   | p         | 2         | Type of p-norm (only allowed: 1, 2 or Modelica.Constants.inf)   |
    +--------+-----------+-----------+-----------------------------------------------------------------+

    Outputs
    ~~~~~~~

    +--------+----------+----------------------+
    | Type   | Name     | Description          |
    +========+==========+======================+
    | Real   | result   | p-norm of matrix A   |
    +--------+----------+----------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function norm "Return the p-norm of a matrix"
          extends Modelica.Icons.Function;
          input Real A[:, :] "Input matrix";
          input Real p(min=1) = 2 
            "Type of p-norm (only allowed: 1, 2 or Modelica.Constants.inf)";
          output Real result=0.0 "p-norm of matrix A";

        algorithm 
          if p == 1 then
            // column sum norm
            for i in 1:size(A, 2) loop
              result := max(result, sum(abs(A[:, i])));
            end for;
          elseif p == 2 then
            // largest singular value
            result := max(singularValues(A));
          elseif p == Modelica.Constants.inf then
            // row sum norm
            for i in 1:size(A, 1) loop
              result := max(result, sum(abs(A[i, :])));
            end for;
          else
            assert(false, "Optional argument \"p\" of function \"norm\" must be
        1, 2 or Modelica.Constants.inf");
          end if;
        end norm;

    --------------

    |image105| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.frobeniusNorm
    -------------------------------------------------------------------------------------------------------

    **Return the Frobenius norm of a matrix**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

              r = Matrices.frobeniusNorm(A);

    Description
    ^^^^^^^^^^^

    This function computes the Frobenius norm of a general real matrix
    **A**, i.e., the square root of the sum of the squares of all
    elements.

    Example
    ^^^^^^^

        ::

              A = [1, 2;
                   2, 1];
              r = frobeniusNorm(A);

              results in:

              r = 3.162;

    See also
    ^^^^^^^^

    `Matrices.norm <Modelica_Math_Matrices.html#Modelica.Math.Matrices.norm>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+-----------+-----------+----------------+
    | Type   | Name      | Default   | Description    |
    +========+===========+===========+================+
    | Real   | A[:, :]   |           | Input matrix   |
    +--------+-----------+-----------+----------------+

    Outputs
    ~~~~~~~

    +--------+----------+------------------------------+
    | Type   | Name     | Description                  |
    +========+==========+==============================+
    | Real   | result   | Frobenius norm of matrix A   |
    +--------+----------+------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function frobeniusNorm "Return the Frobenius norm of a matrix"
          extends Modelica.Icons.Function;
          input Real A[:,:] "Input matrix";
          output Real result "Frobenius norm of matrix A";

        algorithm 
          result := if min(size(A))>0 then sqrt(sum(A.*A)) else -1e100;

        end frobeniusNorm;

    --------------

    |image106| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.nullSpace
    ---------------------------------------------------------------------------------------------------

    **Return the orthonormal nullspace of a matrix**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                       Z = Matrices.nullspace(A);
            (Z, nullity) = Matrices.nullspace(A);

    Description
    ^^^^^^^^^^^

    This function calculates an orthonormal basis **Z**=[**z**\_1,
    **z**\_2, ...] of the nullspace of a matrix **A**, i.e.,
    **A**\***z**\_i=**0**.

    The nullspace is obtained by svd method. That is, matrix **A** is
    decomposed into the matrices **S**, **U**, **V**:

        ::

             A = U*S*transpose(V)

    with the orthonormal matrices **U** and **V** and the matrix **S**
    with

        ::

             S = [S1, 0]
             S1 = [diag(s); 0]

    and the singular values **s**={s1, s2, ..., sr} of **A** and
    r=rank(**A**). Note, that **S** has the same size as **A**. Since
    **U** and **V** are orthonormal we may write

        ::

             transpose(U)*A*V = [S1, 0].

    Matrix **S**1 obviously has full column rank and therefore, the left
    n-r rows (n is the number of columns of **A** or **S**) of matrix
    **V** span a nullspace of **A**.

    The nullity of matrix **A** is the dimension of the nullspace of
    **A**. In view of the above, it becomes clear that nullity holds

        ::

             nullity = n - r

    with

        ::

             n = number of columns of matrix A
             r = rank(A)

    Example
    ^^^^^^^

        ::

              A = [1, 2,  3, 1;
                   3, 4,  5, 2;
                  -1, 2, -3, 3];
              (Z, nullity) = nullspace(A);

              results in:

              Z=[0.1715;
                -0.686;
                 0.1715;
                 0.686]

              nullity = 1

    See also
    ^^^^^^^^

    `Matrices.singularValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.singularValues>`_

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+-----------+-----------+----------------+
    | Type   | Name      | Default   | Description    |
    +========+===========+===========+================+
    | Real   | A[:, :]   |           | Input matrix   |
    +--------+-----------+-----------+----------------+

    Outputs
    ~~~~~~~

    +-----------+--------------------+-------------------------------------------------+
    | Type      | Name               | Description                                     |
    +===========+====================+=================================================+
    | Real      | Z[size(A, 2), :]   | Orthonormal nullspace of matrix A               |
    +-----------+--------------------+-------------------------------------------------+
    | Integer   | nullity            | Nullity, i.e., the dimension of the nullspace   |
    +-----------+--------------------+-------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function nullSpace "Return the orthonormal nullspace of a matrix"
          extends Modelica.Icons.Function;

          input Real A[:,:] "Input matrix";
          output Real Z[size(A, 2),:] "Orthonormal nullspace of matrix A";
          output Integer nullity "Nullity, i.e., the dimension of the nullspace";

        protected 
          Real V[size(A, 2),size(A, 2)] "Right orthogonal matrix ";
          Real sigma[min(size(A, 1), size(A, 2))] "singular values";
          Integer rank "rank of matrix A";
          Real eps "tolerance for rank determination";
          Integer n=min(size(A, 1), size(A, 2));
          Integer i=n;

        algorithm 
          (sigma,,V) := Modelica.Math.Matrices.singularValues(A);
          V := transpose(V);
          // rank computation
          eps := max(size(A, 1), size(A, 2))*max(sigma)*Modelica.Constants.eps;
          rank := 0;
          if n > 0 then
            while i > 0 loop
              if sigma[i] > eps then
                rank := i;
                i := 0;
              end if;
              i := i - 1;
            end while;
          end if;
          Z := V[:, rank + 1:size(A, 2)];// nullspace computation
          nullity := size(A, 2) - rank;// nullity

        end nullSpace;

    --------------

    |image107| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.exp
    ---------------------------------------------------------------------------------------------

    **Return the exponential of a matrix by adaptive Taylor series
    expansion with scaling and balancing**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            phi = Matrices.exp(A);
            phi = Matrices.exp(A,T=1);

    Description
    ^^^^^^^^^^^

    This function computes the exponential e\ :sup:`**A**T`\  of matrix
    **A**, i.e.

        ::

                                        (AT)^2   (AT)^3
                  Φ = e^(AT) = I + AT + ------ + ------ + ....
                                          2!       3!

    where e=2.71828..., **A** is an n x n matrix with real elements and
    T is a real number, e.g., the sampling time. **A** may be singular.
    With the exponential of a matrix it is, e.g., possible to compute
    the solution of a linear system of differential equations

    ::

            der(x) = A*x   ->   x(t0 + T) = e^(AT)*x(t0)

    Algorithmic details:
    ^^^^^^^^^^^^^^^^^^^^

    The algorithm is taken from

    H. D. Joos, G. Gruebel:

    **RASP'91 Regulator Analysis and Synthesis Programs**
     DLR - Control Systems Group 1991

    The following steps are performed to calculate the exponential of A:

    #. Matrix **A** is balanced
        (= is transformed with a diagonal matrix **D**, such that
       inv(**D**)\***A**\***D** has a smaller condition as **A**).
    #. The scalar T is divided by a multiple of 2 such that norm(
       inv(**D**)\***A**\***D**\*T/2^k ) < 0.5. Note, that (1) and (2)
       are implemented such that no round-off errors are introduced.
    #. The matrix from (2) is approximated by explicitly performing the
       Taylor series expansion with a variable number of terms.
       Truncation occurs if a new term does no longer contribute to the
       value of **Φ** from the previous iteration.
    #. The resulting matrix is transformed back, by reverting the steps
       of (2) and (1).

    In several sources it is not recommended to use Taylor series
    expansion to calculate the exponential of a matrix, such as in 'C.B.
    Moler and C.F. Van Loan: Nineteen dubious ways to compute the
    exponential of a matrix. SIAM Review 20, pp. 801-836, 1979' or in
    the documentation of m-file expm2 in Matlab version 6
    (http://www.MathWorks.com) where it is stated that 'As a practical
    numerical method, this is often slow and inaccurate'. These
    statements are valid for a direct implementation of the Taylor
    series expansion, but *not* for the implementation variant used in
    this function.

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+---------------+
    | Type   | Name               | Default   | Description   |
    +========+====================+===========+===============+
    | Real   | A[:, size(A, 1)]   |           |               |
    +--------+--------------------+-----------+---------------+
    | Real   | T                  | 1         |               |
    +--------+--------------------+-----------+---------------+

    Outputs
    ~~~~~~~

    +--------+-------------------------------+---------------+
    | Type   | Name                          | Description   |
    +========+===============================+===============+
    | Real   | phi[size(A, 1), size(A, 1)]   | = exp(A\*T)   |
    +--------+-------------------------------+---------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function exp 
          "Return the exponential of a matrix by adaptive Taylor series expansion with scaling and balancing"

          extends Modelica.Icons.Function;
          input Real A[:, size(A, 1)];
          input Real T=1;
          output Real phi[size(A, 1), size(A, 1)] "= exp(A*T)";

        protected 
          parameter Integer nmax=21;
          /*max number of iterations*/
          parameter Integer na=size(A, 1);
          Integer j=1;
          Integer k=0;
          Boolean done=false;
          Real Anorm;
          Real Tscaled=1;
          Real Atransf[na, na];
          Real D[na, na];
          /*D: dummy variable for psi*/
          Real M[na, na];
          /*M: dummy matrix*/
          Real Diag[na];
          /*diagonal transformation matrix for balancing*/

        encapsulated function columnNorm 
            "Returns the column norm of a matrix"
          input Real A[:, :] "Input matrix";
          output Real result=0.0 "1-norm of matrix A";
        algorithm 
           for i in 1:size(A, 2) loop
              result := max(result, sum(abs(A[:, i])));
           end for;
        end columnNorm;

        algorithm 
          // balancing of A
          (Diag,Atransf) := balance(A);

          // scaling of T until norm(A)*/(2^k) < 1
          Tscaled := T;
          /*Anorm: column-norm of matrix A*/
          Anorm := columnNorm(Atransf);
          Anorm := Anorm*T;
          while Anorm >= 0.5 loop
            Anorm := Anorm/2;
            Tscaled := Tscaled/2;
            k := k + 1;
          end while;

          // Computation of psi by Taylor-series approximation
          M := identity(na);
          D := M;
          while j < nmax and not done loop
            M := Atransf*M*Tscaled/j;
            //stop if the new element of the series is small
            if columnNorm((D + M) - D) == 0 then
              done := true;
            else
              D := M + D;
              j := j + 1;
            end if;
          end while;

          // re-scaling
          for i in 1:k loop
            D := D*D;
          end for;

          // re-balancing: psi := diagonal(Diag)*D*inv(diagonal(Diag));
          for j in 1:na loop
            for k in 1:na loop
              phi[j, k] := D[j, k]*Diag[j]/Diag[k];
            end for;
          end for;
        end exp;

    --------------

    |image108| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.integralExp
    -----------------------------------------------------------------------------------------------------

    **Return the exponential and the integral of the exponential of a
    matrix**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

            (phi,gamma) = Matrices.integralExp(A,B);
            (phi,gamma) = Matrices.integralExp(A,B,T=1);

    Description
    ^^^^^^^^^^^

    This function computes the exponential phi = e^(**A**T) of matrix
    **A** and the integral gamma = integral(phi\*dt)\*B.

    The function uses a Taylor series expansion with Balancing and
    scaling/squaring to approximate the integral **Ψ** of the matrix
    exponential **Φ**=e^(AT):

    ::

                                         AT^2   A^2 * T^3          A^k * T^(k+1)
                Ψ = int(e^(As))ds = IT + ---- + --------- + ... + --------------
                                          2!        3!                (k+1)!

    **Φ** is calculated through **Φ** = I + A\***Ψ**, so A may be
    singular. **Γ** is simply **Ψ**\*B.

    The algorithm runs in the following steps:

    #. Balancing
    #. Scaling
    #. Taylor series expansion
    #. Re-scaling
    #. Re-Balancing

    Balancing put the bad condition of a square matrix *A* into a
    diagonal transformation matrix *D*. This reduce the effort of
    following calculations. Afterwards the result have to be re-balanced
    by transformation D\*Atransf \*inv(D).
     Scaling halfen T k-times, until the norm of A\*T is less than 0.5.
    This garantees minumum rounding errors in the following series
    expansion. The re-scaling based on the equation exp(A\*2T) =
    exp(AT)^2. The needed re-scaling formula for psi thus becomes:

    ::

                 Φ = Φ'*Φ'
           I + A*Ψ = I + 2A*Ψ' + A^2*Ψ'^2
                 Ψ = A*Ψ'^2 + 2*Ψ'

    where psi' is the scaled result from the series expansion while psi
    is the re-scaled matrix.

    The function is normally used to discretize a state-space system as
    the zero-order-hold equivalent:

    ::

              x(k+1) = Φ*x(k) + Γ*u(k)
                y(k) = C*x(k) + D*u(k)

    The zero-order-hold sampling, also known as step-invariant method,
    gives exact values of the state variables, under the assumption that
    the control signal u is constant between the sampling instants.
    Zero-order-hold sampling is discribed in

    K. J. Astroem, B. Wittenmark:

    **Computer Controlled Systems - Theory and Design**
     Third Edition, p. 32

    ::

        Syntax:
              (phi,gamma) = Matrices.expIntegral(A,B,T)
                               A,phi: [n,n] square matrices
                             B,gamma: [n,m] input matrix
                                   T: scalar, e.g., sampling time

    The Algorithm to calculate psi is taken from

    H. D. Joos, G. Gruebel:

    **RASP'91 Regulator Analysis and Synthesis Programs**
     DLR - Control Systems Group 1991

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+---------------+
    | Type   | Name               | Default   | Description   |
    +========+====================+===========+===============+
    | Real   | A[:, size(A, 1)]   |           |               |
    +--------+--------------------+-----------+---------------+
    | Real   | B[size(A, 1), :]   |           |               |
    +--------+--------------------+-----------+---------------+
    | Real   | T                  | 1         |               |
    +--------+--------------------+-----------+---------------+

    Outputs
    ~~~~~~~

    +--------+---------------------------------+----------------------+
    | Type   | Name                            | Description          |
    +========+=================================+======================+
    | Real   | phi[size(A, 1), size(A, 1)]     | = exp(A\*T)          |
    +--------+---------------------------------+----------------------+
    | Real   | gamma[size(A, 1), size(B, 2)]   | = integral(phi)\*B   |
    +--------+---------------------------------+----------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function integralExp 
          "Return the exponential and the integral of the exponential of a matrix"

          extends Modelica.Icons.Function;
          input Real A[:, size(A, 1)];
          input Real B[size(A, 1), :];
          input Real T=1;
          output Real phi[size(A, 1), size(A, 1)] "= exp(A*T)";
          output Real gamma[size(A, 1), size(B, 2)] "= integral(phi)*B";
        protected 
          parameter Integer nmax=21;
          /*max number of iterations*/
          parameter Integer na=size(A, 1);
          Integer j=2;
          Integer k=0;
          Boolean done=false;
          Real Anorm;
          Real Tscaled=1;
          Real Atransf[na, na];
          Real Psi[na, na];
          /*Psi: dummy variable for psi*/
          Real M[na, na];
          /*M: dummy matrix*/
          Real Diag[na];
          /*diagonal transformation matrix for balancing*/

        encapsulated function columnNorm 
            "Returns the column norm of a matrix"
          input Real A[:, :] "Input matrix";
          output Real result=0.0 "1-norm of matrix A";
        algorithm 
           for i in 1:size(A, 2) loop
              result := max(result, sum(abs(A[:, i])));
           end for;
        end columnNorm;
        algorithm 
          // balancing of A
          (Diag,Atransf) := balance(A);

          // scaling of T until norm(A)*/(2^k) < 0.5
          Tscaled := T;
          /*Anorm: column-norm of matrix A*/
          // Anorm := norm(Atransf, 1);
          Anorm := columnNorm(Atransf);
          Anorm := Anorm*T;
          while Anorm >= 0.5 loop
            Anorm := Anorm/2;
            Tscaled := Tscaled/2;
            k := k + 1;
          end while;

          // Computation of psi by Taylor-series approximation
          M := identity(na)*Tscaled;
          Psi := M;
          while j < nmax and not done loop
            M := Atransf*M*Tscaled/j;
            //stop if the new element of the series is small
            // if norm((Psi + M) - Psi, 1) == 0 then
            if columnNorm((Psi + M) - Psi) == 0 then
              done := true;
            else
              Psi := M + Psi;
              j := j + 1;
            end if;
          end while;

          // re-scaling
          for j in 1:k loop
            Psi := Atransf*Psi*Psi + 2*Psi;
          end for;

          // re-balancing: psi := diagonal(Diag)*D*inv(diagonal(Diag));
          for j in 1:na loop
            for k in 1:na loop
              Psi[j, k] := Psi[j, k]*Diag[j]/Diag[k];
            end for;
          end for;
          gamma := Psi*B;
          phi := A*Psi + identity(na);

        end integralExp;

    --------------

    |image109| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.integralExpT
    ------------------------------------------------------------------------------------------------------

    **Return the exponential, the integral of the exponential, and
    time-weighted integral of the exponential of a matrix**

    Information
    ~~~~~~~~~~~

    ::

        ::

            (phi,gamma,gamma1) = Matrices.integralExp(A,B);
            (phi,gamma,gamma1) = Matrices.integralExp(A,B,T=1);

    Description
    ^^^^^^^^^^^

    This function computes the exponential phi = e^(**A**T) of matrix
    **A** and the integral gamma = integral(phi\*dt)\*B and the integral
    integral((T-t)\*exp(A\*t)\*dt)\*B, where A is a square (n,n) matrix
    and B, gamma, and gamma1 are (n,m) matrices.

    The function calculates the matrices phi,gamma,gamma1 through the
    equation:

    ::

                                         [ A B 0 ]
        [phi gamma gamma1] = [I 0 0]*exp([ 0 0 I ]*T)
                                         [ 0 0 0 ]

    The matrices define the discretized first-order-hold equivalent of a
    state-space system:

    ::

              x(k+1) = phi*x(k) + gamma*u(k) + gamma1/T*(u(k+1) - u(k))

    The first-order-hold sampling, also known as ramp-invariant method,
    gives more smooth control signals as the ZOH equivalent.
    First-order-hold sampling is, e.g., described in

    K. J. Astroem, B. Wittenmark:

    **Computer Controlled Systems - Theory and Design**
     Third Edition, p. 256

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +--------+--------------------+-----------+---------------+
    | Type   | Name               | Default   | Description   |
    +========+====================+===========+===============+
    | Real   | A[:, size(A, 1)]   |           |               |
    +--------+--------------------+-----------+---------------+
    | Real   | B[size(A, 1), :]   |           |               |
    +--------+--------------------+-----------+---------------+
    | Real   | T                  | 1         |               |
    +--------+--------------------+-----------+---------------+

    Outputs
    ~~~~~~~

    +--------+----------------------------------+-----------------------------------+
    | Type   | Name                             | Description                       |
    +========+==================================+===================================+
    | Real   | phi[size(A, 1), size(A, 1)]      | = exp(A\*T)                       |
    +--------+----------------------------------+-----------------------------------+
    | Real   | gamma[size(A, 1), size(B, 2)]    | = integral(phi)\*B                |
    +--------+----------------------------------+-----------------------------------+
    | Real   | gamma1[size(A, 1), size(B, 2)]   | = integral((T-t)\*exp(A\*t))\*B   |
    +--------+----------------------------------+-----------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function integralExpT 
          "Return the exponential, the integral of the exponential, and time-weighted integral of the exponential of a matrix"

          extends Modelica.Icons.Function;
          input Real A[:, size(A, 1)];
          input Real B[size(A, 1), :];
          input Real T=1;
          output Real phi[size(A, 1), size(A, 1)] "= exp(A*T)";
          output Real gamma[size(A, 1), size(B, 2)] "= integral(phi)*B";
          output Real gamma1[size(A, 1), size(B, 2)] "= integral((T-t)*exp(A*t))*B";
        protected 
          Integer nmax=200;
          /*max number of iterations*/
          parameter Integer na=size(A, 1);
          parameter Integer nb=size(B, 2);
          Integer j=1;
          Boolean done=false;
          Real F[na + 2*nb, na + 2*nb];

        algorithm 
          F := [A, B, zeros(na, nb); zeros(2*nb, na), zeros(2*nb, nb), [identity(nb);
             zeros(nb, nb)]];
          F := exp(F, T);
          phi := F[1:na, 1:na];
          gamma := F[1:na, na + 1:na + nb];
          gamma1 := F[1:na, na + nb + 1:na + 2*nb];

        end integralExpT;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.continuousLyapunov
    -------------------------------------------------------------------------------------------------

    **Return solution X of the continuous-time Lyapunov equation X\*A +
    A'\*X = C**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     X = Matrices.continuousLyapunov(A, C);
                     X = Matrices.continuousLyapunov(A, C, ATisSchur, eps);

    Description
    ^^^^^^^^^^^

    This function computes the solution **X** of the continuous-time
    Lyapunov equation

        ::

             X*A + A'*X = C

    using the Schur method for Lyapunov equations proposed by Bartels
    and Stewart [1].

    In a nutshell, the problem is reduced to the corresponding problem

        ::

             Y*R' + R*Y = D

    with **R**=**U**'\***A'**\***U** is the real Schur form of **A**'
    and **D**=**U**'\***C**\***U** and **Y**=**U**'\***X**\***U** are
    the corresponding transformations of **C** and **X**. This problem
    is solved sequently for the 1x1 or 2x2 Schur blocks by exploiting
    the block triangular form of **R**. Finally the solution of the
    original problem is recovered as **X**=**U**\***Y**\***U**'.
     The boolean input "ATisSchur" indicates to omit the transformation
    to Schur in the case that **A**' has already Schur form.

    References
    ^^^^^^^^^^

    ::

          [1] Bartels, R.H. and Stewart G.W.
              Algorithm 432: Solution of the matrix equation AX + XB = C.
              Comm. ACM., Vol. 15, pp. 820-826, 1972.

    Example
    ^^^^^^^

        ::

              A = [1, 2,  3,  4;
                   3, 4,  5, -2;
                  -1, 2, -3, -5;
                   0, 2,  0,  6];

              C =  [-2, 3, 1, 0;
                    -6, 8, 0, 1;
                     2, 3, 4, 5;
                    0, -2, 0, 0];

              X = continuousLyapunov(A, C);

              results in:

              X = [1.633, -0.761,  0.575, -0.656;
                  -1.158,  1.216,  0.047,  0.343;
                  -1.066, -0.052, -0.916,  1.61;
                  -2.473,  0.717, -0.986,  1.48]

    See also
    ^^^^^^^^

    `Matrices.continuousSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousSylvester>`_,
    `Matrices.discreteLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteLyapunov>`_

    ::

    Inputs
    ~~~~~~

    +-----------+-----------------------------+-----------------------------------+----------------------------------------------------+
    | Type      | Name                        | Default                           | Description                                        |
    +===========+=============================+===================================+====================================================+
    | Real      | A[:, size(A, 1)]            |                                   | Square matrix A in X\*A + A'\*X = C                |
    +-----------+-----------------------------+-----------------------------------+----------------------------------------------------+
    | Real      | C[size(A, 1), size(A, 2)]   |                                   | Square matrix C in X\*A + A'\*X = C                |
    +-----------+-----------------------------+-----------------------------------+----------------------------------------------------+
    | Boolean   | ATisSchur                   | false                             | True if transpose(A) has already real Schur form   |
    +-----------+-----------------------------+-----------------------------------+----------------------------------------------------+
    | Real      | eps                         | Modelica.Math.Matrices.norm(...   | Tolerance eps                                      |
    +-----------+-----------------------------+-----------------------------------+----------------------------------------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+--------------------------------------------------------+
    | Type   | Name                        | Description                                            |
    +========+=============================+========================================================+
    | Real   | X[size(A, 1), size(A, 2)]   | Solution X of the Lyapunov equation X\*A + A'\*X = C   |
    +--------+-----------------------------+--------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function continuousLyapunov 
          "Return solution X of the continuous-time Lyapunov equation X*A + A'*X = C"
          import Modelica.Math.Matrices;

          input Real A[:,size(A, 1)] "Square matrix A in X*A + A'*X = C";
          input Real C[size(A, 1),size(A, 2)] "Square matrix C in X*A + A'*X = C";
          input Boolean ATisSchur=false 
            "True if transpose(A) has already real Schur form";
          input Real eps=Modelica.Math.Matrices.norm(A, 1)*10*1e-15 "Tolerance eps";

        protected 
          Integer n=size(A, 1);
          Real R[size(A, 1),size(A, 2)] "rsf of A', i.e., R=U'A'U";
          Real U[size(A, 1),size(A, 2)] "transformation matrix U for R=U'A'U";
          Real D[size(A, 1),size(A, 2)] "Matrix D=U'*C*U";
          Real R11[size(A, 1),size(A, 2)];
          Real R22[size(A, 1),size(A, 2)];
          Real R12[size(A, 1),size(A, 2)];
          Real R21[size(A, 1),size(A, 2)];
          Real R2[2*size(A, 1),2*size(A, 2)];
          Real I[size(A, 1),size(A, 1)]=identity(size(A, 1));
          Real y[2*size(A, 1)];
          Real c[2*size(A, 1)];
          Real CC[size(A, 1),2];
          Integer k;

        public 
          output Real X[size(A, 1),size(A, 2)] 
            "Solution X of the Lyapunov equation  X*A + A'*X = C";

        algorithm 
          if n > 1 then
            if ATisSchur then
              R := transpose(A);
              U := identity(n);
              D := C;
            else
              (R,U) := Modelica.Math.Matrices.realSchur(transpose(A));
              D := transpose(U)*C*U;
            end if;

            X := zeros(n, n);

        // Calculate the last 1 or 2 columns of X
            R22 := R;
            for i1 in 1:n loop
              R22[i1, i1] := R[i1, i1] + R[n, n];
            end for;
            if abs(R[n, n - 1]) < eps then
              X[:, n] := Matrices.solve(R22, D[:, n]);
              k := n - 1;
            else
              R11 := R;
              R12 := zeros(n, n);
              R21 := zeros(n, n);
              for i1 in 1:n loop
                R11[i1, i1] := R[i1, i1] + R[n - 1, n - 1];
                R12[i1, i1] := R[n - 1, n];
                R21[i1, i1] := R[n, n - 1];
              end for;

        // solve 2nx2n equation for 2x2 Schur bump with Kronecker product and vec operator approach
              R2 := [R11,R12; R21,R22];
              c := cat(1, D[:, n - 1], D[:, n]);
              y := Matrices.solve(R2, c);
              X[:, n - 1] := y[1:n];
              X[:, n] := y[n + 1:2*n];
              k := n - 2;
            end if;

        // Calculate the rest of X
            while k > 1 loop
              R22 := R;
              for i1 in 1:n loop
                R22[i1, i1] := R[i1, i1] + R[k, k];
              end for;
              if abs(R[k, k - 1]) < eps then
                //real eigenvalue
                X[:, k] := Matrices.solve(R22, D[:, k] - vector(X[:, k + 1:n]*matrix(R[
                  k, k + 1:n])));
                k := k - 1;
              else
               // conjugated complex eigenvalues
                R11 := R;
                R12 := zeros(n, n);
                R21 := zeros(n, n);
                for i1 in 1:n loop
                  R11[i1, i1] := R[i1, i1] + R[k - 1, k - 1];
                  R12[i1, i1] := R[k - 1, k];
                  R21[i1, i1] := R[k, k - 1];
                end for;
                R2 := [R11,R12; R21,R22];
                CC := D[:, k - 1:k] - X[:, k + 1:n]*transpose(R[k - 1:k, k + 1:n]);
                c := cat(
                  1,
                  CC[:, 1],
                  CC[:, 2]);
                y := Matrices.solve(R2, c);
                X[:, k - 1] := y[1:n];
                X[:, k] := y[n + 1:2*n];

                k := k - 2;
              end if;
            end while;// k=1 or k=0

        // if k=1 the first column (if there exist a real eigenvalue) has to be calculated separately
            if k == 1 then
              R22 := R;
              for i1 in 1:n loop
                R22[i1, i1] := R[i1, i1] + R[1, 1];
              end for;
              X[:, 1] := Matrices.solve(R22, D[:, 1] - vector(X[:, 2:n]*matrix(R[1, 2:n])));
            end if;

        // transform X corresponding to the original form
            if not ATisSchur then
              X := U*X*transpose(U);
            end if;

          elseif n == 1 then //simple scalar equation
            X[1, 1] := C[1, 1]/(2*A[1, 1]);
          else
            X := fill(0, 0, 0);
          end if;

        end continuousLyapunov;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.continuousSylvester
    --------------------------------------------------------------------------------------------------

    **Return solution X of the continuous-time Sylvester equation A\*X +
    X\*B = C**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     X = Matrices.continuousSylvester(A, B, C);
                     X = Matrices.continuousSylvester(A, B, C, AisSchur, BisSchur);

    Description
    ^^^^^^^^^^^

    Function **continuousSylvester** computes the solution **X** of the
    continuous-time Sylvester equation

        ::

             A*X + X*B = C.

    using the Schur method for Sylvester equations proposed by Bartels
    and Stewart [1].

    In a nutshell, the problem is reduced to the corresponding problem

        ::

             S*Y + Y*T = D.

    with **S**=**U**'\***A**\***U** is the real Schur of **A**,
    **T**=**V**'\***T**\***V** is the real Schur form of **B** and
    **D**=**U**'\***C**\***V** and **Y**=**U**\***X**\***V**' are the
    corresponding transformations of **C** and **X**. This problem is
    solved sequently by exploiting the block triangular form of **S**
    and **T**. Finally the solution of the original problem is recovered
    as **X**=**U**'\***Y**\***V**.
     The boolean inputs "AisSchur" and "BisSchur" indicate to omit one
    or both of the transformation to Schur in the case that **A** and/or
    **B** have already Schur form.

    The function applies LAPACK-routine DTRSYL. See
    `LAPACK.dtrsyl <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dtrsyl>`_
    for more information.

    References
    ^^^^^^^^^^

    ::

          [1] Bartels, R.H. and Stewart G.W.
              Algorithm 432: Solution of the matrix equation AX + XB = C.
              Comm. ACM., Vol. 15, pp. 820-826, 1972.

    Example
    ^^^^^^^

        ::

              A = [17.0,   24.0,   1.0,   8.0,   15.0 ;
                   23.0,    5.0,   7.0,  14.0,   16.0 ;
                    0.0,    6.0,  13.0,  20.0,   22.0;
                    0.0,    0.0,  19.0,  21.0,    3.0 ;
                    0.0,    0.0,   0.0,   2.0,    9.0];

              B =  [8.0, 1.0, 6.0;
                    0.0, 5.0, 7.0;
                    0.0, 9.0, 2.0];

              C = [62.0,  -12.0, 26.0;
                   59.0,  -10.0, 31.0;
                   70.0,  -6.0,   9.0;
                   35.0,  31.0,  -7.0;
                   36.0, -15.0,   7.0];

              X = continuousSylvester(A, B, C);

              results in:

              X = [0.0,  0.0,  1.0;
                   1.0,  0.0,  0.0;
                   0.0,  1.0,  0.0;
                   1.0,  1.0, -1.0;
                   2.0, -2.0,  1.0];

    See also
    ^^^^^^^^

    `Matrices.discreteSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteSylvester>`_,
    `Matrices.continuousLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousLyapunov>`_

    ::

    Inputs
    ~~~~~~

    +-----------+-----------------------------+-----------+-----------------------------------------+
    | Type      | Name                        | Default   | Description                             |
    +===========+=============================+===========+=========================================+
    | Real      | A[:, :]                     |           | Square matrix A                         |
    +-----------+-----------------------------+-----------+-----------------------------------------+
    | Real      | B[:, :]                     |           | Square matrix B                         |
    +-----------+-----------------------------+-----------+-----------------------------------------+
    | Real      | C[size(A, 1), size(B, 2)]   |           | Matrix C                                |
    +-----------+-----------------------------+-----------+-----------------------------------------+
    | Boolean   | AisSchur                    | false     | True if A has already real Schur form   |
    +-----------+-----------------------------+-----------+-----------------------------------------+
    | Boolean   | BisSchur                    | false     | True if B has already real Schur form   |
    +-----------+-----------------------------+-----------+-----------------------------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+-------------------------------------------------+
    | Type   | Name                        | Description                                     |
    +========+=============================+=================================================+
    | Real   | X[size(A, 1), size(B, 2)]   | Solution of the continuous Sylvester equation   |
    +--------+-----------------------------+-------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function continuousSylvester 
          "Return solution X of the continuous-time Sylvester equation A*X + X*B = C"
          import Modelica.Math.Matrices;

          input Real A[:,:] "Square matrix A";
          input Real B[:,:] "Square matrix B";
          input Real C[size(A, 1),size(B, 2)] "Matrix C";
          input Boolean AisSchur=false "True if A has already real Schur form";
          input Boolean BisSchur=false "True if B has already real Schur form";
          output Real X[size(A, 1),size(B, 2)] 
            "Solution of the continuous Sylvester equation";

        protected 
          Integer n=size(A, 1);
          Integer m=size(B, 1);
          Real S[size(A, 1),size(A, 2)];
          Real T[size(B, 1),size(B, 2)];
          Real U[size(A, 1),size(A, 1)];
          Real V[size(B, 1),size(B, 1)];
          Real Chat[size(C, 1),size(C, 2)];
          Real scale;
          Integer info;

        algorithm 
          if n > 1 and m > 1 then
            if AisSchur then
              S := A;
              U := identity(n);
            else
              (S,U) := Modelica.Math.Matrices.realSchur(    A);
            end if;
            if BisSchur then
              T := B;
              V := identity(m);
            else
              (T,V) := Modelica.Math.Matrices.realSchur(    B);
            end if;

            Chat := if AisSchur and BisSchur then C else if AisSchur then C*V else if 
              BisSchur then transpose(U)*C else transpose(U)*C*V;
            (X,scale,info) := Matrices.LAPACK.dtrsyl(S, T, Chat);
            assert(info == 0, "Solving of Sylvester equation with Matrices.continuousSylvester was not sucessfull.\n
                            The value of info is " + String(info) + ", but should be zero. A value unequal to zero means:\n
                    < 0: if INFO = -i, the i-th argument had an illegal value\n
                    = 1: A and B have common or very close eigenvalues; perturbed
                         values were used to solve the equation (but the matrices
                         A and B are unchanged).");
            X := if AisSchur and BisSchur then scale*X else if AisSchur then scale*X*
              transpose(V) else if BisSchur then scale*U*X else scale*U*X*transpose(V);
          else
            X := fill(0, n, m);
          end if;

        end continuousSylvester;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.continuousRiccati
    ------------------------------------------------------------------------------------------------

    **Return solution X of the continuous-time algebraic Riccati
    equation A'\*X + X\*A - X\*B\*inv(R)\*B'\*X + Q = 0 (care)**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                                            X = Matrices.continuousRiccati(A, B, R, Q);
                    (X, alphaReal, alphaImag) = Matrices.continuousRiccati(A, B, R, Q, true);

    Description
    ^^^^^^^^^^^

    Function **continuousRiccati** computes the solution **X** of the
    continuous-time algebraic Riccati equation

        ::

             A'*X + X*A - X*G*X + Q = 0

    with ``G = B*inv(R)*B'`` using the Schur vector approach proposed by
    Laub [1].

    It is assumed that **Q** is symmetric and positive semidefinite and
    **R** is symmetric, nonsingular and positive definite, (**A**,**B**)
    is stabilizable and (**A**,**Q**) is detectable.

    **These assumptions are not checked in this function !!**

    The assumptions guarantee that the Hamiltonian matrix

        ::

            H = [A, -G; -Q, -A']

    has no pure imaginary eigenvalue and can be put to an ordered real
    Schur form

        ::

            U'*H*U = S = [S11, S12; 0, S22]

    with orthogonal similarity transformation **U**. **S** is ordered in
    such a way, that **S**11 contains the n stable eigenvalues of the
    closed loop system with system matrix **A** -
    **B**\*inv(**R**)\***B**'\***X**. If **U** is partitioned to

        ::

            U = [U11, U12; U21, U22]

    with dimenstions according to **S**, the solution **X** is
    calculated by

        ::

            X*U11 = U21.

    With optional input ``refinement=true`` a subsequent iterative
    refinement based on Newton's method with exact line search is
    applied. See
    `continuousRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.continuousRiccatiIterative>`_
    for more information.

    The algorithm calls LAPACK routines
    `dgehrd <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dgehrd>`_
    (to compute the upper Hessenberg matrix of **H**),
    `dorghr <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dorghr>`_
    (to calculate the orthogonal matrix from the elementary reflectors
    as returned from dgehrd),
    `dhseqr <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dhseqr>`_
    (to put transformed **H** to Schur form and to calculate the
    eigenvalues of the closed loop system) and
    `dtrsen <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dtrsen>`_
    (to compute the ordered real Schur form and matrix **U**).

    References
    ^^^^^^^^^^

    ::

          [1] Laub, A.J.
              A Schur Method for Solving Algebraic Riccati equations.
              IEEE Trans. Auto. Contr., AC-24, pp. 913-921, 1979.

    Example
    ^^^^^^^

        ::

              A = [0.0, 1.0;
                   0.0, 0.0];

              B = [0.0;
                   1.0];

              R = [1];

              Q = [1.0, 0.0;
                   0.0, 2.0];

            X = continuousRiccati(A, B, R, Q);

              results in:

            X = [2.0, 1.0;
                 1.0, 2.0];

    See also
    ^^^^^^^^

    `Matrices.Utilities.continuousRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.continuousRiccatiIterative>`_,
    `Matrices.discreteRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteRiccati>`_

    ::

    Inputs
    ~~~~~~

    +-----------+-----------------------------+------------------------+----------------------------------+
    | Type      | Name                        | Default                | Description                      |
    +===========+=============================+========================+==================================+
    | Real      | A[:, size(A, 1)]            |                        | Square matrix A in CARE          |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Real      | B[size(A, 1), :]            |                        | Matrix B in CARE                 |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Real      | R[size(B, 2), size(B, 2)]   | identity(size(B, 2))   | Matrix R in CARE                 |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Real      | Q[size(A, 1), size(A, 1)]   | identity(size(A, 1))   | Matrix Q in CARE                 |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Boolean   | refine                      | false                  | True for subsequent refinement   |
    +-----------+-----------------------------+------------------------+----------------------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+---------------------------------------------------------+
    | Type   | Name                        | Description                                             |
    +========+=============================+=========================================================+
    | Real   | X[size(A, 1), size(A, 2)]   | stabilizing solution of CARE                            |
    +--------+-----------------------------+---------------------------------------------------------+
    | Real   | alphaReal[size(H, 1)]       | Real parts of eigenvalue=alphaReal+i\*alphaImag         |
    +--------+-----------------------------+---------------------------------------------------------+
    | Real   | alphaImag[size(H, 1)]       | Imaginary parts of eigenvalue=(alphaReal+i\*alphaImag   |
    +--------+-----------------------------+---------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function continuousRiccati 
          "Return solution X of the continuous-time algebraic Riccati equation A'*X + X*A - X*B*inv(R)*B'*X + Q = 0 (care)"
          import Modelica.Math.Matrices;

          input Real A[:,size(A, 1)] "Square matrix A in CARE";
          input Real B[size(A, 1),:] "Matrix B in CARE";
          input Real R[size(B, 2),size(B, 2)]=identity(size(B, 2)) "Matrix R in CARE";
          input Real Q[size(A, 1),size(A, 1)]=identity(size(A, 1)) "Matrix Q in CARE";
          input Boolean refine=false "True for subsequent refinement";

        protected 
          Integer n=size(A, 1);
          Real G[size(A, 1),size(A, 1)]=B*Modelica.Math.Matrices.solve2(R, transpose(B));
          Real H[2*size(A, 1),2*size(A, 1)]=[A,-G; -Q,-transpose(A)];
          Real H_RSF[2*size(A, 1),2*size(A, 1)]=H;
          Real Z[size(H, 1),size(H, 2)];
          Real Z11[size(A, 1),size(A, 2)];
          Real Z21[size(A, 1),size(A, 2)];

          Integer info;

        public 
          output Real X[size(A, 1),size(A, 2)] "stabilizing solution of CARE";
          output Real alphaReal[size(H, 1)] 
            "Real parts of eigenvalue=alphaReal+i*alphaImag";
          output Real alphaImag[size(H, 1)] 
            "Imaginary parts of eigenvalue=(alphaReal+i*alphaImag";
        algorithm 
          if n > 1 then
            (H_RSF,Z,alphaReal,alphaImag) := Modelica.Math.Matrices.realSchur(    H);
            (H_RSF,Z,alphaReal,alphaImag) := Matrices.Utilities.reorderRSF(
              H_RSF,
              Z,
              alphaReal,
              alphaImag,
              true);

            Z11 := Z[1:n, 1:n];
            Z21 := Z[n + 1:2*n, 1:n];
            if size(Z11, 1) > 0 then

              (X,info) := Matrices.LAPACK.dgesvx(Z11, transpose(Z21));
              //this function does not need to transpose Z11 as solve2 does with //  X := transpose(Matrices.solve2(transpose(Z11), transpose(Z21)));
              assert(info == 0, "Solving a linear system of equations with function \"Matrices.LAPACK.dgesvx\" is not possible, because the system has either no or infinitely many solutions (input A is singular).");
              X := transpose(X);

              if refine then
                X := Modelica.Math.Matrices.Utilities.continuousRiccatiIterative(
                                                A, B, R, Q, X);
              end if;
            else
              X := fill(0, size(Z21, 1), size(Z11, 1));
            end if;

          elseif n == 1 then
            X := matrix((A[1, 1] - sqrt(A[1, 1]*A[1, 1] + G[1, 1]*Q[1, 1]))/G[1, 1]);
            if X[1, 1]*G[1, 1] < A[1, 1] then
              X := matrix((A[1, 1] + sqrt(A[1, 1]*A[1, 1] + G[1, 1]*Q[1, 1]))/G[1, 1]);
            end if;
          else
            X := fill(0, 0, 0);
          end if;

        end continuousRiccati;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.discreteLyapunov
    -----------------------------------------------------------------------------------------------

    **Return solution X of the discrete-time Lyapunov equation A'\*X\*A
    + sgn\*X = C**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     X = Matrices.discreteLyapunov(A, C);
                     X = Matrices.discreteLyapunov(A, C, ATisSchur, sgn, eps);

    Description
    ^^^^^^^^^^^

    This function computes the solution **X** of the discrete-time
    Lyapunov equation

        ::

             A'*X*A + sgn*X = C

    where sgn=1 or sgn =-1. For sgn = -1, the discrete Lyapunov equation
    is a special case of the Stein equation:

        ::

             A*X*B - X + Q = 0.

    The algorithm uses the Schur method for Lyapunov equations proposed
    by Bartels and Stewart [1].

    In a nutshell, the problem is reduced to the corresponding problem

        ::

             R*Y*R' + sgn*Y = D.

    with **R**=**U**'\***A'**\***U** is the the real Schur form of
    **A**' and **D**=**U**'\***C**\***U** and **Y**=**U**'\***X**\***U**
    are the corresponding transformations of **C** and **X**. This
    problem is solved sequently by exploiting the block triangular form
    of **R**. Finally the solution of the original problem is recovered
    as **X**=**U**\***Y**\***U**'.
     The boolean input "ATisSchur" indicates to omit the transformation
    to Schur in the case that **A**' has already Schur form.

    References
    ^^^^^^^^^^

    ::

          [1] Bartels, R.H. and Stewart G.W.
              Algorithm 432: Solution of the matrix equation AX + XB = C.
              Comm. ACM., Vol. 15, pp. 820-826, 1972.

    Example
    ^^^^^^^

        ::

              A = [1, 2,  3,  4;
                   3, 4,  5, -2;
                  -1, 2, -3, -5;
                   0, 2,  0,  6];

              C =  [-2,  3, 1, 0;
                    -6,  8, 0, 1;
                     2,  3, 4, 5;
                     0, -2, 0, 0];

              X = discreteLyapunov(A, C, sgn=-1);

              results in:

              X  = [7.5735,   -3.1426,  2.7205, -2.5958;
                   -2.6105,    1.2384, -0.9232,  0.9632;
                    6.6090,   -2.6775,  2.6415, -2.6928;
                   -0.3572,    0.2298,  0.0533, -0.27410];

    See also
    ^^^^^^^^

    `Matrices.discreteSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteSylvester>`_,
    `Matrices.continuousLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousLyapunov>`_

    ::

    Inputs
    ~~~~~~

    +-----------+-----------------------------+-------------------------------------+----------------------------------------------------+
    | Type      | Name                        | Default                             | Description                                        |
    +===========+=============================+=====================================+====================================================+
    | Real      | A[:, size(A, 1)]            |                                     | Square matrix A in A'\*X\*A + sgn\*X = C           |
    +-----------+-----------------------------+-------------------------------------+----------------------------------------------------+
    | Real      | C[size(A, 1), size(A, 2)]   |                                     | Square matrix C in A'\*X\*A + sgn\*X = C           |
    +-----------+-----------------------------+-------------------------------------+----------------------------------------------------+
    | Boolean   | ATisSchur                   | false                               | True if transpose(A) has already real Schur form   |
    +-----------+-----------------------------+-------------------------------------+----------------------------------------------------+
    | Integer   | sgn                         | 1                                   | Specifies the sign in A'\*X\*A + sgn\*X = C        |
    +-----------+-----------------------------+-------------------------------------+----------------------------------------------------+
    | Real      | eps                         | Matrices.norm(A, 1)\*10\*Model...   | Tolerance eps                                      |
    +-----------+-----------------------------+-------------------------------------+----------------------------------------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+-------------------------------------------------------------+
    | Type   | Name                        | Description                                                 |
    +========+=============================+=============================================================+
    | Real   | X[size(A, 1), size(A, 2)]   | Solution X of the Lyapunov equation A'\*X\*A + sgn\*X = C   |
    +--------+-----------------------------+-------------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function discreteLyapunov 
          "Return solution X of the discrete-time Lyapunov equation A'*X*A + sgn*X = C"
          import Modelica.Math.Matrices;

          input Real A[:,size(A, 1)] "Square matrix A in A'*X*A + sgn*X = C";
          input Real C[size(A, 1),size(A, 2)] "Square matrix C in A'*X*A + sgn*X = C";
          input Boolean ATisSchur=false 
            "True if transpose(A) has already real Schur form";
          input Integer sgn=1 "Specifies the sign in A'*X*A + sgn*X = C";
          input Real eps=Matrices.norm(A, 1)*10*Modelica.Constants.eps "Tolerance eps";

        protected 
          Integer n=size(A, 1);
          Real R[size(A, 1),size(A, 2)] "RSF of A', i.e., R=U'A'U";
          Real U[size(A, 1),size(A, 2)] "Transformation matrix U for R=U'A'U";
          Real D[size(A, 1),size(A, 2)] "Matrix D=U'*C*U";
          Real R22[size(A, 1),size(A, 2)];
          Real R11[size(A, 1),size(A, 2)];
          Integer k;

          Real g[size(A, 1)];
          Real w[size(A, 1)];
          Real y[2*size(A, 1)];
          Boolean crit;

        public 
          output Real X[size(A, 1),size(A, 2)] 
            "Solution X of the Lyapunov equation A'*X*A + sgn*X = C";

        algorithm 
          assert(sgn==1 or sgn==-1,"Input sgn in function Math.Matrices.discreteLyapunov() must be 1 or -1, however it is "+String(sgn));
          X := zeros(n, n);
          k := n;
          if n > 1 then
            if ATisSchur then
              R := transpose(A);
              U := identity(n);
              D := C;
            else
              (R,U) := Modelica.Math.Matrices.realSchur(transpose(A));
               D := transpose(U)*C*U;
            end if;

            while k > 0 loop
              w := D[:, k] - R*X[:, k + 1:n]*R[k, k + 1:n];
              crit := if k > 1 then abs(R[k, k - 1]) < eps else false;
              if (k == 1 or crit) then
                R22 := R[k, k]*R;
                for i in 1:n loop
                  R22[i, i] := R22[i, i] + sgn;
                end for;
                X[:, k] := Matrices.solve(R22, w);
                k := k - 1;
              else
                g := D[:, k - 1] - R*X[:, k + 1:n]*R[k - 1, k + 1:n];
                R11 := R[k - 1, k - 1]*R;
                R22 := R[k, k]*R;
                for i in 1:n loop
                  R11[i, i] := R11[i, i] + sgn;
                  R22[i, i] := R22[i, i] + sgn;
                end for;
                y := Matrices.solve([R11,R[k - 1, k]*R; R[k, k - 1]*R,R22], cat(1, g, w));
                X[:, k - 1] := y[1:n];
                X[:, k] := y[n + 1:2*n];
                k := k - 2;
              end if;
            end while;

        // transform X corresponding to the original form
            if not ATisSchur then
              X := U*X*transpose(U);
            end if;

          elseif n == 1 then
            X[1, 1] := C[1, 1]/(A[1, 1]*A[1, 1] + sgn);
          else
            X := fill(0, 0, 0);
          end if;

        end discreteLyapunov;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.discreteSylvester
    ------------------------------------------------------------------------------------------------

    **Return solution of the discrete-time Sylvester equation A\*X\*B +
    sgn\*X = C**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     X = Matrices.discreteSylvester(A, B, C);
                     X = Matrices.discreteSylvester(A, B, C, AisHess, BTisSchur, sgn, eps);

    Description
    ^^^^^^^^^^^

    Function **discreteSylvester** computes the solution **X** of the
    discrete-time Sylvester equation

        ::

             A*X*B + sgn*X = C.

    where sgn = 1 or sgn = -1. The algorithm applies the
    Hessenberg-Schur method proposed by Golub et al [1]. For sgn = -1,
    the discrete Sylvester equation is also known as Stein equation:

        ::

             A*X*B - X + Q = 0.

    In a nutshell, the problem is reduced to the corresponding problem

        ::

             H*Y*S' + sgn*Y = F.

    with **H**=**U**'\***A**\***U** is the Hessenberg form of **A** and
    **S**=**V**'\***B**'\***V** is the real Schur form of **B**',
    **F**=**U**'\***C**\***V** and **Y**=**U**\***X**\***V**' are
    appropriate transformations of **C** and **X**. This problem is
    solved sequently by exploiting the specific forms of **S** and
    **H**. Finally the solution of the original problem is recovered as
    **X**=**U**'\***Y**\***V**.
     The boolean inputs "AisHess" and "BTisSchur" indicate to omit one
    or both of the transformation to Hessenberg form or Schur form
    repectively in the case that **A** and/or **B** have already
    Hessenberg form or Schur respectively.

    References
    ^^^^^^^^^^

    ::

          [1] Golub, G.H., Nash, S. and Van Loan, C.F.
              A Hessenberg-Schur method for the problem AX + XB = C.
              IEEE Transaction on Automatic Control, AC-24, no. 6, pp. 909-913, 1979.

    Example
    ^^^^^^^

        ::

              A = [1.0,   2.0,   3.0;
                   6.0,   7.0,   8.0;
                   9.0,   2.0,   3.0];

              B = [7.0,   2.0,   3.0;
                   2.0,   1.0,   2.0;
                   3.0,   4.0,   1.0];

              C = [271.0,   135.0,   147.0;
                   923.0,   494.0,   482.0;
                   578.0,   383.0,   287.0];

              X = discreteSylvester(A, B, C);

              results in:
              X = [2.0,   3.0,   6.0;
                   4.0,   7.0,   1.0;
                   5.0,   3.0,   2.0];

    See also
    ^^^^^^^^

    `Matrices.continuousSylvester <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousSylvester>`_,
    `Matrices.discreteLyapunov <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteLyapunov>`_

    ::

    Inputs
    ~~~~~~

    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+
    | Type      | Name                        | Default                             | Description                                    |
    +===========+=============================+=====================================+================================================+
    | Real      | A[:, size(A, 1)]            |                                     | Square matrix A in A\*X\*B + sgn\*X = C        |
    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+
    | Real      | B[:, size(B, 1)]            |                                     | Square matrix B in A\*X\*B + sgn\*X = C        |
    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+
    | Real      | C[size(A, 2), size(B, 1)]   |                                     | Rectangular matrix C in A\*X\*B + sgn\*X = C   |
    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+
    | Boolean   | AisHess                     | false                               | True if A has already Hessenberg form          |
    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+
    | Boolean   | BTisSchur                   | false                               | True if B' has already real Schur form         |
    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+
    | Integer   | sgn                         | 1                                   | Specifies the sign in A\*X\*B + sgn\*X = C     |
    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+
    | Real      | eps                         | Matrices.norm(A, 1)\*10\*Model...   | Tolerance                                      |
    +-----------+-----------------------------+-------------------------------------+------------------------------------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+--------------------------------------------------------------------+
    | Type   | Name                        | Description                                                        |
    +========+=============================+====================================================================+
    | Real   | X[size(A, 2), size(B, 1)]   | solution of the discrete Sylvester equation A\*X\*B + sgn\*X = C   |
    +--------+-----------------------------+--------------------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function discreteSylvester 
          "Return solution of the discrete-time Sylvester equation A*X*B + sgn*X = C"
          import Modelica.Math.Matrices;

          input Real A[:,size(A, 1)] "Square matrix A in A*X*B + sgn*X = C";
          input Real B[:,size(B, 1)] "Square matrix B in A*X*B + sgn*X = C";
          input Real C[size(A, 2),size(B, 1)] 
            "Rectangular matrix C in A*X*B + sgn*X = C";
          input Boolean AisHess=false "True if A has already Hessenberg form";
          input Boolean BTisSchur=false "True if B' has already real Schur form";
          input Integer sgn=1 "Specifies the sign in A*X*B + sgn*X = C";
          input Real eps=Matrices.norm(A, 1)*10*Modelica.Constants.eps "Tolerance";

        protected 
          Integer n=size(A, 1);
          Integer m=size(B, 1);
          Real H[n,n] "Hessenberg form  of A, i.e., H=U'AU";
          Real U[n,n] "Transformation matrix U for H=U'AU";
          Real S[m,m] "RSF form  of B, i.e., S=Z'BZ";
          Real Z[m,m] "Transformation matrix Z for S=Z'BZ";
          Real F[n,m] "Appropriate transformation of the right side C, F=U'*C*Z";

          Real R22[n,n];
          Real R11[n,n];
          Integer k;

          Real w[n];
          Real g[n];
          Real y[2*n];
          Boolean crit;

        public 
          output Real X[size(A, 2),size(B, 1)] 
            "solution of the discrete Sylvester equation A*X*B + sgn*X = C";

        algorithm 
          assert(sgn==1 or sgn==-1,"Input sgn in function Math.Matrices.discreteLyapunov() must be 1 or -1, however it is "+String(sgn));
          X := zeros(n, m);
          k := m;

          if n > 1 and m > 1 then
            if AisHess then
              H := A;
              U := identity(n);
              if BTisSchur then
                S := B;
                Z := identity(m);
                F := C;
              else
                (S,Z) := Matrices.realSchur(transpose(B));
                S := transpose(S);
                F := C*Z;
              end if;
            else
              (H,U) := Matrices.hessenberg(A);
              if BTisSchur then
                S := B;
                Z := identity(m);
                F := transpose(U)*C;
              else
                (S,Z) := Matrices.realSchur(transpose(B));
                S := transpose(S);
                F := transpose(U)*C*Z;
              end if;
            end if;

            while k >0 loop

              w := F[:, k] - H*X[:, k + 1:m]*S[k +1:m,k];
              crit := if k > 1 then abs(S[k-1, k]) < eps else false;

              if (k == 1 or crit) then //real eigenvalue in Schur form
                R22 := S[k, k]*H;
                for i in 1:n loop
                  R22[i, i] := R22[i, i] + sgn;
                end for;
                X[:, k] := Matrices.solve(R22, w); // solve one column in X for one real eigenvalue
                k := k - 1;
              else // pair of complex eigenvalues, i.e., 2x2 Schur bump
                g := F[:, k-1] - H*X[:, k + 1:m]*S[k+1 :m,k-1];
                R22 := S[k, k]*H;
                R11 := S[k-1, k-1]*H;
                for i in 1:n loop
                  R11[i, i] := R11[i, i] + sgn;
                  R22[i, i] := R22[i, i] + sgn;
                end for;
                y := Matrices.solve([R11,S[k,  k-1]*H; S[k-1, k]*H,R22], cat(1, g, w));// solve two columns in X for one conjugated complex pole pair
                X[:, k-1] := y[1:n];
                X[:, k] := y[n + 1:2*n];
                k := k - 2;
              end if;
            end while;

        // transform X corresponding to the original form
            if not (AisHess and BTisSchur) then
              X := if AisHess then X*transpose(Z) else if BTisSchur then U*X else U*X*transpose(Z);
            end if;

          elseif n == 1 and m == 1 then // simple scalar equation
            X[1, 1] := C[1, 1]/(A[1, 1]*B[1, 1] + sgn);
          else
            X := fill(0, 0, 0);
          end if;

        end discreteSylvester;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.discreteRiccati
    ----------------------------------------------------------------------------------------------

    **Return solution of discrete-time algebraic Riccati equation
    A'\*X\*A - X - A'\*X\*B\*inv(R + B'\*X\*B)\*B'\*X\*A + Q = 0
    (dare)**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                                             X = Matrices.discreteRiccati(A, B, R, Q);
                     (X, alphaReal, alphaImag) = Matrices.discreteRiccati(A, B, R, Q, true);

    Description
    ^^^^^^^^^^^

    Function **discreteRiccati** computes the solution **X** of the
    discrete-time algebraic Riccati equation

        ::

             A'*X*A - X - A'*X*B*inv(R + B'*X*B)*B'*X*A + Q = 0

    using the Schur vector approach proposed by Laub [1].

    It is assumed that **Q** is symmetric and positive semidefinite and
    **R** is symmetric, nonsingular and positive definite, (**A**,**B**)
    is stabilizable and (**A**,**Q**) is detectable. Using this method,
    **A** has also to be invertible.

    **These assumptions are not checked in this function !!!**

    The assumptions guarantee that the Hamiltonian matrix.

        ::

            H = [A + G*T*Q, -G*T; -T*Q, T]

    with

        ::

                 -T
            T = A

    and

        ::

                   -1
            G = B*R *B'

    has no eigenvalue on the unit circle and can be put to an ordered
    real Schur form

        ::

            U'*H*U = S = [S11, S12; 0, S22]

    with orthogonal similarity transformation **U**. **S** is ordered in
    such a way, that **S11** contains the n stable eigenvalues of the
    closed loop system with system matrix

        ::

                              -1
            A - B*(R + B'*X*B)  *B'*X*A

    If **U** is partitioned to

        ::

            U = [U11, U12; U21, U22]

    according to **S**, the solution **X** can be calculated by

        ::

            X*U11 = U21.

    The algorithm calls LAPACK routines
    `dgehrd <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dgehrd>`_
    (to compute the upper Hessenberg matrix of **H**),
    `dorghr <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dorghr>`_
    (to calculate the orthogonal matrix from the elementary reflectors
    as returned from dgehrd),
    `dhseqr <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dhseqr>`_
    (to put transformed **H** to Schur form and to calculate the
    eigenvalues of the closed loop system) and
    `dtrsen <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dtrsen>`_
    (to compute the ordered real Schur form and matrix **U**).

    References
    ^^^^^^^^^^

    ::

          [1] Laub, A.J.
              A Schur Method for Solving Algebraic Riccati equations.
              IEEE Trans. Auto. Contr., AC-24, pp. 913-921, 1979.

    Example
    ^^^^^^^

        ::

             A  = [4.0    3.0]
                  -4.5,  -3.5];

             B  = [ 1.0;
                   -1.0];

             R = [1.0];

             Q = [9.0, 6.0;
                  6.0, 4.0]

            X = discreteRiccati(A, B, R, Q);

              results in:

            X = [14.5623, 9.7082;
                  9.7082, 6.4721];

    See also
    ^^^^^^^^

    `Matrices.continuousRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousRiccati>`_

    ::

    Inputs
    ~~~~~~

    +-----------+-----------------------------+------------------------+----------------------------------+
    | Type      | Name                        | Default                | Description                      |
    +===========+=============================+========================+==================================+
    | Real      | A[:, size(A, 1)]            |                        | Square matrix A in DARE          |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Real      | B[size(A, 1), :]            |                        | Matrix B in DARE                 |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Real      | R[size(B, 2), size(B, 2)]   | identity(size(B, 2))   | Matrix R in DARE                 |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Real      | Q[size(A, 1), size(A, 1)]   | identity(size(A, 1))   | Matrix Q in DARE                 |
    +-----------+-----------------------------+------------------------+----------------------------------+
    | Boolean   | refine                      | false                  | True for subsequent refinement   |
    +-----------+-----------------------------+------------------------+----------------------------------+

    Outputs
    ~~~~~~~

    +--------+-----------------------------+--------------------------------------------------------------------+
    | Type   | Name                        | Description                                                        |
    +========+=============================+====================================================================+
    | Real   | X[size(A, 1), size(A, 2)]   | orthogonal matrix of the Schur vectors associated to ordered rsf   |
    +--------+-----------------------------+--------------------------------------------------------------------+
    | Real   | alphaReal[size(H, 1)]       | Real part of eigenvalue=alphaReal+i\*alphaImag                     |
    +--------+-----------------------------+--------------------------------------------------------------------+
    | Real   | alphaImag[size(H, 1)]       | Imaginary part of eigenvalue=(alphaReal+i\*alphaImag               |
    +--------+-----------------------------+--------------------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function discreteRiccati 
          "Return solution of discrete-time algebraic Riccati equation A'*X*A - X - A'*X*B*inv(R + B'*X*B)*B'*X*A + Q = 0 (dare)"

          import Modelica.Math.Matrices;
          input Real A[:,size(A, 1)] "Square matrix A in DARE";
          input Real B[size(A, 1),:] "Matrix B in DARE";
          input Real R[size(B, 2),size(B, 2)]=identity(size(B, 2)) "Matrix R in DARE";
          input Real Q[size(A, 1),size(A, 1)]=identity(size(A, 1)) "Matrix Q in DARE";
          input Boolean refine=false "True for subsequent refinement";

        protected 
          Integer n=size(A, 1);
          Real G[size(A, 1),size(A, 1)]=B*Matrices.solve2(R, transpose(B));
          Real AT[n,n]=transpose(A);
          Real LU[n,n];
          Integer p[n];
          Real H[2*n,2*n];
          Real H11[n,n];
          Real H12[n,n];
          Real H21[n,n];
          Real H22[n,n];
          Real H_RSF[2*n,2*n];
          Real Z[size(H, 1),size(H, 2)];
          Real Z11[size(A, 1),size(A, 2)];
          Real Z21[size(A, 1),size(A, 2)];

          Integer info;

        public 
          output Real X[size(A, 1),size(A, 2)] 
            "orthogonal matrix of the Schur vectors associated to ordered rsf";
          output Real alphaReal[size(H, 1)] 
            "Real part of eigenvalue=alphaReal+i*alphaImag";
          output Real alphaImag[size(H, 1)] 
            "Imaginary part of eigenvalue=(alphaReal+i*alphaImag";
        algorithm 
          (LU,p) := Modelica.Math.Matrices.LU(AT);
          H21 := Modelica.Math.Matrices.LU_solve2(
              LU,
              p,
              -Q);
          H22 := Modelica.Math.Matrices.LU_solve2(
              LU,
              p,
              identity(n));
          (LU,p) := Modelica.Math.Matrices.LU(A);
          H12 := Modelica.Math.Matrices.LU_solve2(
              LU,
              p,
              -G);
          H12 := transpose(H12);
          H11 := A - H12*Q;
          H := [H11,H12; H21,H22];
          (H_RSF,Z,alphaReal,alphaImag) := Modelica.Math.Matrices.realSchur(H);
                                                                     // put H to Schur form
          (H_RSF,Z,alphaReal,alphaImag) := Matrices.Utilities.reorderRSF(
              H_RSF,
              Z,
              alphaReal,
              alphaImag,
              false);  // ordered Schur form
          Z11 := Z[1:n, 1:n];
          Z21 := Z[n + 1:2*n, 1:n];
          if size(Z11, 1) > 0 then
        //  X := transpose(Matrices.solve2(transpose(Z11), transpose(Z21)));
            (X,info) := Matrices.LAPACK.dgesvx(Z11, transpose(Z21));//function does not need to transpose Z11 as solve2 does
            X := transpose(X);
            assert(info == 0, "Solving a linear system of equations with function
        \"Matrices.LAPACK.dgesvx\" is not possible, because the system has either
        no or infinitely many solutions (input A is singular).");

            if refine then
              X := Modelica.Math.Matrices.Utilities.discreteRiccatiIterative(
                  A,
                  B,
                  R,
                  Q,
                  X);
            end if;
          else
            X := fill(
                0,
                size(Z21, 1),
                size(Z11, 1));
          end if;

        end discreteRiccati;

    --------------

    |image110| `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.sort
    ----------------------------------------------------------------------------------------------

    **Sort the rows or columns of a matrix in ascending or descending
    order**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                       sorted_M = Matrices.sort(M);
            (sorted_M, indices) = Matrices.sort(M, sortRows=true, ascending=true);

    Description
    ^^^^^^^^^^^

    Function **sort**(..) sorts the rows of a Real matrix M in ascending
    order and returns the result in sorted\_M. If the optional argument
    "sortRows" is **false**, the columns of the matrix are sorted. If
    the optional argument "ascending" is **false**, the rows or columns
    are sorted in descending order. In the optional second output
    argument, the indices of the sorted rows or columns with respect to
    the original matrix are given, such that

    ::

           sorted_M = if sortedRow then M[indices,:] else M[:,indices];

    Example
    ^^^^^^^

        ::

              (M2, i2) := Matrices.sort([2, 1,  0;
                                         2, 0, -1]);
                   -> M2 = [2, 0, -1;
                            2, 1, 0 ];
                      i2 = {2,1};

    ::

    Extends from
    `Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
    (Icon for functions).

    Inputs
    ~~~~~~

    +-----------+-------------+-----------+---------------------------------------------------------+
    | Type      | Name        | Default   | Description                                             |
    +===========+=============+===========+=========================================================+
    | Real      | M[:, :]     |           | Matrix to be sorted                                     |
    +-----------+-------------+-----------+---------------------------------------------------------+
    | Boolean   | sortRows    | true      | = true if rows are sorted, otherwise columns            |
    +-----------+-------------+-----------+---------------------------------------------------------+
    | Boolean   | ascending   | true      | = true if ascending order, otherwise descending order   |
    +-----------+-------------+-----------+---------------------------------------------------------+

    Outputs
    ~~~~~~~

    +-----------+--------------------------------------------------------+---------------------------------------------------------------+
    | Type      | Name                                                   | Description                                                   |
    +===========+========================================================+===============================================================+
    | Real      | sorted\_M[size(M, 1), size(M, 2)]                      | Sorted matrix                                                 |
    +-----------+--------------------------------------------------------+---------------------------------------------------------------+
    | Integer   | indices[if sortRows then size(M, 1) else size(M, 2)]   | sorted\_M = if sortRows then M[indices,:] else M[:,indices]   |
    +-----------+--------------------------------------------------------+---------------------------------------------------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function sort 
          "Sort the rows or columns of a matrix in ascending or descending order"
          extends Modelica.Icons.Function;
          input Real M[:,:] "Matrix to be sorted";
          input Boolean sortRows = true "= true if rows are sorted, otherwise columns";
          input Boolean ascending = true 
            "= true if ascending order, otherwise descending order";
          output Real sorted_M[size(M,1), size(M,2)] = M "Sorted matrix";
          output Integer indices[if sortRows then size(M,1) else size(M,2)] 
            "sorted_M = if sortRows then M[indices,:] else M[:,indices]";

          /* shellsort algorithm; should be improved later */
        protected 
          Integer gap;
          Integer i;
          Integer j;
          Real wM2[size(M,2)];
          Integer wi;
          Integer nM1 = size(M,1);
          Boolean swap;
          Real sorted_MT[size(M,2), size(M,1)];

        encapsulated function greater "Compare whether vector v1 > v2"
            import Modelica;
          extends Modelica.Icons.Function;
            import Modelica.Utilities.Types.Compare;
          input Real v1[:];
          input Real v2[size(v1,1)];
          output Boolean result;
          protected 
          Integer n = size(v1,1);
          Integer i=1;
        algorithm 
          result := false;
          while i <= n loop
             if v1[i] > v2[i] then
                result := true;
                i := n;
             elseif v1[i] < v2[i] then
                i := n;
             end if;
             i := i+1;
          end while;
        end greater;

        encapsulated function less "Compare whether vector v1 < v2"
            import Modelica;
          extends Modelica.Icons.Function;
            import Modelica.Utilities.Types.Compare;
          input Real v1[:];
          input Real v2[size(v1,1)];
          output Boolean result;
          protected 
          Integer n = size(v1,1);
          Integer i=1;
        algorithm 
          result := false;
          while i <= n loop
             if v1[i] < v2[i] then
                result := true;
                i := n;
             elseif v1[i] > v2[i] then
                i := n;
             end if;
             i := i+1;
          end while;
        end less;
        algorithm 
          if not sortRows then
              (sorted_MT,indices) := sort(transpose(M), ascending=ascending);
             sorted_M :=transpose(sorted_MT);
          else
             indices :=1:size(M, 1);
             gap := div(nM1,2);
             while gap > 0 loop
                i := gap;
                while i < nM1 loop
                   j := i-gap;
                   if j>=0 then
                      if ascending then
                         swap := greater(sorted_M[j+1,:], sorted_M[j+gap+1,:]);
                      else
                         swap := less(sorted_M[j+1,:], sorted_M[j+gap+1,:]);
                      end if;
                   else
                      swap := false;
                   end if;

                   while swap loop
                      wM2 := sorted_M[j+1,:];
                      wi := indices[j+1];
                      sorted_M[j+1,:] := sorted_M[j+gap+1,:];
                      sorted_M[j+gap+1,:] := wM2;
                      indices[j+1] := indices[j+gap+1];
                      indices[j+gap+1] := wi;
                      j := j - gap;
                      if j >= 0 then
                         if ascending then
                            swap := greater(sorted_M[j+1,:], sorted_M[j+gap+1,:]);
                         else
                            swap := less(sorted_M[j+1,:], sorted_M[j+gap+1,:]);
                         end if;
                      else
                         swap := false;
                      end if;
                   end while;
                   i := i + 1;
                end while;
                gap := div(gap,2);
             end while;
          end if;
        end sort;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.flipLeftRight
    --------------------------------------------------------------------------------------------

    **Flip the columns of a matrix in left/right direction**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     A_flr = Matrices.flipLeftRight(A);

    Description
    ^^^^^^^^^^^

    Function **flipLeftRight** computes from matrix **A** a matrix
    **A\_flr** with flipped columns, i.e.,
    **A\_flr**[:,i]=**A**[:,n-i+1], i=1,..., n.

    Example
    ^^^^^^^

        ::

              A = [1, 2,  3;
                   3, 4,  5;
                  -1, 2, -3];

              A_flr = flipLeftRight(A);

              results in:

              A_flr = [3, 2,  1;
                       5, 4,  3;
                      -3, 2, -1]

    See also
    ^^^^^^^^

    `Matrices.flipUpDown <Modelica_Math_Matrices.html#Modelica.Math.Matrices.flipUpDown>`_

    ::

    Inputs
    ~~~~~~

    +--------+-----------+-----------+------------------------+
    | Type   | Name      | Default   | Description            |
    +========+===========+===========+========================+
    | Real   | A[:, :]   |           | Matrix to be flipped   |
    +--------+-----------+-----------+------------------------+

    Outputs
    ~~~~~~~

    +--------+---------------------------------+------------------+
    | Type   | Name                            | Description      |
    +========+=================================+==================+
    | Real   | Aflip[size(A, 1), size(A, 2)]   | Flipped matrix   |
    +--------+---------------------------------+------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function flipLeftRight 
          "Flip the columns of a matrix in left/right direction"

          input Real A[:,:] "Matrix to be flipped";
          output Real Aflip[size(A, 1),size(A, 2)] "Flipped matrix";
        algorithm 
          Aflip := A[:,{i for i in size(A,2):-1:1}];

        end flipLeftRight;

    --------------

    `Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.flipUpDown
    -----------------------------------------------------------------------------------------

    **Flip the rows of a matrix in up/down direction**

    Information
    ~~~~~~~~~~~

    ::

    Syntax
    ^^^^^^

        ::

                     A_fud = Matrices.flipUpDown(A);

    Description
    ^^^^^^^^^^^

    Function **flipUpDown** computes from matrix **A** a matrix
    **A\_fud** with flipped rows, i.e., **A\_fud**[i,:]=**A**[n-i+1,:],
    i=1,..., n.

    Example
    ^^^^^^^

        ::

              A = [1, 2,  3;
                   3, 4,  5;
                  -1, 2, -3];

              A_fud = flipUpDown(A);

              results in:

              A_fud  = [-1, 2, -3;
                         3, 4,  5;
                         1, 2,  3]

    See also
    ^^^^^^^^

    `Matrices.flipLeftRight <Modelica_Math_Matrices.html#Modelica.Math.Matrices.flipLeftRight>`_

    ::

    Inputs
    ~~~~~~

    +--------+-----------+-----------+------------------------+
    | Type   | Name      | Default   | Description            |
    +========+===========+===========+========================+
    | Real   | A[:, :]   |           | Matrix to be flipped   |
    +--------+-----------+-----------+------------------------+

    Outputs
    ~~~~~~~

    +--------+---------------------------------+------------------+
    | Type   | Name                            | Description      |
    +========+=================================+==================+
    | Real   | Aflip[size(A, 1), size(A, 2)]   | Flipped matrix   |
    +--------+---------------------------------+------------------+

    Modelica definition
    ~~~~~~~~~~~~~~~~~~~

    ::

        function flipUpDown "Flip the rows of a matrix in up/down direction"

          input Real A[:,:] "Matrix to be flipped";
          output Real Aflip[size(A, 1),size(A, 2)] "Flipped matrix";
        algorithm 
          Aflip := A[{i for i in size(A,1):-1:1},:];

        end flipUpDown;

    --------------

    `Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:48
    2010.

.. |Modelica.Math.Matrices.Examples| image:: Modelica.Math.Matrices.ExamplesS.png
.. |Modelica.Math.Matrices.toString| image:: Modelica.Math.Matrices.toStringS.png
.. |Modelica.Math.Matrices.isEqual| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.solve| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.solve2| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.leastSquares| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.leastSquares2| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.equalityLeastSquares| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.LU| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.LU\_solve| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.LU\_solve2| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.eigenValues| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.eigenValueMatrix| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.singularValues| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.QR| image:: Modelica.Math.Matrices.isEqualS.png
.. |Modelica.Math.Matrices.hessenberg| image:: Modelica.Math.Matrices.hessenbergS.png
.. |Modelica.Math.Matrices.realSchur| image:: Modelica.Math.Matrices.hessenbergS.png
.. |Modelica.Math.Matrices.cholesky| image:: Modelica.Math.Matrices.hessenbergS.png
.. |Modelica.Math.Matrices.balance| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.trace| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.det| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.inv| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.rank| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.conditionNumber| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.rcond| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.norm| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.frobeniusNorm| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.nullSpace| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.exp| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.integralExp| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.integralExpT| image:: Modelica.Math.Matrices.balanceS.png
.. |Modelica.Math.Matrices.continuousLyapunov| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |Modelica.Math.Matrices.continuousSylvester| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |Modelica.Math.Matrices.continuousRiccati| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |Modelica.Math.Matrices.discreteLyapunov| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |Modelica.Math.Matrices.discreteSylvester| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |Modelica.Math.Matrices.discreteRiccati| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |Modelica.Math.Matrices.sort| image:: Modelica.Math.Matrices.sortS.png
.. |Modelica.Math.Matrices.flipLeftRight| image:: Modelica.Math.Matrices.flipLeftRightS.png
.. |Modelica.Math.Matrices.flipUpDown| image:: Modelica.Math.Matrices.flipLeftRightS.png
.. |Modelica.Math.Matrices.LAPACK| image:: Modelica.Math.Matrices.LAPACKS.png
.. |Modelica.Math.Matrices.Utilities| image:: Modelica.Math.Matrices.LAPACKS.png
.. |image42| image:: Modelica.Math.Matrices.ExamplesS.png
.. |image43| image:: Modelica.Math.Matrices.toStringS.png
.. |image44| image:: Modelica.Math.Matrices.isEqualS.png
.. |image45| image:: Modelica.Math.Matrices.isEqualS.png
.. |image46| image:: Modelica.Math.Matrices.isEqualS.png
.. |image47| image:: Modelica.Math.Matrices.isEqualS.png
.. |image48| image:: Modelica.Math.Matrices.isEqualS.png
.. |image49| image:: Modelica.Math.Matrices.isEqualS.png
.. |image50| image:: Modelica.Math.Matrices.isEqualS.png
.. |image51| image:: Modelica.Math.Matrices.isEqualS.png
.. |image52| image:: Modelica.Math.Matrices.isEqualS.png
.. |image53| image:: Modelica.Math.Matrices.isEqualS.png
.. |image54| image:: Modelica.Math.Matrices.isEqualS.png
.. |image55| image:: Modelica.Math.Matrices.isEqualS.png
.. |image56| image:: Modelica.Math.Matrices.isEqualS.png
.. |image57| image:: Modelica.Math.Matrices.hessenbergS.png
.. |image58| image:: Modelica.Math.Matrices.hessenbergS.png
.. |image59| image:: Modelica.Math.Matrices.hessenbergS.png
.. |image60| image:: Modelica.Math.Matrices.balanceS.png
.. |image61| image:: Modelica.Math.Matrices.balanceS.png
.. |image62| image:: Modelica.Math.Matrices.balanceS.png
.. |image63| image:: Modelica.Math.Matrices.balanceS.png
.. |image64| image:: Modelica.Math.Matrices.balanceS.png
.. |image65| image:: Modelica.Math.Matrices.balanceS.png
.. |image66| image:: Modelica.Math.Matrices.balanceS.png
.. |image67| image:: Modelica.Math.Matrices.balanceS.png
.. |image68| image:: Modelica.Math.Matrices.balanceS.png
.. |image69| image:: Modelica.Math.Matrices.balanceS.png
.. |image70| image:: Modelica.Math.Matrices.balanceS.png
.. |image71| image:: Modelica.Math.Matrices.balanceS.png
.. |image72| image:: Modelica.Math.Matrices.balanceS.png
.. |image73| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |image74| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |image75| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |image76| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |image77| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |image78| image:: Modelica.Math.Matrices.continuousLyapunovS.png
.. |image79| image:: Modelica.Math.Matrices.sortS.png
.. |image80| image:: Modelica.Math.Matrices.flipLeftRightS.png
.. |image81| image:: Modelica.Math.Matrices.flipLeftRightS.png
.. |image82| image:: Modelica.Math.Matrices.LAPACKS.png
.. |image83| image:: Modelica.Math.Matrices.LAPACKS.png
.. |image84| image:: Modelica.Math.Matrices.isEqualI.png
.. |image85| image:: Modelica.Math.Matrices.isEqualI.png
.. |image86| image:: Modelica.Math.Matrices.isEqualI.png
.. |image87| image:: Modelica.Math.Matrices.isEqualI.png
.. |image88| image:: Modelica.Math.Matrices.isEqualI.png
.. |image89| image:: Modelica.Math.Matrices.isEqualI.png
.. |image90| image:: Modelica.Math.Matrices.isEqualI.png
.. |image91| image:: Modelica.Math.Matrices.isEqualI.png
.. |image92| image:: Modelica.Math.Matrices.isEqualI.png
.. |image93| image:: Modelica.Math.Matrices.isEqualI.png
.. |image94| image:: Modelica.Math.Matrices.isEqualI.png
.. |image95| image:: Modelica.Math.Matrices.isEqualI.png
.. |image96| image:: Modelica.Math.Matrices.isEqualI.png
.. |image97| image:: Modelica.Math.Matrices.balanceI.png
.. |image98| image:: Modelica.Math.Matrices.balanceI.png
.. |image99| image:: Modelica.Math.Matrices.balanceI.png
.. |image100| image:: Modelica.Math.Matrices.balanceI.png
.. |image101| image:: Modelica.Math.Matrices.balanceI.png
.. |image102| image:: Modelica.Math.Matrices.balanceI.png
.. |image103| image:: Modelica.Math.Matrices.balanceI.png
.. |image104| image:: Modelica.Math.Matrices.balanceI.png
.. |image105| image:: Modelica.Math.Matrices.balanceI.png
.. |image106| image:: Modelica.Math.Matrices.balanceI.png
.. |image107| image:: Modelica.Math.Matrices.balanceI.png
.. |image108| image:: Modelica.Math.Matrices.balanceI.png
.. |image109| image:: Modelica.Math.Matrices.balanceI.png
.. |image110| image:: Modelica.Math.Matrices.sortI.png
