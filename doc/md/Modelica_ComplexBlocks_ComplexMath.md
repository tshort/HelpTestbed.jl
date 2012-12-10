% Modelica.ComplexBlocks.ComplexMath
% 
% 

[Modelica.ComplexBlocks](Modelica_ComplexBlocks.html#Modelica.ComplexBlocks).ComplexMath
========================================================================================

**Library of mathematical functions as input/output blocks**

Information
-----------

::

This package contains basic **mathematical operations**, such as
summation and multiplication, and basic **mathematical functions**, such
as **sqrt** and **sin**, as input/output blocks. All blocks of this
library can be either connected with continuous blocks or with
sampled-data blocks.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                              Description
  ------------------------------------------------- ----------------------
  ![image23](Modelica.ComplexBlocks.ComplexMath.Gai Output the product of
  nS.png)                                           a gain value with the
  [Gain](Modelica_ComplexBlocks_ComplexMath.html#Mo input signal
  delica.ComplexBlocks.ComplexMath.Gain)            

  ![image24](Modelica.ComplexBlocks.ComplexMath.Sum Output the sum of the
  S.png)                                            elements of the input
  [Sum](Modelica_ComplexBlocks_ComplexMath.html#Mod vector
  elica.ComplexBlocks.ComplexMath.Sum)              

  ![image25](Modelica.ComplexBlocks.ComplexMath.Fee Output difference
  dbackS.png)                                       between commanded and
  [Feedback](Modelica_ComplexBlocks_ComplexMath.htm feedback input
  l#Modelica.ComplexBlocks.ComplexMath.Feedback)    

  ![image26](Modelica.ComplexBlocks.ComplexMath.Add Output the sum of the
  S.png)                                            two inputs
  [Add](Modelica_ComplexBlocks_ComplexMath.html#Mod 
  elica.ComplexBlocks.ComplexMath.Add)              

  ![image27](Modelica.ComplexBlocks.ComplexMath.Add Output the sum of the
  3S.png)                                           three inputs
  [Add3](Modelica_ComplexBlocks_ComplexMath.html#Mo 
  delica.ComplexBlocks.ComplexMath.Add3)            

  ![image28](Modelica.ComplexBlocks.ComplexMath.Pro Output product of the
  ductS.png)                                        two inputs
  [Product](Modelica_ComplexBlocks_ComplexMath.html 
  #Modelica.ComplexBlocks.ComplexMath.Product)      

  ![image29](Modelica.ComplexBlocks.ComplexMath.Div Output first input
  isionS.png)                                       divided by second
  [Division](Modelica_ComplexBlocks_ComplexMath.htm input
  l#Modelica.ComplexBlocks.ComplexMath.Division)    

  ![image30](Modelica.ComplexBlocks.ComplexMath.Sqr Output the square root
  tS.png)                                           of the input (input
  [Sqrt](Modelica_ComplexBlocks_ComplexMath.html#Mo \>= 0 required)
  delica.ComplexBlocks.ComplexMath.Sqrt)            

  ![image31](Modelica.ComplexBlocks.ComplexMath.Sin Output the sine of the
  S.png)                                            input
  [Sin](Modelica_ComplexBlocks_ComplexMath.html#Mod 
  elica.ComplexBlocks.ComplexMath.Sin)              

  ![image32](Modelica.ComplexBlocks.ComplexMath.Cos Output the cosine of
  S.png)                                            the input
  [Cos](Modelica_ComplexBlocks_ComplexMath.html#Mod 
  elica.ComplexBlocks.ComplexMath.Cos)              

  ![image33](Modelica.ComplexBlocks.ComplexMath.Tan Output the tangent of
  S.png)                                            the input
  [Tan](Modelica_ComplexBlocks_ComplexMath.html#Mod 
  elica.ComplexBlocks.ComplexMath.Tan)              

  ![image34](Modelica.ComplexBlocks.ComplexMath.Asi Output the arc sine of
  nS.png)                                           the input
  [Asin](Modelica_ComplexBlocks_ComplexMath.html#Mo 
  delica.ComplexBlocks.ComplexMath.Asin)            

  ![image35](Modelica.ComplexBlocks.ComplexMath.Aco Output the arc cosine
  sS.png)                                           of the input
  [Acos](Modelica_ComplexBlocks_ComplexMath.html#Mo 
  delica.ComplexBlocks.ComplexMath.Acos)            

  ![image36](Modelica.ComplexBlocks.ComplexMath.Ata Output the arc tangent
  nS.png)                                           of the input
  [Atan](Modelica_ComplexBlocks_ComplexMath.html#Mo 
  delica.ComplexBlocks.ComplexMath.Atan)            

  ![image37](Modelica.ComplexBlocks.ComplexMath.Sin Output the hyperbolic
  hS.png)                                           sine of the input
  [Sinh](Modelica_ComplexBlocks_ComplexMath.html#Mo 
  delica.ComplexBlocks.ComplexMath.Sinh)            

  ![image38](Modelica.ComplexBlocks.ComplexMath.Cos Output the hyperbolic
  hS.png)                                           cosine of the input
  [Cosh](Modelica_ComplexBlocks_ComplexMath.html#Mo 
  delica.ComplexBlocks.ComplexMath.Cosh)            

  ![image39](Modelica.ComplexBlocks.ComplexMath.Tan Output the hyperbolic
  hS.png)                                           tangent of the input
  [Tanh](Modelica_ComplexBlocks_ComplexMath.html#Mo 
  delica.ComplexBlocks.ComplexMath.Tanh)            

  ![image40](Modelica.ComplexBlocks.ComplexMath.Exp Output the exponential
  S.png)                                            (base e) of the input
  [Exp](Modelica_ComplexBlocks_ComplexMath.html#Mod 
  elica.ComplexBlocks.ComplexMath.Exp)              

  ![image41](Modelica.ComplexBlocks.ComplexMath.Log Output the natural
  S.png)                                            (base e) logarithm of
  [Log](Modelica_ComplexBlocks_ComplexMath.html#Mod the input (input \> 0
  elica.ComplexBlocks.ComplexMath.Log)              required)

  ![image42](Modelica.ComplexBlocks.ComplexMath.Rea Converts cartesian
  lToComplexS.png)                                  representation to
  [RealToComplex](Modelica_ComplexBlocks_ComplexMat complex
  h.html#Modelica.ComplexBlocks.ComplexMath.RealToC 
  omplex)                                           

  ![image43](Modelica.ComplexBlocks.ComplexMath.Rea Converts polar
  lToComplexS.png)                                  representation to
  [PolarToComplex](Modelica_ComplexBlocks_ComplexMa complex
  th.html#Modelica.ComplexBlocks.ComplexMath.PolarT 
  oComplex)                                         

  ![image44](Modelica.ComplexBlocks.ComplexMath.Com Converts complex to
  plexToRealS.png)                                  cartesian
  [ComplexToReal](Modelica_ComplexBlocks_ComplexMat representation
  h.html#Modelica.ComplexBlocks.ComplexMath.Complex 
  ToReal)                                           

  ![image45](Modelica.ComplexBlocks.ComplexMath.Com Converts complex to
  plexToRealS.png)                                  polar representation
  [ComplexToPolar](Modelica_ComplexBlocks_ComplexMa 
  th.html#Modelica.ComplexBlocks.ComplexMath.Comple 
  xToPolar)                                         
  ------------------------------------------------------------------------

* * * * *

![image46](Modelica.ComplexBlocks.ComplexMath.GainI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Gain
==============================================================================================================================================================================

**Output the product of a gain value with the input signal**

Information
-----------

::

This block computes output *y* as *product* of gain *k* with the input
*u*:

    y = k * u;

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name Defaul Description
                                             t      
  ------------------------------------- ---- ------ -----------------------
  [Complex](../../../Modelica/Library/h k           Gain value multiplied
  elp/Complex.html#Complex)                         with input signal
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                   Name Description
  ------------------------------------------------------ ---- -------------
  input                                                  u    Input signal
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#      connector
  Modelica.ComplexBlocks.Interfaces.ComplexInput)             

  output                                                 y    Output signal
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html      connector
  #Modelica.ComplexBlocks.Interfaces.ComplexOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Gain "Output the product of a gain value with the input signal"

      parameter Complex k(re(start=1), im(start=0)) 
        "Gain value multiplied with input signal";
    public 
      Interfaces.ComplexInput u "Input signal connector";
      Interfaces.ComplexOutput y "Output signal connector";

    equation 
      y = k*u;
    end Gain;

* * * * *

![image47](Modelica.ComplexBlocks.ComplexMath.SumI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Sum
============================================================================================================================================================================

**Output the sum of the elements of the input vector**

Information
-----------

::

This blocks computes output **y** as *sum* of the elements of the input
signal vector **u**:

    y = u[1] + u[2] + ...;

Example:

    parameter:   nin = 3;

> results in the following equations:
>
> > y = u[1] + u[2] + u[3];

::

Extends from
[Interfaces.ComplexMISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexMISO)
(Multiple Input Single Output continuous control block).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                Name  Default        Description
  ----------------------------------- ----- -------------- ---------------
  Integer                             nin   1              Number of
                                                           inputs

  [Complex](../../../Modelica/Library k[nin fill(Complex(1 Optional: sum
  /help/Complex.html#Complex)         ]     ,              coefficients
                                            0), nin)       
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Name Description
  -------------------------------------------------- ---- ----------------
  input                                              u[ni Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h n]   Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput      signals
  )                                                       

  output                                             y    Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.      Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp      signal
  ut)                                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Sum "Output the sum of the elements of the input vector"
      extends Interfaces.ComplexMISO;
      parameter Complex k[nin]=fill(Complex(1,0), nin) "Optional: sum coefficients";
    equation 
      y = k*u;
    end Sum;

* * * * *

![image48](Modelica.ComplexBlocks.ComplexMath.FeedbackI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Feedback
======================================================================================================================================================================================

**Output difference between commanded and feedback input**

Information
-----------

::

This blocks computes output **y** as *difference* of the commanded input
**u1** and the feedback input **u2**:

    y = u1 - u2;

Example:

    parameter:   n = 2

> results in the following equations:
>
> > y = u1 - u2

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  input                                                       u1   
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Model      
  ica.ComplexBlocks.Interfaces.ComplexInput)                       

  input                                                       u2   
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Model      
  ica.ComplexBlocks.Interfaces.ComplexInput)                       

  output                                                      y    
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Mode      
  lica.ComplexBlocks.Interfaces.ComplexOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Feedback 
      "Output difference between commanded and feedback input"

      Interfaces.ComplexInput u1;
      Interfaces.ComplexInput u2;
      Interfaces.ComplexOutput y;

    equation 
      y = u1 - u2;
    end Feedback;

* * * * *

![image49](Modelica.ComplexBlocks.ComplexMath.AddI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Add
============================================================================================================================================================================

**Output the sum of the two inputs**

Information
-----------

::

This blocks computes output **y** as *sum* of the two input signals
**u1** and **u2**:

    y = k1*u1 + k2*u2;

Example:

    parameter:   k1= +2, k2= -3

> results in the following equations:
>
> > y = 2 \* u1 - 3 \* u2

::

Extends from
[Interfaces.ComplexSI2SO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSI2SO)
(2 Single Input / 1 Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name  Default    Description
  ----------------------------------------- ----- ---------- --------------
  [Complex](../../../Modelica/Library/help/ k1    Complex(1, Gain of upper
  Complex.html#Complex)                           0)         input

  [Complex](../../../Modelica/Library/help/ k2    Complex(1, Gain of lower
  Complex.html#Complex)                           0)         input
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              u1  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 1
  )                                                      

  input                                              u2  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 2
  )                                                      

  output                                             y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.     Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp     signal
  ut)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Add "Output the sum of the two inputs"
      extends Interfaces.ComplexSI2SO;
      parameter Complex k1=Complex(1,0) "Gain of upper input";
      parameter Complex k2=Complex(1,0) "Gain of lower input";

    equation 
      y = k1*u1 + k2*u2;
    end Add;

* * * * *

![image50](Modelica.ComplexBlocks.ComplexMath.Add3I.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Add3
==============================================================================================================================================================================

**Output the sum of the three inputs**

Information
-----------

::

This blocks computes output **y** as *sum* of the three input signals
**u1**, **u2** and **u3**:

    y = k1*u1 + k2*u2 + k3*u3;

Example:

    parameter:   k1= +2, k2= -3, k3=1;

> results in the following equations:
>
> > y = 2 \* u1 - 3 \* u2 + u3;

::

Extends from
[Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name  Default    Description
  ----------------------------------------- ----- ---------- --------------
  [Complex](../../../Modelica/Library/help/ k1    Complex(1, Gain of upper
  Complex.html#Complex)                           0)         input

  [Complex](../../../Modelica/Library/help/ k2    Complex(1, Gain of middle
  Complex.html#Complex)                           0)         input

  [Complex](../../../Modelica/Library/help/ k3    Complex(1, Gain of lower
  Complex.html#Complex)                           0)         input
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              u1  Connector 1 of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signals
  )                                                      

  input                                              u2  Connector 2 of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signals
  )                                                      

  input                                              u3  Connector 3 of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signals
  )                                                      

  output                                             y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.     Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp     signals
  ut)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Add3 "Output the sum of the three inputs"
      extends Blocks.Interfaces.BlockIcon;

      parameter Complex k1=Complex(1,0) "Gain of upper input";
      parameter Complex k2=Complex(1,0) "Gain of middle input";
      parameter Complex k3=Complex(1,0) "Gain of lower input";
      Interfaces.ComplexInput u1 "Connector 1 of Complex input signals";
      Interfaces.ComplexInput u2 "Connector 2 of Complex input signals";
      Interfaces.ComplexInput u3 "Connector 3 of Complex input signals";
      Interfaces.ComplexOutput y "Connector of Complex output signals";

    equation 
      y = k1*u1 + k2*u2 + k3*u3;
    end Add3;

* * * * *

![image51](Modelica.ComplexBlocks.ComplexMath.ProductI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Product
====================================================================================================================================================================================

**Output product of the two inputs**

Information
-----------

::

This blocks computes the output **y** (element-wise) as *product* of the
corresponding elements of the two inputs **u1** and **u2**:

    y = u1 * u2;

::

Extends from
[Interfaces.ComplexSI2SO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSI2SO)
(2 Single Input / 1 Single Output continuous control block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              u1  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 1
  )                                                      

  input                                              u2  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 2
  )                                                      

  output                                             y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.     Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp     signal
  ut)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Product "Output product of the two inputs"
      extends Interfaces.ComplexSI2SO;

    equation 
      y = u1*u2;
    end Product;

* * * * *

![image52](Modelica.ComplexBlocks.ComplexMath.DivisionI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Division
======================================================================================================================================================================================

**Output first input divided by second input**

Information
-----------

::

This block computes the output **y** (element-wise) by *dividing* the
corresponding elements of the two inputs **u1** and **u2**:

    y = u1 / u2;

::

Extends from
[Interfaces.ComplexSI2SO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSI2SO)
(2 Single Input / 1 Single Output continuous control block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              u1  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 1
  )                                                      

  input                                              u2  Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.h     Complex input
  tml#Modelica.ComplexBlocks.Interfaces.ComplexInput     signal 2
  )                                                      

  output                                             y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.     Complex output
  html#Modelica.ComplexBlocks.Interfaces.ComplexOutp     signal
  ut)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Division "Output first input divided by second input"
      extends Interfaces.ComplexSI2SO;

    equation 
      y = u1/u2;
    end Division;

* * * * *

![image53](Modelica.ComplexBlocks.ComplexMath.SqrtI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Sqrt
==============================================================================================================================================================================

**Output the square root of the input (input \>= 0 required)**

Information
-----------

::

This blocks computes the output **y** as *square root* of the input
**u**:

    y = sqrt( u );

All elements of the input vector shall be zero or positive. Otherwise an
error occurs.

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sqrt 
      "Output the square root of the input (input >= 0 required)"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.'sqrt'(u);
    end Sqrt;

* * * * *

![image54](Modelica.ComplexBlocks.ComplexMath.SinI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Sin
============================================================================================================================================================================

**Output the sine of the input**

Information
-----------

::

This blocks computes the output **y** as **sine** of the input **u**:

    y = sin( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sin "Output the sine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.sin(u);
    end Sin;

* * * * *

![image55](Modelica.ComplexBlocks.ComplexMath.CosI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Cos
============================================================================================================================================================================

**Output the cosine of the input**

Information
-----------

::

This blocks computes the output **y** as **cos** of the input **u**:

    y = cos( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Cos "Output the cosine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.cos(u);
    end Cos;

* * * * *

![image56](Modelica.ComplexBlocks.ComplexMath.TanI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Tan
============================================================================================================================================================================

**Output the tangent of the input**

Information
-----------

::

This blocks computes the output **y** as **tan** of the input **u**:

    y = tan( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Tan "Output the tangent of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.tan(u);
    end Tan;

* * * * *

![image57](Modelica.ComplexBlocks.ComplexMath.AsinI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Asin
==============================================================================================================================================================================

**Output the arc sine of the input**

Information
-----------

::

This blocks computes the output **y** as the *sine-inverse* of the input
**u**:

    y = asin( u );

The absolute values of the elements of the input **u** need to be less
or equal to one (**abs**( u ) <= 1). Otherwise an error occurs.

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Asin "Output the arc sine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.asin(u);
    end Asin;

* * * * *

![image58](Modelica.ComplexBlocks.ComplexMath.AcosI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Acos
==============================================================================================================================================================================

**Output the arc cosine of the input**

Information
-----------

::

This blocks computes the output **y** as the *cosine-inverse* of the
input **u**:

    y = acos( u );

The absolute values of the elements of the input **u** need to be less
or equal to one (**abs**( u ) <= 1). Otherwise an error occurs.

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Acos "Output the arc cosine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.acos(u);
    end Acos;

* * * * *

![image59](Modelica.ComplexBlocks.ComplexMath.AtanI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Atan
==============================================================================================================================================================================

**Output the arc tangent of the input**

Information
-----------

::

This blocks computes the output **y** as the *tangent-inverse* of the
input **u**:

    y= atan( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Atan "Output the arc tangent of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.atan(u);
    end Atan;

* * * * *

![image60](Modelica.ComplexBlocks.ComplexMath.SinhI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Sinh
==============================================================================================================================================================================

**Output the hyperbolic sine of the input**

Information
-----------

::

This blocks computes the output **y** as the *hyperbolic sine* of the
input **u**:

    y = sinh( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sinh "Output the hyperbolic sine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.sinh(u);
    end Sinh;

* * * * *

![image61](Modelica.ComplexBlocks.ComplexMath.CoshI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Cosh
==============================================================================================================================================================================

**Output the hyperbolic cosine of the input**

Information
-----------

::

This blocks computes the output **y** as the *hyperbolic cosine* of the
input **u**:

    y = cosh( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Cosh "Output the hyperbolic cosine of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.cosh(u);
    end Cosh;

* * * * *

![image62](Modelica.ComplexBlocks.ComplexMath.TanhI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Tanh
==============================================================================================================================================================================

**Output the hyperbolic tangent of the input**

Information
-----------

::

This blocks computes the output **y** as the *hyperbolic tangent* of the
input **u**:

    y = tanh( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Tanh "Output the hyperbolic tangent of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.tanh(u);
    end Tanh;

* * * * *

![image63](Modelica.ComplexBlocks.ComplexMath.ExpI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Exp
============================================================================================================================================================================

**Output the exponential (base e) of the input**

Information
-----------

::

This blocks computes the output **y** as the *exponential* (of base e)
of the input **u**:

    y = exp( u );

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Exp "Output the exponential (base e) of the input"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.exp(u);
    end Exp;

* * * * *

![image64](Modelica.ComplexBlocks.ComplexMath.LogI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).Log
============================================================================================================================================================================

**Output the natural (base e) logarithm of the input (input \> 0
required)**

Information
-----------

::

This blocks computes the output **y** as the *natural (base e)
logarithm* of the input **u**:

    y = log( u );

An error occurs if the elements of the input **u** are zero or negative.

::

Extends from
[Interfaces.ComplexSISO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSISO)
(Single Input Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  input                                               u   Connector of
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.ht     Complex input
  ml#Modelica.ComplexBlocks.Interfaces.ComplexInput)      signal

  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Log 
      "Output the natural (base e) logarithm of the input (input > 0 required)"
      extends Interfaces.ComplexSISO;
    equation 
      y = Modelica.ComplexMath.log(u);
    end Log;

* * * * *

![image65](Modelica.ComplexBlocks.ComplexMath.RealToComplexI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).RealToComplex
================================================================================================================================================================================================

**Converts cartesian representation to complex**

Information
-----------

::

Converts the Real inputs *re* (real part) and *im* (imaginary part) to
the Complex output *y*.

::

Extends from
[Modelica.ComplexBlocks.Interfaces.ComplexSO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO)
(Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       

  input                                               re  
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic     
  a.Blocks.Interfaces.RealInput)                          

  input                                               im  
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic     
  a.Blocks.Interfaces.RealInput)                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RealToComplex "Converts cartesian representation to complex"
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;
      Blocks.Interfaces.RealInput re;
      Blocks.Interfaces.RealInput im;
    equation 
      y=Complex(re,im);
    end RealToComplex;

* * * * *

![image66](Modelica.ComplexBlocks.ComplexMath.PolarToComplexI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).PolarToComplex
==================================================================================================================================================================================================

**Converts polar representation to complex**

Information
-----------

::

Converts the Real inputs *len* (length, absolute) and *phi* (angle,
argument) to the Complex output *y*.

::

Extends from
[Modelica.ComplexBlocks.Interfaces.ComplexSO](Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexSO)
(Single Output continuous control block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Nam Description
                                                      e   
  --------------------------------------------------- --- -----------------
  output                                              y   Connector of
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.h     Complex output
  tml#Modelica.ComplexBlocks.Interfaces.ComplexOutput     signal
  )                                                       

  input                                               len 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic     
  a.Blocks.Interfaces.RealInput)                          

  input                                               phi 
  [RealInput](Modelica_Blocks_Interfaces.html#Modelic     
  a.Blocks.Interfaces.RealInput)                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block PolarToComplex "Converts polar representation to complex"
      extends Modelica.ComplexBlocks.Interfaces.ComplexSO;
      Blocks.Interfaces.RealInput len;
      Blocks.Interfaces.RealInput phi;
    equation 
      y=Complex(len*cos(phi),len*sin(phi));
    end PolarToComplex;

* * * * *

![image67](Modelica.ComplexBlocks.ComplexMath.ComplexToRealI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).ComplexToReal
================================================================================================================================================================================================

**Converts complex to cartesian representation**

Information
-----------

::

Converts the Complex input *u* to the Real outputs *re* (real part) and
*im* (imaginary part).

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  output                                                      re   
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Block      
  s.Interfaces.RealOutput)                                         

  output                                                      im   
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Block      
  s.Interfaces.RealOutput)                                         

  input                                                       u    
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Model      
  ica.ComplexBlocks.Interfaces.ComplexInput)                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ComplexToReal "Converts complex to cartesian representation"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Blocks.Interfaces.RealOutput re;
      Blocks.Interfaces.RealOutput im;
      Interfaces.ComplexInput u;
    equation 
      re=u.re;
      im=u.im;
    end ComplexToReal;

* * * * *

![image68](Modelica.ComplexBlocks.ComplexMath.ComplexToPolarI.png) [Modelica.ComplexBlocks.ComplexMath](Modelica_ComplexBlocks_ComplexMath.html#Modelica.ComplexBlocks.ComplexMath).ComplexToPolar
==================================================================================================================================================================================================

**Converts complex to polar representation**

Information
-----------

::

Converts the Complex input *u* to the Real outputs *len* (length,
absolute) and *phi* (angle, argument).

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name Descript
                                                                   ion
  ----------------------------------------------------------- ---- --------
  output                                                      len  
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Block      
  s.Interfaces.RealOutput)                                         

  output                                                      phi  
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica.Block      
  s.Interfaces.RealOutput)                                         

  input                                                       u    
  [ComplexInput](Modelica_ComplexBlocks_Interfaces.html#Model      
  ica.ComplexBlocks.Interfaces.ComplexInput)                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ComplexToPolar "Converts complex to polar representation"
      extends Modelica.Blocks.Interfaces.BlockIcon;
      Blocks.Interfaces.RealOutput len;
      Blocks.Interfaces.RealOutput phi;
      Interfaces.ComplexInput u;
    equation 
      len=(u.re^2 + u.im^2)^0.5;
      phi=Modelica.Math.atan2(u.im,u.re);
    end ComplexToPolar;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:41 2010.
