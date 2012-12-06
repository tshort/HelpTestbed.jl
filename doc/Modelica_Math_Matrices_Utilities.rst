================================
Modelica.Math.Matrices.Utilities
================================

`Modelica.Math.Matrices <Modelica_Math_Matrices.html#Modelica.Math.Matrices>`_.Utilities
----------------------------------------------------------------------------------------

**Utility functions that should not be directly utilized by the user**

Information
~~~~~~~~~~~

::

This package contains utility functions that are utilized by higher
level matrix functions. These functions are usually not useful for an
end-user.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                         | Description                                                                                                                    |
+==============================================================================================================================================================================================================================+================================================================================================================================+
| |image8| `continuousRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.continuousRiccatiIterative>`_                                                                                   | Newton's method with exact line search for iterative solving continuous algebraic Riccati equation                             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| |image9| `discreteRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.discreteRiccatiIterative>`_                                                                                       | Newton's method with exact line search for solving discrete algebraic Riccati equation                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| |image10| `householderReflection <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderReflection>`_                                                                                            | Reflect each of the vectors a\_i of matrix A=[a\_1, a\_2, ..., a\_n] on a plane with orthogonal vector u                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| |image11| `householderSimilarityTransformation <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderSimilarityTransformation>`_                                                                | Perform the similarity transformation S\*A\*S of matrix A with symmetric householder matrix S = I - 2u\*u'                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| |image12| `toUpperHessenberg <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.toUpperHessenberg>`_                                                                                                    | Transform a real square matrix A to upper Hessenberg form H by orthogonal similarity transformation: Q' \* A \* Q = H          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| |image13| `eigenvaluesHessenberg <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.eigenvaluesHessenberg>`_                                                                                            | Compute eigenvalues of an upper Hessenberg form matrix                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| |image14| `reorderRSF <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.reorderRSF>`_                                                                                                                  | Reorders a real Schur form to clusters of stable and unstable eigenvalues                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+
| |image15| `findLocal\_tk <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.findLocal_tk>`_                                                                                                             | Find a local minimizer tk to define the length of the step tk\*Nk in continuousRiccatiIterative and discreteRiccatiIterative   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------------------+

--------------

|image16| `Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.continuousRiccatiIterative
-------------------------------------------------------------------------------------------------------------------------------------------------

**Newton's method with exact line search for iterative solving
continuous algebraic Riccati equation**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                   X = Matrices.Utilities.continuousRiccatiIterative(A, B, R, Q, X0);
              (X, r) = Matrices.Utilities.continuousRiccatiIterative(A, B, R, Q, X0, maxSteps, eps);

Description
^^^^^^^^^^^

This function provides a Newton-like method for solving continuous
algebraic Riccati equations (care). It utilizes Exact Line Search to
improve the sometimes erratic convergence of Newton's method. Exact line
search in this case means means, that at each iteration ``i`` a Newton
step ``delta_i``

    ::

          X_i+1 = X_i + delta_i

is taken in the direction to minimize the Frobenius norm of the residual

    ::

            r = || X_i+1*A +A'*X_i+1 - X_i+1*G*X_i+1 + Q ||.

with

    ::

                -1
          G = B*R *B'

The inputs "maxSteps" and "eps" specify the termination of the
iteration. The iteration is terminated if either maxSteps iteration
steps have been performed or the relative change **delta**\_i/**X**\_i
became smaller than eps.

With an appropriate initial value **X**0 a sufficiently accurate
solution might be reach within a few iteration steps. Although a
Lyapunov equation of order ``n`` (n is the order of the Riccati
equation) is to be solved at each iteration step, the algorithm might be
faster than a direct method like
`Matrices.continuousRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousRiccati>`_,
since direct methods have to solve the 2\*n-order Hamiltonian system
equation.
 The algorithm is taken from [1] and [2].

References
^^^^^^^^^^

::

      [1] Benner, P., Byers, R.
          An Exact Line Search Method for Solving Generalized Continuous-Time Algebraic Riccati Equations
          IEEE Transactions On Automatic Control, Vol. 43, No. 1, pp. 101-107, 1998.
      [2] Datta, B.N.
          Numerical Methods for Linear Control Systems
          Elsevier Academic Press, 2004.

Example
^^^^^^^

    ::

             A=[0.0,         1.0,         0.0,         0.0;
                0.0,        -1.890,       3.900e-01,  -5.530;
                0.0,        -3.400e-02,  -2.980,       2.430;
                3.400e-02,  -1.100e-03,  -9.900e-01,  -2.100e-01];

             B=[ 0.0,         0.0;
                 3.600e-01,  -1.60;
                -9.500e-01,  -3.200e-02;
                 3.000e-02,   0.0];

             R=[1, 0; 0, 1];

             Q=[2.313,       2.727,       6.880e-01,   2.300e-02;
                2.727,       4.271,       1.148,       3.230e-01;
                6.880e-01,   1.148,       3.130e-01,   1.020e-01;
                2.300e-02,   3.230e-01,   1.020e-01,   8.300e-02];

            X0=identity(4);

            (X,r) = Matrices.Utilities.continuousRiccatiIterative(A, B, R, Q, X0);

          //  X = [1.3239,  0.9015,  0.5466, -1.7672;
                   0.9015,  0.9607,  0.4334, -1.1989;
                   0.5466,  0.4334,  0.4605, -1.3633;
                  -1.7672, -1.1989, -1.3633,  4.4612]
          // r =  2.48809423389491E-015

            (,r) = Matrices.Utilities.continuousRiccatiIterative(A, B, R, Q, X0,4);

           // r =  0.0004;

See also
^^^^^^^^

`Matrices.Utilities.discreteRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.discreteRiccatiIterative>`_

`Matrices.continuousRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousRiccati>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+
| Type      | Name                         | Default                           | Description                                                     |
+===========+==============================+===================================+=================================================================+
| Real      | A[:, size(A, 1)]             |                                   | Matrix A of Riccati equation X\*A + A'\*X -X\*G\*X +Q = 0       |
+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+
| Real      | B[size(A, 1), :]             |                                   | Matrix B in G = B\*inv(R)\*B'                                   |
+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+
| Real      | R[size(B, 2), size(B, 2)]    | identity(size(B, 2))              | Matrix R in G = B\*inv(R)\*B'                                   |
+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+
| Real      | Q[size(A, 1), size(A, 2)]    | identity(size(A, 1))              | Matrix Q of Riccati equation X\*A + A'\*X -X\*G\*X +Q = 0       |
+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+
| Real      | X0[size(A, 1), size(A, 2)]   | identity(size(A, 1))              | Initial approximate solution for X\*A + A'\*X -X\*G\*X +Q = 0   |
+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+
| Integer   | maxSteps                     | 10                                | Maximal number of iteration steps                               |
+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+
| Real      | eps                          | Matrices.frobeniusNorm(A)\*1e-9   | Tolerance for stop criterion                                    |
+-----------+------------------------------+-----------------------------------+-----------------------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------------------------+---------------------------------------------------------------+
| Type   | Name                          | Description                                                   |
+========+===============================+===============================================================+
| Real   | X[size(X0, 1), size(X0, 2)]   | Solution X of Riccati equation X\*A + A'\*X -X\*G\*X +Q = 0   |
+--------+-------------------------------+---------------------------------------------------------------+
| Real   | r                             | Norm of X\*A + A'\*X - X\*G\*X + Q, zero for exact solution   |
+--------+-------------------------------+---------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function continuousRiccatiIterative 
      "Newton's method with exact line search for iterative solving continuous algebraic Riccati equation"
      extends Modelica.Icons.Function;

      import Modelica.Math.Matrices;

      input Real A[:,size(A, 1)] 
        "Matrix A of Riccati equation X*A + A'*X -X*G*X +Q = 0";
      input Real B[size(A, 1),:] "Matrix B in G = B*inv(R)*B'";
      input Real R[size(B, 2),size(B, 2)]=identity(size(B, 2)) 
        "Matrix R in G = B*inv(R)*B'";
      input Real Q[size(A, 1),size(A, 2)]=identity(size(A, 1)) 
        "Matrix Q of Riccati equation X*A + A'*X -X*G*X +Q = 0";
      input Real X0[size(A, 1),size(A, 2)]=identity(size(A, 1)) 
        "Initial approximate solution for X*A + A'*X -X*G*X +Q = 0";
      input Integer maxSteps=10 "Maximal number of iteration steps";
      input Real eps=Matrices.frobeniusNorm(A)*1e-9 "Tolerance for stop criterion";

      output Real X[size(X0, 1),size(X0, 2)] 
        "Solution X of Riccati equation X*A + A'*X -X*G*X +Q = 0";
      output Real r "Norm of X*A + A'*X - X*G*X + Q, zero for exact solution";

    protected 
      Integer n=size(A, 1);
      Real G[size(A, 1),size(A, 2)]=B*Matrices.solve2(R, transpose(B));
      Real Xk[size(X, 1),size(X, 2)];
      Real Ak[size(A, 1),size(A, 2)];
      Real Rk[size(A, 1),size(A, 2)];
      Real Nk[size(A, 1),size(A, 2)];
      Real Vk[size(A, 1),size(A, 2)];
      Real tk;
      Integer k;
      Boolean stop;

    algorithm 
      if n > 1 then
        k := 0;
        stop := false;
        Xk := X0;
        while (not stop) loop
          k := k + 1;
          Ak := A - G*Xk;
          Rk := transpose(A)*Xk + Xk*A + Q - Xk*G*Xk;
          Nk := Matrices.continuousLyapunov(Ak, -Rk);
          Vk := Nk*G*Nk;
          tk := Matrices.Utilities.findLocal_tk(Rk, Vk);
          stop := eps > Matrices.frobeniusNorm(tk*Nk)/Matrices.frobeniusNorm(Xk) or k>=maxSteps;
          Xk := Xk + tk*Nk;
        end while;
        X := Xk;
        r := Matrices.frobeniusNorm(X*A + transpose(A)*X - X*G*X + Q);

      elseif n == 1 then // exact calculation
        X := matrix((A[1, 1] - sqrt(A[1, 1]*A[1, 1] + G[1, 1]*Q[1, 1]))/G[1, 1]);
        if X[1, 1]*G[1, 1] < A[1, 1] then
          X := matrix((A[1, 1] + sqrt(A[1, 1]*A[1, 1] + G[1, 1]*Q[1, 1]))/G[1, 1]);
        end if;
        r := 0;
      else
        X := fill(0, 0, 0);
        r := 0;
      end if;

    end continuousRiccatiIterative;

--------------

|image17| `Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.discreteRiccatiIterative
-----------------------------------------------------------------------------------------------------------------------------------------------

**Newton's method with exact line search for solving discrete algebraic
Riccati equation**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                   X = Matrices.Utilities.discreteRiccatiIterative(A, B, R, Q, X0);
              (X, r) = Matrices.Utilities.discreteRiccatiIterative(A, B, R, Q, X0, maxSteps, eps);

Description
^^^^^^^^^^^

This function provides a Newton-like method for solving discrete-time
algebraic Riccati equations. It uses Exact Line Search to improve the
sometimes erratic convergence of Newton's method. Exact line search in
this case means means, that at each iteration ``i`` a Newton step
``delta_i``

    ::

          X_i+1 = X_i + delta_i

is taken in the direction to minimize the Frobenius norm of the residual

    ::

          r = || A'X_i+1*A - X_i+1 - A'X_i+1*G_i*X_i+1*A + Q ||

with

    ::

                               -1
          G_i = B*(R + B'*X_i*B) *B'

Output ``r`` is the norm of the residual of the last iteration.

The inputs "maxSteps" and "eps" specify the termination of the
iteration. The iteration is terminated if either maxSteps iteration
steps have been performed or the relative change **delta**\_i/**X**\_i
became smaller than eps.

With an appropriate initial value **X**0 a sufficiently accurate
solution might be reach with a few iteration steps. Although a Lyapunov
equation of order ``n`` (n is the order of the Riccati equation) is to
be solved at each iteration step, the algorithm might be faster than a
direct method like
`Matrices.discreteRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteRiccati>`_,
since direct methods have to solve the 2\*n-order Hamiltonian system
equation. The algorithm is taken from [1] and [2].

References
^^^^^^^^^^

::

      [1] Benner, P., Byers, R.
          An Exact Line Search Method for Solving Generalized Continuous-Time Algebraic Riccati Equations
          IEEE Transactions On Automatic Control, Vol. 43, No. 1, pp. 101-107, 1998.
      [2] Datta, B.N.
          Numerical Methods for Linear Control Systems
          Elsevier Academic Press, 2004.

Example
^^^^^^^

    ::

             A  = [0.9970,    0.0000,    0.0000,    0.0000;
                   1.0000,    0.0000,    0.0000,    0.0000;
                   0.0000,    1.0000,    0.0000,    0.0000;
                   0.0000,    0.0000,    1.0000,    0.0000];

             B  = [0.0150;
                   0.0000;
                   0.0000;
                   0.0000];

             R = [0.2500];

             Q = [0, 0, 0, 0;
                  0, 0, 0, 0;
                  0, 0, 0, 0;
                  0, 0, 0, 1];

            X0=identity(4);

            (X,r) = Matrices.Utilities.discreteRiccatiIterative(A, B, R, Q, X0);

          //  X = [30.625, 0.0, 0.0, 0.0;
                    0.0,   1.0, 0.0, 0.0;
                    0.0,   0.0, 1.0, 0.0;
                    0.0,   0.0, 0.0, 1.0];

          // r =   3.10862446895044E-015

See also
^^^^^^^^

`Matrices.Utilities.continuousRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.continuousRiccatiIterative>`_

`Matrices.discreteRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteRiccati>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+
| Type      | Name                         | Default                           | Description                                              |
+===========+==============================+===================================+==========================================================+
| Real      | A[:, size(A, 1)]             |                                   | Matrix A of discrete Riccati equation                    |
+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+
| Real      | B[size(A, 1), :]             |                                   | Matrix B of discrete Riccati equation                    |
+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+
| Real      | R[size(B, 2), size(B, 2)]    | identity(size(B, 2))              | Matrix R of discrete Riccati equation                    |
+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+
| Real      | Q[size(A, 1), size(A, 2)]    | identity(size(A, 1))              | Matrix Q of discrete Riccati equation                    |
+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+
| Real      | X0[size(A, 1), size(A, 2)]   | identity(size(A, 1))              | Initial approximate solution discrete Riccati equation   |
+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+
| Integer   | maxSteps                     | 10                                | Maximal number of iteration steps                        |
+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+
| Real      | eps                          | Matrices.frobeniusNorm(A)\*1e-9   | Tolerance for stop criterion                             |
+-----------+------------------------------+-----------------------------------+----------------------------------------------------------+

Outputs
~~~~~~~

+--------+-------------------------------+---------------+
| Type   | Name                          | Description   |
+========+===============================+===============+
| Real   | X[size(X0, 1), size(X0, 2)]   |               |
+--------+-------------------------------+---------------+
| Real   | r                             |               |
+--------+-------------------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function discreteRiccatiIterative 
      "Newton's method with exact line search for solving discrete algebraic Riccati equation"
      extends Modelica.Icons.Function;

      import Modelica.Math.Matrices;

      input Real A[:,size(A, 1)] "Matrix A of discrete Riccati equation";
      input Real B[size(A, 1),:] "Matrix B of discrete Riccati equation";
      input Real R[size(B, 2),size(B, 2)]=identity(size(B, 2)) 
        "Matrix R of discrete Riccati equation";
      input Real Q[size(A, 1),size(A, 2)]=identity(size(A, 1)) 
        "Matrix Q of discrete Riccati equation";
      input Real X0[size(A, 1),size(A, 2)]=identity(size(A,1)) 
        "Initial approximate solution discrete Riccati equation";
      input Integer maxSteps=10 "Maximal number of iteration steps";
      input Real eps=Matrices.frobeniusNorm(A)*1e-9 "Tolerance for stop criterion";

      output Real X[size(X0, 1),size(X0, 2)];
      output Real r;

    protected 
      Integer n=size(A, 1);
      Real Xk[size(X, 1),size(X, 2)];
      Real Ak[size(A, 1),size(A, 2)];
      Real Rk[size(A, 1),size(A, 2)];
      Real Nk[size(A, 1),size(A, 2)];
      Real Hk[size(B, 2),size(B, 1)];
      Real Vk[size(A, 1),size(A, 2)];
      Real AT[size(A, 2),size(A, 2)]=transpose(A);
      Real BT[size(B, 2),size(B, 1)]=transpose(B);
      Real tk;
      Integer k;

      Boolean stop;

    algorithm 
      if n > 0 then
        k := 0;
        stop := false;
        Xk := X0;
        while (not stop) loop
          k := k + 1;
          Hk := Matrices.solve2(R + BT*Xk*B, BT);
          Ak := A-B*Hk*Xk*A;
          Rk := AT*Xk*A - Xk + Q - AT*Xk*B*Hk*Xk*A;
          Nk := Modelica.Math.Matrices.discreteLyapunov(A=Ak, C=-Rk,sgn=-1);
          Vk :=transpose(Ak)*Nk*B*Hk*Nk*Ak;
          tk := Modelica.Math.Matrices.Utilities.findLocal_tk(Rk, Vk);
          stop := eps > Matrices.frobeniusNorm(tk*Nk)/Matrices.frobeniusNorm(Xk) or k>=maxSteps;
          Xk := Xk + tk*Nk;
        end while;
        X := Xk;
        r := Matrices.frobeniusNorm(AT*X*A - X + Q - AT*X*B*Matrices.solve2(R + BT*X*B, BT)*X*A);
      else
        X := fill(0, 0, 0);
        r := 0;
      end if;

    end discreteRiccatiIterative;

--------------

`Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.householderReflection
----------------------------------------------------------------------------------------------------------------------------------

**Reflect each of the vectors a\_i of matrix A=[a\_1, a\_2, ..., a\_n]
on a plane with orthogonal vector u**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

        Matrices.householderReflection(A,u);

Description
^^^^^^^^^^^

This function computes the Householder reflection (transformation)

    **Ar** = **Q**\***A**

with

    **Q** = **I** -2\***u**\***u**'/(**u**'\***u**)

where **u** is Householder vector, i.e., the normal vector of the
reflection plane.

Householder reflection is widely used in numerical linear algebra, e.g.,
to perform QR decompositions.

Example
^^^^^^^

    ::

        // First step of QR decomposition
          import   Modelica.Math.Vectors.Utilities;

          Real A[3,3] = [1,2,3;
                         3,4,5;
                         2,1,4];
          Real Ar[3,3];
          Real u[:];

          u=Utilities.householderVector(A[:,1],{1,0,0});
          // u= {0.763, 0.646, 0}

          Ar=householderReflexion(A,u);
         // Ar = [-6.0828,   -5.2608,   -4.4388;
         //        0.0,      -1.1508,   -2.3016;
         //        0.0,       2.0,       0.0]

See also
^^^^^^^^

`Matrices.Utilities.housholderSimilarityTransformation <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderSimilarityTransformation>`_,

`Vectors.Utilities.householderReflection <Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities.householderReflection>`_,

`Vectors.Utilities.householderVector <Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities.householderVector>`_

::

Inputs
~~~~~~

+--------+-----------------+-----------+----------------------+
| Type   | Name            | Default   | Description          |
+========+=================+===========+======================+
| Real   | A[:, :]         |           | Rectangular matrix   |
+--------+-----------------+-----------+----------------------+
| Real   | u[size(A, 1)]   |           | Householder vector   |
+--------+-----------------+-----------+----------------------+

Outputs
~~~~~~~

+--------+------------------------------+------------------+
| Type   | Name                         | Description      |
+========+==============================+==================+
| Real   | RA[size(A, 1), size(A, 2)]   | Reflexion of A   |
+--------+------------------------------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function householderReflection 
      "Reflect each of the vectors a_i of matrix  A=[a_1, a_2, ..., a_n] on a plane with orthogonal vector u"
      import Modelica.Math.Vectors;

      input Real A[:,:] "Rectangular matrix";
      input Real u[size(A, 1)] "Householder vector";

      output Real RA[size(A, 1),size(A, 2)] "Reflexion of A";

    protected 
      Integer n=size(A, 2);
      Real h;
      Real lu=(Vectors.length(u))^2;

    algorithm 
      for i in 1:n loop
        h := scalar(2*transpose(matrix(u))*A[:, i]/lu);
        RA[:, i] := A[:, i] - h*u;
      end for;

    end householderReflection;

--------------

`Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.householderSimilarityTransformation
------------------------------------------------------------------------------------------------------------------------------------------------

**Perform the similarity transformation S\*A\*S of matrix A with
symmetric householder matrix S = I - 2u\*u'**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

          As = Matrices.householderSimilarityTransformation(A,u);

Description
^^^^^^^^^^^

This function computes the Housholder similarity transformation

    **As** = **S**\***A**\***S**

with

    **S** = **I** -2\***u**\***u**'/(**u**'\***u**).

This transformation is widely used for transforming non-symmetric
matrices to a Hessenberg form.

Example
^^^^^^^

    ::

        // First step of Hessenberg decomposition
          import   Modelica.Math.Vectors.Utilities;

          Real A[4,4] = [1,2,3,4;
                         3,4,5,6;
                         9,8,7,6;
                         1,2,0,0];
          Real Ar[4,4];
          Real u[4]={0,0,0,0};

          u[2:4]=Utilities.householderVector(A[2:4,1],{1,0,0});
          // u= = {0, 0.8107, 0.5819, 0.0647}

          Ar=householderSimilarityTransformation(A,u);
         //  Ar = [1.0,     -3.8787,    -1.2193,    3.531;
                  -9.5394, 11.3407,      6.4336,   -5.9243;
                   0.0,     3.1307,      0.7525,   -3.3670;
                   0.0,     0.8021,     -1.1656,   -1.0932]

See also
^^^^^^^^

`Matrices.Utilities.householderReflection <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderReflection>`_,

`Vectors.Utilities.householderReflection <Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities.householderReflection>`_,

`Vectors.Utilities.householderVector <Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities.householderVector>`_

::

Inputs
~~~~~~

+--------+--------------------+-----------+----------------------+
| Type   | Name               | Default   | Description          |
+========+====================+===========+======================+
| Real   | A[:, size(A, 1)]   |           | Square matrix A      |
+--------+--------------------+-----------+----------------------+
| Real   | u[size(A, 1)]      |           | Householder vector   |
+--------+--------------------+-----------+----------------------+

Outputs
~~~~~~~

+--------+-------------------------------+------------------------------+
| Type   | Name                          | Description                  |
+========+===============================+==============================+
| Real   | SAS[size(A, 1), size(A, 1)]   | Transformation of matrix A   |
+--------+-------------------------------+------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function householderSimilarityTransformation 
      "Perform the similarity transformation S*A*S of matrix A with symmetric householder matrix S = I - 2u*u'"

      import Modelica;
      import Modelica.Math.Vectors;

      input Real A[:,size(A, 1)] "Square matrix A";
      input Real u[size(A, 1)] "Householder vector";
      output Real SAS[size(A, 1),size(A, 1)] "Transformation of matrix A";

    protected 
      Integer na=size(A, 1);
      Real S[na,na] "Symmetric matrix";
      Integer i;
    algorithm 
      if na > 0 then
         S:=-2*matrix(u)*transpose(matrix(u))/(Vectors.length(u)*Vectors.length(
          u));
         for i in 1:na loop
           S[i, i] := 1.0 + S[i, i];
         end for;
         SAS := S*A*S;
      else
         SAS :=fill(
              0.0,
              0,
              0);
      end if;

    end householderSimilarityTransformation;

--------------

`Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.toUpperHessenberg
------------------------------------------------------------------------------------------------------------------------------

**Transform a real square matrix A to upper Hessenberg form H by
orthogonal similarity transformation: Q' \* A \* Q = H**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                 H = Matrices.Utilities.toUpperHessenberg(A);
                 (H, V, tau, info) = Matrices.Utilities.toUpperHessenberg(A,ilo, ihi);

Description
^^^^^^^^^^^

Function **toUpperHessenberg** computes a upper Hessenberg form **H** of
a matrix **A** by orthogonal similarity transformation: **Q**' \* **A**
\* **Q** = **H**. With the optional inputs ilo and ihi, also partial
transformation is possible. The function calls LAPACK function DGEHRD.
See
`Matrices.Lapack.dgehrd <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dgehrd>`_
for more information about the additional outputs V, tau, info and
inputs ilo, ihi.

Example
^^^^^^^

    ::

         A  = [1, 2, 3;
               6, 5, 4;
               1, 0, 0];

         H = toUpperHessenberg(A);

          results in:

         H = [1.0,  -2.466,  2.630;
             -6.083, 5.514, -3.081;
              0.0,   0.919, -0.514]

See also
^^^^^^^^

`Matrices.hessenberg <Modelica_Math_Matrices.html#Modelica.Math.Matrices.hessenberg>`_

::

Inputs
~~~~~~

+-----------+--------------------+--------------+-------------------------------------------------------------------+
| Type      | Name               | Default      | Description                                                       |
+===========+====================+==============+===================================================================+
| Real      | A[:, size(A, 1)]   |              | Square matrix A                                                   |
+-----------+--------------------+--------------+-------------------------------------------------------------------+
| Integer   | ilo                | 1            | Lowest index where the original matrix had been Hessenbergform    |
+-----------+--------------------+--------------+-------------------------------------------------------------------+
| Integer   | ihi                | size(A, 1)   | Highest index where the original matrix had been Hessenbergform   |
+-----------+--------------------+--------------+-------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------+-------------------------------+---------------------------------------------------------------------------------+
| Type      | Name                          | Description                                                                     |
+===========+===============================+=================================================================================+
| Real      | H[size(A, 1), size(A, 2)]     | Upper Hessenberg form                                                           |
+-----------+-------------------------------+---------------------------------------------------------------------------------+
| Real      | V[size(A, 1), size(A, 2)]     | V=[v1,v2,..vn-1,0] with vi are vectors which define the elementary reflectors   |
+-----------+-------------------------------+---------------------------------------------------------------------------------+
| Real      | tau[max(0, size(A, 1) - 1)]   | Scalar factors of the elementary reflectors                                     |
+-----------+-------------------------------+---------------------------------------------------------------------------------+
| Integer   | info                          | Information of successful function call                                         |
+-----------+-------------------------------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function toUpperHessenberg 
      "Transform a real square matrix A to upper Hessenberg form H by orthogonal similarity transformation:  Q' * A * Q = H"
      import Modelica.Math.Matrices;
      import Modelica.Math.Matrices.LAPACK;

      input Real A[:,size(A, 1)] "Square matrix A";
      input Integer ilo=1 
        "Lowest index where the original matrix had been Hessenbergform";
      input Integer ihi=size(A, 1) 
        "Highest index where the original matrix had been Hessenbergform";
      output Real H[size(A, 1),size(A, 2)] "Upper Hessenberg form";
      output Real V[size(A, 1),size(A, 2)] 
        "V=[v1,v2,..vn-1,0] with vi are vectors which define the elementary reflectors";

      output Real tau[max(0, size(A, 1) - 1)] 
        "Scalar factors of the elementary reflectors";
      output Integer info "Information of successful function call";

    protected 
      Integer n=size(A, 1);
      Real Aout[size(A, 1),size(A, 2)];
      Integer i;

    algorithm 
      if n > 0 then
        (Aout,tau,info) := LAPACK.dgehrd(A, ilo, ihi);
        H[1:2, 1:ihi] := Aout[1:2, 1:ihi];
        H[1:2, ihi + 1:n] := A[1:2, ihi + 1:n];

        for i in 3:n loop
          H[i, i - 1:ihi] := Aout[i, i - 1:ihi];
          H[i, ihi + 1:n] := A[i, ihi + 1:n];
        end for;

        for i in 1:min(n - 2, ihi) loop
          V[i + 1, i] := 1.0;
          V[i + 2:n, i] := Aout[i + 2:n, i];
        end for;
        V[n, n - 1] := 1;
      end if;

    end toUpperHessenberg;

--------------

`Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.eigenvaluesHessenberg
----------------------------------------------------------------------------------------------------------------------------------

**Compute eigenvalues of an upper Hessenberg form matrix**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                   ev = Matrices.Utilities.eigenvaluesHessenberg(H);
            (X, info) = Matrices.Utilities.eigenvaluesHessenberg(H);

Description
^^^^^^^^^^^

This function computes the eigenvalues of a Hessenberg form matrix.
Transformation to Hessenberg form is the first step in eigenvalue
computation for arbitrary matrices with QR decomposition. This step can
be skipped if the matrix has already Hessenberg form.

The function uses the LAPACK-routine dhseqr. Output ``info`` is 0 for a
successful call of this function.
 See
`Matrices.Lapack.dhseqr <Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK.dhseqr>`_
for details

Example
^^^^^^^

    ::

             Real A[3,3] = [1,2,3;
                            9,8,7;
                            0,1,0];

             Real ev[3,2];

             ev := Matrices.Utilities.eigenvaluesHessenberg(A);

          // ev  = [10.7538,    0.0;
                    -0.8769,    1.0444;
                    -0.8769,   -1.0444]
          // = {10.7538,  -0.8769 +- i*1.0444}

See also
^^^^^^^^

`Matrices.eigenValues <Modelica_Math_Matrices.html#Modelica.Math.Matrices.eigenValues>`_,
`Matrices.hessenberg <Modelica_Math_Matrices.html#Modelica.Math.Matrices.hessenberg>`_

::

Inputs
~~~~~~

+--------+--------------------+-----------+-----------------------+
| Type   | Name               | Default   | Description           |
+========+====================+===========+=======================+
| Real   | H[:, size(H, 1)]   |           | Hessenberg matrix H   |
+--------+--------------------+-----------+-----------------------+

Outputs
~~~~~~~

+-----------+---------------------+---------------+
| Type      | Name                | Description   |
+===========+=====================+===============+
| Real      | ev[size(H, 1), 2]   | Eigenvalues   |
+-----------+---------------------+---------------+
| Integer   | info                |               |
+-----------+---------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function eigenvaluesHessenberg 
      "Compute eigenvalues of an upper Hessenberg form matrix"
      import Modelica.Math.Matrices.Utilities;
      import Modelica.Math.Matrices.LAPACK;
      input Real H[:,size(H, 1)] "Hessenberg matrix H";

      output Real ev[size(H, 1),2] "Eigenvalues";
      output Integer info=0;
    protected 
      Integer n=size(H, 1);
      Integer ilo=1;
      Integer ihi=n;
      Real alphaReal[size(H, 1)] 
        "Real part of alpha (eigenvalue=(alphaReal+i*alphaImag))";
      Real alphaImag[size(H, 1)] 
        "Imaginary part of alpha (eigenvalue=(alphaReal+i*alphaImag))";
      Real Z[n,n]=fill(0, n, n);

    algorithm 
      if size(H, 1) > 0 then
        (alphaReal,alphaImag,info) := LAPACK.dhseqr(H);
      else
        alphaReal := fill(0, size(H, 1));
        alphaImag := fill(0, size(H, 1));
      end if;
      ev := [alphaReal,alphaImag];

    end eigenvaluesHessenberg;

--------------

`Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.reorderRSF
-----------------------------------------------------------------------------------------------------------------------

**Reorders a real Schur form to clusters of stable and unstable
eigenvalues**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                      To = Matrices.Utilities.reorderRSF(T, Q, alphaReal, alphaImag);
        (To, Qo, wr, wi) = Matrices.Utilities.reorderRSF(T, Q, alphaReal, alphaImag, iscontinuous);

Description
^^^^^^^^^^^

Function **reorderRSF**() reorders a real Schur form such that the
stable eigenvalues of the system are in the 1-by-1 and 2-by-2 diagonal
blocks of the block **upper** triangular matrix. If the Schur form is
referenced to a continuous system the staple eigenvalues are in the left
complex half plane. The stable eigenvalues of a discrete system are
inside the complex unit circle.
 This function is used for example to solve algebraic Riccati equations
(`continuousRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.continuousRiccati>`_,
`discreteRiccati <Modelica_Math_Matrices.html#Modelica.Math.Matrices.discreteRiccati>`_).
In this context the Schur form as well as the corresponding eigenvalues
and the transformation matrix **Q** are known, why the eigenvalues and
the transformation matrix are inputs to **reorderRSF()**.
 The Schur vector matrix **Qo** is also reordered according to **To**.
The vectors **wr** and **wi** contains the real and imaginary parts of
the rordered eigenvalues respectively.

Example
^^^^^^^

    ::

          T := [-1,2, 3,4;
                 0,2, 6,5;
                 0,0,-3,5;
                 0,0, 0,6];
          To := Matrices.Utilities.reorderRSF(T,identity(4),{-1, 2, -3, 6},{0, 0, 0, 0}, true);

          // To = [-1.0, -0.384, 3.585, 4.0;
          //        0.0, -3.0,   6.0,   0.64;
          //        0.0,  0.0,   2.0,   7.04;
          //        0.0,  0.0,   0.0,   6.0]

See also
`Matrices.realSchur <Modelica_Math_Matrices.html#Modelica.Math.Matrices.realSchur>`_

::

Inputs
~~~~~~

+-----------+-------------------------+-----------+--------------------------------------------------------------------------+
| Type      | Name                    | Default   | Description                                                              |
+===========+=========================+===========+==========================================================================+
| Real      | T[:, :]                 |           | Real Schur form                                                          |
+-----------+-------------------------+-----------+--------------------------------------------------------------------------+
| Real      | Q[:, size(T, 2)]        |           | Schur vector Matrix                                                      |
+-----------+-------------------------+-----------+--------------------------------------------------------------------------+
| Real      | alphaReal[size(T, 1)]   |           | Real part of eigenvalue=alphaReal+i\*alphaImag                           |
+-----------+-------------------------+-----------+--------------------------------------------------------------------------+
| Real      | alphaImag[size(T, 1)]   |           | Imaginary part of eigenvalue=(alphaReal+i\*alphaImag                     |
+-----------+-------------------------+-----------+--------------------------------------------------------------------------+
| Boolean   | iscontinuous            | true      | True if the according system is continuous. False for discrete systems   |
+-----------+-------------------------+-----------+--------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+------------------------------+-----------------------------------------+
| Type   | Name                         | Description                             |
+========+==============================+=========================================+
| Real   | To[size(T, 1), size(T, 2)]   | Reordered Schur form                    |
+--------+------------------------------+-----------------------------------------+
| Real   | Qo[size(T, 1), size(T, 2)]   | Reordered Schur vector matirx           |
+--------+------------------------------+-----------------------------------------+
| Real   | wr[size(T, 2)]               | Reordered eigenvalues, real part        |
+--------+------------------------------+-----------------------------------------+
| Real   | wi[size(T, 2)]               | Reordered eigenvalues, imaginary part   |
+--------+------------------------------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function reorderRSF 
      "Reorders a real Schur form to clusters of stable and unstable eigenvalues"

      import Modelica.Math.Matrices.LAPACK;

      input Real T[:,:] "Real Schur form";
      input Real Q[:,size(T, 2)] "Schur vector Matrix";
      input Real alphaReal[size(T, 1)] 
        "Real part of eigenvalue=alphaReal+i*alphaImag";
      input Real alphaImag[size(T, 1)] 
        "Imaginary part of eigenvalue=(alphaReal+i*alphaImag";
      input Boolean iscontinuous=true 
        "True if the according system is continuous. False for discrete systems";

      output Real To[size(T, 1),size(T, 2)] "Reordered Schur form";
      output Real Qo[size(T, 1),size(T, 2)] "Reordered Schur vector matirx";
      output Real wr[size(T, 2)] "Reordered eigenvalues, real part";
      output Real wi[size(T, 2)] "Reordered eigenvalues, imaginary part";

    protected 
      Integer n=size(T, 2);
      Boolean select[size(T, 2)]=fill(false, size(T, 2));
      Integer i;
    algorithm 
      if iscontinuous then
        for i in 1:n loop
          if alphaReal[i] < 0 then
            select[i] := true;
          end if;
        end for;
      else
        for i in 1:n loop
          if alphaReal[i]^2 + alphaImag[i]^2 < 1 then
            select[i] := true;
          end if;
        end for;
      end if;

      (To,Qo,wr,wi) := LAPACK.dtrsen("E", "V", select, T, Q);

    end reorderRSF;

--------------

|image18| `Modelica.Math.Matrices.Utilities <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities>`_.findLocal\_tk
------------------------------------------------------------------------------------------------------------------------------------

**Find a local minimizer tk to define the length of the step tk\*Nk in
continuousRiccatiIterative and discreteRiccatiIterative**

Information
~~~~~~~~~~~

::

Syntax
^^^^^^

    ::

                   tk = Matrices.Utilities.findLocal_tk(Rk, Vk);

Description
^^^^^^^^^^^

Function ``findLocal_tk()`` is an auxiliary function called in iterative
solver for algebraic Riccati equation based on Newton's method with
exact line search like
`continuousRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.continuousRiccatiIterative>`_
 and
`discreteRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.discreteRiccatiIterative>`_.
 The function computes the local minimum of the function f\_k(t\_k)

    ::

          f_k(t_k) = alpha_k*(1-t_k)^2 + 2*beta_k*(1-t)*t^2 + gamma_k*t^4

by calculating the zeros of the derivation d f\_k/d t\_k. It is known
that the function f\_k(t\_k) has a local minimum at some value t\_k\_min
in [0, 2].
 With t\_k\_min the norm of the next residual of the algorithm will be
minimized.
 See [1] for more information

References
^^^^^^^^^^

::

      [1] Benner, P., Byers, R.
          An Exact Line Search Method for Solving Generalized Continuous-Time Algebraic Riccati Equations
          IEEE Transactions On Automatic Control, Vol. 43, No. 1, pp. 101-107, 1998.

See also
^^^^^^^^

`Matrices.Utilities.continuousRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.continuousRiccatiIterative>`_

`Matrices.Utilities.discreteRiccatiIterative <Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.discreteRiccatiIterative>`_

::

Extends from
`Modelica.Icons.Function <Modelica_Icons.html#Modelica.Icons.Function>`_
(Icon for functions).

Inputs
~~~~~~

+--------+--------------------------------+-----------+---------------+
| Type   | Name                           | Default   | Description   |
+========+================================+===========+===============+
| Real   | Rk[:, size(Rk, 2)]             |           |               |
+--------+--------------------------------+-----------+---------------+
| Real   | Vk[size(Rk, 1), size(Rk, 2)]   |           |               |
+--------+--------------------------------+-----------+---------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | tk     |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function findLocal_tk 
      "Find a local minimizer tk to define the length of the step tk*Nk in continuousRiccatiIterative and discreteRiccatiIterative"
      extends Modelica.Icons.Function;

      import Modelica.Math.Matrices;
      import Modelica.Math.Vectors;

      input Real Rk[:,size(Rk, 2)];
      input Real Vk[size(Rk, 1),size(Rk, 2)];

      output Real tk;

    protected 
      Real alpha_k;
      Real beta_k;
      Real gamma_k;
      Real p[3,2];
      Boolean h;

    algorithm 
      alpha_k := Matrices.trace(Rk*Rk);
      beta_k := Matrices.trace(Rk*Vk);
      gamma_k := Matrices.trace(Vk*Vk);

      if gamma_k > Modelica.Constants.eps then
        p := Vectors.Utilities.roots({4*gamma_k,6*beta_k,2*(alpha_k - 2*beta_k),-2*
          alpha_k});
        h := false;
        for i1 in 1:3 loop
          if abs(p[i1, 2]) < Modelica.Constants.eps then
            if abs(p[i1, 1] - 1) <= 1 then
              tk := p[i1, 1];
              h := true;
            end if;
          end if;
        end for;
        if not h then
          tk := 1;
        end if;

      else
        tk := 1;
      end if;

    end findLocal_tk;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:48
2010.

.. |Modelica.Math.Matrices.Utilities.continuousRiccatiIterative| image:: Modelica.Math.Matrices.Utilities.continuousRiccatiIterativeS.png
.. |Modelica.Math.Matrices.Utilities.discreteRiccatiIterative| image:: Modelica.Math.Matrices.Utilities.continuousRiccatiIterativeS.png
.. |Modelica.Math.Matrices.Utilities.householderReflection| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |Modelica.Math.Matrices.Utilities.householderSimilarityTransformation| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |Modelica.Math.Matrices.Utilities.toUpperHessenberg| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |Modelica.Math.Matrices.Utilities.eigenvaluesHessenberg| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |Modelica.Math.Matrices.Utilities.reorderRSF| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |Modelica.Math.Matrices.Utilities.findLocal\_tk| image:: Modelica.Math.Matrices.Utilities.findLocal_tkS.png
.. |image8| image:: Modelica.Math.Matrices.Utilities.continuousRiccatiIterativeS.png
.. |image9| image:: Modelica.Math.Matrices.Utilities.continuousRiccatiIterativeS.png
.. |image10| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |image11| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |image12| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |image13| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |image14| image:: Modelica.Math.Matrices.Utilities.householderReflectionS.png
.. |image15| image:: Modelica.Math.Matrices.Utilities.findLocal_tkS.png
.. |image16| image:: Modelica.Math.Matrices.Utilities.continuousRiccatiIterativeI.png
.. |image17| image:: Modelica.Math.Matrices.Utilities.continuousRiccatiIterativeI.png
.. |image18| image:: Modelica.Math.Matrices.Utilities.findLocal_tkI.png
