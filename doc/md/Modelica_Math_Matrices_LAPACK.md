% Modelica.Math.Matrices.LAPACK
% 
% 

[Modelica.Math.Matrices](Modelica_Math_Matrices.html#Modelica.Math.Matrices).LAPACK
===================================================================================

**Interface to LAPACK library (should usually not directly be used but
only indirectly via Modelica.Math.Matrices)**

Information
-----------

::

This package contains external Modelica functions as interface to the
LAPACK library
([[http://www.netlib.org/lapack](http://www.netlib.org/lapack)](http://www.netlib.org/lapack))
that provides FORTRAN subroutines to solve linear algebra tasks.
Usually, these functions are not directly called, but only via the much
more convenient interface of
[Modelica.Math.Matrices](Modelica_Math_Matrices.html#Modelica.Math.Matrices).
The documentation of the LAPACK functions is a copy of the original
FORTRAN code. The details of LAPACK are described in:

Anderson E., Bai Z., Bischof C., Blackford S., Demmel J., Dongarra J.,
Du Croz J., Greenbaum A., Hammarling S., McKenney A., and Sorensen D.:
[Lapack Users' Guide](http://www.netlib.org/lapack/lug/lapack_lug.html).
Third Edition, SIAM, 1999.

See also
[[http://en.wikipedia.org/wiki/Lapack](http://en.wikipedia.org/wiki/Lapack)](http://en.wikipedia.org/wiki/Lapack).

This package contains a direct interface to the LAPACK subroutines

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                Description
  ----------------------------------- ------------------------------------
  ![image41](Modelica.Math.Matrices.L Compute eigenvalues and (right)
  APACK.dgeevS.png)                   eigenvectors for real nonsymmetrix
  [dgeev](Modelica_Math_Matrices_LAPA matrix A
  CK.html#Modelica.Math.Matrices.LAPA 
  CK.dgeev)                           

  ![image42](Modelica.Math.Matrices.L Compute eigenvalues for real
  APACK.dgeevS.png)                   nonsymmetrix matrix A
  [dgeev\_eigenValues](Modelica_Math_ 
  Matrices_LAPACK.html#Modelica.Math. 
  Matrices.LAPACK.dgeev_eigenValues)  

  ![image43](Modelica.Math.Matrices.L Compute generalized eigenvalues and
  APACK.dgeevS.png)                   eigenvectors for a (A,B) system
  [dgegv](Modelica_Math_Matrices_LAPA 
  CK.html#Modelica.Math.Matrices.LAPA 
  CK.dgegv)                           

  ![image44](Modelica.Math.Matrices.L Computes the minimum-norm solution
  APACK.dgeevS.png)                   to a real linear least squares
  [dgelsx](Modelica_Math_Matrices_LAP problem with rank deficient A
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgelsx)                         

  ![image45](Modelica.Math.Matrices.L Computes the minimum-norm solution
  APACK.dgeevS.png)                   to a real linear least squares
  [dgelsx\_vec](Modelica_Math_Matrice problem with rank deficient A
  s_LAPACK.html#Modelica.Math.Matrice 
  s.LAPACK.dgelsx_vec)                

  ![image46](Modelica.Math.Matrices.L Solves overdetermined or
  APACK.dgeevS.png)                   underdetermined real linear
  [dgels\_vec](Modelica_Math_Matrices equations A\*x=b with a b vector
  _LAPACK.html#Modelica.Math.Matrices 
  .LAPACK.dgels_vec)                  

  ![image47](Modelica.Math.Matrices.L Solve real system of linear
  APACK.dgeevS.png)                   equations A\*X=B with a B matrix
  [dgesv](Modelica_Math_Matrices_LAPA 
  CK.html#Modelica.Math.Matrices.LAPA 
  CK.dgesv)                           

  ![image48](Modelica.Math.Matrices.L Solve real system of linear
  APACK.dgeevS.png)                   equations A\*x=b with a b vector
  [dgesv\_vec](Modelica_Math_Matrices 
  _LAPACK.html#Modelica.Math.Matrices 
  .LAPACK.dgesv_vec)                  

  ![image49](Modelica.Math.Matrices.L Solve a linear equality constrained
  APACK.dgeevS.png)                   least squares problem
  [dgglse\_vec](Modelica_Math_Matrice 
  s_LAPACK.html#Modelica.Math.Matrice 
  s.LAPACK.dgglse_vec)                

  ![image50](Modelica.Math.Matrices.L Solve real system of linear
  APACK.dgeevS.png)                   equations A\*X=B with B matrix and
  [dgtsv](Modelica_Math_Matrices_LAPA tridiagonal A
  CK.html#Modelica.Math.Matrices.LAPA 
  CK.dgtsv)                           

  ![image51](Modelica.Math.Matrices.L Solve real system of linear
  APACK.dgeevS.png)                   equations A\*x=b with b vector and
  [dgtsv\_vec](Modelica_Math_Matrices tridiagonal A
  _LAPACK.html#Modelica.Math.Matrices 
  .LAPACK.dgtsv_vec)                  

  ![image52](Modelica.Math.Matrices.L Solve real system of linear
  APACK.dgeevS.png)                   equations A\*X=B with a B matrix
  [dgbsv](Modelica_Math_Matrices_LAPA 
  CK.html#Modelica.Math.Matrices.LAPA 
  CK.dgbsv)                           

  ![image53](Modelica.Math.Matrices.L Solve real system of linear
  APACK.dgeevS.png)                   equations A\*x=b with a b vector
  [dgbsv\_vec](Modelica_Math_Matrices 
  _LAPACK.html#Modelica.Math.Matrices 
  .LAPACK.dgbsv_vec)                  

  ![image54](Modelica.Math.Matrices.L Determine singular value
  APACK.dgeevS.png)                   decomposition
  [dgesvd](Modelica_Math_Matrices_LAP 
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgesvd)                         

  ![image55](Modelica.Math.Matrices.L Determine singular values
  APACK.dgeevS.png)                   
  [dgesvd\_sigma](Modelica_Math_Matri 
  ces_LAPACK.html#Modelica.Math.Matri 
  ces.LAPACK.dgesvd_sigma)            

  ![image56](Modelica.Math.Matrices.L Compute LU factorization of square
  APACK.dgeevS.png)                   or rectangular matrix A (A =
  [dgetrf](Modelica_Math_Matrices_LAP P\*L\*U)
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgetrf)                         

  ![image57](Modelica.Math.Matrices.L Solves a system of linear equations
  APACK.dgeevS.png)                   with the LU decomposition from
  [dgetrs](Modelica_Math_Matrices_LAP dgetrf(..)
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgetrs)                         

  ![image58](Modelica.Math.Matrices.L Solves a system of linear equations
  APACK.dgeevS.png)                   with the LU decomposition from
  [dgetrs\_vec](Modelica_Math_Matrice dgetrf(..)
  s_LAPACK.html#Modelica.Math.Matrice 
  s.LAPACK.dgetrs_vec)                

  ![image59](Modelica.Math.Matrices.L Computes the inverse of a matrix
  APACK.dgeevS.png)                   using the LU factorization from
  [dgetri](Modelica_Math_Matrices_LAP dgetrf(..)
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgetri)                         

  ![image60](Modelica.Math.Matrices.L Compute QR factorization of square
  APACK.dgeevS.png)                   or rectangular matrix A with column
  [dgeqpf](Modelica_Math_Matrices_LAP pivoting (A(:,p) = Q\*R)
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgeqpf)                         

  ![image61](Modelica.Math.Matrices.L Generates a Real orthogonal matrix Q
  APACK.dgeevS.png)                   which is defined as the product of
  [dorgqr](Modelica_Math_Matrices_LAP elementary reflectors as returned
  ACK.html#Modelica.Math.Matrices.LAP from dgeqpf
  ACK.dorgqr)                         

  ![image62](Modelica.Math.Matrices.L Computes real Schur form T of real
  APACK.dgeesS.png)                   nonsymmetric matrix A, and,
  [dgees](Modelica_Math_Matrices_LAPA optionally, the matrix of Schur
  CK.html#Modelica.Math.Matrices.LAPA vectors Z as well as the eigenvalues
  CK.dgees)                           

  ![image63](Modelica.Math.Matrices.L Reorder the real Schur factorization
  APACK.dgeesS.png)                   of a real matrix
  [dtrsen](Modelica_Math_Matrices_LAP 
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dtrsen)                         

  ![image64](Modelica.Math.Matrices.L Solve real system of linear
  APACK.dgesvxS.png)                  equations op(A)\*X=B, op(A) is A or
  [dgesvx](Modelica_Math_Matrices_LAP A' according to the boolean input
  ACK.html#Modelica.Math.Matrices.LAP transposed
  ACK.dgesvx)                         

  ![image65](Modelica.Math.Matrices.L Solve the real Sylvester matrix
  APACK.dtrsylS.png)                  equation op(A)\*X + X\*op(B) =
  [dtrsyl](Modelica_Math_Matrices_LAP scale\*C or op(A)\*X - X\*op(B) =
  ACK.html#Modelica.Math.Matrices.LAP scale\*C
  ACK.dtrsyl)                         

  ![image66](Modelica.Math.Matrices.L Compute eingenvalues of a matrix H
  APACK.dtrsylS.png)                  using lapack routine DHSEQR for
  [dhseqr](Modelica_Math_Matrices_LAP Hessenberg form matrix
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dhseqr)                         

  ![image67](Modelica.Math.Matrices.L Norm of a matrix
  APACK.dtrsylS.png)                  
  [dlange](Modelica_Math_Matrices_LAP 
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dlange)                         

  ![image68](Modelica.Math.Matrices.L Estimates the reciprocal of the
  APACK.dtrsylS.png)                  condition number of a general real
  [dgecon](Modelica_Math_Matrices_LAP matrix A
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgecon)                         

  ![image69](Modelica.Math.Matrices.L reduces a real general matrix A to
  APACK.dtrsylS.png)                  upper Hessenberg form H by an
  [dgehrd](Modelica_Math_Matrices_LAP orthogonal similarity
  ACK.html#Modelica.Math.Matrices.LAP transformation: Q' \* A \* Q = H
  ACK.dgehrd)                         

  ![image70](Modelica.Math.Matrices.L computes a QR factorization without
  APACK.dtrsylS.png)                  pivoting
  [dgeqrf](Modelica_Math_Matrices_LAP 
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgeqrf)                         

  ![image71](Modelica.Math.Matrices.L Compute the eigenvalues and the
  APACK.dtrsylS.png)                  (real) left and right eigenvectors
  [dgeevx](Modelica_Math_Matrices_LAP of matrix A, using lapack routine
  ACK.html#Modelica.Math.Matrices.LAP dgeevx
  ACK.dgeevx)                         

  ![image72](Modelica.Math.Matrices.L Determine singular value
  APACK.dgesddS.png)                  decomposition
  [dgesdd](Modelica_Math_Matrices_LAP 
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dgesdd)                         

  ![image73](Modelica.Math.Matrices.L Compute generalized eigenvalues for
  APACK.dggevS.png)                   a (A,B) system
  [dggev](Modelica_Math_Matrices_LAPA 
  CK.html#Modelica.Math.Matrices.LAPA 
  CK.dggev)                           

  ![image74](Modelica.Math.Matrices.L Compute generalized eigenvalues for
  APACK.dggevS.png)                   a (A,B) system, using lapack routine
  [dggevx](Modelica_Math_Matrices_LAP dggevx
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dggevx)                         

  ![image75](Modelica.Math.Matrices.L Compute generalized eigenvalues for
  APACK.dggevS.png)                   a (A,B) system
  [dhgeqz](Modelica_Math_Matrices_LAP 
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dhgeqz)                         

  ![image76](Modelica.Math.Matrices.L overwrites the general real M-by-N
  APACK.dggevS.png)                   matrix C with Q \* C or C \* Q or Q'
  [dormhr](Modelica_Math_Matrices_LAP \* C or C \* Q', where Q is an
  ACK.html#Modelica.Math.Matrices.LAP orthogonal matrix as returne by
  ACK.dormhr)                         dgehrd

  ![image77](Modelica.Math.Matrices.L overwrites the general real M-by-N
  APACK.dggevS.png)                   matrix C with Q \* C or C \* Q or Q'
  [dormqr](Modelica_Math_Matrices_LAP \* C or C \* Q', where Q is an
  ACK.html#Modelica.Math.Matrices.LAP orthogonal matrix of a QR
  ACK.dormqr)                         factorization as returned by dgeqrf

  ![image78](Modelica.Math.Matrices.L Compute the right and/or left
  APACK.dggevS.png)                   eigenvectors of a real upper
  [dtrevc](Modelica_Math_Matrices_LAP quasi-triangular matrix T
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dtrevc)                         

  ![image79](Modelica.Math.Matrices.L Computes the Cholesky factorization
  APACK.dpotrfS.png)                  of a real symmetric positive
  [dpotrf](Modelica_Math_Matrices_LAP definite matrix A
  ACK.html#Modelica.Math.Matrices.LAP 
  ACK.dpotrf)                         

  ![image80](Modelica.Math.Matrices.L Solve one of the matrix equations
  APACK.dtrsmS.png)                   op( A )\*X = alpha\*B, or X\*op( A )
  [dtrsm](Modelica_Math_Matrices_LAPA = alpha\*B, where A is triangular
  CK.html#Modelica.Math.Matrices.LAPA matrix. BLAS routine
  CK.dtrsm)                           

  ![image81](Modelica.Math.Matrices.L Generates a real orthogonal matrix Q
  APACK.dtrsmS.png)                   which is defined as the product of
  [dorghr](Modelica_Math_Matrices_LAP IHI-ILO elementary reflectors of
  ACK.html#Modelica.Math.Matrices.LAP order N, as returned by DGEHRD
  ACK.dorghr)                         
  ------------------------------------------------------------------------

* * * * *

![image82](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgeev
============================================================================================================================================================

**Compute eigenvalues and (right) eigenvectors for real nonsymmetrix
matrix A**

Information
-----------

    Lapack documentation
        Purpose
        =======
        DGEEV computes for an N-by-N real nonsymmetric matrix A, the
        eigenvalues and, optionally, the left and/or right eigenvectors.
        The right eigenvector v(j) of A satisfies
                         A * v(j) = lambda(j) * v(j)
        where lambda(j) is its eigenvalue.
        The left eigenvector u(j) of A satisfies
                      u(j)**H * A = lambda(j) * u(j)**H
        where u(j)**H denotes the conjugate transpose of u(j).
        The computed eigenvectors are normalized to have Euclidean norm
        equal to 1 and largest component real.
        Arguments
        =========
        JOBVL   (input) CHARACTER*1
                = 'N': left eigenvectors of A are not computed;
                = 'V': left eigenvectors of A are computed.
        JOBVR   (input) CHARACTER*1
                = 'N': right eigenvectors of A are not computed;
                = 'V': right eigenvectors of A are computed.
        N       (input) INTEGER
                The order of the matrix A. N >= 0.
        A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
                On entry, the N-by-N matrix A.
                On exit, A has been overwritten.
        LDA     (input) INTEGER
                The leading dimension of the array A.  LDA >= max(1,N).
        WR      (output) DOUBLE PRECISION array, dimension (N)
        WI      (output) DOUBLE PRECISION array, dimension (N)
                WR and WI contain the real and imaginary parts,
                respectively, of the computed eigenvalues.  Complex
                conjugate pairs of eigenvalues appear consecutively
                with the eigenvalue having the positive imaginary part
                first.
        VL      (output) DOUBLE PRECISION array, dimension (LDVL,N)
                If JOBVL = 'V', the left eigenvectors u(j) are stored one
                after another in the columns of VL, in the same order
                as their eigenvalues.
                If JOBVL = 'N', VL is not referenced.
                If the j-th eigenvalue is real, then u(j) = VL(:,j),
                the j-th column of VL.
                If the j-th and (j+1)-st eigenvalues form a complex
                conjugate pair, then u(j) = VL(:,j) + i*VL(:,j+1) and
                u(j+1) = VL(:,j) - i*VL(:,j+1).
        LDVL    (input) INTEGER
                The leading dimension of the array VL.  LDVL >= 1; if
                JOBVL = 'V', LDVL >= N.
        VR      (output) DOUBLE PRECISION array, dimension (LDVR,N)
                If JOBVR = 'V', the right eigenvectors v(j) are stored one
                after another in the columns of VR, in the same order
                as their eigenvalues.
                If JOBVR = 'N', VR is not referenced.
                If the j-th eigenvalue is real, then v(j) = VR(:,j),
                the j-th column of VR.
                If the j-th and (j+1)-st eigenvalues form a complex
                conjugate pair, then v(j) = VR(:,j) + i*VR(:,j+1) and
                v(j+1) = VR(:,j) - i*VR(:,j+1).
        LDVR    (input) INTEGER
                The leading dimension of the array VR.  LDVR >= 1; if
                JOBVR = 'V', LDVR >= N.
        WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)

                On exit, if INFO = 0, WORK(1) returns the optimal LWORK.
        LWORK   (input) INTEGER
                The dimension of the array WORK.  LWORK >= max(1,3*N), and
                if JOBVL = 'V' or JOBVR = 'V', LWORK >= 4*N.  For good
                performance, LWORK must generally be larger.
        INFO    (output) INTEGER
                = 0:  successful exit
                < 0:  if INFO = -i, the i-th argument had an illegal value.
                > 0:  if INFO = i, the QR algorithm failed to compute all the
                      eigenvalues, and no eigenvectors have been computed;
                      elements i+1:N of WR and WI contain eigenvalues which
                      have converged.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                  Default      Description
  --------- --------------------- ------------ ----------------
  Real      A[:, size(A, 1)]                   

Outputs
-------

  ------------------------------------------------------------------------
  Type      Name                              Description
  --------- --------------------------------- ----------------------------
  Real      eigenReal[size(A, 1)]             Real part of eigen values

  Real      eigenImag[size(A, 1)]             Imaginary part of eigen
                                              values

  Real      eigenVectors[size(A, 1), size(A,  Right eigen vectors
            1)]                               

  Integer   info                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dgeev 
      "Compute eigenvalues and (right) eigenvectors for real nonsymmetrix matrix A"

      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)];
      output Real eigenReal[size(A, 1)] "Real part of eigen values";
      output Real eigenImag[size(A, 1)] "Imaginary part of eigen values";
      output Real eigenVectors[size(A, 1), size(A, 1)] "Right eigen vectors";
      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer lwork=12*n;
      Real Awork[n, n]=A;
      Real work[lwork];

    external "Fortran 77" dgeev("N", "V", n, Awork, n, eigenReal, eigenImag,
        eigenVectors, n, eigenVectors, n, work, size(work, 1), info);
    end dgeev;

* * * * *

![image83](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgeev\_eigenValues
=========================================================================================================================================================================

**Compute eigenvalues for real nonsymmetrix matrix A**

Information
-----------

    Lapack documentation
        Purpose
        =======
        DGEEV computes for an N-by-N real nonsymmetric matrix A, the
        eigenvalues and, optionally, the left and/or right eigenvectors.
        The right eigenvector v(j) of A satisfies
                         A * v(j) = lambda(j) * v(j)
        where lambda(j) is its eigenvalue.
        The left eigenvector u(j) of A satisfies
                      u(j)**H * A = lambda(j) * u(j)**H
        where u(j)**H denotes the conjugate transpose of u(j).
        The computed eigenvectors are normalized to have Euclidean norm
        equal to 1 and largest component real.
        Arguments
        =========
        JOBVL   (input) CHARACTER*1
                = 'N': left eigenvectors of A are not computed;
                = 'V': left eigenvectors of A are computed.
        JOBVR   (input) CHARACTER*1
                = 'N': right eigenvectors of A are not computed;
                = 'V': right eigenvectors of A are computed.
        N       (input) INTEGER
                The order of the matrix A. N >= 0.
        A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
                On entry, the N-by-N matrix A.
                On exit, A has been overwritten.
        LDA     (input) INTEGER
                The leading dimension of the array A.  LDA >= max(1,N).
        WR      (output) DOUBLE PRECISION array, dimension (N)
        WI      (output) DOUBLE PRECISION array, dimension (N)
                WR and WI contain the real and imaginary parts,
                respectively, of the computed eigenvalues.  Complex
                conjugate pairs of eigenvalues appear consecutively
                with the eigenvalue having the positive imaginary part
                first.
        VL      (output) DOUBLE PRECISION array, dimension (LDVL,N)
                If JOBVL = 'V', the left eigenvectors u(j) are stored one
                after another in the columns of VL, in the same order
                as their eigenvalues.
                If JOBVL = 'N', VL is not referenced.
                If the j-th eigenvalue is real, then u(j) = VL(:,j),
                the j-th column of VL.
                If the j-th and (j+1)-st eigenvalues form a complex
                conjugate pair, then u(j) = VL(:,j) + i*VL(:,j+1) and
                u(j+1) = VL(:,j) - i*VL(:,j+1).
        LDVL    (input) INTEGER
                The leading dimension of the array VL.  LDVL >= 1; if
                JOBVL = 'V', LDVL >= N.
        VR      (output) DOUBLE PRECISION array, dimension (LDVR,N)
                If JOBVR = 'V', the right eigenvectors v(j) are stored one
                after another in the columns of VR, in the same order
                as their eigenvalues.
                If JOBVR = 'N', VR is not referenced.
                If the j-th eigenvalue is real, then v(j) = VR(:,j),
                the j-th column of VR.
                If the j-th and (j+1)-st eigenvalues form a complex
                conjugate pair, then v(j) = VR(:,j) + i*VR(:,j+1) and
                v(j+1) = VR(:,j) - i*VR(:,j+1).
        LDVR    (input) INTEGER
                The leading dimension of the array VR.  LDVR >= 1; if
                JOBVR = 'V', LDVR >= N.
        WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)

                On exit, if INFO = 0, WORK(1) returns the optimal LWORK.
        LWORK   (input) INTEGER
                The dimension of the array WORK.  LWORK >= max(1,3*N), and
                if JOBVL = 'V' or JOBVR = 'V', LWORK >= 4*N.  For good
                performance, LWORK must generally be larger.
        INFO    (output) INTEGER
                = 0:  successful exit
                < 0:  if INFO = -i, the i-th argument had an illegal value.
                > 0:  if INFO = i, the QR algorithm failed to compute all the
                      eigenvalues, and no eigenvectors have been computed;
                      elements i+1:N of WR and WI contain eigenvalues which
                      have converged.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                  Default      Description
  --------- --------------------- ------------ ----------------
  Real      A[:, size(A, 1)]                   

Outputs
-------

  Type         Name                       Description
  ------------ -------------------------- ----------------
  Real         EigenReal[size(A, 1)]      
  Real         EigenImag[size(A, 1)]      
  Integer      info                       

Modelica definition
-------------------

    function dgeev_eigenValues 
      "Compute eigenvalues for real nonsymmetrix matrix A"

      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)];
      output Real EigenReal[size(A, 1)];
      output Real EigenImag[size(A, 1)];

      /*
          output Real Eigenvectors[size(A, 1), size(A, 1)]=zeros(size(A, 1), size(
              A, 1)); */
      output Integer info;
    protected 
      Integer lwork=8*size(A, 1);
      Real Awork[size(A, 1), size(A, 1)]=A;
      Real work[lwork];
      Real EigenvectorsL[size(A, 1), size(A, 1)]=zeros(size(A, 1), size(A, 1));

      /*
        external "Fortran 77" dgeev("N", "V", size(A, 1), Awork, size(A, 1),
            EigenReal, EigenImag, EigenvectorsL, size(EigenvectorsL, 1),
            Eigenvectors, size(Eigenvectors, 1), work, size(work, 1), info)
    */
    external "Fortran 77" dgeev("N", "N", size(A, 1), Awork, size(A, 1),
        EigenReal, EigenImag, EigenvectorsL, size(EigenvectorsL, 1),
        EigenvectorsL, size(EigenvectorsL, 1), work, size(work, 1), info);

    end dgeev_eigenValues;

* * * * *

![image84](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgegv
============================================================================================================================================================

**Compute generalized eigenvalues and eigenvectors for a (A,B) system**

Information
-----------

    Purpose
    =======

    For a pair of N-by-N real nonsymmetric matrices A, B:
       compute the generalized eigenvalues (alphar +/- alphai*i, beta)
       compute the left and/or right generalized eigenvectors
               (VL and VR)
    The second action is optional -- see the description of JOBVL and
    JOBVR below.
    A generalized eigenvalue for a pair of matrices (A,B) is, roughly
    speaking, a scalar w or a ratio  alpha/beta = w, such that  A - w*B
    is singular.  It is usually represented as the pair (alpha,beta),
    as there is a reasonable interpretation for beta=0, and even for
    both being zero.  A good beginning reference is the book, "Matrix
    Computations", by G. Golub &amp; C. van Loan (Johns Hopkins U. Press)
    A right generalized eigenvector corresponding to a generalized
    eigenvalue  w  for a pair of matrices (A,B) is a vector  r  such
    that  (A - w B) r = 0 .  A left generalized eigenvector is a vector
                           H
    l  such that  (A - w B) l = 0 .
    Note: this routine performs "full balancing" on A and B -- see
    "Further Details", below.
    Arguments
    =========
    JOBVL   (input) CHARACTER*1
            = 'N':  do not compute the left generalized eigenvectors;
            = 'V':  compute the left generalized eigenvectors.
    JOBVR   (input) CHARACTER*1
            = 'N':  do not compute the right generalized eigenvectors;
            = 'V':  compute the right generalized eigenvectors.
    N       (input) INTEGER
            The number of rows and columns in the matrices A, B, VL, and
            VR.  N >= 0.
    A       (input/workspace) DOUBLE PRECISION array, dimension (LDA, N)
            On entry, the first of the pair of matrices whose
            generalized eigenvalues and (optionally) generalized
            eigenvectors are to be computed.
            On exit, the contents will have been destroyed.  (For a
            description of the contents of A on exit, see "Further
            Details", below.)
    LDA     (input) INTEGER
            The leading dimension of A.  LDA >= max(1,N).
    B       (input/workspace) DOUBLE PRECISION array, dimension (LDB, N)
            On entry, the second of the pair of matrices whose
            generalized eigenvalues and (optionally) generalized
            eigenvectors are to be computed.
            On exit, the contents will have been destroyed.  (For a
            description of the contents of B on exit, see "Further
            Details", below.)
    LDB     (input) INTEGER
            The leading dimension of B.  LDB >= max(1,N).
    ALPHAR  (output) DOUBLE PRECISION array, dimension (N)
    ALPHAI  (output) DOUBLE PRECISION array, dimension (N)
    BETA    (output) DOUBLE PRECISION array, dimension (N)
            On exit, (ALPHAR(j) + ALPHAI(j)*i)/BETA(j), j=1,...,N, will
            be the generalized eigenvalues.  If ALPHAI(j) is zero, then
            the j-th eigenvalue is real; if positive, then the j-th and
            (j+1)-st eigenvalues are a complex conjugate pair, with
            ALPHAI(j+1) negative.
            Note: the quotients ALPHAR(j)/BETA(j) and ALPHAI(j)/BETA(j)
            may easily over- or underflow, and BETA(j) may even be zero.
            Thus, the user should avoid naively computing the ratio
            alpha/beta.  However, ALPHAR and ALPHAI will be always less
            than and usually comparable with norm(A) in magnitude, and
            BETA always less than and usually comparable with norm(B).
    VL      (output) DOUBLE PRECISION array, dimension (LDVL,N)
            If JOBVL = 'V', the left generalized eigenvectors.  (See
            "Purpose", above.)  Real eigenvectors take one column,
            complex take two columns, the first for the real part and
            the second for the imaginary part.  Complex eigenvectors
            correspond to an eigenvalue with positive imaginary part.
            Each eigenvector will be scaled so the largest component
            will have abs(real part) + abs(imag. part) = 1, *except*
            that for eigenvalues with alpha=beta=0, a zero vector will
            be returned as the corresponding eigenvector.
            Not referenced if JOBVL = 'N'.
    LDVL    (input) INTEGER
            The leading dimension of the matrix VL. LDVL >= 1, and
            if JOBVL = 'V', LDVL >= N.
    VR      (output) DOUBLE PRECISION array, dimension (LDVR,N)
            If JOBVL = 'V', the right generalized eigenvectors.  (See
            "Purpose", above.)  Real eigenvectors take one column,
            complex take two columns, the first for the real part and
            the second for the imaginary part.  Complex eigenvectors
            correspond to an eigenvalue with positive imaginary part.
            Each eigenvector will be scaled so the largest component
            will have abs(real part) + abs(imag. part) = 1, *except*
            that for eigenvalues with alpha=beta=0, a zero vector will
            be returned as the corresponding eigenvector.
            Not referenced if JOBVR = 'N'.
    LDVR    (input) INTEGER
            The leading dimension of the matrix VR. LDVR >= 1, and
            if JOBVR = 'V', LDVR >= N.
    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.
    LWORK   (input) INTEGER
            The dimension of the array WORK.  LWORK >= max(1,8*N).
            For good performance, LWORK must generally be larger.
            To compute the optimal value of LWORK, call ILAENV to get
            blocksizes (for DGEQRF, DORMQR, and DORGQR.)  Then compute:
            NB  -- MAX of the blocksizes for DGEQRF, DORMQR, and DORGQR;
            The optimal LWORK is:
                2*N + MAX( 6*N, N*(NB+1) ).
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value.
            = 1,...,N:
                  The QZ iteration failed.  No eigenvectors have been
                  calculated, but ALPHAR(j), ALPHAI(j), and BETA(j)
                  should be correct for j=INFO+1,...,N.
            > N:  errors that usually indicate LAPACK problems:
                  =N+1: error return from DGGBAL
                  =N+2: error return from DGEQRF
                  =N+3: error return from DORMQR
                  =N+4: error return from DORGQR
                  =N+5: error return from DGGHRD
                  =N+6: error return from DHGEQZ (other than failed
                                                  iteration)
                  =N+7: error return from DTGEVC
                  =N+8: error return from DGGBAK (computing VL)
                  =N+9: error return from DGGBAK (computing VR)
                  =N+10: error return from DLASCL (various calls)
    Further Details
    ===============
    Balancing
    ---------
    This driver calls DGGBAL to both permute and scale rows and columns
    of A and B.  The permutations PL and PR are chosen so that PL*A*PR
    and PL*B*R will be upper triangular except for the diagonal blocks
    A(i:j,i:j) and B(i:j,i:j), with i and j as close together as
    possible.  The diagonal scaling matrices DL and DR are chosen so
    that the pair  DL*PL*A*PR*DR, DL*PL*B*PR*DR have entries close to
    one (except for the entries that start out zero.)
    After the eigenvalues and eigenvectors of the balanced matrices
    have been computed, DGGBAK transforms the eigenvectors back to what
    they would have been (in perfect arithmetic) if they had not been
    balanced.
    Contents of A and B on Exit
    -------- -- - --- - -- ----
    If any eigenvectors are computed (either JOBVL='V' or JOBVR='V' or
    both), then on exit the arrays A and B will contain the real Schur
    form[*] of the "balanced" versions of A and B.  If no eigenvectors
    are computed, then only the diagonal blocks will be correct.
    [*] See DHGEQZ, DGEGS, or read the book "Matrix Computations",

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                           Default      Description
  --------- ------------------------------ ------------ ----------------
  Real      A[:, size(A, 1)]                            
  Real      B[size(A, 1), size(A, 1)]                   

Outputs
-------

  -------------------------------------------------------------------------
  Type     Name               Description
  -------- ------------------ ---------------------------------------------
  Real     alphaReal[size(A,  Real part of alpha
           1)]                (eigenvalue=(alphaReal+i\*alphaImag)/beta)

  Real     alphaImag[size(A,  Imaginary part of alpha
           1)]                

  Real     beta[size(A, 1)]   Denominator of eigenvalue

  Integer  info               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dgegv 
      "Compute generalized eigenvalues and eigenvectors for a (A,B) system"
      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)];
      input Real B[size(A,1), size(A, 1)];
      output Real alphaReal[size(A, 1)] 
        "Real part of alpha (eigenvalue=(alphaReal+i*alphaImag)/beta)";
      output Real alphaImag[size(A, 1)] "Imaginary part of alpha";
      output Real beta[size(A,1)] "Denominator of eigenvalue";
      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer lwork=12*n;
      Real Awork[n, n]=A;
      Real Bwork[n, n]=B;
      Real work[lwork];
      Real dummy1[1,1];
      Real dummy2[1,1];

      external "Fortran 77" dgegv("N", "N", n, Awork, n, Bwork, n, alphaReal, alphaImag, beta,
                 dummy1, 1, dummy2, 1, work, size(work, 1), info);
    end dgegv;

* * * * *

![image85](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgelsx
=============================================================================================================================================================

**Computes the minimum-norm solution to a real linear least squares
problem with rank deficient A**

Information
-----------

    Lapack documentation
      Purpose
      =======

      DGELSX computes the minimum-norm solution to a real linear least
      squares problem:
          minimize || A * X - B ||
      using a complete orthogonal factorization of A.  A is an M-by-N
      matrix which may be rank-deficient.

      Several right hand side vectors b and solution vectors x can be
      handled in a single call; they are stored as the columns of the
      M-by-NRHS right hand side matrix B and the N-by-NRHS solution
      matrix X.

      The routine first computes a QR factorization with column pivoting:
          A * P = Q * [ R11 R12 ]
                      [  0  R22 ]
      with R11 defined as the largest leading submatrix whose estimated
      condition number is less than 1/RCOND.  The order of R11, RANK,
      is the effective rank of A.

      Then, R22 is considered to be negligible, and R12 is annihilated
      by orthogonal transformations from the right, arriving at the
      complete orthogonal factorization:
         A * P = Q * [ T11 0 ] * Z
                     [  0  0 ]
      The minimum-norm solution is then
         X = P * Z' [ inv(T11)*Q1'*B ]
                    [        0       ]
      where Q1 consists of the first RANK columns of Q.

      Arguments
      =========

      M       (input) INTEGER
              The number of rows of the matrix A.  M >= 0.

      N       (input) INTEGER
              The number of columns of the matrix A.  N >= 0.

      NRHS    (input) INTEGER
              The number of right hand sides, i.e., the number of
              columns of matrices B and X. NRHS >= 0.

      A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
              On entry, the M-by-N matrix A.
              On exit, A has been overwritten by details of its
              complete orthogonal factorization.

      LDA     (input) INTEGER
              The leading dimension of the array A.  LDA >= max(1,M).

      B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
              On entry, the M-by-NRHS right hand side matrix B.
              On exit, the N-by-NRHS solution matrix X.
              If m >= n and RANK = n, the residual sum-of-squares for
              the solution in the i-th column is given by the sum of
              squares of elements N+1:M in that column.

      LDB     (input) INTEGER
              The leading dimension of the array B. LDB >= max(1,M,N).

      JPVT    (input/output) INTEGER array, dimension (N)
              On entry, if JPVT(i) .ne. 0, the i-th column of A is an
              initial column, otherwise it is a free column.  Before
              the QR factorization of A, all initial columns are
              permuted to the leading positions; only the remaining
              free columns are moved as a result of column pivoting
              during the factorization.
              On exit, if JPVT(i) = k, then the i-th column of A*P
              was the k-th column of A.

      RCOND   (input) DOUBLE PRECISION
              RCOND is used to determine the effective rank of A, which
              is defined as the order of the largest leading triangular
              submatrix R11 in the QR factorization with pivoting of A,
              whose estimated condition number < 1/RCOND.

      RANK    (output) INTEGER
              The effective rank of A, i.e., the order of the submatrix
              R11.  This is the same as the order of the submatrix T11
              in the complete orthogonal factorization of A.

      WORK    (workspace) DOUBLE PRECISION array, dimension
                          (max( min(M,N)+3*N, 2*min(M,N)+NRHS )),

      INFO    (output) INTEGER
              = 0:  successful exit
              < 0:  if INFO = -i, the i-th argument had an illegal value    

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type    Name             Default   Description
  ------- ---------------- --------- --------------------------------------
  Real    A[:, :]                    

  Real    B[size(A, 1), :]           

  Real    rcond            0.0       Reciprocal condition number to
                                     estimate rank
  -------------------------------------------------------------------------

Outputs
-------

  Type       Name                      Description
  ---------- ------------------------- -----------------------------------
  Real       X[max(nrow, ncol), nrhs]  Solution is in first size(A,2) rows
  Integer    info                      
  Integer    rank                      Effective rank of A

Modelica definition
-------------------

    function dgelsx 
      "Computes the minimum-norm solution to a real linear least squares problem with rank deficient A"

      extends Modelica.Icons.Function;
      input Real A[:, :];
      input Real B[size(A,1), :];
      input Real rcond=0.0 "Reciprocal condition number to estimate rank";
      output Real X[max(nrow,ncol),nrhs]= cat(1,B,zeros(max(nrow,ncol)-nrow,nrhs)) 
        "Solution is in first size(A,2) rows";
      output Integer info;
      output Integer rank "Effective rank of A";
    protected 
      Integer nrow=size(A,1);
      Integer ncol=size(A,2);
      Integer nx=max(nrow,ncol);
      Integer nrhs=size(B,2);
      Integer lwork=max( min(nrow,ncol)+3*ncol, 2*min(nrow,ncol)+nrhs);
      Real work[lwork];
      Real Awork[nrow,ncol]=A;
      Integer jpvt[ncol]=zeros(ncol);
      external "FORTRAN 77" dgelsx(nrow, ncol, nrhs, Awork, nrow, X, nx, jpvt,
                                  rcond, rank, work, lwork, info);


    end dgelsx;

* * * * *

![image86](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgelsx\_vec
==================================================================================================================================================================

**Computes the minimum-norm solution to a real linear least squares
problem with rank deficient A**

Information
-----------

    Lapack documentation
      Purpose
      =======

      DGELSX computes the minimum-norm solution to a real linear least
      squares problem:
          minimize || A * X - B ||
      using a complete orthogonal factorization of A.  A is an M-by-N
      matrix which may be rank-deficient.

      Several right hand side vectors b and solution vectors x can be
      handled in a single call; they are stored as the columns of the
      M-by-NRHS right hand side matrix B and the N-by-NRHS solution
      matrix X.

      The routine first computes a QR factorization with column pivoting:
          A * P = Q * [ R11 R12 ]
                      [  0  R22 ]
      with R11 defined as the largest leading submatrix whose estimated
      condition number is less than 1/RCOND.  The order of R11, RANK,
      is the effective rank of A.

      Then, R22 is considered to be negligible, and R12 is annihilated
      by orthogonal transformations from the right, arriving at the
      complete orthogonal factorization:
         A * P = Q * [ T11 0 ] * Z
                     [  0  0 ]
      The minimum-norm solution is then
         X = P * Z' [ inv(T11)*Q1'*B ]
                    [        0       ]
      where Q1 consists of the first RANK columns of Q.

      Arguments
      =========

      M       (input) INTEGER
              The number of rows of the matrix A.  M >= 0.

      N       (input) INTEGER
              The number of columns of the matrix A.  N >= 0.

      NRHS    (input) INTEGER
              The number of right hand sides, i.e., the number of
              columns of matrices B and X. NRHS >= 0.

      A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
              On entry, the M-by-N matrix A.
              On exit, A has been overwritten by details of its
              complete orthogonal factorization.

      LDA     (input) INTEGER
              The leading dimension of the array A.  LDA >= max(1,M).

      B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
              On entry, the M-by-NRHS right hand side matrix B.
              On exit, the N-by-NRHS solution matrix X.
              If m >= n and RANK = n, the residual sum-of-squares for
              the solution in the i-th column is given by the sum of
              squares of elements N+1:M in that column.

      LDB     (input) INTEGER
              The leading dimension of the array B. LDB >= max(1,M,N).

      JPVT    (input/output) INTEGER array, dimension (N)
              On entry, if JPVT(i) .ne. 0, the i-th column of A is an
              initial column, otherwise it is a free column.  Before
              the QR factorization of A, all initial columns are
              permuted to the leading positions; only the remaining
              free columns are moved as a result of column pivoting
              during the factorization.
              On exit, if JPVT(i) = k, then the i-th column of A*P
              was the k-th column of A.

      RCOND   (input) DOUBLE PRECISION
              RCOND is used to determine the effective rank of A, which
              is defined as the order of the largest leading triangular
              submatrix R11 in the QR factorization with pivoting of A,
              whose estimated condition number < 1/RCOND.

      RANK    (output) INTEGER
              The effective rank of A, i.e., the order of the submatrix
              R11.  This is the same as the order of the submatrix T11
              in the complete orthogonal factorization of A.

      WORK    (workspace) DOUBLE PRECISION array, dimension
                          (max( min(M,N)+3*N, 2*min(M,N)+NRHS )),

      INFO    (output) INTEGER
              = 0:  successful exit
              < 0:  if INFO = -i, the i-th argument had an illegal value    

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type    Name           Default   Description
  ------- -------------- --------- ----------------------------------------
  Real    A[:, :]                  

  Real    b[size(A, 1)]            

  Real    rcond          0.0       Reciprocal condition number to estimate
                                   rank
  -------------------------------------------------------------------------

Outputs
-------

  Type        Name                   Description
  ----------- ---------------------- --------------------------------------
  Real        x[max(nrow, ncol)]     solution is in first size(A,2) rows
  Integer     info                   
  Integer     rank                   Effective rank of A

Modelica definition
-------------------

    function dgelsx_vec 
      "Computes the minimum-norm solution to a real linear least squares problem with rank deficient A"

      extends Modelica.Icons.Function;
      input Real A[:, :];
      input Real b[size(A,1)];
      input Real rcond=0.0 "Reciprocal condition number to estimate rank";
      output Real x[max(nrow,ncol)]= cat(1,b,zeros(max(nrow,ncol)-nrow)) 
        "solution is in first size(A,2) rows";
      output Integer info;
      output Integer rank "Effective rank of A";
    protected 
      Integer nrow=size(A,1);
      Integer ncol=size(A,2);
      Integer nx=max(nrow,ncol);
      Integer lwork=max( min(nrow,ncol)+3*ncol, 2*min(nrow,ncol)+1);
      Real work[lwork];
      Real Awork[nrow,ncol]=A;
      Integer jpvt[ncol]=zeros(ncol);
      external "FORTRAN 77" dgelsx(nrow, ncol, 1, Awork, nrow, x, nx, jpvt,
                                  rcond, rank, work, lwork, info);


    end dgelsx_vec;

* * * * *

![image87](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgels\_vec
=================================================================================================================================================================

**Solves overdetermined or underdetermined real linear equations A\*x=b
with a b vector**

Information
-----------

    Lapack documentation
      Purpose
      =======

      DGELS solves overdetermined or underdetermined real linear systems
      involving an M-by-N matrix A, or its transpose, using a QR or LQ
      factorization of A.  It is assumed that A has full rank.

      The following options are provided:

      1. If TRANS = 'N' and m >= n:  find the least squares solution of
         an overdetermined system, i.e., solve the least squares problem
                      minimize || B - A*X ||.

      2. If TRANS = 'N' and m < n:  find the minimum norm solution of
         an underdetermined system A * X = B.

      3. If TRANS = 'T' and m >= n:  find the minimum norm solution of
         an undetermined system A**T * X = B.

      4. If TRANS = 'T' and m < n:  find the least squares solution of
         an overdetermined system, i.e., solve the least squares problem
                      minimize || B - A**T * X ||.

      Several right hand side vectors b and solution vectors x can be
      handled in a single call; they are stored as the columns of the
      M-by-NRHS right hand side matrix B and the N-by-NRHS solution
      matrix X.

      Arguments
      =========

      TRANS   (input) CHARACTER
              = 'N': the linear system involves A;
              = 'T': the linear system involves A**T.

      M       (input) INTEGER
              The number of rows of the matrix A.  M >= 0.

      N       (input) INTEGER
              The number of columns of the matrix A.  N >= 0.

      NRHS    (input) INTEGER
              The number of right hand sides, i.e., the number of
              columns of the matrices B and X. NRHS >=0.

      A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
              On entry, the M-by-N matrix A.
              On exit,
                if M >= N, A is overwritten by details of its QR
                           factorization as returned by DGEQRF;
                if M <  N, A is overwritten by details of its LQ
                           factorization as returned by DGELQF.

      LDA     (input) INTEGER
              The leading dimension of the array A.  LDA >= max(1,M).

      B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
              On entry, the matrix B of right hand side vectors, stored
              columnwise; B is M-by-NRHS if TRANS = 'N', or N-by-NRHS
              if TRANS = 'T'.
              On exit, B is overwritten by the solution vectors, stored
              columnwise:  if TRANS = 'N' and m >= n, rows 1 to n of B
              contain the least squares solution vectors; the residual
              sum of squares for the solution in each column is given by
              the sum of squares of elements N+1 to M in that column;
              if TRANS = 'N' and m < n, rows 1 to N of B contain the
              minimum norm solution vectors;
              if TRANS = 'T' and m >= n, rows 1 to M of B contain the
              minimum norm solution vectors;
              if TRANS = 'T' and m < n, rows 1 to M of B contain the
              least squares solution vectors; the residual sum of squares
              for the solution in each column is given by the sum of
              squares of elements M+1 to N in that column.

      LDB     (input) INTEGER
              The leading dimension of the array B. LDB >= MAX(1,M,N).

      WORK    (workspace) DOUBLE PRECISION array, dimension (LWORK)
              On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

      LWORK   (input) INTEGER
              The dimension of the array WORK.
              LWORK >= min(M,N) + MAX(1,M,N,NRHS).
              For optimal performance,
              LWORK >= min(M,N) + MAX(1,M,N,NRHS) * NB
              where NB is the optimum block size.

      INFO    (output) INTEGER
              = 0:  successful exit
              < 0:  if INFO = -i, the i-th argument had an illegal value

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name               Default      Description
  --------- ------------------ ------------ ----------------
  Real      A[:, :]                         
  Real      b[size(A, 1)]                   

Outputs
-------

  Type         Name       Description
  ------------ ---------- ----------------------------------------
  Real         x[nx]      solution is in first size(A,2) rows
  Integer      info       

Modelica definition
-------------------

    function dgels_vec 
      "Solves overdetermined or underdetermined real linear equations A*x=b with a b vector"

      extends Modelica.Icons.Function;
      input Real A[:, :];
      input Real b[size(A,1)];
      output Real x[nx]= cat(1,b,zeros(nx-nrow)) 
        "solution is in first size(A,2) rows";
      output Integer info;
    protected 
      Integer nrow=size(A,1);
      Integer ncol=size(A,2);
      Integer nx=max(nrow,ncol);
      Integer lwork=min(nrow,ncol) + nx;
      Real work[lwork];
      Real Awork[nrow,ncol]=A;
      external "FORTRAN 77" dgels("N", nrow, ncol, 1, Awork, nrow, x,
                                  nx, work, lwork, info);


    end dgels_vec;

* * * * *

![image88](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgesv
============================================================================================================================================================

**Solve real system of linear equations A\*X=B with a B matrix**

Information
-----------

    Lapack documentation:
        Purpose
        =======
        DGESV computes the solution to a real system of linear equations
           A * X = B,
        where A is an N-by-N matrix and X and B are N-by-NRHS matrices.
        The LU decomposition with partial pivoting and row interchanges is
        used to factor A as
           A = P * L * U,
        where P is a permutation matrix, L is unit lower triangular, and U is

        upper triangular.  The factored form of A is then used to solve the
        system of equations A * X = B.
        Arguments
        =========
        N       (input) INTEGER
                The number of linear equations, i.e., the order of the
                matrix A.  N >= 0.
        NRHS    (input) INTEGER
                The number of right hand sides, i.e., the number of columns
                of the matrix B.  NRHS >= 0.
        A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
                On entry, the N-by-N coefficient matrix A.
                On exit, the factors L and U from the factorization
                A = P*L*U; the unit diagonal elements of L are not stored.
        LDA     (input) INTEGER
                The leading dimension of the array A.  LDA >= max(1,N).
        IPIV    (output) INTEGER array, dimension (N)
                The pivot indices that define the permutation matrix P;
                row i of the matrix was interchanged with row IPIV(i).
        B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
                On entry, the N-by-NRHS matrix of right hand side matrix B.
                On exit, if INFO = 0, the N-by-NRHS solution matrix X.
        LDB     (input) INTEGER
                The leading dimension of the array B.  LDB >= max(1,N).
        INFO    (output) INTEGER
                = 0:  successful exit
                < 0:  if INFO = -i, the i-th argument had an illegal value
                > 0:  if INFO = i, U(i,i) is exactly zero.  The factorization

                      has been completed, but the factor U is exactly
                      singular, so the solution could not be computed.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                  Default      Description
  --------- --------------------- ------------ ----------------
  Real      A[:, size(A, 1)]                   
  Real      B[size(A, 1), :]                   

Outputs
-------

  Type         Name                           Description
  ------------ ------------------------------ ----------------
  Real         X[size(A, 1), size(B, 2)]      
  Integer      info                           

Modelica definition
-------------------

    function dgesv 
      "Solve real system of linear equations A*X=B with a B matrix"
      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)];
      input Real B[size(A, 1), :];
      output Real X[size(A, 1), size(B, 2)]=B;
      output Integer info;
    protected 
      Real Awork[size(A, 1), size(A, 1)]=A;
      Integer lda=max(1,size(A,1));
      Integer ldb=max(1,size(B,1));
      Integer ipiv[size(A, 1)];

    external "FORTRAN 77" dgesv(size(A, 1), size(B, 2), Awork, lda, ipiv, X, ldb, info);
    end dgesv;

* * * * *

![image89](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgesv\_vec
=================================================================================================================================================================

**Solve real system of linear equations A\*x=b with a b vector**

Information
-----------

    Same as function LAPACK.dgesv, but right hand side is a vector and not a matrix.
    For details of the arguments, see documentation of dgesv.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                  Default      Description
  --------- --------------------- ------------ ----------------
  Real      A[:, size(A, 1)]                   
  Real      b[size(A, 1)]                      

Outputs
-------

  Type         Name               Description
  ------------ ------------------ ------------------
  Real         x[size(A, 1)]      
  Integer      info               

Modelica definition
-------------------

    function dgesv_vec 
      "Solve real system of linear equations A*x=b with a b vector"
      extends Modelica.Icons.Function;
      input Real A[:, size(A, 1)];
      input Real b[size(A, 1)];
      output Real x[size(A, 1)]=b;
      output Integer info;
    protected 
      Real Awork[size(A, 1), size(A, 1)]=A;
      Integer lda=max(1,size(A,1));
      Integer ldb=max(1,size(b,1));
      Integer ipiv[size(A, 1)];

    external "FORTRAN 77" dgesv(size(A, 1), 1, Awork, lda, ipiv, x, ldb, info);
    end dgesv_vec;

* * * * *

![image90](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgglse\_vec
==================================================================================================================================================================

**Solve a linear equality constrained least squares problem**

Information
-----------

    Lapack documentation

      Purpose
      =======

      DGGLSE solves the linear equality constrained least squares (LSE)
      problem:

              minimize || A*x - c ||_2   subject to B*x = d

      using a generalized RQ factorization of matrices A and B, where A is
      M-by-N, B is P-by-N, assume P <= N <= M+P, and ||.||_2 denotes vector
      2-norm. It is assumed that

                           rank(B) = P                                  (1)

      and the null spaces of A and B intersect only trivially, i.e.,

       intersection of Null(A) and Null(B) = {0} <=> rank( ( A ) ) = N  (2)
                                                         ( ( B ) )

      where N(A) denotes the null space of matrix A. Conditions (1) and (2)
      ensure that the problem LSE has a unique solution.

      Arguments
      =========

      M       (input) INTEGER
              The number of rows of the matrix A.  M >= 0.

      N       (input) INTEGER
              The number of columns of the matrices A and B. N >= 0.
              Assume that P <= N <= M+P.

      P       (input) INTEGER
              The number of rows of the matrix B.  P >= 0.

      A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
              On entry, the P-by-M matrix A.
              On exit, A is destroyed.

      LDA     (input) INTEGER
              The leading dimension of the array A. LDA >= max(1,M).

      B       (input/output) DOUBLE PRECISION array, dimension (LDB,N)
              On entry, the P-by-N matrix B.
              On exit, B is destroyed.

      LDB     (input) INTEGER
              The leading dimension of the array B. LDB >= max(1,P).

      C       (input/output) DOUBLE PRECISION array, dimension (M)
              On entry, C contains the right hand side vector for the
              least squares part of the LSE problem.
              On exit, the residual sum of squares for the solution
              is given by the sum of squares of elements N-P+1 to M of
              vector C.

      D       (input/output) DOUBLE PRECISION array, dimension (P)
              On entry, D contains the right hand side vector for the
              constrained equation.
              On exit, D is destroyed.

      X       (output) DOUBLE PRECISION array, dimension (N)
              On exit, X is the solution of the LSE problem.

      WORK    (workspace) DOUBLE PRECISION array, dimension (LWORK)
              On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

      LWORK   (input) INTEGER
              The dimension of the array WORK. LWORK >= N+P+max(N,M,P).
              For optimum performance LWORK >=
              N+P+max(M,P,N)*max(NB1,NB2), where NB1 is the optimal
              blocksize for the QR factorization of M-by-N matrix A.
              NB2 is the optimal blocksize for the RQ factorization of
              P-by-N matrix B.

      INFO    (output) INTEGER
              = 0:  successful exit.
              < 0:  if INFO = -i, the i-th argument had an illegal value.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                  Default      Description
  --------- --------------------- ------------ ----------------------------
  Real      A[:, :]                            Minimize |A\*x - c|\^2
  Real      c[size(A, 1)]                      
  Real      B[:, size(A, 2)]                   subject to B\*x=d
  Real      d[size(B, 1)]                      

Outputs
-------

  Type         Name               Description
  ------------ ------------------ --------------------
  Real         x[size(A, 2)]      solution vector
  Integer      info               

Modelica definition
-------------------

    function dgglse_vec 
      "Solve a linear equality constrained least squares problem"
      extends Modelica.Icons.Function;
      input Real A[:,:] "Minimize |A*x - c|^2";
      input Real c[size(A,1)];
      input Real B[:,size(A,2)] "subject to B*x=d";
      input Real d[size(B,1)];
      output Real x[size(A,2)] "solution vector";
      output Integer info;
    protected 
      Integer nrow_A=size(A,1);
      Integer nrow_B=size(B,1);
      Integer ncol_A=size(A,2) "(min=nrow_B,max=nrow_A+nrow_B) required";
      Real Awork[nrow_A,ncol_A]=A;
      Real Bwork[nrow_B,ncol_A]=B;
      Real cwork[nrow_A] = c;
      Real dwork[nrow_B] = d;
      Integer lwork=ncol_A + nrow_B + max(nrow_A, max(ncol_A, nrow_B))*5;
      Real work[lwork];
      external "FORTRAN 77" dgglse(nrow_A, ncol_A, nrow_B, Awork, nrow_A,
                                   Bwork, nrow_B, cwork, dwork, x,
                                   work, lwork, info);

    end dgglse_vec;

* * * * *

![image91](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgtsv
============================================================================================================================================================

**Solve real system of linear equations A\*X=B with B matrix and
tridiagonal A**

Information
-----------

    Lapack documentation:
        Purpose
        =======
        DGTSV  solves the equation
           A*X = B,
        where A is an N-by-N tridiagonal matrix, by Gaussian elimination with

        partial pivoting.
        Note that the equation  A'*X = B  may be solved by interchanging the

        order of the arguments DU and DL.
        Arguments
        =========
        N       (input) INTEGER
                The order of the matrix A.  N >= 0.
        NRHS    (input) INTEGER
                The number of right hand sides, i.e., the number of columns
                of the matrix B.  NRHS >= 0.
        DL      (input/output) DOUBLE PRECISION array, dimension (N-1)
                On entry, DL must contain the (n-1) subdiagonal elements of
                A.
                On exit, DL is overwritten by the (n-2) elements of the
                second superdiagonal of the upper triangular matrix U from
                the LU factorization of A, in DL(1), ..., DL(n-2).
        D       (input/output) DOUBLE PRECISION array, dimension (N)
                On entry, D must contain the diagonal elements of A.
                On exit, D is overwritten by the n diagonal elements of U.
        DU      (input/output) DOUBLE PRECISION array, dimension (N-1)
                On entry, DU must contain the (n-1) superdiagonal elements
                of A.
                On exit, DU is overwritten by the (n-1) elements of the first

                superdiagonal of U.
        B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
                On entry, the N-by-NRHS right hand side matrix B.
                On exit, if INFO = 0, the N-by-NRHS solution matrix X.
        LDB     (input) INTEGER
                The leading dimension of the array B.  LDB >= max(1,N).
        INFO    (output) INTEGER
                = 0:  successful exit
                < 0:  if INFO = -i, the i-th argument had an illegal value
                > 0:  if INFO = i, U(i,i) is exactly zero, and the solution
                      has not been computed.  The factorization has not been

                      completed unless i = N.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                              Default      Description
  --------- --------------------------------- ------------ ----------------
  Real      superdiag[:]                                   
  Real      diag[size(superdiag, 1) + 1]                   
  Real      subdiag[size(superdiag, 1)]                    
  Real      B[size(diag, 1), :]                            

Outputs
-------

  Type         Name                           Description
  ------------ ------------------------------ ----------------
  Real         X[size(B, 1), size(B, 2)]      
  Integer      info                           

Modelica definition
-------------------

    function dgtsv 
      "Solve real system of linear equations A*X=B with B matrix and tridiagonal A"

      extends Modelica.Icons.Function;
      input Real superdiag[:];
      input Real diag[size(superdiag, 1) + 1];
      input Real subdiag[size(superdiag, 1)];
      input Real B[size(diag, 1), :];
      output Real X[size(B, 1), size(B, 2)]=B;
      output Integer info;
    protected 
      Real superdiagwork[size(superdiag, 1)]=superdiag;
      Real diagwork[size(diag, 1)]=diag;
      Real subdiagwork[size(subdiag, 1)]=subdiag;

    external "FORTRAN 77" dgtsv(size(diag, 1), size(B, 2), subdiagwork,
        diagwork, superdiagwork, X, size(B, 1), info);
    end dgtsv;

* * * * *

![image92](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgtsv\_vec
=================================================================================================================================================================

**Solve real system of linear equations A\*x=b with b vector and
tridiagonal A**

Information
-----------

    Same as function LAPACK.dgtsv, but right hand side is a vector and not a matrix.
    For details of the arguments, see documentation of dgtsv.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name                              Default      Description
  --------- --------------------------------- ------------ ----------------
  Real      superdiag[:]                                   
  Real      diag[size(superdiag, 1) + 1]                   
  Real      subdiag[size(superdiag, 1)]                    
  Real      b[size(diag, 1)]                               

Outputs
-------

  Type         Name               Description
  ------------ ------------------ ------------------
  Real         x[size(b, 1)]      
  Integer      info               

Modelica definition
-------------------

    function dgtsv_vec 
      "Solve real system of linear equations A*x=b with b vector and tridiagonal A"

      extends Modelica.Icons.Function;
      input Real superdiag[:];
      input Real diag[size(superdiag, 1) + 1];
      input Real subdiag[size(superdiag, 1)];
      input Real b[size(diag, 1)];
      output Real x[size(b, 1)]=b;
      output Integer info;
    protected 
      Real superdiagwork[size(superdiag, 1)]=superdiag;
      Real diagwork[size(diag, 1)]=diag;
      Real subdiagwork[size(subdiag, 1)]=subdiag;

    external "FORTRAN 77" dgtsv(size(diag, 1), 1, subdiagwork, diagwork,
        superdiagwork, x, size(b, 1), info);
    end dgtsv_vec;

* * * * *

![image93](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgbsv
============================================================================================================================================================

**Solve real system of linear equations A\*X=B with a B matrix**

Information
-----------

    Lapack documentation:
    Purpose
    =======
    DGBSV computes the solution to a real system of linear equations
    A * X = B, where A is a band matrix of order N with KL subdiagonals
    and KU superdiagonals, and X and B are N-by-NRHS matrices.
    The LU decomposition with partial pivoting and row interchanges is
    used to factor A as A = L * U, where L is a product of permutation
    and unit lower triangular matrices with KL subdiagonals, and U is
    upper triangular with KL+KU superdiagonals.  The factored form of A
    is then used to solve the system of equations A * X = B.
    Arguments
    =========
    N       (input) INTEGER
            The number of linear equations, i.e., the order of the
            matrix A.  N >= 0.
    KL      (input) INTEGER
            The number of subdiagonals within the band of A.  KL >= 0.
    KU      (input) INTEGER
            The number of superdiagonals within the band of A.  KU >= 0.
    NRHS    (input) INTEGER
            The number of right hand sides, i.e., the number of columns
            of the matrix B.  NRHS >= 0.
    AB      (input/output) DOUBLE PRECISION array, dimension (LDAB,N)
            On entry, the matrix A in band storage, in rows KL+1 to
            2*KL+KU+1; rows 1 to KL of the array need not be set.
            The j-th column of A is stored in the j-th column of the
            array AB as follows:
            AB(KL+KU+1+i-j,j) = A(i,j) for max(1,j-KU)<=i<=min(N,j+KL)
            On exit, details of the factorization: U is stored as an
            upper triangular band matrix with KL+KU superdiagonals in
            rows 1 to KL+KU+1, and the multipliers used during the
            factorization are stored in rows KL+KU+2 to 2*KL+KU+1.
            See below for further details.
    LDAB    (input) INTEGER
            The leading dimension of the array AB.  LDAB >= 2*KL+KU+1.
    IPIV    (output) INTEGER array, dimension (N)
            The pivot indices that define the permutation matrix P;
            row i of the matrix was interchanged with row IPIV(i).
    B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
            On entry, the N-by-NRHS right hand side matrix B.
            On exit, if INFO = 0, the N-by-NRHS solution matrix X.
    LDB     (input) INTEGER
            The leading dimension of the array B.  LDB >= max(1,N).
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value
            > 0:  if INFO = i, U(i,i) is exactly zero.  The factorization
                  has been completed, but the factor U is exactly
                  singular, and the solution has not been computed.
    Further Details
    ===============
    The band storage scheme is illustrated by the following example, when
    M = N = 6, KL = 2, KU = 1:
    On entry:                       On exit:
        *    *    *    +    +    +       *    *    *   u14  u25  u36
        *    *    +    +    +    +       *    *   u13  u24  u35  u46
        *   a12  a23  a34  a45  a56      *   u12  u23  u34  u45  u56
       a11  a22  a33  a44  a55  a66     u11  u22  u33  u44  u55  u66
       a21  a32  a43  a54  a65   *      m21  m32  m43  m54  m65   *
       a31  a42  a53  a64   *    *      m31  m42  m53  m64   *    *
    Array elements marked * are not used by the routine; elements marked
    + need not be set on entry, but are required by the routine to store
    elements of U because of fill-in resulting from the row interchanges.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name                         Default    Description
  ---------- ---------------------------- ---------- ----------------------
  Integer    n                                       Number of equations
  Integer    kLower                                  Number of lower bands
  Integer    kUpper                                  Number of upper bands
  Real       A[2\*kLower + kUpper + 1, n]            
  Real       B[n, :]                                 

Outputs
-------

  Type         Name                  Description
  ------------ --------------------- ----------------
  Real         X[n, size(B, 2)]      
  Integer      info                  

Modelica definition
-------------------

    function dgbsv 
      "Solve real system of linear equations A*X=B with a B matrix"
      extends Modelica.Icons.Function;
      input Integer n "Number of equations";
      input Integer kLower "Number of lower bands";
      input Integer kUpper "Number of upper bands";
      input Real A[2*kLower + kUpper + 1, n];
      input Real B[n, :];
      output Real X[n, size(B, 2)]=B;
      output Integer info;
    protected 
      Real Awork[size(A, 1), size(A, 2)]=A;
      Integer ipiv[n];

    external "FORTRAN 77" dgbsv(n, kLower, kUpper, size(B, 2), Awork, size(
        Awork, 1), ipiv, X, n, info);
    end dgbsv;

* * * * *

![image94](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgbsv\_vec
=================================================================================================================================================================

**Solve real system of linear equations A\*x=b with a b vector**

Information
-----------

    Lapack documentation:

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type       Name                         Default    Description
  ---------- ---------------------------- ---------- ----------------------
  Integer    n                                       Number of equations
  Integer    kLower                                  Number of lower bands
  Integer    kUpper                                  Number of upper bands
  Real       A[2\*kLower + kUpper + 1, n]            
  Real       b[n]                                    

Outputs
-------

  Type         Name      Description
  ------------ --------- ----------------
  Real         x[n]      
  Integer      info      

Modelica definition
-------------------

    function dgbsv_vec 
      "Solve real system of linear equations A*x=b with a b vector"
      extends Modelica.Icons.Function;
      input Integer n "Number of equations";
      input Integer kLower "Number of lower bands";
      input Integer kUpper "Number of upper bands";
      input Real A[2*kLower + kUpper + 1, n];
      input Real b[n];
      output Real x[n]=b;
      output Integer info;
    protected 
      Real Awork[size(A, 1), size(A, 2)]=A;
      Integer ipiv[n];

    external "FORTRAN 77" dgbsv(n, kLower, kUpper, 1, Awork, size(Awork, 1),
        ipiv, x, n, info);
    end dgbsv_vec;

* * * * *

![image95](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgesvd
=============================================================================================================================================================

**Determine singular value decomposition**

Information
-----------

    Lapack documentation:
        Purpose
        =======
        DGESVD computes the singular value decomposition (SVD) of a real
        M-by-N matrix A, optionally computing the left and/or right singular

        vectors. The SVD is written
             A = U * SIGMA * transpose(V)
        where SIGMA is an M-by-N matrix which is zero except for its
        min(m,n) diagonal elements, U is an M-by-M orthogonal matrix, and
        V is an N-by-N orthogonal matrix.  The diagonal elements of SIGMA
        are the singular values of A; they are real and non-negative, and
        are returned in descending order.  The first min(m,n) columns of
        U and V are the left and right singular vectors of A.
        Note that the routine returns V**T, not V.
        Arguments
        =========
        JOBU    (input) CHARACTER*1
                Specifies options for computing all or part of the matrix U:

                = 'A':  all M columns of U are returned in array U:
                = 'S':  the first min(m,n) columns of U (the left singular
                        vectors) are returned in the array U;
                = 'O':  the first min(m,n) columns of U (the left singular
                        vectors) are overwritten on the array A;
                = 'N':  no columns of U (no left singular vectors) are
                        computed.
        JOBVT   (input) CHARACTER*1
                Specifies options for computing all or part of the matrix
                V**T:
                = 'A':  all N rows of V**T are returned in the array VT;
                = 'S':  the first min(m,n) rows of V**T (the right singular
                        vectors) are returned in the array VT;
                = 'O':  the first min(m,n) rows of V**T (the right singular
                        vectors) are overwritten on the array A;
                = 'N':  no rows of V**T (no right singular vectors) are
                        computed.
                JOBVT and JOBU cannot both be 'O'.
        M       (input) INTEGER
                The number of rows of the input matrix A.  M >= 0.
        N       (input) INTEGER
                The number of columns of the input matrix A.  N >= 0.
        A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
                On entry, the M-by-N matrix A.
                On exit,
                if JOBU = 'O',  A is overwritten with the first min(m,n)
                                columns of U (the left singular vectors,
                                stored columnwise);
                if JOBVT = 'O', A is overwritten with the first min(m,n)
                                rows of V**T (the right singular vectors,
                                stored rowwise);
                if JOBU .ne. 'O' and JOBVT .ne. 'O', the contents of A
                                are destroyed.
        LDA     (input) INTEGER
                The leading dimension of the array A.  LDA >= max(1,M).
        S       (output) DOUBLE PRECISION array, dimension (min(M,N))
                The singular values of A, sorted so that S(i) >= S(i+1).
        U       (output) DOUBLE PRECISION array, dimension (LDU,UCOL)
                (LDU,M) if JOBU = 'A' or (LDU,min(M,N)) if JOBU = 'S'.
                If JOBU = 'A', U contains the M-by-M orthogonal matrix U;
                if JOBU = 'S', U contains the first min(m,n) columns of U
                (the left singular vectors, stored columnwise);
                if JOBU = 'N' or 'O', U is not referenced.
        LDU     (input) INTEGER
                The leading dimension of the array U.  LDU >= 1; if
                JOBU = 'S' or 'A', LDU >= M.
        VT      (output) DOUBLE PRECISION array, dimension (LDVT,N)
                If JOBVT = 'A', VT contains the N-by-N orthogonal matrix
                V**T;
                if JOBVT = 'S', VT contains the first min(m,n) rows of
                V**T (the right singular vectors, stored rowwise);
                if JOBVT = 'N' or 'O', VT is not referenced.
        LDVT    (input) INTEGER
                The leading dimension of the array VT.  LDVT >= 1; if
                JOBVT = 'A', LDVT >= N; if JOBVT = 'S', LDVT >= min(M,N).
        WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)

                On exit, if INFO = 0, WORK(1) returns the optimal LWORK;
                if INFO > 0, WORK(2:MIN(M,N)) contains the unconverged
                superdiagonal elements of an upper bidiagonal matrix B
                whose diagonal is in S (not necessarily sorted). B
                satisfies A = U * B * VT, so it has the same singular values

                as A, and singular vectors related by U and VT.
        LWORK   (input) INTEGER
                The dimension of the array WORK. LWORK >= 1.
                LWORK >= MAX(3*MIN(M,N)+MAX(M,N),5*MIN(M,N)-4).
                For good performance, LWORK should generally be larger.
        INFO    (output) INTEGER
                = 0:  successful exit.
                < 0:  if INFO = -i, the i-th argument had an illegal value.
                > 0:  if DBDSQR did not converge, INFO specifies how many
                      superdiagonals of an intermediate bidiagonal form B
                      did not converge to zero. See the description of WORK
                      above for details.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ----------------
  Real      A[:, :]                   

Outputs
-------

  Type         Name                                    Description
  ------------ --------------------------------------- ----------------
  Real         sigma[min(size(A, 1), size(A, 2))]      
  Real         U[size(A, 1), size(A, 1)]               
  Real         VT[size(A, 2), size(A, 2)]              
  Integer      info                                    

Modelica definition
-------------------

    function dgesvd "Determine singular value decomposition"
      extends Modelica.Icons.Function;
      input Real A[:, :];
      output Real sigma[min(size(A, 1), size(A, 2))];
      output Real U[size(A, 1), size(A, 1)]=zeros(size(A, 1), size(A, 1));
      output Real VT[size(A, 2), size(A, 2)]=zeros(size(A, 2), size(A, 2));
      output Integer info;
    protected 
      Real Awork[size(A, 1), size(A, 2)]=A;
      Integer lwork=5*size(A, 1) + 5*size(A, 2);
      Real work[lwork];

    external "Fortran 77" dgesvd("A", "A", size(A, 1), size(A, 2), Awork, size(
        A, 1), sigma, U, size(A, 1), VT, size(A, 2), work, lwork, info);
    end dgesvd;

* * * * *

![image96](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgesvd\_sigma
====================================================================================================================================================================

**Determine singular values**

Information
-----------

    Lapack documentation:
        Purpose
        =======
        DGESVD computes the singular value decomposition (SVD) of a real
        M-by-N matrix A, optionally computing the left and/or right singular

        vectors. The SVD is written
             A = U * SIGMA * transpose(V)
        where SIGMA is an M-by-N matrix which is zero except for its
        min(m,n) diagonal elements, U is an M-by-M orthogonal matrix, and
        V is an N-by-N orthogonal matrix.  The diagonal elements of SIGMA
        are the singular values of A; they are real and non-negative, and
        are returned in descending order.  The first min(m,n) columns of
        U and V are the left and right singular vectors of A.
        Note that the routine returns V**T, not V.
        Arguments
        =========
        JOBU    (input) CHARACTER*1
                Specifies options for computing all or part of the matrix U:

                = 'A':  all M columns of U are returned in array U:
                = 'S':  the first min(m,n) columns of U (the left singular
                        vectors) are returned in the array U;
                = 'O':  the first min(m,n) columns of U (the left singular
                        vectors) are overwritten on the array A;
                = 'N':  no columns of U (no left singular vectors) are
                        computed.
        JOBVT   (input) CHARACTER*1
                Specifies options for computing all or part of the matrix
                V**T:
                = 'A':  all N rows of V**T are returned in the array VT;
                = 'S':  the first min(m,n) rows of V**T (the right singular
                        vectors) are returned in the array VT;
                = 'O':  the first min(m,n) rows of V**T (the right singular
                        vectors) are overwritten on the array A;
                = 'N':  no rows of V**T (no right singular vectors) are
                        computed.
                JOBVT and JOBU cannot both be 'O'.
        M       (input) INTEGER
                The number of rows of the input matrix A.  M >= 0.
        N       (input) INTEGER
                The number of columns of the input matrix A.  N >= 0.
        A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
                On entry, the M-by-N matrix A.
                On exit,
                if JOBU = 'O',  A is overwritten with the first min(m,n)
                                columns of U (the left singular vectors,
                                stored columnwise);
                if JOBVT = 'O', A is overwritten with the first min(m,n)
                                rows of V**T (the right singular vectors,
                                stored rowwise);
                if JOBU .ne. 'O' and JOBVT .ne. 'O', the contents of A
                                are destroyed.
        LDA     (input) INTEGER
                The leading dimension of the array A.  LDA >= max(1,M).
        S       (output) DOUBLE PRECISION array, dimension (min(M,N))
                The singular values of A, sorted so that S(i) >= S(i+1).
        U       (output) DOUBLE PRECISION array, dimension (LDU,UCOL)
                (LDU,M) if JOBU = 'A' or (LDU,min(M,N)) if JOBU = 'S'.
                If JOBU = 'A', U contains the M-by-M orthogonal matrix U;
                if JOBU = 'S', U contains the first min(m,n) columns of U
                (the left singular vectors, stored columnwise);
                if JOBU = 'N' or 'O', U is not referenced.
        LDU     (input) INTEGER
                The leading dimension of the array U.  LDU >= 1; if
                JOBU = 'S' or 'A', LDU >= M.
        VT      (output) DOUBLE PRECISION array, dimension (LDVT,N)
                If JOBVT = 'A', VT contains the N-by-N orthogonal matrix
                V**T;
                if JOBVT = 'S', VT contains the first min(m,n) rows of
                V**T (the right singular vectors, stored rowwise);
                if JOBVT = 'N' or 'O', VT is not referenced.
        LDVT    (input) INTEGER
                The leading dimension of the array VT.  LDVT >= 1; if
                JOBVT = 'A', LDVT >= N; if JOBVT = 'S', LDVT >= min(M,N).
        WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)

                On exit, if INFO = 0, WORK(1) returns the optimal LWORK;
                if INFO > 0, WORK(2:MIN(M,N)) contains the unconverged
                superdiagonal elements of an upper bidiagonal matrix B
                whose diagonal is in S (not necessarily sorted). B
                satisfies A = U * B * VT, so it has the same singular values

                as A, and singular vectors related by U and VT.
        LWORK   (input) INTEGER
                The dimension of the array WORK. LWORK >= 1.
                LWORK >= MAX(3*MIN(M,N)+MAX(M,N),5*MIN(M,N)-4).
                For good performance, LWORK should generally be larger.
        INFO    (output) INTEGER
                = 0:  successful exit.
                < 0:  if INFO = -i, the i-th argument had an illegal value.
                > 0:  if DBDSQR did not converge, INFO specifies how many
                      superdiagonals of an intermediate bidiagonal form B
                      did not converge to zero. See the description of WORK
                      above for details.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ----------------
  Real      A[:, :]                   

Outputs
-------

  Type         Name                                    Description
  ------------ --------------------------------------- ----------------
  Real         sigma[min(size(A, 1), size(A, 2))]      
  Integer      info                                    

Modelica definition
-------------------

    function dgesvd_sigma "Determine singular values"
      extends Modelica.Icons.Function;
      input Real A[:, :];
      output Real sigma[min(size(A, 1), size(A, 2))];
      output Integer info;
    protected 
      Real Awork[size(A, 1), size(A, 2)]=A;
      Real U[size(A, 1), size(A, 1)];
      Real VT[size(A, 2), size(A, 2)];
      Integer lwork=5*size(A, 1) + 5*size(A, 2);
      Real work[lwork];

    external "Fortran 77" dgesvd("N", "N", size(A, 1), size(A, 2), Awork, size(
        A, 1), sigma, U, size(A, 1), VT, size(A, 2), work, lwork, info);
    end dgesvd_sigma;

* * * * *

![image97](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgetrf
=============================================================================================================================================================

**Compute LU factorization of square or rectangular matrix A (A =
P\*L\*U)**

Information
-----------

    Lapack documentation:
      SUBROUTINE DGETRF( M, N, A, LDA, IPIV, INFO )
    -- LAPACK routine (version 1.1) --
       Univ. of Tennessee, Univ. of California Berkeley, NAG Ltd.,
       Courant Institute, Argonne National Lab, and Rice University
       March 31, 1993
       .. Scalar Arguments ..
       INTEGER            INFO, LDA, M, N
       ..
       .. Array Arguments ..
       INTEGER            IPIV( * )
       DOUBLE PRECISION   A( LDA, * )
       ..
    Purpose
    =======
    DGETRF computes an LU factorization of a general M-by-N matrix A
    using partial pivoting with row interchanges.
    The factorization has the form
       A = P * L * U
    where P is a permutation matrix, L is lower triangular with unit
    diagonal elements (lower trapezoidal if m > n), and U is upper
    triangular (upper trapezoidal if m < n).
    This is the right-looking Level 3 BLAS version of the algorithm.
    Arguments
    =========
    M       (input) INTEGER
            The number of rows of the matrix A.  M >= 0.
    N       (input) INTEGER
            The number of columns of the matrix A.  N >= 0.
    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the M-by-N matrix to be factored.
            On exit, the factors L and U from the factorization
            A = P*L*U; the unit diagonal elements of L are not stored.
    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,M).
    IPIV    (output) INTEGER array, dimension (min(M,N))
            The pivot indices; for 1 <= i <= min(M,N), row i of the
            matrix was interchanged with row IPIV(i).
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value
            > 0:  if INFO = i, U(i,i) is exactly zero. The factorization
                  has been completed, but the factor U is exactly
                  singular, and division by zero will occur if it is used
                  to solve a system of equations.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ---------------------------------
  Real      A[:, :]                   Square or rectangular matrix

Outputs
-------

  Type         Name                                     Description
  ------------ ---------------------------------------- -----------------
  Real         LU[size(A, 1), size(A, 2)]               
  Integer      pivots[min(size(A, 1), size(A, 2))]      Pivot vector
  Integer      info                                     Information

Modelica definition
-------------------

    function dgetrf 
      "Compute LU factorization of square or rectangular matrix A (A = P*L*U)"

      extends Modelica.Icons.Function;
      input Real A[:, :] "Square or rectangular matrix";
      output Real LU[size(A, 1), size(A, 2)]=A;
      output Integer pivots[min(size(A, 1), size(A, 2))] "Pivot vector";
      output Integer info "Information";
    protected 
      Integer lda=max(1,size(A, 1));
    external "FORTRAN 77" dgetrf(size(A, 1), size(A, 2), LU, lda, pivots,
         info);
    end dgetrf;

* * * * *

![image98](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgetrs
=============================================================================================================================================================

**Solves a system of linear equations with the LU decomposition from
dgetrf(..)**

Information
-----------

    Lapack documentation:
      SUBROUTINE DGETRS( TRANS, N, NRHS, A, LDA, IPIV, B, LDB, INFO )
    -- LAPACK routine (version 1.1) --
       Univ. of Tennessee, Univ. of California Berkeley, NAG Ltd.,
       Courant Institute, Argonne National Lab, and Rice University
       March 31, 1993
       .. Scalar Arguments ..
       CHARACTER          TRANS
       INTEGER            INFO, LDA, LDB, N, NRHS
       ..
       .. Array Arguments ..
       INTEGER            IPIV( * )
       DOUBLE PRECISION   A( LDA, * ), B( LDB, * )
       ..
    Purpose
    =======
    DGETRS solves a system of linear equations
       A * X = B  or  A' * X = B
    with a general N-by-N matrix A using the LU factorization computed
    by DGETRF.
    Arguments
    =========
    TRANS   (input) CHARACTER*1
            Specifies the form of the system of equations:
            = 'N':  A * X = B  (No transpose)
            = 'T':  A'* X = B  (Transpose)
            = 'C':  A'* X = B  (Conjugate transpose = Transpose)
    N       (input) INTEGER
            The order of the matrix A.  N >= 0.
    NRHS    (input) INTEGER
            The number of right hand sides, i.e., the number of columns
            of the matrix B.  NRHS >= 0.
    A       (input) DOUBLE PRECISION array, dimension (LDA,N)
            The factors L and U from the factorization A = P*L*U
            as computed by DGETRF.
    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).
    IPIV    (input) INTEGER array, dimension (N)
            The pivot indices from DGETRF; for 1<=i<=N, row i of the
            matrix was interchanged with row IPIV(i).
    B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
            On entry, the right hand side matrix B.
            On exit, the solution matrix X.
    LDB     (input) INTEGER
            The leading dimension of the array B.  LDB >= max(1,N).
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type     Name              Default  Description
  -------- ----------------- -------- ------------------------------------
  Real     LU[:, size(LU,             LU factorization of dgetrf of a
           1)]                        square matrix

  Integer  pivots[size(LU,            Pivot vector of dgetrf
           1)]                        

  Real     B[size(LU, 1), :]          Right hand side matrix B
  ------------------------------------------------------------------------

Outputs
-------

  Type         Name                           Description
  ------------ ------------------------------ ----------------------
  Real         X[size(B, 1), size(B, 2)]      Solution matrix X
  Integer      info                           

Modelica definition
-------------------

    function dgetrs 
      "Solves a system of linear equations with the LU decomposition from dgetrf(..)"

      extends Modelica.Icons.Function;
      input Real LU[:, size(LU, 1)] "LU factorization of dgetrf of a square matrix";
      input Integer pivots[size(LU, 1)] "Pivot vector of dgetrf";
      input Real B[size(LU, 1),:] "Right hand side matrix B";
      output Real X[size(B, 1), size(B,2)]=B "Solution matrix X";
      output Integer info;
    protected 
      Real work[size(LU, 1), size(LU, 1)]=LU;
      Integer lda=max(1,size(LU, 1));
      Integer ldb=max(1,size(B, 1));

    external "FORTRAN 77" dgetrs("N", size(LU, 1), size(B,2), work, lda, pivots,
         X, ldb, info);
    end dgetrs;

* * * * *

![image99](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgetrs\_vec
==================================================================================================================================================================

**Solves a system of linear equations with the LU decomposition from
dgetrf(..)**

Information
-----------

    Lapack documentation:
      SUBROUTINE DGETRS( TRANS, N, NRHS, A, LDA, IPIV, B, LDB, INFO )
    -- LAPACK routine (version 1.1) --
       Univ. of Tennessee, Univ. of California Berkeley, NAG Ltd.,
       Courant Institute, Argonne National Lab, and Rice University
       March 31, 1993
       .. Scalar Arguments ..
       CHARACTER          TRANS
       INTEGER            INFO, LDA, LDB, N, NRHS
       ..
       .. Array Arguments ..
       INTEGER            IPIV( * )
       DOUBLE PRECISION   A( LDA, * ), B( LDB, * )
       ..
    Purpose
    =======
    DGETRS solves a system of linear equations
       A * X = B  or  A' * X = B
    with a general N-by-N matrix A using the LU factorization computed
    by DGETRF.
    Arguments
    =========
    TRANS   (input) CHARACTER*1
            Specifies the form of the system of equations:
            = 'N':  A * X = B  (No transpose)
            = 'T':  A'* X = B  (Transpose)
            = 'C':  A'* X = B  (Conjugate transpose = Transpose)
    N       (input) INTEGER
            The order of the matrix A.  N >= 0.
    NRHS    (input) INTEGER
            The number of right hand sides, i.e., the number of columns
            of the matrix B.  NRHS >= 0.
    A       (input) DOUBLE PRECISION array, dimension (LDA,N)
            The factors L and U from the factorization A = P*L*U
            as computed by DGETRF.
    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).
    IPIV    (input) INTEGER array, dimension (N)
            The pivot indices from DGETRF; for 1<=i<=N, row i of the
            matrix was interchanged with row IPIV(i).
    B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
            On entry, the right hand side matrix B.
            On exit, the solution matrix X.
    LDB     (input) INTEGER
            The leading dimension of the array B.  LDB >= max(1,N).
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type     Name              Default  Description
  -------- ----------------- -------- ------------------------------------
  Real     LU[:, size(LU,             LU factorization of dgetrf of a
           1)]                        square matrix

  Integer  pivots[size(LU,            Pivot vector of dgetrf
           1)]                        

  Real     b[size(LU, 1)]             Right hand side vector b
  ------------------------------------------------------------------------

Outputs
-------

  Type         Name               Description
  ------------ ------------------ ------------------
  Real         x[size(b, 1)]      
  Integer      info               

Modelica definition
-------------------

    function dgetrs_vec 
      "Solves a system of linear equations with the LU decomposition from dgetrf(..)"

      extends Modelica.Icons.Function;
      input Real LU[:, size(LU, 1)] "LU factorization of dgetrf of a square matrix";
      input Integer pivots[size(LU, 1)] "Pivot vector of dgetrf";
      input Real b[size(LU, 1)] "Right hand side vector b";
      output Real x[size(b, 1)]=b;
      output Integer info;

    protected 
      Real work[size(LU, 1), size(LU, 1)]=LU;
      Integer lda=max(1,size(LU, 1));
      Integer ldb=max(1,size(b, 1));

    external "FORTRAN 77" dgetrs("N", size(LU, 1), 1, work, lda, pivots,
         x, ldb, info);
    end dgetrs_vec;

* * * * *

![image100](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgetri
==============================================================================================================================================================

**Computes the inverse of a matrix using the LU factorization from
dgetrf(..)**

Information
-----------

    Lapack documentation:
       SUBROUTINE DGETRI( N, A, LDA, IPIV, WORK, LWORK, INFO )
    -- LAPACK routine (version 1.1) --
       Univ. of Tennessee, Univ. of California Berkeley, NAG Ltd.,
       Courant Institute, Argonne National Lab, and Rice University
       March 31, 1993
       .. Scalar Arguments ..
       INTEGER            INFO, LDA, LWORK, N
       ..
       .. Array Arguments ..
       INTEGER            IPIV( * )
       DOUBLE PRECISION   A( LDA, * ), WORK( LWORK )
       ..
    Purpose
    =======
    DGETRI computes the inverse of a matrix using the LU factorization
    computed by DGETRF.
    This method inverts U and then computes inv(A) by solving the system
    inv(A)*L = inv(U) for inv(A).
    Arguments
    =========
    N       (input) INTEGER
            The order of the matrix A.  N >= 0.
    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the factors L and U from the factorization
            A = P*L*U as computed by DGETRF.
            On exit, if INFO = 0, the inverse of the original matrix A.
    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).
    IPIV    (input) INTEGER array, dimension (N)
            The pivot indices from DGETRF; for 1<=i<=N, row i of the
            matrix was interchanged with row IPIV(i).
    WORK    (workspace) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO=0, then WORK(1) returns the optimal LWORK.
    LWORK   (input) INTEGER
            The dimension of the array WORK.  LWORK >= max(1,N).
            For optimal performance LWORK >= N*NB, where NB is
            the optimal blocksize returned by ILAENV.
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value
            > 0:  if INFO = i, U(i,i) is exactly zero; the matrix is
                  singular and its inverse could not be computed.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  ------------------------------------------------------------------------
  Type     Name              Default  Description
  -------- ----------------- -------- ------------------------------------
  Real     LU[:, size(LU,             LU factorization of dgetrf of a
           1)]                        square matrix

  Integer  pivots[size(LU,            Pivot vector of dgetrf
           1)]                        
  ------------------------------------------------------------------------

Outputs
-------

  Type        Name                             Description
  ----------- -------------------------------- ----------------------------
  Real        inv[size(LU, 1), size(LU, 2)]    Inverse of matrix P\*L\*U
  Integer     info                             

Modelica definition
-------------------

    function dgetri 
      "Computes the inverse of a matrix using the LU factorization from dgetrf(..)"

      extends Modelica.Icons.Function;
      input Real LU[:, size(LU, 1)] "LU factorization of dgetrf of a square matrix";
      input Integer pivots[size(LU, 1)] "Pivot vector of dgetrf";
      output Real inv[size(LU, 1), size(LU, 2)]=LU "Inverse of matrix P*L*U";
      output Integer info;

    protected 
      Integer lda=max(1,size(LU, 1));
      Integer lwork=max(1,min(10, size(LU, 1))*size(LU, 1)) "Length of work array";
      Real work[lwork];

    external "FORTRAN 77" dgetri(size(LU, 1), inv, lda, pivots, work, lwork, info);
    end dgetri;

* * * * *

![image101](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgeqpf
==============================================================================================================================================================

**Compute QR factorization of square or rectangular matrix A with column
pivoting (A(:,p) = Q\*R)**

Information
-----------

    Lapack documentation:
       SUBROUTINE DGEQPF( M, N, A, LDA, JPVT, TAU, WORK, INFO )
    -- LAPACK test routine (version 1.1) --
       Univ. of Tennessee, Univ. of California Berkeley, NAG Ltd.,
       Courant Institute, Argonne National Lab, and Rice University
       March 31, 1993
       .. Scalar Arguments ..
       INTEGER            INFO, LDA, M, N
       ..
       .. Array Arguments ..
       INTEGER            JPVT( * )
       DOUBLE PRECISION   A( LDA, * ), TAU( * ), WORK( * )
       ..
    Purpose
    =======
    DGEQPF computes a QR factorization with column pivoting of a
    real M-by-N matrix A: A*P = Q*R.
    Arguments
    =========
    M       (input) INTEGER
            The number of rows of the matrix A. M >= 0.
    N       (input) INTEGER
            The number of columns of the matrix A. N >= 0
    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the M-by-N matrix A.
            On exit, the upper triangle of the array contains the
            min(M,N)-by-N upper triangular matrix R; the elements
            below the diagonal, together with the array TAU,
            represent the orthogonal matrix Q as a product of
            min(m,n) elementary reflectors.
    LDA     (input) INTEGER
            The leading dimension of the array A. LDA >= max(1,M).
    JPVT    (input/output) INTEGER array, dimension (N)
            On entry, if JPVT(i) .ne. 0, the i-th column of A is permuted
            to the front of A*P (a leading column); if JPVT(i) = 0,
            the i-th column of A is a free column.
            On exit, if JPVT(i) = k, then the i-th column of A*P
            was the k-th column of A.
    TAU     (output) DOUBLE PRECISION array, dimension (min(M,N))
            The scalar factors of the elementary reflectors.
    WORK    (workspace) DOUBLE PRECISION array, dimension (3*N)
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value
    Further Details
    ===============
    The matrix Q is represented as a product of elementary reflectors
       Q = H(1) H(2) . . . H(n)
    Each H(i) has the form
       H = I - tau * v * v'
    where tau is a real scalar, and v is a real vector with
    v(1:i-1) = 0 and v(i) = 1; v(i+1:m) is stored on exit in A(i+1:m,i).
    The matrix P is represented in jpvt as follows: If
       jpvt(j) = i
    then the jth column of P is the ith canonical unit vector.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ---------------------------------
  Real      A[:, :]                   Square or rectangular matrix

Outputs
-------

  -------------------------------------------------------------------------
  Type     Name                      Description
  -------- ------------------------- --------------------------------------
  Real     QR[size(A, 1), size(A,    QR factorization in packed format
           2)]                       

  Real     tau[min(size(A, 1),       The scalar factors of the elementary
           size(A, 2))]              reflectors of Q

  Integer  p[size(A, 2)]             Pivot vector

  Integer  info                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dgeqpf 
      "Compute QR factorization of square or rectangular matrix A with column pivoting (A(:,p) = Q*R)"

      extends Modelica.Icons.Function;
      input Real A[:, :] "Square or rectangular matrix";
      output Real QR[size(A, 1), size(A, 2)]=A "QR factorization in packed format";
      output Real tau[min(size(A, 1), size(A, 2))] 
        "The scalar factors of the elementary reflectors of Q";
      output Integer p[size(A, 2)]=zeros(size(A, 2)) "Pivot vector";
      output Integer info;
    protected 
      Integer lda=max(1,size(A, 1));
      Integer ncol=size(A, 2) "Column dimension of A";
      Real work[3*ncol] "work array";
    external "FORTRAN 77" dgeqpf(size(A, 1), ncol, QR, lda, p, tau, work,
         info);
    end dgeqpf;

* * * * *

![image102](Modelica.Math.Matrices.LAPACK.dgeevI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dorgqr
==============================================================================================================================================================

**Generates a Real orthogonal matrix Q which is defined as the product
of elementary reflectors as returned from dgeqpf**

Information
-----------

    Lapack documentation:
       SUBROUTINE DORGQR( M, N, K, A, LDA, TAU, WORK, LWORK, INFO )
    -- LAPACK routine (version 1.1) --
       Univ. of Tennessee, Univ. of California Berkeley, NAG Ltd.,
       Courant Institute, Argonne National Lab, and Rice University
       March 31, 1993
       .. Scalar Arguments ..
       INTEGER            INFO, K, LDA, LWORK, M, N
       ..
       .. Array Arguments ..
       DOUBLE PRECISION   A( LDA, * ), TAU( * ), WORK( LWORK )
       ..
    Purpose
    =======
    DORGQR generates an M-by-N real matrix Q with orthonormal columns,
    which is defined as the first N columns of a product of K elementary
    reflectors of order M
          Q  =  H(1) H(2) . . . H(k)
    as returned by DGEQRF.
    Arguments
    =========
    M       (input) INTEGER
            The number of rows of the matrix Q. M >= 0.
    N       (input) INTEGER
            The number of columns of the matrix Q. M >= N >= 0.
    K       (input) INTEGER
            The number of elementary reflectors whose product defines the
            matrix Q. N >= K >= 0.
    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the i-th column must contain the vector which
            defines the elementary reflector H(i), for i = 1,2,...,k, as
            returned by DGEQRF in the first k columns of its array
            argument A.
            On exit, the M-by-N matrix Q.
    LDA     (input) INTEGER
            The first dimension of the array A. LDA >= max(1,M).
    TAU     (input) DOUBLE PRECISION array, dimension (K)
            TAU(i) must contain the scalar factor of the elementary
            reflector H(i), as returned by DGEQRF.
    WORK    (workspace) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.
    LWORK   (input) INTEGER
            The dimension of the array WORK. LWORK >= max(1,N).
            For optimum performance LWORK >= N*NB, where NB is the
            optimal blocksize.
    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument has an illegal value

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type  Name                     Default Description
  ----- ------------------------ ------- -----------------------------------
  Real  QR[:, :]                         QR from dgeqpf

  Real  tau[min(size(QR, 1),             The scalar factors of the
        size(QR, 2))]                    elementary reflectors of Q
  --------------------------------------------------------------------------

Outputs
-------

  Type         Name                             Description
  ------------ -------------------------------- ------------------------
  Real         Q[size(QR, 1), size(QR, 2)]      Orthogonal matrix Q
  Integer      info                             

Modelica definition
-------------------

    function dorgqr 
      "Generates a Real orthogonal matrix Q which is defined as the product of elementary reflectors as returned from dgeqpf"

      extends Modelica.Icons.Function;
      input Real QR[:, :] "QR from dgeqpf";
      input Real tau[min(size(QR, 1), size(QR, 2))] 
        "The scalar factors of the elementary reflectors of Q";
      output Real Q[size(QR, 1), size(QR, 2)]=QR "Orthogonal matrix Q";
      output Integer info;

    protected 
      Integer lda=max(1,size(Q, 1));
      Integer lwork=max(1,min(10, size(QR, 2))*size(QR, 2)) "Length of work array";
      Real work[lwork];
    external "FORTRAN 77" dorgqr(size(QR, 1), size(QR, 2), size(tau, 1), Q,
        lda,  tau, work, lwork, info);
    end dorgqr;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgees
=======================================================================================================

**Computes real Schur form T of real nonsymmetric matrix A, and,
optionally, the matrix of Schur vectors Z as well as the eigenvalues**

Information
-----------

    Purpose
     =======

     DGEES computes for an N-by-N real nonsymmetric matrix A, the
     eigenvalues, the real Schur form T, and, optionally, the matrix of
     Schur vectors Z.  This gives the Schur factorization A = Z*T*(Z**T).

     Optionally, it also orders the eigenvalues on the diagonal of the
     real Schur form so that selected eigenvalues are at the top left.
     The leading columns of Z then form an orthonormal basis for the
     invariant subspace corresponding to the selected eigenvalues.

     A matrix is in real Schur form if it is upper quasi-triangular with
     1-by-1 and 2-by-2 blocks. 2-by-2 blocks will be standardized in the
     form
             [  a  b  ]
             [  c  a  ]

     where b*c < 0. The eigenvalues of such a block are a +- sqrt(bc).

     Arguments
     =========

     JOBVS   (input) CHARACTER*1
             = 'N': Schur vectors are not computed;
             = 'V': Schur vectors are computed.

     SORT    (input) CHARACTER*1
             Specifies whether or not to order the eigenvalues on the
             diagonal of the Schur form.
             = 'N': Eigenvalues are not ordered;
             = 'S': Eigenvalues are ordered (see SELECT).

     SELECT  (external procedure) LOGICAL FUNCTION of two DOUBLE PRECISION arguments
             SELECT must be declared EXTERNAL in the calling subroutine.
             If SORT = 'S', SELECT is used to select eigenvalues to sort
             to the top left of the Schur form.
             If SORT = 'N', SELECT is not referenced.
             An eigenvalue WR(j)+sqrt(-1)*WI(j) is selected if
             SELECT(WR(j),WI(j)) is true; i.e., if either one of a complex
             conjugate pair of eigenvalues is selected, then both complex
             eigenvalues are selected.
             Note that a selected complex eigenvalue may no longer
             satisfy SELECT(WR(j),WI(j)) = .TRUE. after ordering, since
             ordering may change the value of complex eigenvalues
             (especially if the eigenvalue is ill-conditioned); in this
             case INFO is set to N+2 (see INFO below).

     N       (input) INTEGER
             The order of the matrix A. N >= 0.

     A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
             On entry, the N-by-N matrix A.
             On exit, A has been overwritten by its real Schur form T.

     LDA     (input) INTEGER
             The leading dimension of the array A.  LDA >= max(1,N).

     SDIM    (output) INTEGER
             If SORT = 'N', SDIM = 0.
             If SORT = 'S', SDIM = number of eigenvalues (after sorting)
                            for which SELECT is true. (Complex conjugate
                            pairs for which SELECT is true for either
                            eigenvalue count as 2.)

     WR      (output) DOUBLE PRECISION array, dimension (N)
     WI      (output) DOUBLE PRECISION array, dimension (N)
             WR and WI contain the real and imaginary parts,
             respectively, of the computed eigenvalues in the same order
             that they appear on the diagonal of the output Schur form T.
             Complex conjugate pairs of eigenvalues will appear
             consecutively with the eigenvalue having the positive
             imaginary part first.

     VS      (output) DOUBLE PRECISION array, dimension (LDVS,N)
             If JOBVS = 'V', VS contains the orthogonal matrix Z of Schur
             vectors.
             If JOBVS = 'N', VS is not referenced.

     LDVS    (input) INTEGER
             The leading dimension of the array VS.  LDVS >= 1; if
             JOBVS = 'V', LDVS >= N.

     WORK    (workspace/output) DOUBLE PRECISION array, dimension (MAX(1,LWORK))
             On exit, if INFO = 0, WORK(1) contains the optimal LWORK.

     LWORK   (input) INTEGER
             The dimension of the array WORK.  LWORK >= max(1,3*N).
             For good performance, LWORK must generally be larger.

             If LWORK = -1, then a workspace query is assumed; the routine
             only calculates the optimal size of the WORK array, returns
             this value as the first entry of the WORK array, and no error
             message related to LWORK is issued by XERBLA.

     BWORK   (workspace) LOGICAL array, dimension (N)
             Not referenced if SORT = 'N'.

     INFO    (output) INTEGER
             = 0: successful exit
             < 0: if INFO = -i, the i-th argument had an illegal value.
             > 0: if INFO = i, and i is
                <= N: the QR algorithm failed to compute all the
                      eigenvalues; elements 1:ILO-1 and i+1:N of WR and WI
                      contain those eigenvalues which have converged; if
                      JOBVS = 'V', VS contains the matrix which reduces A
                      to its partially converged Schur form.
                = N+1: the eigenvalues could not be reordered because some
                      eigenvalues were too close to separate (the problem
                      is very ill-conditioned);
                = N+2: after reordering, roundoff changed values of some
                      complex eigenvalues so that leading eigenvalues in
                      the Schur form no longer satisfy SELECT=.TRUE.  This
                      could also be caused by underflow due to scaling.

Inputs
------

  Type      Name                  Default      Description
  --------- --------------------- ------------ ------------------
  Real      A[:, size(A, 1)]                   Square matrix

Outputs
-------

  -------------------------------------------------------------------------
  Type       Name                      Description
  ---------- ------------------------- ------------------------------------
  Real       T[size(A, 1), size(A, 2)] Real Schur form with A = Z\*T\*Z'

  Real       Z[size(A, 1), size(A, 1)] orthogonal matrix Z of Schur vectors

  Real       eval\_real[size(A, 1)]    real part of the eigenvectors of A

  Real       eval\_imag[size(A, 1)]    imaginary part of the eigenvectors
                                       of A

  Integer    info                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dgees 
      "Computes real Schur form T of  real nonsymmetric matrix A, and, optionally, the matrix of Schur vectors Z as well as the eigenvalues"

      input Real A[:,size(A,1)] "Square matrix";
      output Real T[size(A, 1), size(A, 2)]=A "Real Schur form with A = Z*T*Z'";
      output Real Z[size(A, 1), size(A, 1)] "orthogonal matrix Z of Schur vectors";
      output Real eval_real[size(A, 1)] "real part of the eigenvectors of A";
      output Real eval_imag[size(A, 1)] "imaginary part of the eigenvectors of A";
      output Integer info;

    protected 
      Integer n=size(A, 1) "Row dimension of A";
      Integer lda=max(1,n);
      Integer sdim=0;
      Boolean bwork[n];

      external "FORTRAN 77" c_inter_dgees("V", "N", n, T, lda, sdim, eval_real, eval_imag, Z, lda, bwork, info);

    end dgees;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dtrsen
========================================================================================================

**Reorder the real Schur factorization of a real matrix**

Information
-----------

    Purpose
    =======

      DTRSEN reorders the real Schur factorization of a real matrix
    A = Q*T*Q**T, so that a selected cluster of eigenvalues appears in
    the leading diagonal blocks of the upper quasi-triangular matrix T,
    and the leading columns of Q form an orthonormal basis of the
    corresponding right invariant subspace.

    Optionally the routine computes the reciprocal condition numbers of
    the cluster of eigenvalues and/or the invariant subspace.

    T must be in Schur canonical form (as returned by DHSEQR), that is,
    block upper triangular with 1-by-1 and 2-by-2 diagonal blocks; each
    2-by-2 diagonal block has its diagonal elemnts equal and its
    off-diagonal elements of opposite sign.

    Arguments
    =========

    JOB     (input) CHARACTER*1
            Specifies whether condition numbers are required for the
            cluster of eigenvalues (S) or the invariant subspace (SEP):
            = 'N': none;
            = 'E': for eigenvalues only (S);
            = 'V': for invariant subspace only (SEP);
            = 'B': for both eigenvalues and invariant subspace (S and
                   SEP).

    COMPQ   (input) CHARACTER*1
            = 'V': update the matrix Q of Schur vectors;
            = 'N': do not update Q.

    SELECT  (input) LOGICAL array, dimension (N)
            SELECT specifies the eigenvalues in the selected cluster. To
            select a real eigenvalue w(j), SELECT(j) must be set to
            .TRUE.. To select a complex conjugate pair of eigenvalues
            w(j) and w(j+1), corresponding to a 2-by-2 diagonal block,
            either SELECT(j) or SELECT(j+1) or both must be set to
            .TRUE.; a complex conjugate pair of eigenvalues must be
            either both included in the cluster or both excluded.

    N       (input) INTEGER
            The order of the matrix T. N >= 0.

    T       (input/output) DOUBLE PRECISION array, dimension (LDT,N)
            On entry, the upper quasi-triangular matrix T, in Schur
            canonical form.
            On exit, T is overwritten by the reordered matrix T, again in
            Schur canonical form, with the selected eigenvalues in the
            leading diagonal blocks.

    LDT     (input) INTEGER
            The leading dimension of the array T. LDT >= max(1,N).

    Q       (input/output) DOUBLE PRECISION array, dimension (LDQ,N)
            On entry, if COMPQ = 'V', the matrix Q of Schur vectors.
            On exit, if COMPQ = 'V', Q has been postmultiplied by the
            orthogonal transformation matrix which reorders T; the
            leading M columns of Q form an orthonormal basis for the
            specified invariant subspace.
            If COMPQ = 'N', Q is not referenced.

    LDQ     (input) INTEGER
            The leading dimension of the array Q.
            LDQ >= 1; and if COMPQ = 'V', LDQ >= N.

    WR      (output) DOUBLE PRECISION array, dimension (N)
    WI      (output) DOUBLE PRECISION array, dimension (N)
            The real and imaginary parts, respectively, of the reordered
            eigenvalues of T. The eigenvalues are stored in the same
            order as on the diagonal of T, with WR(i) = T(i,i) and, if
            T(i:i+1,i:i+1) is a 2-by-2 diagonal block, WI(i) > 0 and
            WI(i+1) = -WI(i). Note that if a complex eigenvalue is
            sufficiently ill-conditioned, then its value may differ
            significantly from its value before reordering.

    M       (output) INTEGER
            The dimension of the specified invariant subspace.
            0 < = M <= N.

    S       (output) DOUBLE PRECISION
            If JOB = 'E' or 'B', S is a lower bound on the reciprocal
            condition number for the selected cluster of eigenvalues.
            S cannot underestimate the true reciprocal condition number
            by more than a factor of sqrt(N). If M = 0 or N, S = 1.
            If JOB = 'N' or 'V', S is not referenced.

    SEP     (output) DOUBLE PRECISION
            If JOB = 'V' or 'B', SEP is the estimated reciprocal
            condition number of the specified invariant subspace. If
            M = 0 or N, SEP = norm(T).
            If JOB = 'N' or 'E', SEP is not referenced.

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

    LWORK   (input) INTEGER
            The dimension of the array WORK.
            If JOB = 'N', LWORK >= max(1,N);
            if JOB = 'E', LWORK >= M*(N-M);
            if JOB = 'V' or 'B', LWORK >= 2*M*(N-M).

            If LWORK = -1, then a workspace query is assumed; the routine
            only calculates the optimal size of the WORK array, returns
            this value as the first entry of the WORK array, and no error
            message related to LWORK is issued by XERBLA.

    IWORK   (workspace) INTEGER array, dimension (LIWORK)
            IF JOB = 'N' or 'E', IWORK is not referenced.

    LIWORK  (input) INTEGER
            The dimension of the array IWORK.
            If JOB = 'N' or 'E', LIWORK >= 1;
            if JOB = 'V' or 'B', LIWORK >= M*(N-M).

            If LIWORK = -1, then a workspace query is assumed; the
            routine only calculates the optimal size of the IWORK array,
            returns this value as the first entry of the IWORK array, and
            no error message related to LIWORK is issued by XERBLA.

    INFO    (output) INTEGER
            = 0: successful exit
            < 0: if INFO = -i, the i-th argument had an illegal value
            = 1: reordering of T failed because some eigenvalues are too
                 close to separate (the problem is very ill-conditioned);
                 T may have been partially reordered, and WR and WI
                 contain the eigenvalues in the same order as in T; S and
                 SEP (if requested) are set to zero.

    Further Details
    ===============

    DTRSEN first collects the selected eigenvalues by computing an
    orthogonal transformation Z to move them to the top left corner of T.
    In other words, the selected eigenvalues are the eigenvalues of T11
    in:

                  Z'*T*Z = ( T11 T12 ) n1
                           (  0  T22 ) n2
                              n1  n2

    where N = n1+n2 and Z' means the transpose of Z. The first n1 columns
    of Z span the specified invariant subspace of T.

    If T has been obtained from the real Schur factorization of a matrix
    A = Q*T*Q', then the reordered real Schur factorization of A is given
    by A = (Q*Z)*(Z'*T*Z)*(Q*Z)', and the first n1 columns of Q*Z span
    the corresponding invariant subspace of A.

    The reciprocal condition number of the average of the eigenvalues of
    T11 may be returned in S. S lies between 0 (very badly conditioned)
    and 1 (very well conditioned). It is computed as follows. First we
    compute R so that

                           P = ( I  R ) n1
                               ( 0  0 ) n2
                                 n1 n2

    is the projector on the invariant subspace associated with T11.
    R is the solution of the Sylvester equation:

                          T11*R - R*T22 = T12.

    Let F-norm(M) denote the Frobenius-norm of M and 2-norm(M) denote
    the two-norm of M. Then S is computed as the lower bound

                        (1 + F-norm(R)**2)**(-1/2)

    on the reciprocal of 2-norm(P), the true reciprocal condition number.
    S cannot underestimate 1 / 2-norm(P) by more than a factor of
    sqrt(N).

    An approximate error bound for the computed average of the
    eigenvalues of T11 is

                           EPS * norm(T) / S

    where EPS is the machine precision.

    The reciprocal condition number of the right invariant subspace
    spanned by the first n1 columns of Z (or of Q*Z) is returned in SEP.
    SEP is defined as the separation of T11 and T22:

                       sep( T11, T22 ) = sigma-min( C )

    where sigma-min(C) is the smallest singular value of the
    n1*n2-by-n1*n2 matrix

       C  = kprod( I(n2), T11 ) - kprod( transpose(T22), I(n1) )

    I(m) is an m by m identity matrix, and kprod denotes the Kronecker
    product. We estimate sigma-min(C) by the reciprocal of an estimate of
    the 1-norm of inverse(C). The true reciprocal 1-norm of inverse(C)
    cannot differ from sigma-min(C) by more than a factor of sqrt(n1*n2).

    When SEP is small, small changes in T can cause large changes in
    the invariant subspace. An approximate bound on the maximum angular
    error in the computed right invariant subspace is

                        EPS * norm(T) / SEP

    =====================================================================  

Inputs
------

  --------------------------------------------------------------------------
  Type      Name            Default   Description
  --------- --------------- --------- --------------------------------------
  String    job             "N"       Specifies the usage of a condition
                                      number

  String    compq           "V"       Is "V" if Schur vector matrix is to be
                                      updated

  Boolean   select[:]                 Specifies the eigenvalues to reorder

  Real      T[:, :]                   Real Schur form to be reordered

  Real      Q[:, size(T,              Matrix of the Schur vectors
            2)]                       
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type    Name         Description
  ------- ------------ ---------------------------------------------------
  Real    To[:, :]     Reordered Schur form

  Real    Qo[:, :]     Reordered Schur vectors

  Real    wr[size(T,   Reordered eigenvalues, real part
          2)]          

  Real    wi[size(T,   Reordered eigenvalues, imaginary part
          2)]          

  Integer m            Dimension of the invariant sub space spanned bei
                       the selected eigenvalues

  Real    s            Lower bound of the reciprocal condition number. Not
                       referenced for job==V

  Real    sep          Estimated reciprocal condition number of the
                       specified invariant subspace

  Integer info         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dtrsen 
      "Reorder the real Schur factorization of a real matrix"

      input String job="N" "Specifies the usage of a condition number";
      input String compq="V" "Is \"V\" if Schur vector matrix is to be updated";
      input Boolean select[:] "Specifies the eigenvalues to reorder";
      input Real T[:,:] "Real Schur form to be reordered";
      input Real Q[:,size(T, 2)] "Matrix of the Schur vectors";

    protected 
      Integer n=size(T, 2);
      Integer ldt=max(1, n);
      Integer ldq=if compq == "V" then max(n,1) else 1;
      Integer lwork=if job == "N" then max(1, n) else if job == "E" then n*n else 2
          *n*n;
      Real work[lwork];
      Integer liwork=if job == "N" or job == "E" then 1 else n*n;
      Integer iwork[liwork];

    public 
      output Real To[:,:]=T "Reordered Schur form";
      output Real Qo[:,:]=Q "Reordered Schur vectors";
      output Real wr[size(T, 2)] "Reordered eigenvalues, real part";
      output Real wi[size(T, 2)] "Reordered eigenvalues, imaginary part";
      output Integer m 
        "Dimension of the invariant sub space spanned bei the selected eigenvalues";
      output Real s 
        "Lower bound of the reciprocal condition number. Not referenced for job==V";
      output Real sep 
        "Estimated reciprocal condition number of the specified invariant subspace";
      output Integer info;

    external "Fortran 77" dtrsen(
        job,
        compq,
        select,
        n,
        To,
        ldt,
        Qo,
        ldq,
        wr,
        wi,
        m,
        s,
        sep,
        work,
        lwork,
        iwork,
        liwork,
        info);

    end dtrsen;

* * * * *

![image103](Modelica.Math.Matrices.LAPACK.dgesvxI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgesvx
===============================================================================================================================================================

**Solve real system of linear equations op(A)\*X=B, op(A) is A or A'
according to the boolean input transposed**

Information
-----------

    Lapack documentation:

     Purpose
        =======

        DGESVX uses the LU factorization to compute the solution to a real
        system of linear equations
           A * X = B,
        where A is an N-by-N matrix and X and B are N-by-NRHS matrices.

        Error bounds on the solution and a condition estimate are also
        provided.

        Description
        ===========

        The following steps are performed:

        1. If FACT = 'E', real scaling factors are computed to equilibrate
           the system:
              TRANS = 'N':  diag(R)*A*diag(C)     *inv(diag(C))*X = diag(R)*B
              TRANS = 'T': (diag(R)*A*diag(C))**T *inv(diag(R))*X = diag(C)*B
              TRANS = 'C': (diag(R)*A*diag(C))**H *inv(diag(R))*X = diag(C)*B
           Whether or not the system will be equilibrated depends on the
           scaling of the matrix A, but if equilibration is used, A is
           overwritten by diag(R)*A*diag(C) and B by diag(R)*B (if TRANS='N')
           or diag(C)*B (if TRANS = 'T' or 'C').

        2. If FACT = 'N' or 'E', the LU decomposition is used to factor the
           matrix A (after equilibration if FACT = 'E') as
              A = P * L * U,
           where P is a permutation matrix, L is a unit lower triangular
           matrix, and U is upper triangular.

        3. If some U(i,i)=0, so that U is exactly singular, then the routine
           returns with INFO = i. Otherwise, the factored form of A is used
           to estimate the condition number of the matrix A.  If the
           reciprocal of the condition number is less than machine precision,
           INFO = N+1 is returned as a warning, but the routine still goes on
           to solve for X and compute error bounds as described below.

        4. The system of equations is solved for X using the factored form
           of A.

        5. Iterative refinement is applied to improve the computed solution
           matrix and calculate error bounds and backward error estimates
           for it.

        6. If equilibration was used, the matrix X is premultiplied by
           diag(C) (if TRANS = 'N') or diag(R) (if TRANS = 'T' or 'C') so
           that it solves the original system before equilibration.

        Arguments
        =========

        FACT    (input) CHARACTER*1
                Specifies whether or not the factored form of the matrix A is
                supplied on entry, and if not, whether the matrix A should be
                equilibrated before it is factored.
                = 'F':  On entry, AF and IPIV contain the factored form of A.
                        If EQUED is not 'N', the matrix A has been
                        equilibrated with scaling factors given by R and C.
                        A, AF, and IPIV are not modified.
                = 'N':  The matrix A will be copied to AF and factored.
                = 'E':  The matrix A will be equilibrated if necessary, then
                        copied to AF and factored.

        TRANS   (input) CHARACTER*1
                Specifies the form of the system of equations:
                = 'N':  A * X = B     (No transpose)
                = 'T':  A**T * X = B  (Transpose)
                = 'C':  A**H * X = B  (Transpose)

        N       (input) INTEGER
                The number of linear equations, i.e., the order of the
                matrix A.  N >= 0.

        NRHS    (input) INTEGER
                The number of right hand sides, i.e., the number of columns
                of the matrices B and X.  NRHS >= 0.

        A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
                On entry, the N-by-N matrix A.  If FACT = 'F' and EQUED is
                not 'N', then A must have been equilibrated by the scaling
                factors in R and/or C.  A is not modified if FACT = 'F' or
                'N', or if FACT = 'E' and EQUED = 'N' on exit.

                On exit, if EQUED .ne. 'N', A is scaled as follows:
                EQUED = 'R':  A := diag(R) * A
                EQUED = 'C':  A := A * diag(C)
                EQUED = 'B':  A := diag(R) * A * diag(C).

        LDA     (input) INTEGER
                The leading dimension of the array A.  LDA >= max(1,N).

        AF      (input or output) DOUBLE PRECISION array, dimension (LDAF,N)
                If FACT = 'F', then AF is an input argument and on entry
                contains the factors L and U from the factorization
                A = P*L*U as computed by DGETRF.  If EQUED .ne. 'N', then
                AF is the factored form of the equilibrated matrix A.

                If FACT = 'N', then AF is an output argument and on exit
                returns the factors L and U from the factorization A = P*L*U
                of the original matrix A.

                If FACT = 'E', then AF is an output argument and on exit
                returns the factors L and U from the factorization A = P*L*U
                of the equilibrated matrix A (see the description of A for
                the form of the equilibrated matrix).

        LDAF    (input) INTEGER
                The leading dimension of the array AF.  LDAF >= max(1,N).

        IPIV    (input or output) INTEGER array, dimension (N)
                If FACT = 'F', then IPIV is an input argument and on entry
                contains the pivot indices from the factorization A = P*L*U
                as computed by DGETRF; row i of the matrix was interchanged
                with row IPIV(i).

                If FACT = 'N', then IPIV is an output argument and on exit
                contains the pivot indices from the factorization A = P*L*U
                of the original matrix A.

                If FACT = 'E', then IPIV is an output argument and on exit
                contains the pivot indices from the factorization A = P*L*U
                of the equilibrated matrix A.

        EQUED   (input or output) CHARACTER*1
                Specifies the form of equilibration that was done.
                = 'N':  No equilibration (always true if FACT = 'N').
                = 'R':  Row equilibration, i.e., A has been premultiplied by
                        diag(R).
                = 'C':  Column equilibration, i.e., A has been postmultiplied
                        by diag(C).
                = 'B':  Both row and column equilibration, i.e., A has been
                        replaced by diag(R) * A * diag(C).
                EQUED is an input argument if FACT = 'F'; otherwise, it is an
                output argument.

        R       (input or output) DOUBLE PRECISION array, dimension (N)
                The row scale factors for A.  If EQUED = 'R' or 'B', A is
                multiplied on the left by diag(R); if EQUED = 'N' or 'C', R
                is not accessed.  R is an input argument if FACT = 'F';
                otherwise, R is an output argument.  If FACT = 'F' and
                EQUED = 'R' or 'B', each element of R must be positive.

        C       (input or output) DOUBLE PRECISION array, dimension (N)
                The column scale factors for A.  If EQUED = 'C' or 'B', A is
                multiplied on the right by diag(C); if EQUED = 'N' or 'R', C
                is not accessed.  C is an input argument if FACT = 'F';
                otherwise, C is an output argument.  If FACT = 'F' and
                EQUED = 'C' or 'B', each element of C must be positive.

        B       (input/output) DOUBLE PRECISION array, dimension (LDB,NRHS)
                On entry, the N-by-NRHS right hand side matrix B.
                On exit,
                if EQUED = 'N', B is not modified;
                if TRANS = 'N' and EQUED = 'R' or 'B', B is overwritten by
                diag(R)*B;
                if TRANS = 'T' or 'C' and EQUED = 'C' or 'B', B is
                overwritten by diag(C)*B.

        LDB     (input) INTEGER
                The leading dimension of the array B.  LDB >= max(1,N).

        X       (output) DOUBLE PRECISION array, dimension (LDX,NRHS)
                If INFO = 0 or INFO = N+1, the N-by-NRHS solution matrix X
                to the original system of equations.  Note that A and B are
                modified on exit if EQUED .ne. 'N', and the solution to the
                equilibrated system is inv(diag(C))*X if TRANS = 'N' and
                EQUED = 'C' or 'B', or inv(diag(R))*X if TRANS = 'T' or 'C'
                and EQUED = 'R' or 'B'.

        LDX     (input) INTEGER
                The leading dimension of the array X.  LDX >= max(1,N).

        RCOND   (output) DOUBLE PRECISION
                The estimate of the reciprocal condition number of the matrix
                A after equilibration (if done).  If RCOND is less than the
                machine precision (in particular, if RCOND = 0), the matrix
                is singular to working precision.  This condition is
                indicated by a return code of INFO > 0.

        FERR    (output) DOUBLE PRECISION array, dimension (NRHS)
                The estimated forward error bound for each solution vector
                X(j) (the j-th column of the solution matrix X).
                If XTRUE is the true solution corresponding to X(j), FERR(j)
                is an estimated upper bound for the magnitude of the largest
                element in (X(j) - XTRUE) divided by the magnitude of the
                largest element in X(j).  The estimate is as reliable as
                the estimate for RCOND, and is almost always a slight
                overestimate of the true error.

        BERR    (output) DOUBLE PRECISION array, dimension (NRHS)
                The componentwise relative backward error of each solution
                vector X(j) (i.e., the smallest relative change in
                any element of A or B that makes X(j) an exact solution).

        WORK    (workspace/output) DOUBLE PRECISION array, dimension (4*N)
                On exit, WORK(1) contains the reciprocal pivot growth
                factor norm(A)/norm(U). The "max absolute element" norm is
                used. If WORK(1) is much less than 1, then the stability
                of the LU factorization of the (equilibrated) matrix A
                could be poor. This also means that the solution X, condition
                estimator RCOND, and forward error bound FERR could be
                unreliable. If factorization fails with 0<INFO<=N, then
                WORK(1) contains the reciprocal pivot growth factor for the
                leading INFO columns of A.

        IWORK   (workspace) INTEGER array, dimension (N)

        INFO    (output) INTEGER
                = 0:  successful exit
                < 0:  if INFO = -i, the i-th argument had an illegal value
                > 0:  if INFO = i, and i is
                      <= N:  U(i,i) is exactly zero.  The factorization has
                             been completed, but the factor U is exactly
                             singular, so the solution and error bounds
                             could not be computed. RCOND = 0 is returned.
                      = N+1: U is nonsingular, but RCOND is less than machine
                             precision, meaning that the matrix is singular
                             to working precision.  Nevertheless, the
                             solution and error bounds are computed because
                             there are a number of situations where the
                             computed solution can be more accurate than the
                             value of RCOND would suggest.

        =====================================================================

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type      Name             Default   Description
  --------- ---------------- --------- -------------------------------------
  Real      A[:, size(A, 1)]           Real square matrix A

  Real      B[size(A, 1), :]           Real matrix B

  Boolean   transposed       true      True if the equation to be solved is
                                       A'\*X=B
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type      Name                     Description
  --------- ------------------------ --------------------------------------
  Real      X[size(A, 1), size(B,    Solution matrix
            2)]                      

  Integer   info                     

  Real      rcond                    reciprocal condition number of the
                                     matrix A
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dgesvx 
      "Solve real system of linear equations op(A)*X=B, op(A) is A or A' according to the boolean input transposed"
      extends Modelica.Icons.Function;
      input Real A[:,size(A, 1)] "Real square matrix A";
      input Real B[size(A, 1),:] "Real matrix B";
      input Boolean transposed=true "True if the equation to be solved is A'*X=B";
      output Real X[size(A, 1),size(B, 2)] "Solution matrix";
      output Integer info;
      output Real rcond "reciprocal condition number of the matrix A";

    protected 
      String transA= if transposed then "T" else "N";
      Real Awork[size(A, 1),size(A, 2)]=A;
      Real Bwork[size(B, 1),size(B, 2)]=B;
      Real AF[size(A, 1),size(A, 2)];
      Real R[size(A, 1)];
      Real C[size(A, 1)];
      Real ferr[size(B, 2)];
      Real berr[size(B, 2)];
      Integer lda=max(1,size(A, 1));
      Real work[4*size(A, 1)];
      Integer ipiv[size(A, 1)];
      Integer iwork[size(A, 1)];

    external "FORTRAN 77" dgesvx("N", transA, size(A, 1), size(B, 2), Awork,  lda, AF, lda, ipiv, "N", R, C, B, lda, X, lda, rcond, ferr, berr, work, iwork, info);
    end dgesvx;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dtrsyl
========================================================================================================

**Solve the real Sylvester matrix equation op(A)\*X + X\*op(B) =
scale\*C or op(A)\*X - X\*op(B) = scale\*C**

Information
-----------

    Purpose
     =======

     DTRSYL solves the real Sylvester matrix equation:

        op(A)*X + X*op(B) = scale*C or
        op(A)*X - X*op(B) = scale*C,

     where op(A) = A or A**T, and  A and B are both upper quasi-
     triangular. A is M-by-M and B is N-by-N; the right hand side C and
     the solution X are M-by-N; and scale is an output scale factor, set
     <= 1 to avoid overflow in X.

     A and B must be in Schur canonical form (as returned by DHSEQR), that
     is, block upper triangular with 1-by-1 and 2-by-2 diagonal blocks;
     each 2-by-2 diagonal block has its diagonal elements equal and its
     off-diagonal elements of opposite sign.

     Arguments
     =========

     TRANA   (input) CHARACTER*1
             Specifies the option op(A):
             = 'N': op(A) = A    (No transpose)
             = 'T': op(A) = A**T (Transpose)
             = 'C': op(A) = A**H (Conjugate transpose = Transpose)

     TRANB   (input) CHARACTER*1
             Specifies the option op(B):
             = 'N': op(B) = B    (No transpose)
             = 'T': op(B) = B**T (Transpose)
             = 'C': op(B) = B**H (Conjugate transpose = Transpose)

     ISGN    (input) INTEGER
             Specifies the sign in the equation:
             = +1: solve op(A)*X + X*op(B) = scale*C
             = -1: solve op(A)*X - X*op(B) = scale*C

     M       (input) INTEGER
             The order of the matrix A, and the number of rows in the
             matrices X and C. M >= 0.

     N       (input) INTEGER
             The order of the matrix B, and the number of columns in the
             matrices X and C. N >= 0.

     A       (input) DOUBLE PRECISION array, dimension (LDA,M)
             The upper quasi-triangular matrix A, in Schur canonical form.

     LDA     (input) INTEGER
             The leading dimension of the array A. LDA >= max(1,M).

     B       (input) DOUBLE PRECISION array, dimension (LDB,N)
             The upper quasi-triangular matrix B, in Schur canonical form.

     LDB     (input) INTEGER
             The leading dimension of the array B. LDB >= max(1,N).

     C       (input/output) DOUBLE PRECISION array, dimension (LDC,N)
             On entry, the M-by-N right hand side matrix C.
             On exit, C is overwritten by the solution matrix X.

     LDC     (input) INTEGER
             The leading dimension of the array C. LDC >= max(1,M)

     SCALE   (output) DOUBLE PRECISION
             The scale factor, scale, set <= 1 to avoid overflow in X.

     INFO    (output) INTEGER
             = 0: successful exit
             < 0: if INFO = -i, the i-th argument had an illegal value
             = 1: A and B have common or very close eigenvalues; perturbed
                  values were used to solve the equation (but the matrices
                  A and B are unchanged).

     =====================================================================

    DTRSEN first collects the selected eigenvalues by computing an
    orthogonal transformation Z to move them to the top left corner of T.
    In other words, the selected eigenvalues are the eigenvalues of T11
    in:

                  Z'*T*Z = ( T11 T12 ) n1
                           (  0  T22 ) n2
                              n1  n2

    where N = n1+n2 and Z' means the transpose of Z. The first n1 columns
    of Z span the specified invariant subspace of T.

    If T has been obtained from the real Schur factorization of a matrix
    A = Q*T*Q', then the reordered real Schur factorization of A is given
    by A = (Q*Z)*(Z'*T*Z)*(Q*Z)', and the first n1 columns of Q*Z span
    the corresponding invariant subspace of A.

    The reciprocal condition number of the average of the eigenvalues of
    T11 may be returned in S. S lies between 0 (very badly conditioned)
    and 1 (very well conditioned). It is computed as follows. First we
    compute R so that

                           P = ( I  R ) n1
                               ( 0  0 ) n2
                                 n1 n2

    is the projector on the invariant subspace associated with T11.
    R is the solution of the Sylvester equation:

                          T11*R - R*T22 = T12.

    Let F-norm(M) denote the Frobenius-norm of M and 2-norm(M) denote
    the two-norm of M. Then S is computed as the lower bound

                        (1 + F-norm(R)**2)**(-1/2)

    on the reciprocal of 2-norm(P), the true reciprocal condition number.
    S cannot underestimate 1 / 2-norm(P) by more than a factor of
    sqrt(N).

    An approximate error bound for the computed average of the
    eigenvalues of T11 is

                           EPS * norm(T) / S

    where EPS is the machine precision.

    The reciprocal condition number of the right invariant subspace
    spanned by the first n1 columns of Z (or of Q*Z) is returned in SEP.
    SEP is defined as the separation of T11 and T22:

                       sep( T11, T22 ) = sigma-min( C )

    where sigma-min(C) is the smallest singular value of the
    n1*n2-by-n1*n2 matrix

       C  = kprod( I(n2), T11 ) - kprod( transpose(T22), I(n1) )

    I(m) is an m by m identity matrix, and kprod denotes the Kronecker
    product. We estimate sigma-min(C) by the reciprocal of an estimate of
    the 1-norm of inverse(C). The true reciprocal 1-norm of inverse(C)
    cannot differ from sigma-min(C) by more than a factor of sqrt(n1*n2).

    When SEP is small, small changes in T can cause large changes in
    the invariant subspace. An approximate bound on the maximum angular
    error in the computed right invariant subspace is

                        EPS * norm(T) / SEP

    =====================================================================  

Inputs
------

  -------------------------------------------------------------------------
  Type  Name                                    Defau Description
                                                lt    
  ----- --------------------------------------- ----- ---------------------
  Real  A[:, :]                                       Upper
                                                      quais-triangular
                                                      matrix

  Real  B[:, :]                                       Upper
                                                      quais-triangular
                                                      matrix

  Real  C[if tranA then size(A, 1) else size(A,       Right side of the
        2), if tranB then size(B, 1) else             sylvester equation
        size(B, 2)]                                   

  Boole tranA                                   false True if op(A)=A'
  an                                                  

  Boole tranB                                   false True if op(B)=B'
  an                                                  

  Integ isgn                                    1     Specifies the sign in
  er                                                  the equation, +1 or
                                                      -1
  -------------------------------------------------------------------------

Outputs
-------

  Type       Name                       Description
  ---------- -------------------------- ----------------------------------
  Real       X[size(C, 1), size(C, 2)]  Solution of the Sylvester equation
  Real       scale                      Scale factor
  Integer    info                       

Modelica definition
-------------------

    function dtrsyl 
      "Solve the real Sylvester matrix equation op(A)*X + X*op(B) = scale*C or op(A)*X - X*op(B) = scale*C"

      input Real A[:,:] "Upper quais-triangular matrix";
      input Real B[:,:] "Upper quais-triangular matrix";
      input Real C[if tranA then size(A,1) else size(A, 2),if tranB then size(B,1) else size(B, 2)] 
        "Right side of the sylvester equation";

      input Boolean tranA=false "True if op(A)=A'";
      input Boolean tranB=false "True if op(B)=B'";
      input Integer isgn=1 "Specifies the sign in the equation, +1 or -1";
      output Real X[size(C,1),size(C,2)]=C "Solution of the Sylvester equation";
      output Real scale "Scale factor";
      output Integer info;
    protected 
      Integer m=if tranA then size(A,1) else size(A, 2);
      Integer n=if tranB then size(B,1) else size(B, 2);
      String trana = if tranA then "T" else "N";
      String tranb = if tranB then "T" else "N";
      Integer lda = max(1,m);
      Integer ldb = max(1,n);

    external "Fortran 77" dtrsyl(trana, tranb, isgn, m, n, A, lda, B, ldb, X, lda, scale, info);

    end dtrsyl;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dhseqr
========================================================================================================

**Compute eingenvalues of a matrix H using lapack routine DHSEQR for
Hessenberg form matrix**

Information
-----------

    DHSEQR computes the eigenvalues of a real upper Hessenberg matrix H

> and, optionally, the matrices T and Z from the Schur decomposition H =
> Z T Z\*\*T, where T is an upper quasi-triangular matrix (the Schur
> form), and Z is the orthogonal matrix of Schur vectors.
>
> Optionally Z may be postmultiplied into an input orthogonal matrix Q,
> so that this routine can give the Schur factorization of a matrix A
> which has been reduced to the Hessenberg form H by the orthogonal
> matrix Q: A = Q*H*Q**T = (QZ)*T*(QZ)**T.
>
> #### Arguments
>
> JOB (input) CHARACTER\*1
>   ~ = 'E': compute eigenvalues only; = 'S': compute eigenvalues and
>     the Schur form T.
>
> COMPZ (input) CHARACTER*1 = 'N': no Schur vectors are computed; = 'I':
> Z is initialized to the unit matrix and the matrix Z of Schur vectors
> of H is returned; = 'V': Z must contain an orthogonal matrix Q on
> entry, and the product Q*Z is returned.
>
> N (input) INTEGER
>   ~ The order of the matrix H. N \>= 0.
>
> ILO (input) INTEGER IHI (input) INTEGER It is assumed that H is
> already upper triangular in rows and columns 1:ILO-1 and IHI+1:N. ILO
> and IHI are normally set by a previous call to DGEBAL, and then passed
> to SGEHRD when the matrix output by DGEBAL is reduced to Hessenberg
> form. Otherwise ILO and IHI should be set to 1 and N respectively. 1
> <= ILO <= IHI <= N, if N \> 0; ILO=1 and IHI=0, if N=0.
>
> H (input/output) DOUBLE PRECISION array, dimension (LDH,N)
>   ~ On entry, the upper Hessenberg matrix H. On exit, if JOB = 'S', H
>     contains the upper quasi-triangular matrix T from the Schur
>     decomposition (the Schur form); 2-by-2 diagonal blocks
>     (corresponding to complex conjugate pairs of eigenvalues) are
>     returned in standard form, with H(i,i) = H(i+1,i+1) and
>     H(i+1,i)\*H(i,i+1) < 0. If JOB = 'E', the contents of H are
>     unspecified on exit.
>
> LDH (input) INTEGER
>   ~ The leading dimension of the array H. LDH \>= max(1,N).
>
> WR (output) DOUBLE PRECISION array, dimension (N) WI (output) DOUBLE
> PRECISION array, dimension (N) The real and imaginary parts,
> respectively, of the computed eigenvalues. If two eigenvalues are
> computed as a complex conjugate pair, they are stored in consecutive
> elements of WR and WI, say the i-th and (i+1)th, with WI(i) \> 0 and
> WI(i+1) < 0. If JOB = 'S', the eigenvalues are stored in the same
> order as on the diagonal of the Schur form returned in H, with WR(i) =
> H(i,i) and, if H(i:i+1,i:i+1) is a 2-by-2 diagonal block, WI(i) =
> sqrt(H(i+1,i)\*H(i,i+1)) and WI(i+1) = -WI(i).
>
> Z (input/output) DOUBLE PRECISION array, dimension (LDZ,N)
>   ~ If COMPZ = 'N': Z is not referenced. If COMPZ = 'I': on entry, Z
>     need not be set, and on exit, Z contains the orthogonal matrix Z
>     of the Schur vectors of H. If COMPZ = 'V': on entry Z must contain
>     an N-by-N matrix Q, which is assumed to be equal to the unit
>     matrix except for the submatrix Z(ILO:IHI,ILO:IHI); on exit Z
>     contains Q\*Z. Normally Q is the orthogonal matrix generated by
>     DORGHR after the call to DGEHRD which formed the Hessenberg matrix
>     H.
>
> LDZ (input) INTEGER
>   ~ The leading dimension of the array Z. LDZ \>= max(1,N) if COMPZ =
>     'I' or 'V'; LDZ \>= 1 otherwise.
>
> WORK (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
>   ~ On exit, if INFO = 0, WORK(1) returns the optimal LWORK.
>
> LWORK (input) INTEGER
>   ~ The dimension of the array WORK. LWORK \>= max(1,N).
>
>     If LWORK = -1, then a workspace query is assumed; the routine only
>     calculates the optimal size of the WORK array, returns this value
>     as the first entry of the WORK array, and no error message related
>     to LWORK is issued by XERBLA.
>
> INFO (output) INTEGER
>   ~ = 0: successful exit < 0: if INFO = -i, the i-th argument had an
>     illegal value \> 0: if INFO = i, DHSEQR failed to compute all of
>     the eigenvalues in a total of 30\*(IHI-ILO+1) iterations; elements
>     1:ilo-1 and i+1:n of WR and WI contain those eigenvalues which
>     have been successfully computed.
>
> * * * * *

Inputs
------

  -------------------------------------------------------------------------
  Type    Name         Default Description
  ------- ------------ ------- --------------------------------------------
  Real    H[:, size(H,         Matrix H with Hessenberg form
          1)]                  

  Boolean eigenValuesO true    True to compute the eigenvalues. False to
          nly                  compute the Schur form too

  String  compz        "N"     Specifies the computation of the Schur
                               vectors

  Real    Z[:, :]      H       Matrix Z
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type    Name                  Description
  ------- --------------------- ------------------------------------------
  Real    alphaReal[size(H, 1)] Real part of alpha
                                (eigenvalue=(alphaReal+i\*alphaImag))

  Real    alphaImag[size(H, 1)] Imaginary part of alpha
                                (eigenvalue=(alphaReal+i\*alphaImag))

  Integer info                  

  Real    Ho[:, :]              Schur decomposition (if
                                eigenValuesOnly==false, unspecified else))

  Real    Zo[:, :]              

  Real    work[max({lwork,size( 
          H,                    
          1),1})]               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dhseqr 
      "Compute eingenvalues of a matrix H using lapack routine DHSEQR for Hessenberg form matrix"
      input Real H[:,size(H, 1)] "Matrix H with Hessenberg form";
      input Boolean eigenValuesOnly=true 
        "True to compute the eigenvalues. False to compute the Schur form too";
      input String compz="N" "Specifies the computation of the Schur vectors";
      input Real Z[:,:]=H "Matrix Z";
      output Real alphaReal[size(H, 1)] 
        "Real part of alpha (eigenvalue=(alphaReal+i*alphaImag))";
      output Real alphaImag[size(H, 1)] 
        "Imaginary part of alpha (eigenvalue=(alphaReal+i*alphaImag))";
      output Integer info;
      output Real Ho[:,:]=H 
        "Schur decomposition (if eigenValuesOnly==false, unspecified else))";
      output Real Zo[:,:]=Z;
      output Real work[max({lwork, size(H, 1),1})];

    protected 
      Integer n=size(H, 1);
      String job=if eigenValuesOnly then "E" else "S";
      Integer ilo=1;
      Integer ihi=n;
      Integer ldh=max(n, 1);
      Integer lwork=3*max(1, size(H, 1)) 
        "Dimension of the dwork array usd in dhseqr";

    external "Fortran 77" dhseqr(job, compz, n, ilo, ihi, Ho, ldh, alphaReal, alphaImag, Zo, ldh, work, lwork, info);

    end dhseqr;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dlange
========================================================================================================

**Norm of a matrix**

Information
-----------

::

> #### Purpose
>
> DLANGE returns the value of the one norm, or the Frobenius norm, or
> the infinity norm, or the element of largest absolute value of a real
> matrix A.
>
> #### Description
>
> DLANGE returns the value
>
> > DLANGE = ( max(abs(A(i,j))), NORM = 'M' or 'm'
> >   ~ ( ( norm1(A), NORM = '1', 'O' or 'o' ( ( normI(A), NORM = 'I' or
> >     'i' ( ( normF(A), NORM = 'F', 'f', 'E' or 'e'
> >
> where norm1 denotes the one norm of a matrix (maximum column sum),
> normI denotes the infinity norm of a matrix (maximum row sum) and
> normF denotes the Frobenius norm of a matrix (square root of sum of
> squares). Note that max(abs(A(i,j))) is not a consistent matrix norm.
>
> #### Arguments
>
> NORM (input) CHARACTER\*1
>   ~ Specifies the value to be returned in DLANGE as described above.
>
> M (input) INTEGER
>   ~ The number of rows of the matrix A. M \>= 0. When M = 0, DLANGE is
>     set to zero.
>
> N (input) INTEGER
>   ~ The number of columns of the matrix A. N \>= 0. When N = 0, DLANGE
>     is set to zero.
>
> A (input) DOUBLE PRECISION array, dimension (LDA,N)
>   ~ The m by n matrix A.
>
> LDA (input) INTEGER
>   ~ The leading dimension of the array A. LDA \>= max(M,1).
>
> WORK (workspace) DOUBLE PRECISION array, dimension (MAX(1,LWORK)),
>   ~ where LWORK \>= M when NORM = 'I'; otherwise, WORK is not
>     referenced.
>
> * * * * *

Inputs
------

  Type       Name        Default     Description
  ---------- ----------- ----------- --------------------------------------
  Real       A[:, :]                 Real matrix A
  String     norm        "1"         specifies the norm, i.e., 1, I, F, M

Outputs
-------

  Type      Name       Description
  --------- ---------- ----------------
  Real      anorm      norm of A

Modelica definition
-------------------

    function dlange "Norm of a matrix"

      input Real A[:,:] "Real matrix A";
      input String norm="1" "specifies the norm, i.e., 1, I, F, M";
      output Real anorm "norm of A";
    protected 
      Integer m=size(A, 1);
      Integer n=size(A,2);
      Integer lda=max(1,m);
      Real work[2*m];

    external "Fortran 77" dlange2(norm, m, n, A, lda, work, anorm);

    end dlange;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgecon
========================================================================================================

**Estimates the reciprocal of the condition number of a general real
matrix A**

Information
-----------

::

> Purpose
>   ~ 
>
>     * * * * *
>
>     DGECON estimates the reciprocal of the condition number of a
>     general real matrix A, in either the 1-norm or the infinity-norm,
>     using the LU factorization computed by DGETRF.
>
>     An estimate is obtained for norm(inv(A)), and the reciprocal of
>     the condition number is computed as RCOND = 1 / ( norm(A) \*
>     norm(inv(A)) ).
>
>     #### Arguments
>
>     NORM (input) CHARACTER\*1
>       ~ Specifies whether the 1-norm condition number or the
>         infinity-norm condition number is required: = '1' or 'O':
>         1-norm; = 'I': Infinity-norm.
>
>     N (input) INTEGER
>       ~ The order of the matrix A. N \>= 0.
>
>     A (input) DOUBLE PRECISION array, dimension (LDA,N)
>       ~ The factors L and U from the factorization A = P*L*U as
>         computed by DGETRF.
>
>     LDA (input) INTEGER
>       ~ The leading dimension of the array A. LDA \>= max(1,N).
>
>     ANORM (input) DOUBLE PRECISION
>       ~ If NORM = '1' or 'O', the 1-norm of the original matrix A. If
>         NORM = 'I', the infinity-norm of the original matrix A.
>
>     RCOND (output) DOUBLE PRECISION
>       ~ The reciprocal of the condition number of the matrix A,
>         computed as RCOND = 1/(norm(A) \* norm(inv(A))).
>
>     WORK (workspace) DOUBLE PRECISION array, dimension (4\*N)
>
>     IWORK (workspace) INTEGER array, dimension (N)
>
>     INFO (output) INTEGER
>       ~ = 0: successful exit < 0: if INFO = -i, the i-th argument had
>         an illegal value
>
>     * * * * *
>
Inputs
------

  -------------------------------------------------------------------------
  Type     Name           Default  Description
  -------- -------------- -------- ----------------------------------------
  Real     LU\_of\_A[:,            LU factroization of a real matrix A
           :]                      

  Boolean  inf            false    Is true if infinity norm is used and
                                   false for 1-norm

  Real     anorm                   norm of A
  -------------------------------------------------------------------------

Outputs
-------

  Type         Name       Description
  ------------ ---------- -------------------------------------
  Real         rcond      Reciprocal condition number of A
  Integer      info       

Modelica definition
-------------------

    function dgecon 
      "Estimates the reciprocal of the condition number of a general real matrix A"

      input Real LU_of_A[:,:] "LU factroization of a real matrix A";
      input Boolean inf=false 
        "Is true if infinity norm is used and false for 1-norm";
      input Real anorm "norm of A";
      output Real rcond "Reciprocal condition number of A";
      output Integer info;
    protected 
      Integer n=size(LU_of_A, 2);
      Integer lda=max(1,size(LU_of_A,1));
      Real work[4*size(LU_of_A,2)];
      Integer iwork[size(LU_of_A,2)];
      String norm = if inf then "I" else "1";

    external "Fortran 77" dgecon(
        norm,
        n,
        LU_of_A,
        lda,
        anorm,
        rcond,
        work,
        iwork,
        info);

    end dgecon;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgehrd
========================================================================================================

**reduces a real general matrix A to upper Hessenberg form H by an
orthogonal similarity transformation: Q' \* A \* Q = H**

Information
-----------

    Purpose
    =======

    DGEHRD reduces a real general matrix A to upper Hessenberg form H by
    an orthogonal similarity transformation:  Q' * A * Q = H .

    Arguments
    =========

    N       (input) INTEGER
            The order of the matrix A.  N >= 0.

    ILO     (input) INTEGER
    IHI     (input) INTEGER
            It is assumed that A is already upper triangular in rows
            and columns 1:ILO-1 and IHI+1:N. ILO and IHI are normally
            set by a previous call to DGEBAL; otherwise they should be
            set to 1 and N respectively. See Further Details.
            1 <= ILO <= IHI <= N, if N > 0; ILO=1 and IHI=0, if N=0.

    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the N-by-N general matrix to be reduced.
            On exit, the upper triangle and the first subdiagonal of A
            are overwritten with the upper Hessenberg matrix H, and the
            elements below the first subdiagonal, with the array TAU,
            represent the orthogonal matrix Q as a product of elementary
            reflectors. See Further Details.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).

    TAU     (output) DOUBLE PRECISION array, dimension (N-1)
            The scalar factors of the elementary reflectors (see Further
            Details). Elements 1:ILO-1 and IHI:N-1 of TAU are set to
            zero.

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

    LWORK   (input) INTEGER
            The length of the array WORK.  LWORK >= max(1,N).
            For optimum performance LWORK >= N*NB, where NB is the
            optimal blocksize.

            If LWORK = -1, then a workspace query is assumed; the routine
            only calculates the optimal size of the WORK array, returns
            this value as the first entry of the WORK array, and no error
            message related to LWORK is issued by XERBLA.

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value.

    Further Details
    ===============

    The matrix Q is represented as a product of (ihi-ilo) elementary
    reflectors

       Q = H(ilo) H(ilo+1) . . . H(ihi-1).

    Each H(i) has the form

       H(i) = I - tau * v * v'

    where tau is a real scalar, and v is a real vector with
    v(1:i) = 0, v(i+1) = 1 and v(ihi+1:n) = 0; v(i+2:ihi) is stored on
    exit in A(i+2:ihi,i), and tau in TAU(i).

    The contents of A are illustrated by the following example, with
    n = 7, ilo = 2 and ihi = 6:

    on entry,                        on exit,

    ( a   a   a   a   a   a   a )    (  a   a   h   h   h   h   a )
    (     a   a   a   a   a   a )    (      a   h   h   h   h   a )
    (     a   a   a   a   a   a )    (      h   h   h   h   h   h )
    (     a   a   a   a   a   a )    (      v2  h   h   h   h   h )
    (     a   a   a   a   a   a )    (      v2  v3  h   h   h   h )
    (     a   a   a   a   a   a )    (      v2  v3  v4  h   h   h )
    (                         a )    (                          a )

    where a denotes an element of the original matrix A, h denotes a
    modified element of the upper Hessenberg matrix H, and vi denotes an
    element of the vector defining H(i).

    =====================================================================

Inputs
------

  --------------------------------------------------------------------------
  Type    Name          Default   Description
  ------- ------------- --------- ------------------------------------------
  Real    A[:, size(A,            
          2)]                     

  Integer ilo           1         lowest index where the original matrix had
                                  been Hessenbergform

  Integer ihi           size(A,   highest index where the original matrix
                        1)        had been Hessenbergform
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Typ Name     Description
  e            
  --- -------- -----------------------------------------------------------
  Rea Aout[siz contains the Hessenberg form in the upper triangle and the
  l   e(A,     first subdiagonal and below the first subdiagonal it
      1),      contains the elementary reflectors which represents (with
      size(A,  array tau) as a product the orthogonal matrix Q
      2)]      

  Rea tau[max( scalar factors of the elementary reflectors
  l   size(A,  
      1), 1) - 
      1]       

  Int info     
  ege          
  r            
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dgehrd 
      "reduces a real general matrix A to upper Hessenberg form H by an orthogonal similarity transformation:  Q' * A * Q = H"

      input Real A[:,size(A, 2)];
      input Integer ilo=1 
        "lowest index where the original matrix had been Hessenbergform";
      input Integer ihi=size(A, 1) 
        "highest index where the original matrix had been Hessenbergform";
      output Real Aout[size(A, 1),size(A, 2)]=A 
        "contains the Hessenberg form in the upper triangle and the first subdiagonal and below the first subdiagonal it contains the elementary reflectors which represents (with array tau) as a product the orthogonal matrix Q";
      output Real tau[max(size(A, 1),1) - 1] 
        "scalar factors of the elementary reflectors";
      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer lda=max(1, n);
      Integer lwork=max(1, 3*n);
      Real work[lwork];

    external "Fortran 77" dgehrd(
        n,
        ilo,
        ihi,
        Aout,
        lda,
        tau,
        work,
        lwork,
        info);

    end dgehrd;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgeqrf
========================================================================================================

**computes a QR factorization without pivoting**

Information
-----------

    Purpose
    =======

    DGEQRF computes a QR factorization of a real M-by-N matrix A:
    A = Q * R.

    Arguments
    =========

    M       (input) INTEGER
            The number of rows of the matrix A.  M >= 0.

    N       (input) INTEGER
            The number of columns of the matrix A.  N >= 0.

    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the M-by-N matrix A.
            On exit, the elements on and above the diagonal of the array
            contain the min(M,N)-by-N upper trapezoidal matrix R (R is
            upper triangular if m >= n); the elements below the diagonal,
            with the array TAU, represent the orthogonal matrix Q as a
            product of min(m,n) elementary reflectors (see Further
            Details).

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,M).

    TAU     (output) DOUBLE PRECISION array, dimension (min(M,N))
            The scalar factors of the elementary reflectors (see Further
            Details).

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

    LWORK   (input) INTEGER
            The dimension of the array WORK.  LWORK >= max(1,N).
            For optimum performance LWORK >= N*NB, where NB is
            the optimal blocksize.

            If LWORK = -1, then a workspace query is assumed; the routine
            only calculates the optimal size of the WORK array, returns
            this value as the first entry of the WORK array, and no error
            message related to LWORK is issued by XERBLA.

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value

    Further Details
    ===============

    The matrix Q is represented as a product of elementary reflectors

       Q = H(1) H(2) . . . H(k), where k = min(m,n).

    Each H(i) has the form

       H(i) = I - tau * v * v'

    where tau is a real scalar, and v is a real vector with
    v(1:i-1) = 0 and v(i) = 1; v(i+1:m) is stored on exit in A(i+1:m,i),
    and tau in TAU(i).

    =====================================================================  

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ---------------------------------
  Real      A[:, :]                   Square or rectangular matrix

Outputs
-------

  -------------------------------------------------------------------------
  Typ Name       Description
  e              
  --- ---------- ----------------------------------------------------------
  Rea Aout[size( the upper triangle of the array contains the upper
  l   A,         trapezoidal matrix R; the elements below the diagonal,
      1),        together with the array TAU, represent the orthogonal
      size(A,    matrix Q as a product of elementary reflectors
      2)]        

  Rea tau[min(si scalar factors of the elementary reflectors
  l   ze(A,      
      1),        
      size(A,    
      2))]       

  Int info       
  ege            
  r              

  Rea work[3\*ma 
  l   x(1,       
      size(A,    
      2))]       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dgeqrf "computes a QR factorization without pivoting"

      input Real A[:,:] "Square or rectangular matrix";
      output Real Aout[size(A, 1),size(A, 2)]=A 
        "the upper triangle of the array contains the upper trapezoidal matrix R; the elements below the diagonal, together with the array TAU, represent the orthogonal matrix Q as a product of elementary reflectors";
      output Real tau[min(size(A, 1), size(A, 2))] 
        "scalar factors of the elementary reflectors";
      output Integer info;
      output Real work[3*max(1,size(A,2))];
    protected 
      Integer m=size(A, 1);
      Integer n=size(A, 2);
      Integer lda=max(1, m);
      Integer lwork=3*max(1,n);

    external "Fortran 77" dgeqrf(m, n, Aout, lda,  tau, work,  lwork,  info);

    end dgeqrf;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgeevx
========================================================================================================

**Compute the eigenvalues and the (real) left and right eigenvectors of
matrix A, using lapack routine dgeevx**

Information
-----------

    Purpose
    =======

    DGEEVX computes for an N-by-N real nonsymmetric matrix A, the
    eigenvalues and, optionally, the left and/or right eigenvectors.

    Optionally also, it computes a balancing transformation to improve
    the conditioning of the eigenvalues and eigenvectors (ILO, IHI,
    SCALE, and ABNRM), reciprocal condition numbers for the eigenvalues
    (RCONDE), and reciprocal condition numbers for the right
    eigenvectors (RCONDV).

    The right eigenvector v(j) of A satisfies
                     A * v(j) = lambda(j) * v(j)
    where lambda(j) is its eigenvalue.
    The left eigenvector u(j) of A satisfies
                  u(j)**H * A = lambda(j) * u(j)**H
    where u(j)**H denotes the conjugate transpose of u(j).

    The computed eigenvectors are normalized to have Euclidean norm
    equal to 1 and largest component real.

    Balancing a matrix means permuting the rows and columns to make it
    more nearly upper triangular, and applying a diagonal similarity
    transformation D * A * D**(-1), where D is a diagonal matrix, to
    make its rows and columns closer in norm and the condition numbers
    of its eigenvalues and eigenvectors smaller.  The computed
    reciprocal condition numbers correspond to the balanced matrix.
    Permuting rows and columns will not change the condition numbers
    (in exact arithmetic) but diagonal scaling will.  For further
    explanation of balancing, see section 4.10.2 of the LAPACK
    Users' Guide.

    Arguments
    =========

    BALANC  (input) CHARACTER*1
            Indicates how the input matrix should be diagonally scaled
            and/or permuted to improve the conditioning of its
            eigenvalues.
            = 'N': Do not diagonally scale or permute;
            = 'P': Perform permutations to make the matrix more nearly
                   upper triangular. Do not diagonally scale;
            = 'S': Diagonally scale the matrix, i.e., replace A by
                   D*A*D**(-1), where D is a diagonal matrix chosen
                   to make the rows and columns of A more equal in
                   norm. Do not permute;
            = 'B': Both diagonally scale and permute A.

            Computed reciprocal condition numbers will be for the matrix
            after balancing and/or permuting. Permuting does not change
            condition numbers (in exact arithmetic), but balancing does.

    JOBVL   (input) CHARACTER*1
            = 'N': left eigenvectors of A are not computed;
            = 'V': left eigenvectors of A are computed.
            If SENSE = 'E' or 'B', JOBVL must = 'V'.

    JOBVR   (input) CHARACTER*1
            = 'N': right eigenvectors of A are not computed;
            = 'V': right eigenvectors of A are computed.
            If SENSE = 'E' or 'B', JOBVR must = 'V'.

    SENSE   (input) CHARACTER*1
            Determines which reciprocal condition numbers are computed.
            = 'N': None are computed;
            = 'E': Computed for eigenvalues only;
            = 'V': Computed for right eigenvectors only;
            = 'B': Computed for eigenvalues and right eigenvectors.

            If SENSE = 'E' or 'B', both left and right eigenvectors
            must also be computed (JOBVL = 'V' and JOBVR = 'V').

    N       (input) INTEGER
            The order of the matrix A. N >= 0.

    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the N-by-N matrix A.
            On exit, A has been overwritten.  If JOBVL = 'V' or
            JOBVR = 'V', A contains the real Schur form of the balanced
            version of the input matrix A.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,N).

    WR      (output) DOUBLE PRECISION array, dimension (N)
    WI      (output) DOUBLE PRECISION array, dimension (N)
            WR and WI contain the real and imaginary parts,
            respectively, of the computed eigenvalues.  Complex
            conjugate pairs of eigenvalues will appear consecutively
            with the eigenvalue having the positive imaginary part
            first.

    VL      (output) DOUBLE PRECISION array, dimension (LDVL,N)
            If JOBVL = 'V', the left eigenvectors u(j) are stored one
            after another in the columns of VL, in the same order
            as their eigenvalues.
            If JOBVL = 'N', VL is not referenced.
            If the j-th eigenvalue is real, then u(j) = VL(:,j),
            the j-th column of VL.
            If the j-th and (j+1)-st eigenvalues form a complex
            conjugate pair, then u(j) = VL(:,j) + i*VL(:,j+1) and
            u(j+1) = VL(:,j) - i*VL(:,j+1).

    LDVL    (input) INTEGER
            The leading dimension of the array VL.  LDVL >= 1; if
            JOBVL = 'V', LDVL >= N.

    VR      (output) DOUBLE PRECISION array, dimension (LDVR,N)
            If JOBVR = 'V', the right eigenvectors v(j) are stored one
            after another in the columns of VR, in the same order
            as their eigenvalues.
            If JOBVR = 'N', VR is not referenced.
            If the j-th eigenvalue is real, then v(j) = VR(:,j),
            the j-th column of VR.
            If the j-th and (j+1)-st eigenvalues form a complex
            conjugate pair, then v(j) = VR(:,j) + i*VR(:,j+1) and
            v(j+1) = VR(:,j) - i*VR(:,j+1).

    LDVR    (input) INTEGER
            The leading dimension of the array VR.  LDVR >= 1, and if
            JOBVR = 'V', LDVR >= N.

    ILO,IHI (output) INTEGER
            ILO and IHI are integer values determined when A was
            balanced.  The balanced A(i,j) = 0 if I > J and
            J = 1,...,ILO-1 or I = IHI+1,...,N.

    SCALE   (output) DOUBLE PRECISION array, dimension (N)
            Details of the permutations and scaling factors applied
            when balancing A.  If P(j) is the index of the row and column
            interchanged with row and column j, and D(j) is the scaling
            factor applied to row and column j, then
            SCALE(J) = P(J),    for J = 1,...,ILO-1
                     = D(J),    for J = ILO,...,IHI
                     = P(J)     for J = IHI+1,...,N.
            The order in which the interchanges are made is N to IHI+1,
            then 1 to ILO-1.

    ABNRM   (output) DOUBLE PRECISION
            The one-norm of the balanced matrix (the maximum
            of the sum of absolute values of elements of any column).

    RCONDE  (output) DOUBLE PRECISION array, dimension (N)
            RCONDE(j) is the reciprocal condition number of the j-th
            eigenvalue.

    RCONDV  (output) DOUBLE PRECISION array, dimension (N)
            RCONDV(j) is the reciprocal condition number of the j-th
            right eigenvector.

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

    LWORK   (input) INTEGER
            The dimension of the array WORK.   If SENSE = 'N' or 'E',
            LWORK >= max(1,2*N), and if JOBVL = 'V' or JOBVR = 'V',
            LWORK >= 3*N.  If SENSE = 'V' or 'B', LWORK >= N*(N+6).
            For good performance, LWORK must generally be larger.

            If LWORK = -1, then a workspace query is assumed; the routine
            only calculates the optimal size of the WORK array, returns
            this value as the first entry of the WORK array, and no error
            message related to LWORK is issued by XERBLA.

    IWORK   (workspace) INTEGER array, dimension (2*N-2)
            If SENSE = 'N' or 'E', not referenced.

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value.
            > 0:  if INFO = i, the QR algorithm failed to compute all the
                  eigenvalues, and no eigenvectors or condition numbers
                  have been computed; elements 1:ILO-1 and i+1:N of WR
                  and WI contain eigenvalues which have converged.

    =====================================================================

Inputs
------

  Type      Name                  Default      Description
  --------- --------------------- ------------ ----------------
  Real      A[:, size(A, 1)]                   

Outputs
-------

  -------------------------------------------------------------------------
  Type   Name                    Description
  ------ ----------------------- ------------------------------------------
  Real   alphaReal[size(A, 1)]   Real part of alpha
                                 (eigenvalue=(alphaReal+i\*alphaImag))

  Real   alphaImag[size(A, 1)]   Imaginary part of alpha
                                 (eigenvalue=(alphaReal+i\*alphaImag))

  Real   lEigenVectors[size(A,   left eigenvectors of matrix A
         1), size(A, 1)]         

  Real   rEigenVectors[size(A,   right eigenvectors of matrix A
         1), size(A, 1)]         

  Real   AS[size(A, 1), size(A,  AS iss the real Schur form of the balanced
         2)]                     version of the input matrix A

  Intege info                    
  r                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dgeevx 
      "Compute the eigenvalues and the (real) left and right eigenvectors of matrix A, using lapack routine dgeevx "

      input Real A[:,size(A, 1)];
      output Real alphaReal[size(A, 1)] 
        "Real part of alpha (eigenvalue=(alphaReal+i*alphaImag))";
      output Real alphaImag[size(A, 1)] 
        "Imaginary part of alpha (eigenvalue=(alphaReal+i*alphaImag))";
      output Real lEigenVectors[size(A, 1),size(A, 1)] 
        "left eigenvectors of matrix A";
      output Real rEigenVectors[size(A, 1),size(A, 1)] 
        "right eigenvectors of matrix A";
      output Real AS[size(A, 1),size(A, 2)]=A 
        "AS iss the real Schur form of the balanced version of the input matrix A";
      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer ilo;
      Integer ihi;
      Real scale[n];
      Real abnrm;
      Real rconde[n];
      Real rcondv[n];
      Integer lwork=n*(n + 6);
      Real work[lwork];

    external "Fortran 77" dgeevx(
        "B",
        "V",
        "V",
        "E",
        n,
        AS,
        n,
        alphaReal,
        alphaImag,
        lEigenVectors,
        n,
        rEigenVectors,
        n,
        ilo,
        ihi,
        scale,
        abnrm,
        rconde,
        rcondv,
        work,
        lwork,
        info);

    end dgeevx;

* * * * *

![image104](Modelica.Math.Matrices.LAPACK.dgesddI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dgesdd
===============================================================================================================================================================

**Determine singular value decomposition**

Information
-----------

    Purpose
    =======

    DGESDD computes the singular value decomposition (SVD) of a real
    M-by-N matrix A, optionally computing the left and right singular
    vectors.  If singular vectors are desired, it uses a
    divide-and-conquer algorithm.

    The SVD is written

         A = U * SIGMA * transpose(V)

    where SIGMA is an M-by-N matrix which is zero except for its
    min(m,n) diagonal elements, U is an M-by-M orthogonal matrix, and
    V is an N-by-N orthogonal matrix.  The diagonal elements of SIGMA
    are the singular values of A; they are real and non-negative, and
    are returned in descending order.  The first min(m,n) columns of
    U and V are the left and right singular vectors of A.

    Note that the routine returns VT = V**T, not V.

    The divide and conquer algorithm makes very mild assumptions about
    floating point arithmetic. It will work on machines with a guard
    digit in add/subtract, or on those binary machines without guard
    digits which subtract like the Cray X-MP, Cray Y-MP, Cray C-90, or
    Cray-2. It could conceivably fail on hexadecimal or decimal machines
    without guard digits, but we know of none.

    Arguments
    =========

    JOBZ    (input) CHARACTER*1
            Specifies options for computing all or part of the matrix U:
            = 'A':  all M columns of U and all N rows of V**T are
                    returned in the arrays U and VT;
            = 'S':  the first min(M,N) columns of U and the first
                    min(M,N) rows of V**T are returned in the arrays U
                    and VT;
            = 'O':  If M >= N, the first N columns of U are overwritten
                    on the array A and all rows of V**T are returned in
                    the array VT;
                    otherwise, all columns of U are returned in the
                    array U and the first M rows of V**T are overwritten
                    in the array VT;
            = 'N':  no columns of U or rows of V**T are computed.

    M       (input) INTEGER
            The number of rows of the input matrix A.  M >= 0.

    N       (input) INTEGER
            The number of columns of the input matrix A.  N >= 0.

    A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
            On entry, the M-by-N matrix A.
            On exit,
            if JOBZ = 'O',  A is overwritten with the first N columns
                            of U (the left singular vectors, stored
                            columnwise) if M >= N;
                            A is overwritten with the first M rows
                            of V**T (the right singular vectors, stored
                            rowwise) otherwise.
            if JOBZ .ne. 'O', the contents of A are destroyed.

    LDA     (input) INTEGER
            The leading dimension of the array A.  LDA >= max(1,M).

    S       (output) DOUBLE PRECISION array, dimension (min(M,N))
            The singular values of A, sorted so that S(i) >= S(i+1).

    U       (output) DOUBLE PRECISION array, dimension (LDU,UCOL)
            UCOL = M if JOBZ = 'A' or JOBZ = 'O' and M < N;
            UCOL = min(M,N) if JOBZ = 'S'.
            If JOBZ = 'A' or JOBZ = 'O' and M < N, U contains the M-by-M
            orthogonal matrix U;
            if JOBZ = 'S', U contains the first min(M,N) columns of U
            (the left singular vectors, stored columnwise);
            if JOBZ = 'O' and M >= N, or JOBZ = 'N', U is not referenced.

    LDU     (input) INTEGER
            The leading dimension of the array U.  LDU >= 1; if
            JOBZ = 'S' or 'A' or JOBZ = 'O' and M < N, LDU >= M.

    VT      (output) DOUBLE PRECISION array, dimension (LDVT,N)
            If JOBZ = 'A' or JOBZ = 'O' and M >= N, VT contains the
            N-by-N orthogonal matrix V**T;
            if JOBZ = 'S', VT contains the first min(M,N) rows of
            V**T (the right singular vectors, stored rowwise);
            if JOBZ = 'O' and M < N, or JOBZ = 'N', VT is not referenced.

    LDVT    (input) INTEGER
            The leading dimension of the array VT.  LDVT >= 1; if
            JOBZ = 'A' or JOBZ = 'O' and M >= N, LDVT >= N;
            if JOBZ = 'S', LDVT >= min(M,N).

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK;

    LWORK   (input) INTEGER
            The dimension of the array WORK. LWORK >= 1.
            If JOBZ = 'N',
              LWORK >= 3*min(M,N) + max(max(M,N),6*min(M,N)).
            If JOBZ = 'O',
              LWORK >= 3*min(M,N)*min(M,N) +
                       max(max(M,N),5*min(M,N)*min(M,N)+4*min(M,N)).
            If JOBZ = 'S' or 'A'
              LWORK >= 3*min(M,N)*min(M,N) +
                       max(max(M,N),4*min(M,N)*min(M,N)+4*min(M,N)).
            For good performance, LWORK should generally be larger.
            If LWORK < 0 but other input arguments are legal, WORK(1)
            returns the optimal LWORK.

    IWORK   (workspace) INTEGER array, dimension (8*min(M,N))

    INFO    (output) INTEGER
            = 0:  successful exit.
            < 0:  if INFO = -i, the i-th argument had an illegal value.
            > 0:  DBDSDC did not converge, updating process failed.

    Further Details
    ===============

    Based on contributions by
       Ming Gu and Huan Ren, Computer Science Division, University of
       California at Berkeley, USA

    =====================================================================  

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type      Name         Default      Description
  --------- ------------ ------------ ----------------
  Real      A[:, :]                   

Outputs
-------

  Type         Name                                    Description
  ------------ --------------------------------------- ----------------
  Real         sigma[min(size(A, 1), size(A, 2))]      
  Real         U[size(A, 1), size(A, 1)]               
  Real         VT[size(A, 2), size(A, 2)]              
  Integer      info                                    

Modelica definition
-------------------

    function dgesdd "Determine singular value decomposition"
      extends Modelica.Icons.Function;
      input Real A[:,:];
      output Real sigma[min(size(A, 1), size(A, 2))];
      output Real U[size(A, 1),size(A, 1)]=zeros(size(A, 1), size(A, 1));
      output Real VT[size(A, 2),size(A, 2)]=zeros(size(A, 2), size(A, 2));
      output Integer info;
    protected 
      Real Awork[size(A, 1),size(A, 2)]=A;
      Integer lda=max(1, size(A, 1));
      Integer ldu=max(1, size(A, 1));
      Integer ldvt=max(1, size(A, 2));
      Integer lwork=max(1,3*(3*min(size(A, 1),size(A, 2))*min(size(A, 1),size(A, 2)) + max(max(size(A, 1),size(A, 2)),4*min(size(A, 1),size(A, 2))*min(size(A, 1),size(A, 2))+4*min(size(A, 1),size(A, 2)))));
      Integer iwork=max(1,8*min(size(A, 1),size(A, 2)));
      Real work[lwork];

    external "Fortran 77" dgesdd(
        "A",
        size(A, 1),
        size(A, 2),
        Awork,
        lda,
        sigma,
        U,
        ldu,
        VT,
        ldvt,
        work,
        lwork,
        iwork,
        info);
    end dgesdd;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dggev
=======================================================================================================

**Compute generalized eigenvalues for a (A,B) system**

Information
-----------

    Purpose
    =======

    DGGEV computes for a pair of N-by-N real nonsymmetric matrices (A,B)
    the generalized eigenvalues, and optionally, the left and/or right
    generalized eigenvectors.

    A generalized eigenvalue for a pair of matrices (A,B) is a scalar
    lambda or a ratio alpha/beta = lambda, such that A - lambda*B is
    singular. It is usually represented as the pair (alpha,beta), as
    there is a reasonable interpretation for beta=0, and even for both
    being zero.

    The right eigenvector v(j) corresponding to the eigenvalue lambda(j)
    of (A,B) satisfies

                     A * v(j) = lambda(j) * B * v(j).

    The left eigenvector u(j) corresponding to the eigenvalue lambda(j)
    of (A,B) satisfies

                     u(j)**H * A  = lambda(j) * u(j)**H * B .

    where u(j)**H is the conjugate-transpose of u(j).

    Arguments
    =========

    JOBVL   (input) CHARACTER*1
            = 'N':  do not compute the left generalized eigenvectors;
            = 'V':  compute the left generalized eigenvectors.

    JOBVR   (input) CHARACTER*1
            = 'N':  do not compute the right generalized eigenvectors;
            = 'V':  compute the right generalized eigenvectors.

    N       (input) INTEGER
            The order of the matrices A, B, VL, and VR.  N >= 0.

    A       (input/output) DOUBLE PRECISION array, dimension (LDA, N)
            On entry, the matrix A in the pair (A,B).
            On exit, A has been overwritten.

    LDA     (input) INTEGER
            The leading dimension of A.  LDA >= max(1,N).

    B       (input/output) DOUBLE PRECISION array, dimension (LDB, N)
            On entry, the matrix B in the pair (A,B).
            On exit, B has been overwritten.

    LDB     (input) INTEGER
            The leading dimension of B.  LDB >= max(1,N).

    ALPHAR  (output) DOUBLE PRECISION array, dimension (N)
    ALPHAI  (output) DOUBLE PRECISION array, dimension (N)
    BETA    (output) DOUBLE PRECISION array, dimension (N)
            On exit, (ALPHAR(j) + ALPHAI(j)*i)/BETA(j), j=1,...,N, will
            be the generalized eigenvalues.  If ALPHAI(j) is zero, then
            the j-th eigenvalue is real; if positive, then the j-th and
            (j+1)-st eigenvalues are a complex conjugate pair, with
            ALPHAI(j+1) negative.

            Note: the quotients ALPHAR(j)/BETA(j) and ALPHAI(j)/BETA(j)
            may easily over- or underflow, and BETA(j) may even be zero.
            Thus, the user should avoid naively computing the ratio
            alpha/beta.  However, ALPHAR and ALPHAI will be always less
            than and usually comparable with norm(A) in magnitude, and
            BETA always less than and usually comparable with norm(B).

    VL      (output) DOUBLE PRECISION array, dimension (LDVL,N)
            If JOBVL = 'V', the left eigenvectors u(j) are stored one
            after another in the columns of VL, in the same order as
            their eigenvalues. If the j-th eigenvalue is real, then
            u(j) = VL(:,j), the j-th column of VL. If the j-th and
            (j+1)-th eigenvalues form a complex conjugate pair, then
            u(j) = VL(:,j)+i*VL(:,j+1) and u(j+1) = VL(:,j)-i*VL(:,j+1).
            Each eigenvector will be scaled so the largest component have
            abs(real part)+abs(imag. part)=1.
            Not referenced if JOBVL = 'N'.

    LDVL    (input) INTEGER
            The leading dimension of the matrix VL. LDVL >= 1, and
            if JOBVL = 'V', LDVL >= N.

    VR      (output) DOUBLE PRECISION array, dimension (LDVR,N)
            If JOBVR = 'V', the right eigenvectors v(j) are stored one
            after another in the columns of VR, in the same order as
            their eigenvalues. If the j-th eigenvalue is real, then
            v(j) = VR(:,j), the j-th column of VR. If the j-th and
            (j+1)-th eigenvalues form a complex conjugate pair, then
            v(j) = VR(:,j)+i*VR(:,j+1) and v(j+1) = VR(:,j)-i*VR(:,j+1).
            Each eigenvector will be scaled so the largest component have
            abs(real part)+abs(imag. part)=1.
            Not referenced if JOBVR = 'N'.

    LDVR    (input) INTEGER
            The leading dimension of the matrix VR. LDVR >= 1, and
            if JOBVR = 'V', LDVR >= N.

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

    LWORK   (input) INTEGER
            The dimension of the array WORK.  LWORK >= max(1,8*N).
            For good performance, LWORK must generally be larger.

            If LWORK = -1, then a workspace query is assumed; the routine
            only calculates the optimal size of the WORK array, returns
            this value as the first entry of the WORK array, and no error
            message related to LWORK is issued by XERBLA.

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value.
            = 1,...,N:
                  The QZ iteration failed.  No eigenvectors have been
                  calculated, but ALPHAR(j), ALPHAI(j), and BETA(j)
                  should be correct for j=INFO+1,...,N.
            > N:  =N+1: other than QZ iteration failed in DHGEQZ.
                  =N+2: error return from DTGEVC.

    =====================================================================

Inputs
------

  Type        Name                          Default        Description
  ----------- ----------------------------- -------------- ---------------
  Real        A[:, size(A, 1)]                             
  Real        B[size(A, 1), size(A, 1)]                    
  Integer     nA                            size(A, 1)     

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name                      Description
  ------- ------------------------- ---------------------------------------
  Real    alphaReal[size(A, 1)]     Real part of alpha
                                    (eigenvalue=(alphaReal+i\*alphaImag)/be
                                    ta)

  Real    alphaImag[size(A, 1)]     Imaginary part of alpha

  Real    beta[size(A, 1)]          Denominator of eigenvalue

  Real    lEigenVectors[size(A, 1), left eigenvectors of matrix A
          size(A, 1)]               

  Real    rEigenVectors[size(A, 1), right eigenvectors of matrix A
          size(A, 1)]               

  Integer info                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dggev "Compute generalized eigenvalues for a (A,B) system"

      input Real A[:,size(A, 1)];
      input Real B[size(A, 1),size(A, 1)];
      input Integer nA=size(A,1);
      output Real alphaReal[size(A, 1)] 
        "Real part of alpha (eigenvalue=(alphaReal+i*alphaImag)/beta)";
      output Real alphaImag[size(A, 1)] "Imaginary part of alpha";
      output Real beta[size(A, 1)] "Denominator of eigenvalue";
      output Real lEigenVectors[size(A, 1),size(A, 1)] 
        "left eigenvectors of matrix A";
      output Real rEigenVectors[size(A, 1),size(A, 1)] 
        "right eigenvectors of matrix A";

      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer lwork=max(1,8*n);
      Real Awork[n,n]=A;
      Real Bwork[n,n]=B;
      Real work[lwork];
      Integer lda=max(1,n);

    external "Fortran 77" dggev(
        "V",
        "V",
        nA,
        Awork,
        lda,
        Bwork,
        lda,
        alphaReal,
        alphaImag,
        beta,
        lEigenVectors,
        lda,
        rEigenVectors,
        lda,
        work,
        lwork,
        info);
    end dggev;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dggevx
========================================================================================================

**Compute generalized eigenvalues for a (A,B) system, using lapack
routine dggevx**

Information
-----------

    /*  Purpose
    /*  =======

       DGGEVX computes for a pair of N-by-N real nonsymmetric matrices (A,B)
       the generalized eigenvalues, and optionally, the left and/or right
       generalized eigenvectors.

       Optionally also, it computes a balancing transformation to improve
       the conditioning of the eigenvalues and eigenvectors (ILO, IHI,
       LSCALE, RSCALE, ABNRM, and BBNRM), reciprocal condition numbers for
       the eigenvalues (RCONDE), and reciprocal condition numbers for the
       right eigenvectors (RCONDV).

       A generalized eigenvalue for a pair of matrices (A,B) is a scalar
       lambda or a ratio alpha/beta = lambda, such that A - lambda*B is
       singular. It is usually represented as the pair (alpha,beta), as
       there is a reasonable interpretation for beta=0, and even for both
       being zero.

       The right eigenvector v(j) corresponding to the eigenvalue lambda(j)
       of (A,B) satisfies

                        A * v(j) = lambda(j) * B * v(j) .

       The left eigenvector u(j) corresponding to the eigenvalue lambda(j)
       of (A,B) satisfies

                        u(j)**H * A  = lambda(j) * u(j)**H * B.

       where u(j)**H is the conjugate-transpose of u(j).

       Arguments
       =========

       BALANC  (input) CHARACTER*1
               Specifies the balance option to be performed.
               = 'N':  do not diagonally scale or permute;
               = 'P':  permute only;
               = 'S':  scale only;
               = 'B':  both permute and scale.
               Computed reciprocal condition numbers will be for the
               matrices after permuting and/or balancing. Permuting does
               not change condition numbers (in exact arithmetic), but
               balancing does.

       JOBVL   (input) CHARACTER*1
               = 'N':  do not compute the left generalized eigenvectors;
               = 'V':  compute the left generalized eigenvectors.

       JOBVR   (input) CHARACTER*1
               = 'N':  do not compute the right generalized eigenvectors;
               = 'V':  compute the right generalized eigenvectors.

       SENSE   (input) CHARACTER*1
               Determines which reciprocal condition numbers are computed.
               = 'N': none are computed;
               = 'E': computed for eigenvalues only;
               = 'V': computed for eigenvectors only;
               = 'B': computed for eigenvalues and eigenvectors.

       N       (input) INTEGER
               The order of the matrices A, B, VL, and VR.  N >= 0.

       A       (input/output) DOUBLE PRECISION array, dimension (LDA, N)
               On entry, the matrix A in the pair (A,B).
               On exit, A has been overwritten. If JOBVL='V' or JOBVR='V'
               or both, then A contains the first part of the real Schur
               form of the "balanced" versions of the input A and B.

       LDA     (input) INTEGER
               The leading dimension of A.  LDA >= max(1,N).

       B       (input/output) DOUBLE PRECISION array, dimension (LDB, N)
               On entry, the matrix B in the pair (A,B).
               On exit, B has been overwritten. If JOBVL='V' or JOBVR='V'
               or both, then B contains the second part of the real Schur
               form of the "balanced" versions of the input A and B.

       LDB     (input) INTEGER
               The leading dimension of B.  LDB >= max(1,N).

       ALPHAR  (output) DOUBLE PRECISION array, dimension (N)
       ALPHAI  (output) DOUBLE PRECISION array, dimension (N)
       BETA    (output) DOUBLE PRECISION array, dimension (N)
               On exit, (ALPHAR(j) + ALPHAI(j)*i)/BETA(j), j=1,...,N, will
               be the generalized eigenvalues.  If ALPHAI(j) is zero, then
               the j-th eigenvalue is real; if positive, then the j-th and
               (j+1)-st eigenvalues are a complex conjugate pair, with
               ALPHAI(j+1) negative.

               Note: the quotients ALPHAR(j)/BETA(j) and ALPHAI(j)/BETA(j)
               may easily over- or underflow, and BETA(j) may even be zero.
               Thus, the user should avoid naively computing the ratio
               ALPHA/BETA. However, ALPHAR and ALPHAI will be always less
               than and usually comparable with norm(A) in magnitude, and
               BETA always less than and usually comparable with norm(B).

       VL      (output) DOUBLE PRECISION array, dimension (LDVL,N)
               If JOBVL = 'V', the left eigenvectors u(j) are stored one
               after another in the columns of VL, in the same order as
               their eigenvalues. If the j-th eigenvalue is real, then
               u(j) = VL(:,j), the j-th column of VL. If the j-th and
               (j+1)-th eigenvalues form a complex conjugate pair, then
               u(j) = VL(:,j)+i*VL(:,j+1) and u(j+1) = VL(:,j)-i*VL(:,j+1).
               Each eigenvector will be scaled so the largest component have
               abs(real part) + abs(imag. part) = 1.
               Not referenced if JOBVL = 'N'.

       LDVL    (input) INTEGER
               The leading dimension of the matrix VL. LDVL >= 1, and
               if JOBVL = 'V', LDVL >= N.

       VR      (output) DOUBLE PRECISION array, dimension (LDVR,N)
               If JOBVR = 'V', the right eigenvectors v(j) are stored one
               after another in the columns of VR, in the same order as
               their eigenvalues. If the j-th eigenvalue is real, then
               v(j) = VR(:,j), the j-th column of VR. If the j-th and
               (j+1)-th eigenvalues form a complex conjugate pair, then
               v(j) = VR(:,j)+i*VR(:,j+1) and v(j+1) = VR(:,j)-i*VR(:,j+1).
               Each eigenvector will be scaled so the largest component have
               abs(real part) + abs(imag. part) = 1.
               Not referenced if JOBVR = 'N'.

       LDVR    (input) INTEGER
               The leading dimension of the matrix VR. LDVR >= 1, and
               if JOBVR = 'V', LDVR >= N.

       ILO,IHI (output) INTEGER
               ILO and IHI are integer values such that on exit
               A(i,j) = 0 and B(i,j) = 0 if i > j and
               j = 1,...,ILO-1 or i = IHI+1,...,N.
               If BALANC = 'N' or 'S', ILO = 1 and IHI = N.

       LSCALE  (output) DOUBLE PRECISION array, dimension (N)
               Details of the permutations and scaling factors applied
               to the left side of A and B.  If PL(j) is the index of the
               row interchanged with row j, and DL(j) is the scaling
               factor applied to row j, then
                 LSCALE(j) = PL(j)  for j = 1,...,ILO-1
                           = DL(j)  for j = ILO,...,IHI
                           = PL(j)  for j = IHI+1,...,N.
               The order in which the interchanges are made is N to IHI+1,
               then 1 to ILO-1.

       RSCALE  (output) DOUBLE PRECISION array, dimension (N)
               Details of the permutations and scaling factors applied
               to the right side of A and B.  If PR(j) is the index of the
               column interchanged with column j, and DR(j) is the scaling
               factor applied to column j, then
                 RSCALE(j) = PR(j)  for j = 1,...,ILO-1
                           = DR(j)  for j = ILO,...,IHI
                           = PR(j)  for j = IHI+1,...,N
               The order in which the interchanges are made is N to IHI+1,
               then 1 to ILO-1.

       ABNRM   (output) DOUBLE PRECISION
               The one-norm of the balanced matrix A.

       BBNRM   (output) DOUBLE PRECISION
               The one-norm of the balanced matrix B.

       RCONDE  (output) DOUBLE PRECISION array, dimension (N)
               If SENSE = 'E' or 'B', the reciprocal condition numbers of
               the selected eigenvalues, stored in consecutive elements of
               the array. For a complex conjugate pair of eigenvalues two
               consecutive elements of RCONDE are set to the same value.
               Thus RCONDE(j), RCONDV(j), and the j-th columns of VL and VR
               all correspond to the same eigenpair (but not in general the
               j-th eigenpair, unless all eigenpairs are selected).
               If SENSE = 'V', RCONDE is not referenced.

       RCONDV  (output) DOUBLE PRECISION array, dimension (N)
               If SENSE = 'V' or 'B', the estimated reciprocal condition
               numbers of the selected eigenvectors, stored in consecutive
               elements of the array. For a complex eigenvector two
               consecutive elements of RCONDV are set to the same value. If
               the eigenvalues cannot be reordered to compute RCONDV(j),
               RCONDV(j) is set to 0; this can only occur when the true
               value would be very small anyway.
               If SENSE = 'E', RCONDV is not referenced.

       WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
               On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

       LWORK   (input) INTEGER
               The dimension of the array WORK. LWORK >= max(1,6*N).
               If SENSE = 'E', LWORK >= 12*N.
               If SENSE = 'V' or 'B', LWORK >= 2*N*N+12*N+16.

               If LWORK = -1, then a workspace query is assumed; the routine
               only calculates the optimal size of the WORK array, returns
               this value as the first entry of the WORK array, and no error
               message related to LWORK is issued by XERBLA.

       IWORK   (workspace) INTEGER array, dimension (N+6)
               If SENSE = 'E', IWORK is not referenced.

       BWORK   (workspace) LOGICAL array, dimension (N)
               If SENSE = 'N', BWORK is not referenced.

       INFO    (output) INTEGER
               = 0:  successful exit
               < 0:  if INFO = -i, the i-th argument had an illegal value.
               = 1,...,N:
                     The QZ iteration failed.  No eigenvectors have been
                     calculated, but ALPHAR(j), ALPHAI(j), and BETA(j)
                     should be correct for j=INFO+1,...,N.
               > N:  =N+1: other than QZ iteration failed in DHGEQZ.
                     =N+2: error return from DTGEVC.

       Further Details
       ===============

       Balancing a matrix pair (A,B) includes, first, permuting rows and
       columns to isolate eigenvalues, second, applying diagonal similarity
       transformation to the rows and columns to make the rows and columns
       as close in norm as possible. The computed reciprocal condition
       numbers correspond to the balanced matrix. Permuting rows and columns
       will not change the condition numbers (in exact arithmetic) but
       diagonal scaling will.  For further explanation of balancing, see
       section 4.11.1.2 of LAPACK Users' Guide.

       An approximate error bound on the chordal distance between the i-th
       computed generalized eigenvalue w and the corresponding exact
       eigenvalue lambda is

            chord(w, lambda) <= EPS * norm(ABNRM, BBNRM) / RCONDE(I)

       An approximate error bound for the angle between the i-th computed
       eigenvector VL(i) or VR(i) is given by

            EPS * norm(ABNRM, BBNRM) / DIF(i).

       For further explanation of the reciprocal condition numbers RCONDE
       and RCONDV, see section 4.11 of LAPACK User's Guide.

       =====================================================================

Inputs
------

  Type      Name                           Default      Description
  --------- ------------------------------ ------------ ----------------
  Real      A[:, size(A, 1)]                            
  Real      B[size(A, 1), size(A, 1)]                   

Outputs
-------

  -------------------------------------------------------------------------
  Type    Name                      Description
  ------- ------------------------- ---------------------------------------
  Real    alphaReal[size(A, 1)]     Real part of alpha
                                    (eigenvalue=(alphaReal+i\*alphaImag)/be
                                    ta)

  Real    alphaImag[size(A, 1)]     Imaginary part of alpha

  Real    beta[size(A, 1)]          Denominator of eigenvalue

  Real    lEigenVectors[size(A, 1), left eigenvectors of matrix A
          size(A, 1)]               

  Real    rEigenVectors[size(A, 1), right eigenvectors of matrix A
          size(A, 1)]               

  Integer info                      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dggevx 
      "Compute generalized eigenvalues for a (A,B) system, using lapack routine dggevx"

      input Real A[:,size(A, 1)];
      input Real B[size(A, 1),size(A, 1)];
      output Real alphaReal[size(A, 1)] 
        "Real part of alpha (eigenvalue=(alphaReal+i*alphaImag)/beta)";
      output Real alphaImag[size(A, 1)] "Imaginary part of alpha";
      output Real beta[size(A, 1)] "Denominator of eigenvalue";
      output Real lEigenVectors[size(A, 1),size(A, 1)] 
        "left eigenvectors of matrix A";
      output Real rEigenVectors[size(A, 1),size(A, 1)] 
        "right eigenvectors of matrix A";

      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer lda=max(1,size(A, 1));
      Integer ilo;
      Integer ihi;
      Real lscale[n];
      Real rscale[n];
      Real abnrm;
      Real bbnrm;
      Real rconde[n];
      Real rcondv[n];
      Integer lwork=2*n*n + 12*n + 16;
      Real work[lwork];
      Integer iwork[n + 6];
      Integer bwork[n];

    external "Fortran 77" dggevx(
        "B",
        "V",
        "V",
        "B",
        n,
        A,
        lda,
        B,
        lda,
        alphaReal,
        alphaImag,
        beta,
        lEigenVectors,
        lda,
        rEigenVectors,
        lda,
        ilo,
        ihi,
        lscale,
        rscale,
        abnrm,
        bbnrm,
        rconde,
        rcondv,
        work,
        lwork,
        iwork,
        bwork,
        info);
    end dggevx;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dhgeqz
========================================================================================================

**Compute generalized eigenvalues for a (A,B) system**

Information
-----------

    Purpose

> * * * * *
>
> DHGEQZ implements a single-/double-shift version of the QZ method for
> finding the generalized eigenvalues
>
> w(j)=(ALPHAR(j) + i\*ALPHAI(j))/BETAR(j) of the equation
>
> > det( A - w(i) B ) = 0
>
> In addition, the pair A,B may be reduced to generalized Schur form: B
> is upper triangular, and A is block upper triangular, where the
> diagonal blocks are either 1-by-1 or 2-by-2, the 2-by-2 blocks having
> complex generalized eigenvalues (see the description of the argument
> JOB.)
>
> If JOB='S', then the pair (A,B) is simultaneously reduced to Schur
> form by applying one orthogonal tranformation (usually called Q) on
> the left and another (usually called Z) on the right. The 2-by-2
> upper-triangular diagonal blocks of B corresponding to 2-by-2 blocks
> of A will be reduced to positive diagonal matrices. (I.e., if A(j+1,j)
> is non-zero, then B(j+1,j)=B(j,j+1)=0 and B(j,j) and B(j+1,j+1) will
> be positive.)
>
> If JOB='E', then at each iteration, the same transformations are
> computed, but they are only applied to those parts of A and B which
> are needed to compute ALPHAR, ALPHAI, and BETAR.
>
> If JOB='S' and COMPQ and COMPZ are 'V' or 'I', then the orthogonal
> transformations used to reduce (A,B) are accumulated into the arrays Q
> and Z s.t.:
>
> > Q(in) A(in) Z(in)\* = Q(out) A(out) Z(out)\* Q(in) B(in) Z(in)\* =
> > Q(out) B(out) Z(out)\*
>
> Ref: C.B. Moler & G.W. Stewart, "An Algorithm for Generalized Matrix
>   ~ Eigenvalue Problems", SIAM J. Numer. Anal., 10(1973), pp.
>     241--256.
>
> #### Arguments
>
> JOB (input) CHARACTER\*1
>   ~ = 'E': compute only ALPHAR, ALPHAI, and BETA. A and B will
>       ~ not necessarily be put into generalized Schur form.
>
>     = 'S': put A and B into generalized Schur form, as well
>       ~ as computing ALPHAR, ALPHAI, and BETA.
>
> COMPQ (input) CHARACTER\*1
>   ~ = 'N': do not modify Q. = 'V': multiply the array Q on the right
>     by the transpose of the orthogonal tranformation that is applied
>     to the left side of A and B to reduce them to Schur form. = 'I':
>     like COMPQ='V', except that Q will be initialized to the identity
>     first.
>
> COMPZ (input) CHARACTER\*1
>   ~ = 'N': do not modify Z. = 'V': multiply the array Z on the right
>     by the orthogonal tranformation that is applied to the right side
>     of A and B to reduce them to Schur form. = 'I': like COMPZ='V',
>     except that Z will be initialized to the identity first.
>
> N (input) INTEGER
>   ~ The order of the matrices A, B, Q, and Z. N \>= 0.
>
> ILO (input) INTEGER IHI (input) INTEGER It is assumed that A is
> already upper triangular in rows and columns 1:ILO-1 and IHI+1:N. 1 <=
> ILO <= IHI <= N, if N \> 0; ILO=1 and IHI=0, if N=0.
>
> A (input/output) DOUBLE PRECISION array, dimension (LDA, N)
>   ~ On entry, the N-by-N upper Hessenberg matrix A. Elements below the
>     subdiagonal must be zero. If JOB='S', then on exit A and B will
>     have been simultaneously reduced to generalized Schur form. If
>     JOB='E', then on exit A will have been destroyed. The diagonal
>     blocks will be correct, but the off-diagonal portion will be
>     meaningless.
>
> LDA (input) INTEGER
>   ~ The leading dimension of the array A. LDA \>= max( 1, N ).
>
> B (input/output) DOUBLE PRECISION array, dimension (LDB, N)
>   ~ On entry, the N-by-N upper triangular matrix B. Elements below the
>     diagonal must be zero. 2-by-2 blocks in B corresponding to 2-by-2
>     blocks in A will be reduced to positive diagonal form. (I.e., if
>     A(j+1,j) is non-zero, then B(j+1,j)=B(j,j+1)=0 and B(j,j) and
>     B(j+1,j+1) will be positive.) If JOB='S', then on exit A and B
>     will have been simultaneously reduced to Schur form. If JOB='E',
>     then on exit B will have been destroyed. Elements corresponding to
>     diagonal blocks of A will be correct, but the off-diagonal portion
>     will be meaningless.
>
> LDB (input) INTEGER
>   ~ The leading dimension of the array B. LDB \>= max( 1, N ).
>
> ALPHAR (output) DOUBLE PRECISION array, dimension (N)
>   ~ ALPHAR(1:N) will be set to real parts of the diagonal elements of
>     A that would result from reducing A and B to Schur form and then
>     further reducing them both to triangular form using unitary
>     transformations s.t. the diagonal of B was non-negative real.
>     Thus, if A(j,j) is in a 1-by-1 block (i.e., A(j+1,j)=A(j,j+1)=0),
>     then ALPHAR(j)=A(j,j). Note that the (real or complex) values
>     (ALPHAR(j) + i\*ALPHAI(j))/BETA(j), j=1,...,N, are the generalized
>     eigenvalues of the matrix pencil A - wB.
>
> ALPHAI (output) DOUBLE PRECISION array, dimension (N)
>   ~ ALPHAI(1:N) will be set to imaginary parts of the diagonal
>     elements of A that would result from reducing A and B to Schur
>     form and then further reducing them both to triangular form using
>     unitary transformations s.t. the diagonal of B was non-negative
>     real. Thus, if A(j,j) is in a 1-by-1 block (i.e.,
>     A(j+1,j)=A(j,j+1)=0), then ALPHAR(j)=0. Note that the (real or
>     complex) values (ALPHAR(j) + i\*ALPHAI(j))/BETA(j), j=1,...,N, are
>     the generalized eigenvalues of the matrix pencil A - wB.
>
> BETA (output) DOUBLE PRECISION array, dimension (N)
>   ~ BETA(1:N) will be set to the (real) diagonal elements of B that
>     would result from reducing A and B to Schur form and then further
>     reducing them both to triangular form using unitary
>     transformations s.t. the diagonal of B was non-negative real.
>     Thus, if A(j,j) is in a 1-by-1 block (i.e., A(j+1,j)=A(j,j+1)=0),
>     then BETA(j)=B(j,j). Note that the (real or complex) values
>     (ALPHAR(j) + i\*ALPHAI(j))/BETA(j), j=1,...,N, are the generalized
>     eigenvalues of the matrix pencil A - wB. (Note that BETA(1:N) will
>     always be non-negative, and no BETAI is necessary.)
>
> Q (input/output) DOUBLE PRECISION array, dimension (LDQ, N)
>   ~ If COMPQ='N', then Q will not be referenced. If COMPQ='V' or 'I',
>     then the transpose of the orthogonal transformations which are
>     applied to A and B on the left will be applied to the array Q on
>     the right.
>
> LDQ (input) INTEGER
>   ~ The leading dimension of the array Q. LDQ \>= 1. If COMPQ='V' or
>     'I', then LDQ \>= N.
>
> Z (input/output) DOUBLE PRECISION array, dimension (LDZ, N)
>   ~ If COMPZ='N', then Z will not be referenced. If COMPZ='V' or 'I',
>     then the orthogonal transformations which are applied to A and B
>     on the right will be applied to the array Z on the right.
>
> LDZ (input) INTEGER
>   ~ The leading dimension of the array Z. LDZ \>= 1. If COMPZ='V' or
>     'I', then LDZ \>= N.
>
> WORK (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
>   ~ On exit, if INFO \>= 0, WORK(1) returns the optimal LWORK.
>
> LWORK (input) INTEGER
>   ~ The dimension of the array WORK. LWORK \>= max(1,N).
>
>     If LWORK = -1, then a workspace query is assumed; the routine only
>     calculates the optimal size of the WORK array, returns this value
>     as the first entry of the WORK array, and no error message related
>     to LWORK is issued by XERBLA.
>
> INFO (output) INTEGER
>   ~ = 0: successful exit < 0: if INFO = -i, the i-th argument had an
>     illegal value = 1,...,N: the QZ iteration did not converge. (A,B)
>     is not in Schur form, but ALPHAR(i), ALPHAI(i), and BETA(i),
>     i=INFO+1,...,N should be correct. = N+1,...,2*N: the shift
>     calculation failed. (A,B) is not in Schur form, but ALPHAR(i),
>     ALPHAI(i), and BETA(i), i=INFO-N+1,...,N should be correct. \>
>     2*N: various "impossible" errors.
>
> #### Further Details
>
> Iteration counters:
>
> JITER -- counts iterations. IITER -- counts iterations run since ILAST
> was last changed. This is therefore reset only when a 1-by-1 or 2-by-2
> block deflates off the bottom.
>
> * * * * *

Inputs
------

  Type      Name                           Default      Description
  --------- ------------------------------ ------------ ----------------
  Real      A[:, size(A, 1)]                            
  Real      B[size(A, 1), size(A, 1)]                   

Outputs
-------

  -------------------------------------------------------------------------
  Type     Name               Description
  -------- ------------------ ---------------------------------------------
  Real     alphaReal[size(A,  Real part of alpha
           1)]                (eigenvalue=(alphaReal+i\*alphaImag)/beta)

  Real     alphaImag[size(A,  Imaginary part of alpha
           1)]                

  Real     beta[size(A, 1)]   Denominator of eigenvalue

  Integer  info               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function dhgeqz "Compute generalized eigenvalues for a (A,B) system"

      input Real A[:,size(A, 1)];
      input Real B[size(A, 1),size(A, 1)];
      output Real alphaReal[size(A, 1)] 
        "Real part of alpha (eigenvalue=(alphaReal+i*alphaImag)/beta)";
      output Real alphaImag[size(A, 1)] "Imaginary part of alpha";
      output Real beta[size(A, 1)] "Denominator of eigenvalue";

      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer ilo=1;
      Integer ihi=n;
      Integer lwork=max(1,3*n);
      Real work[lwork];
      Real Awork[n,n]=A;
      Real Bwork[n,n]=B;
      Integer lda=max(1, n);
      Real Q[1,1]=fill(0, 1, n);

    external "Fortran 77" dhgeqz(
        "E",
        "N",
        "N",
        n,
        ilo,
        ihi,
        Awork,
        lda,
        Bwork,
        lda,
        alphaReal,
        alphaImag,
        beta,
        Q,
        1,
        Q,
        1,
        work,
        lwork,
        info);

    end dhgeqz;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dormhr
========================================================================================================

**overwrites the general real M-by-N matrix C with Q \* C or C \* Q or
Q' \* C or C \* Q', where Q is an orthogonal matrix as returne by
dgehrd**

Information
-----------

    Purpose
    =======

      DORMHR overwrites the general real M-by-N matrix C with

                    SIDE = 'L'     SIDE = 'R'
    TRANS = 'N':      Q * C          C * Q
    TRANS = 'T':      Q**T * C       C * Q**T

    where Q is a real orthogonal matrix of order nq, with nq = m if
    SIDE = 'L' and nq = n if SIDE = 'R'. Q is defined as the product of
    IHI-ILO elementary reflectors, as returned by DGEHRD:

    Q = H(ilo) H(ilo+1) . . . H(ihi-1).

    Arguments
    =========

    SIDE    (input) CHARACTER*1
            = 'L': apply Q or Q**T from the Left;
            = 'R': apply Q or Q**T from the Right.

    TRANS   (input) CHARACTER*1
            = 'N':  No transpose, apply Q;
            = 'T':  Transpose, apply Q**T.

    M       (input) INTEGER
            The number of rows of the matrix C. M >= 0.

    N       (input) INTEGER
            The number of columns of the matrix C. N >= 0.

    ILO     (input) INTEGER
    IHI     (input) INTEGER
            ILO and IHI must have the same values as in the previous call
            of DGEHRD. Q is equal to the unit matrix except in the
            submatrix Q(ilo+1:ihi,ilo+1:ihi).
            If SIDE = 'L', then 1 <= ILO <= IHI <= M, if M > 0, and
            ILO = 1 and IHI = 0, if M = 0;
            if SIDE = 'R', then 1 <= ILO <= IHI <= N, if N > 0, and
            ILO = 1 and IHI = 0, if N = 0.

    A       (input) DOUBLE PRECISION array, dimension
                                 (LDA,M) if SIDE = 'L'
                                 (LDA,N) if SIDE = 'R'
            The vectors which define the elementary reflectors, as
            returned by DGEHRD.

    LDA     (input) INTEGER
            The leading dimension of the array A.
            LDA >= max(1,M) if SIDE = 'L'; LDA >= max(1,N) if SIDE = 'R'.

    TAU     (input) DOUBLE PRECISION array, dimension
                                 (M-1) if SIDE = 'L'
                                 (N-1) if SIDE = 'R'
            TAU(i) must contain the scalar factor of the elementary
            reflector H(i), as returned by DGEHRD.

    C       (input/output) DOUBLE PRECISION array, dimension (LDC,N)
            On entry, the M-by-N matrix C.
            On exit, C is overwritten by Q*C or Q**T*C or C*Q**T or C*Q.

    LDC     (input) INTEGER
            The leading dimension of the array C. LDC >= max(1,M).

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

    LWORK   (input) INTEGER
            The dimension of the array WORK.
            If SIDE = 'L', LWORK >= max(1,N);
            if SIDE = 'R', LWORK >= max(1,M).
            For optimum performance LWORK >= N*NB if SIDE = 'L', and
            LWORK >= M*NB if SIDE = 'R', where NB is the optimal
            blocksize.

            If LWORK = -1, then a workspace query is assumed; the routine
            only calculates the optimal size of the WORK array, returns
            this value as the first entry of the WORK array, and no error
            message related to LWORK is issued by XERBLA.

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value

    =====================================================================  

Inputs
------

  -------------------------------------------------------------------------
  Type Name                      Default        Description
  ---- ------------------------- -------------- ---------------------------
  Real C[:, :]                                  

  Real A[:, :]                                  

  Real tau[if side == "L" then                  
       size(C, 2) - 1 else                      
       size(C, 1) - 1]                          

  Stri side                      "L"            
  ng                                            

  Stri trans                     "N"            
  ng                                            

  Inte ilo                       1              lowest index where the
  ger                                           original matrix had been
                                                Hessenbergform

  Inte ihi                       if side == "L" highest index where the
  ger                            then size(C,   original matrix had been
                                 ...            Hessenbergform
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Typ Name     Description
  e            
  --- -------- -----------------------------------------------------------
  Rea Cout[siz contains the Hessenberg form in the upper triangle and the
  l   e(C,     first subdiagonal and below the first subdiagonal it
      1),      contains the elementary reflectors which represents (with
      size(C,  array tau) as a product the orthogonal matrix Q
      2)]      

  Int info     
  ege          
  r            
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dormhr 
      "overwrites the general real M-by-N matrix C with Q * C or C * Q or Q' * C or C * Q', where Q is an orthogonal matrix as returne by dgehrd"

      input Real C[:,:];
      input Real A[:,:];
      input Real tau[if side=="L" then size(C, 2) - 1 else size(C,1)-1];
      input String side="L";
      input String trans="N";
      input Integer ilo=1 
        "lowest index where the original matrix had been Hessenbergform";
      input Integer ihi=if side=="L" then size(C,1) else size(C,2) 
        "highest index where the original matrix had been Hessenbergform";
      output Real Cout[size(C, 1),size(C, 2)]=C 
        "contains the Hessenberg form in the upper triangle and the first subdiagonal and below the first subdiagonal it contains the elementary reflectors which represents (with array tau) as a product the orthogonal matrix Q";

      output Integer info;
    protected 
      Integer m=size(C, 1);
      Integer n=size(C, 2);
      Integer lda=max(1, size(A, 2));
      Integer ldc=max(1, m);
      Integer lwork=max(1,2*size(A, 2));
      Real work[lwork];

    external "Fortran 77" dormhr(
        side,
        trans,
        m,
        n,
        ilo,
        ihi,
        A,
        lda,
        tau,
        Cout,
        ldc,
        work,
        lwork,
        info);

    end dormhr;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dormqr
========================================================================================================

**overwrites the general real M-by-N matrix C with Q \* C or C \* Q or
Q' \* C or C \* Q', where Q is an orthogonal matrix of a QR
factorization as returned by dgeqrf**

Information
-----------

    Purpose
    =======

    DORMQR overwrites the general real M-by-N matrix C with

                    SIDE = 'L'     SIDE = 'R'
    TRANS = 'N':      Q * C          C * Q
    TRANS = 'T':      Q**T * C       C * Q**T

    where Q is a real orthogonal matrix defined as the product of k
    elementary reflectors

          Q = H(1) H(2) . . . H(k)

    as returned by DGEQRF. Q is of order M if SIDE = 'L' and of order N
    if SIDE = 'R'.

    Arguments
    =========

    SIDE    (input) CHARACTER*1
            = 'L': apply Q or Q**T from the Left;
            = 'R': apply Q or Q**T from the Right.

    TRANS   (input) CHARACTER*1
            = 'N':  No transpose, apply Q;
            = 'T':  Transpose, apply Q**T.

    M       (input) INTEGER
            The number of rows of the matrix C. M >= 0.

    N       (input) INTEGER
            The number of columns of the matrix C. N >= 0.

    K       (input) INTEGER
            The number of elementary reflectors whose product defines
            the matrix Q.
            If SIDE = 'L', M >= K >= 0;
            if SIDE = 'R', N >= K >= 0.

    A       (input) DOUBLE PRECISION array, dimension (LDA,K)
            The i-th column must contain the vector which defines the
            elementary reflector H(i), for i = 1,2,...,k, as returned by
            DGEQRF in the first k columns of its array argument A.
            A is modified by the routine but restored on exit.

    LDA     (input) INTEGER
            The leading dimension of the array A.
            If SIDE = 'L', LDA >= max(1,M);
            if SIDE = 'R', LDA >= max(1,N).

    TAU     (input) DOUBLE PRECISION array, dimension (K)
            TAU(i) must contain the scalar factor of the elementary
            reflector H(i), as returned by DGEQRF.

    C       (input/output) DOUBLE PRECISION array, dimension (LDC,N)
            On entry, the M-by-N matrix C.
            On exit, C is overwritten by Q*C or Q**T*C or C*Q**T or C*Q.

    LDC     (input) INTEGER
            The leading dimension of the array C. LDC >= max(1,M).

    WORK    (workspace/output) DOUBLE PRECISION array, dimension (LWORK)
            On exit, if INFO = 0, WORK(1) returns the optimal LWORK.

    LWORK   (input) INTEGER
            The dimension of the array WORK.
            If SIDE = 'L', LWORK >= max(1,N);
            if SIDE = 'R', LWORK >= max(1,M).
            For optimum performance LWORK >= N*NB if SIDE = 'L', and
            LWORK >= M*NB if SIDE = 'R', where NB is the optimal
            blocksize.

            If LWORK = -1, then a workspace query is assumed; the routine
            only calculates the optimal size of the WORK array, returns
            this value as the first entry of the WORK array, and no error
            message related to LWORK is issued by XERBLA.

    INFO    (output) INTEGER
            = 0:  successful exit
            < 0:  if INFO = -i, the i-th argument had an illegal value

    =====================================================================  

Inputs
------

  Type        Name         Default      Description
  ----------- ------------ ------------ ----------------
  Real        C[:, :]                   
  Real        A[:, :]                   
  Real        tau[:]                    
  String      side         "L"          
  String      trans        "N"          

Outputs
-------

  ------------------------------------------------------------------------
  Type     Name                     Description
  -------- ------------------------ --------------------------------------
  Real     Cout[size(C, 1), size(C, contains Q\*C or Q\*\*T\*C or
           2)]                      C\*Q\*\*T or C\*Q

  Integer  info                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dormqr 
      "overwrites the general real M-by-N matrix C with Q * C or C * Q or Q' * C or C * Q', where Q is an orthogonal matrix of a QR factorization as returned by dgeqrf"

      input Real C[:,:];
      input Real A[:,:];
      input Real tau[:];
      input String side="L";
      input String trans="N";

      output Real Cout[size(C, 1),size(C, 2)]=C 
        "contains Q*C or Q**T*C or C*Q**T or C*Q";

      output Integer info;
    protected 
      Integer m=size(C, 1);
      Integer n=size(C, 2);
      Integer k=if side == "L" then m else n;
      Integer lda=if side == "L" then max(1, m) else max(1, n);
      Integer ldc=max(1, m);
      Integer lwork=if side == "L" then max(1, n) else max(1, m);
      Real work[lwork];

    external "Fortran 77" dormqr(
        side,
        trans,
        m,
        n,
        k,
        A,
        lda,
        tau,
        Cout,
        ldc,
        work,
        lwork,
        info);

    end dormqr;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dtrevc
========================================================================================================

**Compute the right and/or left eigenvectors of a real upper
quasi-triangular matrix T**

Information
-----------

    /*  DTREVC computes some or all of the right and/or left eigenvectors of

> a real upper quasi-triangular matrix T. Matrices of this type are
> produced by the Schur factorization of a real general matrix: A =
> Q*T*Q\*\*T, as computed by DHSEQR.
>
> The right eigenvector x and the left eigenvector y of T corresponding
> to an eigenvalue w are defined by:
>
> > T*x = w*x, (y**H)*T = w*(y**H)
>
> where y\*\*H denotes the conjugate transpose of y. The eigenvalues are
> not input to this routine, but are read directly from the diagonal
> blocks of T.
>
> This routine returns the matrices X and/or Y of right and left
> eigenvectors of T, or the products Q*X and/or Q*Y, where Q is an input
> matrix. If Q is the orthogonal factor that reduces a matrix A to Schur
> form T, then Q*X and Q*Y are the matrices of right and left
> eigenvectors of A.
>
> #### Arguments
>
> SIDE (input) CHARACTER\*1
>   ~ = 'R': compute right eigenvectors only; = 'L': compute left
>     eigenvectors only; = 'B': compute both right and left
>     eigenvectors.
>
> HOWMNY (input) CHARACTER\*1
>   ~ = 'A': compute all right and/or left eigenvectors; = 'B': compute
>     all right and/or left eigenvectors, backtransformed by the
>     matrices in VR and/or VL; = 'S': compute selected right and/or
>     left eigenvectors, as indicated by the logical array SELECT.
>
> SELECT (input/output) LOGICAL array, dimension (N)
>   ~ If HOWMNY = 'S', SELECT specifies the eigenvectors to be computed.
>     If w(j) is a real eigenvalue, the corresponding real eigenvector
>     is computed if SELECT(j) is .TRUE.. If w(j) and w(j+1) are the
>     real and imaginary parts of a complex eigenvalue, the
>     corresponding complex eigenvector is computed if either SELECT(j)
>     or SELECT(j+1) is .TRUE., and on exit SELECT(j) is set to .TRUE.
>     and SELECT(j+1) is set to .FALSE.. Not referenced if HOWMNY = 'A'
>     or 'B'.
>
> N (input) INTEGER
>   ~ The order of the matrix T. N \>= 0.
>
> T (input) DOUBLE PRECISION array, dimension (LDT,N)
>   ~ The upper quasi-triangular matrix T in Schur canonical form.
>
> LDT (input) INTEGER
>   ~ The leading dimension of the array T. LDT \>= max(1,N).
>
> VL (input/output) DOUBLE PRECISION array, dimension (LDVL,MM)
>   ~ On entry, if SIDE = 'L' or 'B' and HOWMNY = 'B', VL must contain
>     an N-by-N matrix Q (usually the orthogonal matrix Q of Schur
>     vectors returned by DHSEQR). On exit, if SIDE = 'L' or 'B', VL
>     contains: if HOWMNY = 'A', the matrix Y of left eigenvectors of T;
>     if HOWMNY = 'B', the matrix Q\*Y; if HOWMNY = 'S', the left
>     eigenvectors of T specified by SELECT, stored consecutively in the
>     columns of VL, in the same order as their eigenvalues. A complex
>     eigenvector corresponding to a complex eigenvalue is stored in two
>     consecutive columns, the first holding the real part, and the
>     second the imaginary part. Not referenced if SIDE = 'R'.
>
> LDVL (input) INTEGER
>   ~ The leading dimension of the array VL. LDVL \>= 1, and if SIDE =
>     'L' or 'B', LDVL \>= N.
>
> VR (input/output) DOUBLE PRECISION array, dimension (LDVR,MM)
>   ~ On entry, if SIDE = 'R' or 'B' and HOWMNY = 'B', VR must contain
>     an N-by-N matrix Q (usually the orthogonal matrix Q of Schur
>     vectors returned by DHSEQR). On exit, if SIDE = 'R' or 'B', VR
>     contains: if HOWMNY = 'A', the matrix X of right eigenvectors of
>     T; if HOWMNY = 'B', the matrix Q\*X; if HOWMNY = 'S', the right
>     eigenvectors of T specified by SELECT, stored consecutively in the
>     columns of VR, in the same order as their eigenvalues. A complex
>     eigenvector corresponding to a complex eigenvalue is stored in two
>     consecutive columns, the first holding the real part and the
>     second the imaginary part. Not referenced if SIDE = 'L'.
>
> LDVR (input) INTEGER
>   ~ The leading dimension of the array VR. LDVR \>= 1, and if SIDE =
>     'R' or 'B', LDVR \>= N.
>
> MM (input) INTEGER
>   ~ The number of columns in the arrays VL and/or VR. MM \>= M.
>
> M (output) INTEGER
>   ~ The number of columns in the arrays VL and/or VR actually used to
>     store the eigenvectors. If HOWMNY = 'A' or 'B', M is set to N.
>     Each selected real eigenvector occupies one column and each
>     selected complex eigenvector occupies two columns.
>
> WORK (workspace) DOUBLE PRECISION array, dimension (3\*N)
>
> INFO (output) INTEGER
>   ~ = 0: successful exit < 0: if INFO = -i, the i-th argument had an
>     illegal value
>
> #### Further Details
>
> The algorithm used in this program is basically backward (forward)
> substitution, with scaling to make the the code robust against
> possible overflow.
>
> Each eigenvector is normalized so that the element of largest
> magnitude has magnitude 1; here the magnitude of a complex number
> (x,y) is taken to be |x| + |y|.
>
> > * * * * *

Inputs
------

  --------------------------------------------------------------------------
  Type    Name                Default Description
  ------- ------------------- ------- --------------------------------------
  Real    T[:, size(T, 1)]            Upper quasie triangular matrix

  String  side                "R"     Specify which eigenvectors

  String  howmny              "B"     Specify how many eigenvectors

  Real    Q[size(T, 1),               Orthogonal matrix Q of Schur vectors
          size(T, 1)]                 returned by DHSEQR
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type      Name                              Description
  --------- --------------------------------- ----------------------------
  Real      lEigenVectors[size(T, 1), size(T, left eigenvectors of matrix
            1)]                               T

  Real      rEigenVectors[size(T, 1), size(T, right eigenvectors of matrix
            1)]                               T

  Integer   info                              
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dtrevc 
      "Compute the right and/or left eigenvectors of a real upper quasi-triangular matrix T"
      input Real T[:,size(T, 1)] "Upper quasie triangular matrix";
      input String side="R" "Specify which eigenvectors";
      input String howmny="B" "Specify how many eigenvectors";
      input Real Q[size(T, 1),size(T, 1)] 
        "Orthogonal matrix Q of Schur vectors returned by DHSEQR";

      output Real lEigenVectors[size(T, 1),size(T, 1)]=Q 
        "left eigenvectors of matrix T";
      output Real rEigenVectors[size(T, 1),size(T, 1)]=Q 
        "right eigenvectors of matrix T";
      output Integer info;

    protected 
      Integer n=size(T, 1);
      Boolean select[n];
      Integer ldt=max(1, n);
      Integer ldvl=max(1, n);
      Integer ldvr=max(1, n);
      Real work[3*n];

    external "Fortran 77" dtrevc(
        side,
        howmny,
        select,
        n,
        T,
        ldt,
        lEigenVectors,
        ldvl,
        rEigenVectors,
        ldvr,
        n,
        n,
        work,
        info);

    end dtrevc;

* * * * *

![image105](Modelica.Math.Matrices.LAPACK.dpotrfI.png) [Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dpotrf
===============================================================================================================================================================

**Computes the Cholesky factorization of a real symmetric positive
definite matrix A**

Information
-----------

    Lapack documentation
        Purpose
        =======

        DPOTRF computes the Cholesky factorization of a real symmetric
        positive definite matrix A.

        The factorization has the form
           A = U**T * U,  if UPLO = 'U', or
           A = L  * L**T,  if UPLO = 'L',
        where U is an upper triangular matrix and L is lower triangular.

        This is the block version of the algorithm, calling Level 3 BLAS.

        Arguments
        =========

        UPLO    (input) CHARACTER*1
                = 'U':  Upper triangle of A is stored;
                = 'L':  Lower triangle of A is stored.

        N       (input) INTEGER
                The order of the matrix A.  N >= 0.

        A       (input/output) DOUBLE PRECISION array, dimension (LDA,N)
                On entry, the symmetric matrix A.  If UPLO = 'U', the leading
                N-by-N upper triangular part of A contains the upper
                triangular part of the matrix A, and the strictly lower
                triangular part of A is not referenced.  If UPLO = 'L', the
                leading N-by-N lower triangular part of A contains the lower
                triangular part of the matrix A, and the strictly upper
                triangular part of A is not referenced.

                On exit, if INFO = 0, the factor U or L from the Cholesky
                factorization A = U**T*U or A = L*L**T.

        LDA     (input) INTEGER
                The leading dimension of the array A.  LDA >= max(1,N).

        INFO    (output) INTEGER
                = 0:  successful exit
                < 0:  if INFO = -i, the i-th argument had an illegal value
                > 0:  if INFO = i, the leading minor of order i is not
                      positive definite, and the factorization could not be
                      completed.

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  --------------------------------------------------------------------------
  Type      Name             Default   Description
  --------- ---------------- --------- -------------------------------------
  Real      A[:, size(A, 1)]           Real symmetric positive definite
                                       matrix A

  Boolean   upper            true      True if the upper triangle of A is
                                       provided
  --------------------------------------------------------------------------

Outputs
-------

  Type         Name                                   Description
  ------------ -------------------------------------- --------------------
  Real         Acholesky[size(A, 1), size(A, 1)]      Cholesky factor
  Integer      info                                   

Modelica definition
-------------------

    function dpotrf 
      "Computes the Cholesky factorization of a real symmetric positive definite matrix A"

      extends Modelica.Icons.Function;
      input Real A[:, size(A,1)] "Real symmetric positive definite matrix A";
      input Boolean upper=true "True if the upper triangle of A is provided";

      output Real Acholesky[size(A,1),size(A,1)]=A "Cholesky factor";
      output Integer info;
    protected 
      String uplo=if upper then "U" else "L";
      Integer n=size(A,1);
      Integer lda=max(1,n);
      external "FORTRAN 77" dpotrf(uplo, n, Acholesky, lda, info);


    end dpotrf;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dtrsm
=======================================================================================================

**Solve one of the matrix equations op( A )\*X = alpha\*B, or X\*op( A )
= alpha\*B, where A is triangular matrix. BLAS routine**

Information
-----------

::

> Purpose
>   ~ ======= DTRSM solves one of the matrix equations op( A )*X =
>     alpha*B, or X*op( A ) = alpha*B, where alpha is a scalar, X and B
>     are m by n matrices, A is a unit, or non-unit, upper or lower
>     triangular matrix and op( A ) is one of op( A ) = A or op( A ) =
>     A'. The matrix X is overwritten on B. Arguments ========== SIDE -
>     CHARACTER*1. On entry, SIDE specifies whether op( A ) appears on
>     the left or right of X as follows: SIDE = 'L' or 'l' op( A )*X =
>     alpha*B. SIDE = 'R' or 'r' X*op( A ) = alpha*B. Unchanged on exit.
>     UPLO - CHARACTER*1. On entry, UPLO specifies whether the matrix A
>     is an upper or lower triangular matrix as follows: UPLO = 'U' or
>     'u' A is an upper triangular matrix. UPLO = 'L' or 'l' A is a
>     lower triangular matrix. Unchanged on exit. TRANSA - CHARACTER*1.
>     On entry, TRANSA specifies the form of op( A ) to be used in the
>     matrix multiplication as follows: TRANSA = 'N' or 'n' op( A ) = A.
>     TRANSA = 'T' or 't' op( A ) = A'. TRANSA = 'C' or 'c' op( A ) =
>     A'. Unchanged on exit. DIAG - CHARACTER*1. On entry, DIAG
>     specifies whether or not A is unit triangular as follows: DIAG =
>     'U' or 'u' A is assumed to be unit triangular. DIAG = 'N' or 'n' A
>     is not assumed to be unit triangular. Unchanged on exit. M -
>     INTEGER. On entry, M specifies the number of rows of B. M must be
>     at least zero. Unchanged on exit. N - INTEGER. On entry, N
>     specifies the number of columns of B. N must be at least zero.
>     Unchanged on exit. ALPHA - DOUBLE PRECISION. On entry, ALPHA
>     specifies the scalar alpha. When alpha is zero then A is not
>     referenced and B need not be set before entry. Unchanged on exit.
>     A - DOUBLE PRECISION array of DIMENSION ( LDA, k ), where k is m
>     when SIDE = 'L' or 'l' and is n when SIDE = 'R' or 'r'. Before
>     entry with UPLO = 'U' or 'u', the leading k by k upper triangular
>     part of the array A must contain the upper triangular matrix and
>     the strictly lower triangular part of A is not referenced. Before
>     entry with UPLO = 'L' or 'l', the leading k by k lower triangular
>     part of the array A must contain the lower triangular matrix and
>     the strictly upper triangular part of A is not referenced. Note
>     that when DIAG = 'U' or 'u', the diagonal elements of A are not
>     referenced either, but are assumed to be unity. Unchanged on exit.
>     LDA - INTEGER. On entry, LDA specifies the first dimension of A as
>     declared in the calling (sub) program. When SIDE = 'L' or 'l' then
>     LDA must be at least max( 1, m ), when SIDE = 'R' or 'r' then LDA
>     must be at least max( 1, n ). Unchanged on exit. B - DOUBLE
>     PRECISION array of DIMENSION ( LDB, n ). Before entry, the leading
>     m by n part of the array B must contain the right-hand side matrix
>     B, and on exit is overwritten by the solution matrix X. LDB -
>     INTEGER. On entry, LDB specifies the first dimension of B as
>     declared in the calling (sub) program. LDB must be at least max(
>     1, m ). Unchanged on exit. Level 3 Blas routine.
>
Inputs
------

  ------------------------------------------------------------------------
  Type   Name       Defaul Description
                    t      
  ------ ---------- ------ -----------------------------------------------
  Real   A[:, :]           Input matrix A

  Real   B[:, :]           Input matrix B

  Real   alpha      1      Factor alpha

  Boolea right      true   True if A is right multiplication
  n                        

  Boolea upper      true   True if A is upper triangular
  n                        

  Boolea trans      false  True if op(A) means transposed(A)
  n                        

  Boolea unitTriang false  True if A is unit triangular, i.e., all
  n      ular              diagonal elements of A are equal to 1
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type   Name                  Description
  ------ --------------------- -------------------------------------------
  Real   X[size(B, 1), size(B, Matrix Bout=alpha\*op( A )\*B, or B :=
         2)]                   alpha\*B\*op( A )
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dtrsm 
      "Solve one of the matrix equations  op( A )*X = alpha*B,   or   X*op( A ) = alpha*B, where A is triangular matrix. BLAS routine"

      input Real A[:,:] "Input matrix A";
      input Real B[:,:] "Input matrix B";
      input Real alpha=1 "Factor alpha";
      input Boolean right=true "True if A is right multiplication";
      input Boolean upper=true "True if A is upper triangular";
      input Boolean trans=false "True if op(A) means transposed(A)";
      input Boolean unitTriangular=false 
        "True if A is unit triangular, i.e., all diagonal elements of A are equal to 1";

      output Real X[size(B,1),size(B,2)]=B 
        "Matrix Bout=alpha*op( A )*B,   or   B := alpha*B*op( A )";
    protected 
      String side=if right then "R" else "L";
      String uplo=if upper then "U" else "L";
      String transA=if trans then "T" else "N";
      String diag=if unitTriangular then "U" else "N";
      Integer m=size(B, 1) "Number of rows of B";
      Integer n=size(B, 2) "Number of columns of B";
      Integer lda=if right then max(1,n) else max(1,m) "First dimension of A";
      Integer ldb=max(1,m) "First dimension of B";

    external "Fortran 77" dtrsm(side, uplo, transA, diag, m, n, alpha, A, lda, X, ldb);

    end dtrsm;

* * * * *

[Modelica.Math.Matrices.LAPACK](Modelica_Math_Matrices_LAPACK.html#Modelica.Math.Matrices.LAPACK).dorghr
========================================================================================================

**Generates a real orthogonal matrix Q which is defined as the product
of IHI-ILO elementary reflectors of order N, as returned by DGEHRD**

Information
-----------

::

> #### Purpose
>
> DORGHR generates a real orthogonal matrix Q which is defined as the
> product of IHI-ILO elementary reflectors of order N, as returned by
> DGEHRD:
>
> Q = H(ilo) H(ilo+1) . . . H(ihi-1).
>
> #### Arguments
>
> N (input) INTEGER
>   ~ The order of the matrix Q. N \>= 0.
>
> ILO (input) INTEGER IHI (input) INTEGER ILO and IHI must have the same
> values as in the previous call of DGEHRD. Q is equal to the unit
> matrix except in the submatrix Q(ilo+1:ihi,ilo+1:ihi). 1 <= ILO <= IHI
> <= N, if N \> 0; ILO=1 and IHI=0, if N=0.
>
> A (input/output) DOUBLE PRECISION array, dimension (LDA,N)
>   ~ On entry, the vectors which define the elementary reflectors, as
>     returned by DGEHRD. On exit, the N-by-N orthogonal matrix Q.
>
> LDA (input) INTEGER
>   ~ The leading dimension of the array A. LDA \>= max(1,N).
>
> TAU (input) DOUBLE PRECISION array, dimension (N-1)
>   ~ TAU(i) must contain the scalar factor of the elementary reflector
>     H(i), as returned by DGEHRD.
>
> WORK (workspace/output) DOUBLE PRECISION array, dimension
> (MAX(1,LWORK))
>   ~ On exit, if INFO = 0, WORK(1) returns the optimal LWORK.
>
> LWORK (input) INTEGER
>   ~ The dimension of the array WORK. LWORK \>= IHI-ILO. For optimum
>     performance LWORK \>= (IHI-ILO)\*NB, where NB is the optimal
>     blocksize.
>
>     If LWORK = -1, then a workspace query is assumed; the routine only
>     calculates the optimal size of the WORK array, returns this value
>     as the first entry of the WORK array, and no error message related
>     to LWORK is issued by XERBLA.
>
> INFO (output) INTEGER
>   ~ = 0: successful exit < 0: if INFO = -i, the i-th argument had an
>     illegal value
>
> * * * * *

Inputs
------

  -------------------------------------------------------------------------
  Type Name         Defau Description
                    lt    
  ---- ------------ ----- -------------------------------------------------
  Real A[:, size(A,       Square matrix with the elementary reflectors
       1)]                

  Inte ilo          1     lowest index where the original matrix had been
  ger                     Hessenbergform - ilo must have the same value as
                          in the previous call of DGEHRD

  Inte ihi          size( highest index where the original matrix had been
  ger               A,    Hessenbergform - ihi must have the same value as
                    1)    in the previous call of DGEHRD

  Real tau[max(0,         scalar factors of the elementary reflectors
       size(A, 1) -       
       1)]                
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type     Name                   Description
  -------- ---------------------- ----------------------------------------
  Real     Aout[size(A, 1),       Orthogonal matrix as a result of
           size(A, 2)]            elementary reflectors

  Integer  info                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function dorghr 
      "Generates a real orthogonal matrix Q which is defined as the product of IHI-ILO elementary reflectors of order N, as returned by DGEHRD"

      input Real A[:,size(A, 1)] "Square matrix with the elementary reflectors";
      input Integer ilo=1 
        "lowest index where the original matrix had been Hessenbergform - ilo must have the same value as in the previous call of DGEHRD";
      input Integer ihi=size(A, 1) 
        "highest index where the original matrix had been Hessenbergform  - ihi must have the same value as in the previous call of DGEHRD";
      input Real tau[max(0,size(A, 1) - 1)] 
        "scalar factors of the elementary reflectors";
      output Real Aout[size(A, 1),size(A, 2)]=A 
        "Orthogonal matrix as a result of elementary reflectors";
      output Integer info;
    protected 
      Integer n=size(A, 1);
      Integer lda=max(1, n);
      Integer lwork=max(1, 3*n);
      Real work[lwork];

    external "Fortran 77" dorghr(
        n,
        ilo,
        ihi,
        Aout,
        lda,
        tau,
        work,
        lwork,
        info);

    end dorghr;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:48 2010.
