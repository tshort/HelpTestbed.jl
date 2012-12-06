% Modelica.Math.BooleanVectors
% 
% 

[Modelica.Math](Modelica_Math.html#Modelica.Math).BooleanVectors
================================================================

**Library of functions operating on Boolean vectors**

Information
-----------

::

This library provides functions operating on vectors that have a Boolean
vector as input argument.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                     Description
  ---------------------------------------- -------------------------------
  ![image4](Modelica.Math.BooleanVectors.a Returns true, if all elements
  llTrueS.png)                             of the Boolean input vector are
  [allTrue](Modelica_Math_BooleanVectors.h true ('and')
  tml#Modelica.Math.BooleanVectors.allTrue 
  )                                        

  ![image5](Modelica.Math.BooleanVectors.a Returns true, if at least on
  llTrueS.png)                             element of the Boolean input
  [anyTrue](Modelica_Math_BooleanVectors.h vector is true ('or')
  tml#Modelica.Math.BooleanVectors.anyTrue 
  )                                        

  ![image6](Modelica.Math.BooleanVectors.a Returns true, if exactly one
  llTrueS.png)                             element of the Boolean input
  [oneTrue](Modelica_Math_BooleanVectors.h vector is true ('xor')
  tml#Modelica.Math.BooleanVectors.oneTrue 
  )                                        

  ![image7](Modelica.Math.BooleanVectors.f Returns the index of the first
  irstTrueIndexS.png)                      element of the Boolean vector
  [firstTrueIndex](Modelica_Math_BooleanVe that is true and returns 0, if
  ctors.html#Modelica.Math.BooleanVectors. no element is true
  firstTrueIndex)                          
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Math.BooleanVectors.allTrueI.png) [Modelica.Math.BooleanVectors](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors).allTrue
===========================================================================================================================================================

**Returns true, if all elements of the Boolean input vector are true
('and')**

Information
-----------

::

### Syntax

>     allTrue(b);

### Description

Returns **true** if all elements of the Boolean input vector b are
**true**. Otherwise the function returns **false**. If b is an empty
vector, i.e., size(b,1)=0, the function returns **false**.

### Example

>     Boolean b1[3] = {true, true, true};
>     Boolean b2[3] = {false, true, false};
>     Boolean r1, r2;
>
> > algorithm
> >   ~ r1 = allTrue(b1); // r1 = true r2 = allTrue(b2); // r2 = false
> >
### See also

[anyTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.anyTrue),
[oneTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.oneTrue),
[firstTrueIndex](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.firstTrueIndex).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name      Default      Description
  ------------ --------- ------------ -------------------
  Boolean      b[:]                   Boolean vector

Outputs
-------

  Type         Name        Description
  ------------ ----------- ------------------------------------------
  Boolean      result      = true, if all elements of b are true

Modelica definition
-------------------

    function allTrue 
      "Returns true, if all elements of the Boolean input vector are true ('and')"
      extends Modelica.Icons.Function;
      input Boolean b[:] "Boolean vector";
      output Boolean result "= true, if all elements of b are true";
    algorithm 
      result := size(b,1) > 0;
      for i in 1:size(b,1) loop
         result := result and b[i];
      end for;
    end allTrue;

* * * * *

![image9](Modelica.Math.BooleanVectors.allTrueI.png) [Modelica.Math.BooleanVectors](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors).anyTrue
===========================================================================================================================================================

**Returns true, if at least on element of the Boolean input vector is
true ('or')**

Information
-----------

::

### Syntax

>     anyTrue(b);

### Description

Returns **true** if at least one elements of the input Boolean vector b
is **true**. Otherwise the function returns **false**. If b is an empty
vector, i.e., size(b,1)=0, the function returns **false**.

### Example

>     Boolean b1[3] = {false, false, false};
>     Boolean b2[3] = {false, true, false};
>     Boolean r1, r2;
>
> > algorithm
> >   ~ r1 = anyTrue(b1); // r1 = false r2 = anyTrue(b2); // r2 = true
> >
### See also

[allTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.allTrue),
[oneTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.oneTrue),
[firstTrueIndex](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.firstTrueIndex).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------
  Boolean      b[:]                   

Outputs
-------

  Type         Name        Description
  ------------ ----------- ----------------
  Boolean      result      

Modelica definition
-------------------

    function anyTrue 
      "Returns true, if at least on element of the Boolean input vector is true ('or')"

      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    algorithm 
      result := false;
      for i in 1:size(b,1) loop
         result := result or b[i];
      end for;
    end anyTrue;

* * * * *

![image10](Modelica.Math.BooleanVectors.allTrueI.png) [Modelica.Math.BooleanVectors](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors).oneTrue
============================================================================================================================================================

**Returns true, if exactly one element of the Boolean input vector is
true ('xor')**

Information
-----------

::

### Syntax

>     oneTrue(b);

### Description

Returns **true** if exactly one element of the input Boolean vector b is
**true**. Otherwise the function returns **false**. If b is an empty
vector, i.e., size(b,1)=0, the function returns **false**.

### Example

>     Boolean b1[3] = {false, false, false};
>     Boolean b2[3] = {false, true, false};
>     Boolean b3[3] = {false, true, true};
>     Boolean r1, r2, r3;
>
> > algorithm
> >   ~ r1 = oneTrue(b1); // r1 = false r2 = oneTrue(b2); // r2 = true
> >     r3 = oneTrue(b3); // r3 = false
> >
### See also

[allTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.allTrue),
[anyTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.anyTrue),
[firstTrueIndex](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.firstTrueIndex).

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------
  Boolean      b[:]                   

Outputs
-------

  Type         Name        Description
  ------------ ----------- ----------------
  Boolean      result      

Modelica definition
-------------------

    function oneTrue 
      "Returns true, if exactly one element of the Boolean input vector is true ('xor')"

      extends Modelica.Icons.Function;
      input Boolean b[:];
      output Boolean result;
    protected 
      Integer count = 0;
    algorithm 
      for i in 1:size(b,1) loop
         count := if b[i] then count+1 else count;
      end for;
      result :=count == 1;
    end oneTrue;

* * * * *

[Modelica.Math.BooleanVectors](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors).firstTrueIndex
=============================================================================================================

**Returns the index of the first element of the Boolean vector that is
true and returns 0, if no element is true**

Information
-----------

::

### Syntax

>     firstTrueIndex(b);

### Description

Returns the index of the first element of the Boolean vector b that is
**true** and returns 0, if no element is **true**" If b is an empty
vector, i.e., size(b,1)=0, the function returns 0.

### Example

>     Boolean b1[3] = {false, false, false};
>     Boolean b2[3] = {false, true, false};
>     Boolean b3[4] = {false, true, false, true};
>     Integer r1, r2, r3;
>
> > algorithm
> >   ~ r1 = firstTrueIndex(b1); // r1 = 0 r2 = firstTrueIndex(b2); //
> >     r2 = 2 r3 = firstTrueIndex(b3); // r3 = 2
> >
### See also

[allTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.allTrue),
[anyTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.anyTrue),
[oneTrue](Modelica_Math_BooleanVectors.html#Modelica.Math.BooleanVectors.oneTrue).

::

Inputs
------

  Type         Name      Default      Description
  ------------ --------- ------------ ----------------
  Boolean      b[:]                   

Outputs
-------

  Type         Name       Description
  ------------ ---------- ----------------
  Integer      index      

Modelica definition
-------------------

    function firstTrueIndex 
      "Returns the index of the first element of the Boolean vector that is true and returns 0, if no element is true"
       input Boolean b[:];
       output Integer index;
    algorithm 
       index :=0;
       for i in 1:size(b,1) loop
          if b[i] then
             index :=i;
             return;
          end if;
       end for;
    end firstTrueIndex;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
