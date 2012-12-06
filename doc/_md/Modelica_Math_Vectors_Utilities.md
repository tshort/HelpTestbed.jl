% Modelica.Math.Vectors.Utilities
% 
% 

[Modelica.Math.Vectors](Modelica_Math_Vectors.html#Modelica.Math.Vectors).Utilities
===================================================================================

**Utility functions that should not be directly utilized by the user**

Information
-----------

::

This package contains utility functions that are utilized by higher
level vector and matrix functions. These functions are usually not
useful for an end-user.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  ![image3](Modelica.Math.Vectors.Utilities.house Calculate a normalized
  holderVectorS.png)                              householder vector to
  [householderVector](Modelica_Math_Vectors_Utili reflect vector a onto
  ties.html#Modelica.Math.Vectors.Utilities.house vector b
  holderVector)                                   

  ![image4](Modelica.Math.Vectors.Utilities.house Reflect a vector a on a
  holderVectorS.png)                              plane with orthogonal
  [householderReflection](Modelica_Math_Vectors_U vector u
  tilities.html#Modelica.Math.Vectors.Utilities.h 
  ouseholderReflection)                           

  ![image5](Modelica.Math.Vectors.Utilities.house Compute zeros of a
  holderVectorS.png)                              polynomial where the
  [roots](Modelica_Math_Vectors_Utilities.html#Mo highest coefficient is
  delica.Math.Vectors.Utilities.roots)            assumed as not to be
                                                  zero
  ------------------------------------------------------------------------

* * * * *

[Modelica.Math.Vectors.Utilities](Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities).householderVector
=========================================================================================================================

**Calculate a normalized householder vector to reflect vector a onto
vector b**

Information
-----------

::

### Syntax

>     Vectors.Utilities.householderVector(a,b);

### Description

The function call "`householderVector(a, b)`" returns the normalized
Householder vector **u** for Householder reflection of input vector
**a** onto vector **b**, i.e., Householder vector **u** is the normal
vector of the reflection plane. Algebraically, the reflection is
performed by transformation matrix **Q**

> **Q** = **I** - 2\***u**\***u**',

i.e., vector **a** is mapped to

> **a** -\> **Q**\***a**=c\***b**

with scalar c, |c| = ||**a**|| / ||**b**||. **Q**\***a** is the
reflection of **a** about the hyperplane orthogonal to **u**. **Q** is
an orthogonal matrix, i.e.

> **Q** = inv(**Q**) = **Q**'

### Example

>     a = {2, -4, -2, -1};
>     b = {1, 0, 0, 0};
>
>     u = householderVector(a,b);    // {0.837, -0.478, -0.239, -0.119}
>                                  // Computation (identity(4) - 2*matrix(u)*transpose(matrix(u)))*a results in
>                                  // {-5, 0, 0, 0} = -5*b

### See also

[Vectors.Utilities.householderReflection](Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities.householderReflection)

[Matrices.Utilities.householderReflection](Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderReflection)

[Matrices.Utilities.householderSimilarityTransformation](Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderSimilarityTransformation)

::

Inputs
------

  Type     Name             Default    Description
  -------- ---------------- ---------- -------------------------------------
  Real     a[:]                        Real vector to be reflected
  Real     b[size(a, 1)]               Real vector b vector a is mapped onto

Outputs
-------

  Type      Name               Description
  --------- ------------------ --------------------------------------
  Real      u[size(a, 1)]      Housholder vector to map a onto b

Modelica definition
-------------------

    function householderVector 
      "Calculate a normalized householder vector to reflect vector a onto vector b"

        import Modelica.Math.Vectors.norm;

      input Real a[:] "Real vector to be reflected";
      input Real b[size(a, 1)] "Real vector b vector a is mapped onto";
      output Real u[size(a, 1)] "Housholder vector to map a onto b";
    protected 
      Real norm_a=norm(a,2);
      Real norm_b=norm(b,2);
      Real alpha;

    algorithm 
      assert(norm_b > 0, "Vector b in function housholderVector is zero vector, but at least one element should be different from zero");
      assert(norm_a > 0, "Vector a in function housholderVector is zero vector, but at least one element should be different from zero");
      alpha := if norm(a + norm_a/norm_b*b,2) > norm(a - norm_a/norm_b*b,2) then norm_a/norm_b else -norm_a/norm_b;
      u := (a + alpha*b)/length(a + alpha*b);

    end householderVector;

* * * * *

[Modelica.Math.Vectors.Utilities](Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities).householderReflection
=============================================================================================================================

**Reflect a vector a on a plane with orthogonal vector u**

Information
-----------

::

### Syntax

>     Vectors.Utilities.householderReflection(a,u);

### Description

Function "`householderReflection(a, u)`" performs the reflection of
vector **a** about a plane orthogonal to vector **u** (Housholder
vector). Algebraically the operation is defined by

> **b**=**Q**\***a**

with

> **Q** = **I** - 2\***u**\***u**',

where **Q** is an orthogonal matrix, i.e.

> **Q** = inv(**Q**) = **Q**'

### Example

>     a = {2, -4, -2, -1};
>     u = {0.837, -0.478, -0.239, -0.119};
>
>     householderReflection(a,u);    //  = {-5.0, -0.001, -0.0005, -0.0044}

### See also

[Utilities.householderVector](Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities.householderVector)

[Matrices.Utilities.householderReflection](Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderReflection)

[Matrices.Utilities.householderSimilarityTransformation](Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.householderSimilarityTransformation)

::

Inputs
------

  Type     Name              Default     Description
  -------- ----------------- ----------- ---------------------------------
  Real     a[:]                          Real vector a to be reflected
  Real     u[size(a, 1)]                 householder vector

Outputs
-------

  Type      Name                Description
  --------- ------------------- -------------------
  Real      ra[size(u, 1)]      reflexion of a

Modelica definition
-------------------

    function householderReflection 
      "Reflect a vector a on a plane with orthogonal vector u"
      import Modelica.Math.Vectors;

      input Real a[:] "Real vector a to be reflected";
      input Real u[size(a, 1)] "householder vector";
      output Real ra[size(u, 1)] "reflexion of a";

    protected 
      Real norm_a=Vectors.length(a);
      Real h=2*u*a;

    algorithm 
      ra := a - h*u;

    // Values close to zero are set to zero.
      for i in 1:size(ra, 1) loop
        ra[i] := if abs(ra[i]) >= norm_a*1e-12 then ra[i] else 0;
      end for;

    end householderReflection;

* * * * *

[Modelica.Math.Vectors.Utilities](Modelica_Math_Vectors_Utilities.html#Modelica.Math.Vectors.Utilities).roots
=============================================================================================================

**Compute zeros of a polynomial where the highest coefficient is assumed
as not to be zero**

Information
-----------

::

### Syntax

>     r = Vectors.Utilities.roots(p);

### Description

This function computes the roots of a polynomial P of x

>     P = p[1]*x^n + p[2]*x^(n-1) + ... + p[n-1]*x + p[n+1];

with the coefficient vector **p**. It is assumed that the first element
of **p** is not zero, i.e., that the polynomial is of order size(p,1)-1.

To compute the roots, the eigenvalues of the corresponding companion
matrix **C**

>     |-p[2]/p[1]  -p[3]/p[1]  ...  -p[n-2]/p[1]  -p[n-1]/p[1]  -p[n]/p[1] |
>     |    1            0                0               0           0     |
>     |    0            1      ...       0               0           0     |
>
> > C = | . . ... . . . |
> >   ~    . . ... . . . |\
> >        0 0 ... 0 1 0 |
> >
are calculated. These are the roots of the polynomial.
  ~ Since the companion matrix has already Hessenberg form, the

transformation to Hessenberg form has not to be performed. Function
[eigenvaluesHessenberg](Modelica_Math_Matrices_Utilities.html#Modelica.Math.Matrices.Utilities.eigenvaluesHessenberg)
provides efficient eigenvalue computation for those matrices.

### Example

>     r = roots({1,2,3});
>     // r = [-1.0,  1.41421356237309;
>     //      -1.0, -1.41421356237309]
>     // which corresponds to the roots: -1.0 +/- j*1.41421356237309

::

Inputs
------

  -------------------------------------------------------------------------
  Type  Name  Default Description
  ----- ----- ------- -----------------------------------------------------
  Real  p[:]          Vector with polynomial coefficients p[1]\*x\^n +
                      p[2]\*x\^(n-1) + p[n]\*x +p[n-1]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type Name                Description
  ---- ------------------- ------------------------------------------------
  Real roots[max(0,        roots[:,1] and roots[:,2] are the real and
       size(p, 1) - 1), 2] imaginary parts of the roots of polynomial p
  -------------------------------------------------------------------------

Modelica definition
-------------------

    encapsulated function roots 
      "Compute zeros of a polynomial where the highest coefficient is assumed as not to be zero"
    import Modelica.Math.Matrices;

      input Real p[:] 
        "Vector with polynomial coefficients p[1]*x^n + p[2]*x^(n-1) + p[n]*x +p[n-1]";
      output Real roots[max(0, size(p, 1) - 1),2]=fill(0, max(0, size(p, 1) - 1), 2) 
        "roots[:,1] and roots[:,2] are the real and imaginary parts of the roots of polynomial p";
    protected 
      Integer np=size(p, 1);
      Integer n=size(p, 1) - 1;
      Real A[max(n, 0),max(n, 0)] "Companion matrix";
      Real ev[max(n, 0),2] "Eigenvalues";
    algorithm 
      if n > 0 then
        assert(abs(p[1]) > 0, "Computing the roots of a polynomial with function \"Modelica.Math.Vectors.Utilities.roots\"\n"
                            + "failed because the first element of the coefficient vector is zero, but should not be.");

        // companion matrix
        A[1, :] := -p[2:np]/p[1];
        A[2:n, :] := [identity(n - 1),zeros(n - 1)];

        // roots are the eigenvalues of the companion matrix
        roots := Matrices.Utilities.eigenvaluesHessenberg(A);
      end if;
    end roots;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:48 2010.
