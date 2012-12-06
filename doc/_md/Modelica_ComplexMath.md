% Modelica.ComplexMath
% 
% 

[Modelica](Modelica.html#Modelica).ComplexMath
==============================================

**Library of complex mathematical functions (e.g., sin, cos) and of
functions operating on copmlex vectors and matrices**

Information
-----------

::

This package contains **basic mathematical functions** operating on
complex numbers (such as sin(..)), as well as functions operating on
vectors of complex numbers.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  j=Complex(0, 1)                                  Imaginary unit

  ![image26](Modelica.ComplexMath.VectorsS.png)    Library of functions
  [Vectors](Modelica_ComplexMath_Vectors.html#Mode operating on complex
  lica.ComplexMath.Vectors)                        vectors

  ![image27](Modelica.ComplexMath.sinS.png)        Sine of complex number
  [sin](Modelica_ComplexMath.html#Modelica.Complex 
  Math.sin)                                        

  ![image28](Modelica.ComplexMath.sinS.png)        Cosine of complex
  [cos](Modelica_ComplexMath.html#Modelica.Complex number
  Math.cos)                                        

  ![image29](Modelica.ComplexMath.sinS.png)        Tangent of complex
  [tan](Modelica_ComplexMath.html#Modelica.Complex number
  Math.tan)                                        

  ![image30](Modelica.ComplexMath.sinS.png)        Arc-sine of complex
  [asin](Modelica_ComplexMath.html#Modelica.Comple number
  xMath.asin)                                      

  ![image31](Modelica.ComplexMath.sinS.png)        Arc-cosine of complex
  [acos](Modelica_ComplexMath.html#Modelica.Comple number
  xMath.acos)                                      

  ![image32](Modelica.ComplexMath.sinS.png)        Arc-tangent of complex
  [atan](Modelica_ComplexMath.html#Modelica.Comple number
  xMath.atan)                                      

  ![image33](Modelica.ComplexMath.sinS.png)        Hyperbolic-sine of
  [sinh](Modelica_ComplexMath.html#Modelica.Comple complex number
  xMath.sinh)                                      

  ![image34](Modelica.ComplexMath.sinS.png)        Hyperbolic-cosine of
  [cosh](Modelica_ComplexMath.html#Modelica.Comple complex number
  xMath.cosh)                                      

  ![image35](Modelica.ComplexMath.sinS.png)        Hyperbolic-tangent of
  [tanh](Modelica_ComplexMath.html#Modelica.Comple complex number
  xMath.tanh)                                      

  ![image36](Modelica.ComplexMath.sinS.png)        Area-hyperbolic-sine of
  [asinh](Modelica_ComplexMath.html#Modelica.Compl complex number
  exMath.asinh)                                    

  ![image37](Modelica.ComplexMath.sinS.png)        Area-hyperbolic-cosine
  [acosh](Modelica_ComplexMath.html#Modelica.Compl of complex number
  exMath.acosh)                                    

  ![image38](Modelica.ComplexMath.sinS.png)        Area-hyperbolic-tangent
  [atanh](Modelica_ComplexMath.html#Modelica.Compl of complex number
  exMath.atanh)                                    

  ![image39](Modelica.ComplexMath.sinS.png)        Exponential of complex
  [exp](Modelica_ComplexMath.html#Modelica.Complex number
  Math.exp)                                        

  ![image40](Modelica.ComplexMath.sinS.png)        Logarithm of complex
  [log](Modelica_ComplexMath.html#Modelica.Complex number
  Math.log)                                        

  ![image41](Modelica.ComplexMath.sinS.png)        Absolute value of
  ['abs'](Modelica_ComplexMath.html#Modelica.Compl complex number
  exMath.'abs')                                    

  ![image42](Modelica.ComplexMath.sinS.png)        Phase angle of complex
  [arg](Modelica_ComplexMath.html#Modelica.Complex number
  Math.arg)                                        

  ![image43](Modelica.ComplexMath.sinS.png)        Conjugate of complex
  [conj](Modelica_ComplexMath.html#Modelica.Comple number
  xMath.conj)                                      

  ![image44](Modelica.ComplexMath.sinS.png)        Real part of complex
  [real](Modelica_ComplexMath.html#Modelica.Comple number
  xMath.real)                                      

  ![image45](Modelica.ComplexMath.sinS.png)        Imaginary part of
  [imag](Modelica_ComplexMath.html#Modelica.Comple complex number
  xMath.imag)                                      

  ![image46](Modelica.ComplexMath.sinS.png)        Complex from polar
  [fromPolar](Modelica_ComplexMath.html#Modelica.C representation
  omplexMath.fromPolar)                            

  ![image47](Modelica.ComplexMath.sinS.png)        Square root of complex
  ['sqrt'](Modelica_ComplexMath.html#Modelica.Comp number
  lexMath.'sqrt')                                  

  ![image48](Modelica.ComplexMath.sinS.png)        Return maximum element
  ['max'](Modelica_ComplexMath.html#Modelica.Compl of complex vector
  exMath.'max')                                    

  ![image49](Modelica.ComplexMath.sinS.png)        Return minium element
  ['min'](Modelica_ComplexMath.html#Modelica.Compl of complex vector
  exMath.'min')                                    

  ![image50](Modelica.ComplexMath.sinS.png)        Return sum of complex
  ['sum'](Modelica_ComplexMath.html#Modelica.Compl vector
  exMath.'sum')                                    

  ![image51](Modelica.ComplexMath.sinS.png)        Return product of
  ['product'](Modelica_ComplexMath.html#Modelica.C complex vector
  omplexMath.'product')                            
  ------------------------------------------------------------------------

Types and constants
-------------------

    final constant Complex j = Complex(0,1) "Imaginary unit";

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).sin
==========================================================================

**Sine of complex number**

Information
-----------

::

This function returns the Complex sine of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     sin(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function sin "Sine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "sin(c1)";
    algorithm 
       c2 := (exp(Complex(-c1.im, +c1.re)) - exp(Complex(+c1.im, -c1.re)))/Complex(0, 2);
    end sin;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).cos
==========================================================================

**Cosine of complex number**

Information
-----------

::

This function returns the Complex cosine of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     = cos(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cos "Cosine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= cos(c1)";
    algorithm 
      c2 := (exp(Complex(-c1.im, +c1.re)) + exp(Complex(+c1.im, -c1.re)))/2;
    end cos;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).tan
==========================================================================

**Tangent of complex number**

Information
-----------

::

This function returns the Complex tangent of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     = tan(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function tan "Tangent of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= tan(c1)";
    algorithm 
      c2 := sin(c1)/cos(c1);
    end tan;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).asin
===========================================================================

**Arc-sine of complex number**

Information
-----------

::

This function returns the inverse Complex sine of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     arc\_sin(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function asin "Arc-sine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "arc_sin(c1)";
    algorithm 
      c2 := -j*log(j*c1 + 'sqrt'(1 - c1*c1));
    end asin;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).acos
===========================================================================

**Arc-cosine of complex number**

Information
-----------

::

This function returns the inverse Complex cosine of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Complex](../../../Modelica/Library/help/Complex.ht c2     = arc\_cos(c1)
  ml#Complex)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function acos "Arc-cosine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= arc_cos(c1)";
    algorithm 
      c2 := -j*log(c1 + j*'sqrt'(1 - c1*c1));
    end acos;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).atan
===========================================================================

**Arc-tangent of complex number**

Information
-----------

::

This function returns the inverse Complex tangent of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Complex](../../../Modelica/Library/help/Complex.ht c2     = arc\_tan(c1)
  ml#Complex)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function atan "Arc-tangent of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= arc_tan(c1)";
    algorithm 
      c2 := 0.5*j*log((j + c1)/(j - c1));
    end atan;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).sinh
===========================================================================

**Hyperbolic-sine of complex number**

Information
-----------

::

This function returns the Complex hyperbolic sine of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     sinh(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function sinh "Hyperbolic-sine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "sinh(c1)";
    algorithm 
      c2 := Complex(Math.sinh(c1.re)*Math.cos(c1.im), Math.cosh(c1.re)*Math.sin(c1.im));
    end sinh;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).cosh
===========================================================================

**Hyperbolic-cosine of complex number**

Information
-----------

::

This function returns the Complex hyperbolic cosine of the Complex
input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     = cosh(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function cosh "Hyperbolic-cosine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= cosh(c1)";
    algorithm 
      c2 := Complex(Math.cosh(c1.re)*Math.cos(c1.im), Math.sinh(c1.re)*Math.sin(c1.im));
    end cosh;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).tanh
===========================================================================

**Hyperbolic-tangent of complex number**

Information
-----------

::

This function returns the Complex hyperbolic tangent of the Complex
input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     = tanh(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function tanh "Hyperbolic-tangent of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= tanh(c1)";
    algorithm 
      c2 := sinh(c1)/cosh(c1);
    end tanh;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).asinh
============================================================================

**Area-hyperbolic-sine of complex number**

Information
-----------

::

This function returns the inverse Complex hyperbolic sine of the Complex
input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     ar\_sinh(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function asinh "Area-hyperbolic-sine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "ar_sinh(c1)";
    algorithm 
      c2 := log(c1 + 'sqrt'(c1*c1 + 1));
    end asinh;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).acosh
============================================================================

**Area-hyperbolic-cosine of complex number**

Information
-----------

::

This function returns the inverse Complex hyperbolic cosine of the
Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Complex](../../../Modelica/Library/help/Complex.ht c2     = ar\_cosh(c1)
  ml#Complex)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function acosh "Area-hyperbolic-cosine of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= ar_cosh(c1)";
    algorithm 
      c2 := log(c1 + (c1 + 1)*'sqrt'((c1 - 1)/(c1 + 1)));
    end acosh;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).atanh
============================================================================

**Area-hyperbolic-tangent of complex number**

Information
-----------

::

This function returns the inverse Complex hyperbolic tangent of the
Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Complex](../../../Modelica/Library/help/Complex.ht c2     = ar\_tanh(c1)
  ml#Complex)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function atanh "Area-hyperbolic-tangent of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= ar_tanh(c1)";
    algorithm 
      c2 := 0.5*log((1 + c1)/(1 - c1));
    end atanh;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).exp
==========================================================================

**Exponential of complex number**

Information
-----------

::

This function returns the Complex natural exponential of the Complex
input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     = exp(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function exp "Exponential of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= exp(c1)";
    algorithm 
      c2 := Complex(Math.exp(c1.re)*Math.cos(c1.im), Math.exp(c1.re)*Math.sin(c1.im));
    end exp;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).log
==========================================================================

**Logarithm of complex number**

Information
-----------

::

This function returns the Complex natural logarithm of the Complex
input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     = log(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function log "Logarithm of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= log(c1)";
    algorithm 
      c2 := Complex(Modelica.Math.log('abs'(c1)), arg(c1));
    end log;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).'abs'
============================================================================

**Absolute value of complex number**

Information
-----------

::

This function returns the Real absolute of the Complex input, i.e., it's
length.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c             Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name        Description
  --------- ----------- ----------------
  Real      result      = abs(c)

Modelica definition
-------------------

    function 'abs' "Absolute value of complex number"
      input Complex c "Complex number";
      output Real result "= abs(c)";
    algorithm 
      result := (c.re^2 + c.im^2)^0.5; //changed from sqrt
    end 'abs';

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).arg
==========================================================================

**Phase angle of complex number**

Information
-----------

::

This function returns the Real argument of the Complex input, i.e., it's
angle.

::

Inputs
------

  --------------------------------------------------------------------------
  Type                            Name Defau Description
                                       lt    
  ------------------------------- ---- ----- -------------------------------
  [Complex](../../../Modelica/Lib c          Complex number
  rary/help/Complex.html#Complex)            

  [Angle](Modelica_SIunits.html#M phi0 0     Phase angle phi shall be in the
  odelica.SIunits.Angle)                     range: -pi < phi-phi0 < pi
                                             [rad]
  --------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                         Name   Description
  -------------------------------------------- ------ ---------------------
  [Angle](Modelica_SIunits.html#Modelica.SIuni phi    = phase angle of c
  ts.Angle)                                           [rad]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function arg "Phase angle of complex number"
      input Complex c "Complex number";
      input Modelica.SIunits.Angle phi0=0 
        "Phase angle phi shall be in the range: -pi < phi-phi0 < pi";
      output Modelica.SIunits.Angle phi "= phase angle of c";
    algorithm 
      phi := Modelica.Math.atan3(
          c.im,
          c.re,
          phi0);
    end arg;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).conj
===========================================================================

**Conjugate of complex number**

Information
-----------

::

This function returns the Complex conjugate of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name   Description
  ------------------------------------------------- ------ ----------------
  [Complex](../../../Modelica/Library/help/Complex. c2     = c1.re -
  html#Complex)                                            j\*c1.im
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function conj "Conjugate of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= c1.re - j*c1.im";
    algorithm 
      c2 := Complex(c1.re, -c1.im);
    end conj;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).real
===========================================================================

**Real part of complex number**

Information
-----------

::

This function returns the real part of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c             Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      r         = c.re

Modelica definition
-------------------

    function real "Real part of complex number"
      input Complex c "Complex number";
      output Real r "= c.re ";
    algorithm 
      r := c.re;
    end real;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).imag
===========================================================================

**Imaginary part of complex number**

Information
-----------

::

This function returns the imaginary part of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c             Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      r         = c.im

Modelica definition
-------------------

    function imag "Imaginary part of complex number"
      input Complex c "Complex number";
      output Real r "= c.im ";
    algorithm 
      r := c.im;
    end imag;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).fromPolar
================================================================================

**Complex from polar representation**

Information
-----------

::

This function constructs a Complex number from it's length (absolute)
and angle (argument).

::

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name   Default  Description
  ---------------------------------------- ------ -------- ----------------
  Real                                     len             abs of complex

  [Angle](Modelica_SIunits.html#Modelica.S phi             arg of complex
  Iunits.Angle)                                            [rad]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                       Name  Description
  ------------------------------------------ ----- ------------------------
  [Complex](../../../Modelica/Library/help/C c     = len\*cos(phi) +
  omplex.html#Complex)                             j\*len\*sin(phi)
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function fromPolar "Complex from polar representation"
      input Real len "abs of complex";
      input Modelica.SIunits.Angle phi "arg of complex";
      output Complex c "= len*cos(phi) + j*len*sin(phi)";
    algorithm 
      c := Complex(len*Modelica.Math.cos(phi), len*Modelica.Math.sin(phi));
    end fromPolar;

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).'sqrt'
=============================================================================

**Square root of complex number**

Information
-----------

::

This function returns the Complex square root of the Complex input.

::

Inputs
------

  ------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- ------------
  [Complex](../../../Modelica/Library/help/Comp c1            Complex
  lex.html#Complex)                                           number
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ ------------
  [Complex](../../../Modelica/Library/help/Complex.htm c2     = sqrt(c1)
  l#Complex)                                                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function 'sqrt' "Square root of complex number"
      input Complex c1 "Complex number";
      output Complex c2 "= sqrt(c1)";
    algorithm 
      c2 := Complex(sqrt('abs'(c1))*Math.cos(arg(c1)/2), sqrt('abs'(c1))*Math.sin(arg(c1)/2));
    end 'sqrt';

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).'max'
============================================================================

**Return maximum element of complex vector**

Information
-----------

::

This function returns the largest element of the Complex input vector,
defined by the Complex absolute.

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

  ------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ -------------------------
  [Complex](../../../Modelica/Library/hel result Element of v with largest
  p/Complex.html#Complex)                        absolute value

  Integer                                 index  v[index] has the largest
                                                 absolute value
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function 'max' "Return maximum element of complex vector"
      input Complex v[:] "Vector";
      output Complex result "Element of v with largest absolute value";
      output Integer index "v[index] has the largest absolute value";
    protected 
      Real absv_i;
      Real absres;
    algorithm 
      if size(v,1) > 0 then
        absres := 'abs'(v[1]);
        index  := 1;
        for i in 2:size(v,1) loop
          absv_i := 'abs'(v[i]);
          if absv_i > absres then
            absres := absv_i;
            index := i;
          end if;
        end for;
        result :=v[index];
      else
        result := Complex(0);
        index  := 0;
      end if;
    end 'max';

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).'min'
============================================================================

**Return minium element of complex vector**

Information
-----------

::

This function returns the smallest element of the Complex input vector,
defined by the Complex absolute.

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

  -------------------------------------------------------------------------
  Type                                    Name   Description
  --------------------------------------- ------ --------------------------
  [Complex](../../../Modelica/Library/hel result Element of v with smallest
  p/Complex.html#Complex)                        absolute value

  Integer                                 index  v[index] has the smallest
                                                 absolute value
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function 'min' "Return minium element of complex vector"
      input Complex v[:] "Vector";
      output Complex result "Element of v with smallest absolute value";
      output Integer index "v[index] has the smallest absolute value";
    protected 
      Real absv_i;
      Real absres;
    algorithm 
      if size(v,1) > 0 then
        absres := 'abs'(v[1]);
        index  := 1;
        for i in 2:size(v,1) loop
          absv_i := 'abs'(v[i]);
          if absv_i < absres then
            absres := absv_i;
            index := i;
          end if;
        end for;
        result :=v[index];
      else
        result := Complex(0);
        index  := 0;
      end if;
    end 'min';

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).'sum'
============================================================================

**Return sum of complex vector**

Information
-----------

::

This function returns the Complex sum of the Complex input vector

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

  ------------------------------------------------------------------------
  Type                                        Name   Description
  ------------------------------------------- ------ ---------------------
  [Complex](../../../Modelica/Library/help/Co result Complex sum of vector
  mplex.html#Complex)                                elements
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function 'sum' "Return sum of complex vector"
      input Complex v[:] "Vector";
      output Complex result "Complex sum of vector elements";
    algorithm 
      result:=Complex(0);
      for i in 1:size(v,1) loop
        result:=result + v[i];
      end for;
    end 'sum';

* * * * *

[Modelica.ComplexMath](Modelica_ComplexMath.html#Modelica.ComplexMath).'product'
================================================================================

**Return product of complex vector**

Information
-----------

::

This function returns the Complex product of the Complex input vector

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

  ------------------------------------------------------------------------
  Type                                      Name   Description
  ----------------------------------------- ------ -----------------------
  [Complex](../../../Modelica/Library/help/ result Complex product of
  Complex.html#Complex)                            vector elements
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function 'product' "Return product of complex vector"
      input Complex v[:] "Vector";
      output Complex result "Complex product of vector elements";
    algorithm 
      result:=Complex(1);
      for i in 1:size(v,1) loop
        result:=result * v[i];
      end for;
    end 'product';

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
