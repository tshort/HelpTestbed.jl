% Modelica.Math.Nonlinear.Interfaces
% 
% 

[Modelica.Math.Nonlinear](Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear).Interfaces
==========================================================================================

**Interfaces for functions**

Information
-----------

::

Interface definitions of functions. The main purpose is to use functions
derived from these interface definitions as function arguments to a
function, see, .e.g.,
[Math.Nonlinear.Examples](Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples).

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                 Description
  ---------------------------------------------------- -------------------
  ![image1](Modelica.Math.Nonlinear.Examples.UtilityFu Interface for a
  nctions.fun1S.png)                                   function with one
  [partialScalarFunction](Modelica_Math_Nonlinear_Inte input and one
  rfaces.html#Modelica.Math.Nonlinear.Interfaces.parti output Real signal
  alScalarFunction)                                    
  ------------------------------------------------------------------------

* * * * *

[Modelica.Math.Nonlinear.Interfaces](Modelica_Math_Nonlinear_Interfaces.html#Modelica.Math.Nonlinear.Interfaces).partialScalarFunction
======================================================================================================================================

**Interface for a function with one input and one output Real signal**

Information
-----------

::

This partial function defines the interface of a function with one input
and one output Real signal. The scalar functions of
[Modelica.Math.Nonlinear](Modelica_Math_Nonlinear.html#Modelica.Math.Nonlinear)
are derived from this base type by inheritance. This allows to use these
functions directly as function arguments to a function, see, .e.g.,
[Math.Nonlinear.Examples](Modelica_Math_Nonlinear_Examples.html#Modelica.Math.Nonlinear.Examples).

::

Inputs
------

  Type      Name      Default      Description
  --------- --------- ------------ -------------------------
  Real      u                      Independent variable

Outputs
-------

  Type      Name      Description
  --------- --------- ------------------------------
  Real      y         Dependent variable y=f(u)

Modelica definition
-------------------

    encapsulated partial function partialScalarFunction 
      "Interface for a function with one input and one output Real signal"
      input Real u "Independent variable";
      output Real y "Dependent variable y=f(u)";
    end partialScalarFunction;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:49 2010.
