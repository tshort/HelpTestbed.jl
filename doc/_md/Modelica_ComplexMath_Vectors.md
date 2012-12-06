% Modelica.ComplexMath.Vectors
% 
% 

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).Vectors
==============================================================================

**Library of functions operating on complex vectors**

Information
-----------

::

This library provides functions operating on vectors of Complex numbers.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                      Description
  ----------------------------------------- ------------------------------
  ![image5](Modelica.ComplexMath.sinS.png)  Returns the p-norm of a
  [norm](Modelica_ComplexMath_Vectors.html# complex vector
  Modelica.ComplexMath.Vectors.norm)        

  ![image6](Modelica.ComplexMath.sinS.png)  Return length of a complex
  [length](Modelica_ComplexMath_Vectors.htm vector
  l#Modelica.ComplexMath.Vectors.length)    

  ![image7](Modelica.ComplexMath.sinS.png)  Return normalized complex
  [normalize](Modelica_ComplexMath_Vectors. vector such that length = 1
  html#Modelica.ComplexMath.Vectors.normali and prevent zero-division for
  ze)                                       zero vector

  ![image8](Modelica.ComplexMath.Vectors.re Reverse vector elements (e.g.,
  verseS.png)                               v[1] becomes last element)
  [reverse](Modelica_ComplexMath_Vectors.ht 
  ml#Modelica.ComplexMath.Vectors.reverse)  

  ![image9](Modelica.ComplexMath.Vectors.so Sort elements of complex
  rtS.png)                                  vector
  [sort](Modelica_ComplexMath_Vectors.html# 
  Modelica.ComplexMath.Vectors.sort)        
  ------------------------------------------------------------------------

* * * * *

[Modelica.ComplexMath.Vectors](Modelica_ComplexMath_Vectors.html#Modelica.ComplexMath.Vectors).norm
===================================================================================================

**Returns the p-norm of a complex vector**

Information
-----------

::

### Syntax

>     Vectors.norm(v);
>     Vectors.norm(v,p=2);   // 1 ≤ p ≤ ∞

### Description

The function call "`Vectors.norm(v)`" returns the **Euclidean norm**
"`sqrt(v*v)`" of vector v. With the optional second argument "p", any
other p-norm can be computed:

Besides the Euclidean norm (p=2), also the 1-norm and the infinity-norm
are sometimes used:

  ------------------- --------------- -------------------------------------
  **1-norm**          = sum(abs(v))   **norm**(v,1)

  **2-norm**          = sqrt(v\*v)    **norm**(v) or **norm**(v,2)

  **infinity-norm**   = max(abs(v))   **norm**(v,Modelica.Constants.**inf**
                                      )
  ------------------- --------------- -------------------------------------

Note, for any vector norm the following inequality holds:

>     norm(v1+v2,p) ≤ norm(v1,p) + norm(v2,p)

### Example

>     v = {2, -4, -2, -1};
>     norm(v,1);    // = 9
>     norm(v,2);    // = 5
>     norm(v);      // = 5
>     norm(v,10.5); // = 4.00052597412635
>     norm(v,Modelica.Constants.inf);  // = 4

### See also

[Matrices.norm](Modelica_Math_Matrices.html#Modelica.Math.Matrices.norm)

::

Inputs
------

  --------------------------------------------------------------------------
  Type                             Name Defau Description
                                        lt    
  -------------------------------- ---- ----- ------------------------------
  [Complex](../../../Modelica/Libr v[:]       Vector
  ary/help/Complex.html#Complex)              

  Real                             p    2     Type of p-norm (often used: 1,
                                              2, or Modelica.Constants.inf)
  --------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- -----------------------
  Real      result      p-norm of vector v

Modelica definition
-------------------

    function norm "Returns the p-norm of a complex vector"
      input Complex v[:] "Vector";
      input Real p(min=1) = 2 
        "Type of p-norm (often used: 1, 2, or Modelica.Constants.inf)";
      output Real result "p-norm of vector v";

    algorithm 
      if p == 2 then
        result:= sqrt(sum(v[i].re^2 + v[i].im^2 for i in 1:size(v,1)));
      elseif p == Modelica.Constants.inf then
        result:= ComplexMath.'abs'(ComplexMath.'max'(v));
      elseif p == 1 then
        result:= sum(ComplexMath.'abs'(v[i]) for i in 1:size(v,1));
      else
        result:=(sum(ComplexMath.'abs'(v[i])^p for i in 1:size(v, 1)))^(1/p);
      end if;

    end norm;

* * * * *

[Modelica.ComplexMath.Vectors](Modelica_ComplexMath_Vectors.html#Modelica.ComplexMath.Vectors).length
=====================================================================================================

**Return length of a complex vector**

Information
-----------

::

### Syntax

>     Vectors.length(v);

### Description

The function call "`Vectors.length(v)`" returns the **Euclidean length**
"`sqrt(v*v)`" of vector v. The function call is equivalent to
Vectors.norm(v). The advantage of length(v) over norm(v)"is that
function length(..) is implemented in one statement and therefore the
function is usually automatically inlined. Further symbolic processing
is therefore possible, which is not the case with function norm(..).

### Example

>     v = {2, -4, -2, -1};
>     length(v);  // = 5

### See also

[Vectors.norm](Modelica_Math_Vectors.html#Modelica.Math.Vectors.norm)

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name   Default  Descriptio
                                                                 n
  ---------------------------------------------- ------ -------- ----------
  [Complex](../../../Modelica/Library/help/Compl v[:]            Vector
  ex.html#Complex)                                               
  -------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- -----------------------
  Real      result      Length of vector v

Modelica definition
-------------------

    function length "Return length of a complex vector"
      input Complex v[:] "Vector";
      output Real result "Length of vector v";

    algorithm 
      result := sqrt(sum({v[i].re^2 + v[i].im^2 for i in 1:size(v,1)}));
    end length;

* * * * *

[Modelica.ComplexMath.Vectors](Modelica_ComplexMath_Vectors.html#Modelica.ComplexMath.Vectors).normalize
========================================================================================================

**Return normalized complex vector such that length = 1 and prevent
zero-division for zero vector**

Information
-----------

::

### Syntax

>     Vectors.normalize(v);
>     Vectors.normalize(v,eps=100*Modelica.Constants.eps);

### Description

The function call "`Vectors.normalize(v)`" returns the **unit vector**
"`v/length(v)`" of vector v. If length(v) is close to zero (more
precisely, if length(v) < eps), v is returned in order to avoid a
division by zero. For many applications this is useful, because often
the unit vector **e** = **v**/length(**v**) is used to compute a vector
x\***e**, where the scalar x is in the order of length(**v**), i.e.,
x\***e** is small, when length(**v**) is small and then it is fine to
replace **e** by **v** to avoid a division by zero.

Since the function is implemented in one statement, it is usually
inlined and therefore symbolic processing is possible.

### Example

>     normalize({1,2,3});  // = {0.267, 0.534, 0.802}
>     normalize({0,0,0});  // = {0,0,0}

### See also

[Vectors.length](Modelica_Math_Vectors.html#Modelica.Math.Vectors.length)

::

Inputs
------

  -------------------------------------------------------------------------
  Type                               Name Default         Description
  ---------------------------------- ---- --------------- -----------------
  [Complex](../../../Modelica/Librar v[:]                 Vector
  y/help/Complex.html#Complex)                            

  Real                               eps  100\*Modelica.C if |v| < eps then
                                          onstants.eps    result = v
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                  Name         Description
  ------------------------------------- ------------ ----------------------
  [Complex](../../../Modelica/Library/h result[size( Input vector v
  elp/Complex.html#Complex)             v,           normalized to length=1
                                        1)]          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function normalize 
      "Return normalized complex vector such that length = 1 and prevent zero-division for zero vector"
      input Complex v[:] "Vector";
      input Real eps = 100*Modelica.Constants.eps "if |v| < eps then result = v";
      output Complex result[size(v, 1)] "Input vector v normalized to length=1";

    protected 
      Real length_v = length(v);
    algorithm 
      if length_v >= eps then
         for i in 1:size(v,1) loop
             result[i] :=v[i].re/length_v + (v[i].im/length_v)*j;
         end for;
      else
         result :=v;
      end if;

    end normalize;

* * * * *

![image10](Modelica.ComplexMath.Vectors.reverseI.png) [Modelica.ComplexMath.Vectors](Modelica_ComplexMath_Vectors.html#Modelica.ComplexMath.Vectors).reverse
============================================================================================================================================================

**Reverse vector elements (e.g., v[1] becomes last element)**

Information
-----------

::

### Syntax

>     Vectors.reverse(v);

### Description

The function call "`Vectors.reverse(v)`" returns the complex vector
elements in reverse order.

### Example

>     reverse({1,2,3,4});  // = {4,3,2,1}

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                           Name   Default  Descriptio
                                                                 n
  ---------------------------------------------- ------ -------- ----------
  [Complex](../../../Modelica/Library/help/Compl v[:]            Vector
  ex.html#Complex)                                               
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                 Name         Description
  ------------------------------------ ------------ ----------------------
  [Complex](../../../Modelica/Library/ result[size( Elements of vector v
  help/Complex.html#Complex)           v,           in reversed order
                                       1)]          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function reverse 
      "Reverse vector elements (e.g., v[1] becomes last element)"
    extends Modelica.Icons.Function;

      input Complex v[:] "Vector";
      output Complex result[size(v, 1)] "Elements of vector v in reversed order";

    algorithm 
      result := {v[end-i+1] for i in 1:size(v,1)};
    end reverse;

* * * * *

[Modelica.ComplexMath.Vectors](Modelica_ComplexMath_Vectors.html#Modelica.ComplexMath.Vectors).sort
===================================================================================================

**Sort elements of complex vector**

Information
-----------

::

### Syntax

>     sorted_v = Vectors.sort(v);
>
> > (sorted\_v, indices) = Vectors.sort(v, ascending=true);

### Description

Function **sort**(..) sorts a Real vector v in ascending order and
returns the result in sorted\_v. If the optional argument "ascending" is
**false**, the vector is sorted in descending order. In the optional
second output argument the indices of the sorted vector with respect to
the original vector are given, such that sorted\_v = v[indices].

### Example

>     (v2, i2) := Vectors.sort({-1, 8, 3, 6, 2});
>          -> v2 = {-1, 2, 3, 6, 8}
>             i2 = {1, 5, 3, 4, 2}

::

Inputs
------

  -------------------------------------------------------------------------
  Type                    Name   Defa Description
                                 ult  
  ----------------------- ------ ---- -------------------------------------
  [Complex](../../../Mode v[:]        Vector to be sorted
  lica/Library/help/Compl             
  ex.html#Complex)                    

  Boolean                 ascend true = true if ascending order, otherwise
                          ing         descending order

  Boolean                 sortFr true = true, if sorting is first for
                          equenc      imaginary then for real value; =
                          y           false, if sorting is for absolute
                                      value
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                     Name            Description
  ---------------------------------------- --------------- ---------------
  [Complex](../../../Modelica/Library/help sorted\_v[size( Sorted vector
  /Complex.html#Complex)                   v,              
                                           1)]             

  Integer                                  indices[size(v, sorted\_v =
                                           1)]             v[indices]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function sort "Sort elements of complex vector"
      input Complex v[:] "Vector to be sorted";
      input Boolean ascending = true 
        "= true if ascending order, otherwise descending order";
      input Boolean sortFrequency=true 
        "= true, if sorting is first for imaginary then for real value; = false, if sorting is for absolute value";
      output Complex sorted_v[size(v,1)] = v "Sorted vector";
      output Integer indices[size(v,1)] = 1:size(v,1) "sorted_v = v[indices]";

      /* shellsort algorithm; should be improved later */
    protected 
      Integer gap;
      Integer i;
      Integer j;
      Complex wv;
      Integer wi;
      Integer nv = size(v,1);
      Boolean swap;
      Integer k1;
      Integer k2;
    algorithm 
      gap := div(nv,2);

      while gap > 0 loop
         i := gap;
         while i < nv loop
            j := i-gap;
            if j>=0 then
               k1 := j+1;
               k2 := j + gap + 1;
               if sortFrequency then
                  if ascending then
                     swap := abs(sorted_v[k1].im) >  abs(sorted_v[k2].im) or 
                             abs(sorted_v[k1].im) == abs(sorted_v[k2].im) and 
                             (sorted_v[k1].re  > sorted_v[k2].re or 
                              sorted_v[k1].re  == sorted_v[k2].re and sorted_v[k1].im < sorted_v[k2].im);
                  else
                     swap := abs(sorted_v[k1].im) <  abs(sorted_v[k2].im) or 
                             abs(sorted_v[k1].im) == abs(sorted_v[k2].im) and 
                             (sorted_v[k1].re  < sorted_v[k2].re or 
                              sorted_v[k1].re  == sorted_v[k2].re and sorted_v[k1].im < sorted_v[k2].im);
                  end if;
               else
                  if ascending then
                     swap := ComplexMath.'abs'(sorted_v[k1]) > ComplexMath.'abs'(sorted_v[k2]);
                  else
                     swap := ComplexMath.'abs'(sorted_v[k1]) < ComplexMath.'abs'(sorted_v[k2]);
                  end if;
               end if;
            else
               swap := false;
            end if;

            while swap loop
               wv := sorted_v[j+1];
               wi := indices[j+1];
               sorted_v[j+1] := sorted_v[j+gap+1];
               sorted_v[j+gap+1] := wv;
               indices[j+1] := indices[j+gap+1];
               indices[j+gap+1] := wi;
               j := j - gap;
               if j >= 0 then
                  k1 := j+1;
                  k2 := j + gap + 1;
                  if sortFrequency then
                     if ascending then
                        swap := abs(sorted_v[k1].im) >  abs(sorted_v[k2].im) or 
                                abs(sorted_v[k1].im) == abs(sorted_v[k2].im) and 
                                (sorted_v[k1].re  > sorted_v[k2].re or 
                                 sorted_v[k1].re  == sorted_v[k2].re and sorted_v[k1].im < sorted_v[k2].im);
                     else
                        swap := abs(sorted_v[k1].im) <  abs(sorted_v[k2].im) or 
                                abs(sorted_v[k1].im) == abs(sorted_v[k2].im) and 
                                (sorted_v[k1].re  < sorted_v[k2].re or 
                                 sorted_v[k1].re  == sorted_v[k2].re and sorted_v[k1].im < sorted_v[k2].im);
                     end if;
                  else
                     if ascending then
                        swap := ComplexMath.'abs'(sorted_v[k1]) > ComplexMath.'abs'(sorted_v[k2]);
                     else
                        swap := ComplexMath.'abs'(sorted_v[k1]) < ComplexMath.'abs'(sorted_v[k2]);
                     end if;
                  end if;
               else
                  swap := false;
               end if;
            end while;
            i := i + 1;
         end while;
         gap := div(gap,2);
      end while;

    end sort;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
