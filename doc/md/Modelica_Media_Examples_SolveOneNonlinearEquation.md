% Modelica.Media.Examples.SolveOneNonlinearEquation
% 
% 

[Modelica.Media.Examples](Modelica_Media_Examples.html#Modelica.Media.Examples).SolveOneNonlinearEquation
=========================================================================================================

**Demonstrate how to solve one non-linear algebraic equation in one
unknown**

Information
-----------

::

This package demonstrates how to solve one non-linear algebraic equation
in one unknown with function Modelica.Media.Common.OneNonLinearEquation.

::

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image4](Modelica.Media.Examples.Tests.MediaTestModel Solve y =
  s.Air.SimpleAirS.png)                                  A\*sin(w\*x) for
  [Inverse\_sine](Modelica_Media_Examples_SolveOneNonlin x, given y
  earEquation.html#Modelica.Media.Examples.SolveOneNonli 
  nearEquation.Inverse_sine)                             

  ![image5](Modelica.Media.Examples.Tests.MediaTestModel Solve h =
  s.Air.SimpleAirS.png)                                  h\_T(T), s =
  [Inverse\_sh\_T](Modelica_Media_Examples_SolveOneNonli s\_T(T) for T, if
  nearEquation.html#Modelica.Media.Examples.SolveOneNonl h or s is given
  inearEquation.Inverse_sh_T)                            for ideal gas
                                                         NASA

  ![image6](Modelica.Media.Examples.Tests.MediaTestModel inverse
  s.Air.SimpleAirS.png)                                  computation for
  [InverseIncompressible\_sh\_T](Modelica_Media_Examples incmpressible
  _SolveOneNonlinearEquation.html#Modelica.Media.Example media
  s.SolveOneNonlinearEquation.InverseIncompressible_sh_T 
  )                                                      

  ![image7](Modelica.Media.Examples.Tests.MediaTestModel Solve h =
  s.Air.SimpleAirS.png)                                  h\_TX(TX) for T,
  [Inverse\_sh\_TX](Modelica_Media_Examples_SolveOneNonl if h is given for
  inearEquation.html#Modelica.Media.Examples.SolveOneNon ideal gas NASA
  linearEquation.Inverse_sh_TX)                          
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Media.Examples.SolveOneNonlinearEquation.Inverse_sineI.png) [Modelica.Media.Examples.SolveOneNonlinearEquation](Modelica_Media_Examples_SolveOneNonlinearEquation.html#Modelica.Media.Examples.SolveOneNonlinearEquation).Inverse\_sine
==========================================================================================================================================================================================================================================================

**Solve y = A\*sin(w\*x) for x, given y**

Information
-----------

::

This models solves the following non-linear equation

    y = A*sin(w*x); -> determine x for given y

Translate model "Inverse\_sine" and simulate for 0 sec. The result is
printed to the output window.

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                                Na Default   Descript
                                                      me           ion
  --------------------------------------------------- -- --------- --------
  Real                                                y\ 0.5       Desired
                                                      _z           value of
                                                      er           A\*sin(w
                                                      o            \*x)

  Real                                                x\ -1.7      Minimum
                                                      _m           value of
                                                      in           x\_zero

  Real                                                x\ 1.7       Maximum
                                                      _m           value of
                                                      ax           x\_zero

  Real                                                A  1         

  Real                                                w  1         

  [f\_nonlinear\_Data](Modelica_Media_Examples_SolveO da Inverse\_ 
  neNonlinearEquation_Inverse_sine_definition.html#Mo ta sine\_def 
  delica.Media.Examples.SolveOneNonlinearEquation.Inv    inition.f 
  erse_sine.Inverse_sine_definition.f_nonlinear_Data)    \_no...   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Inverse_sine "Solve y = A*sin(w*x) for x, given y"
       import Modelica.Utilities.Streams.print;
       extends Modelica.Icons.Example;

       parameter Real y_zero = 0.5 "Desired value of A*sin(w*x)";
       parameter Real x_min = -1.7 "Minimum value of x_zero";
       parameter Real x_max = 1.7 "Maximum value of x_zero";
       parameter Real A = 1;
       parameter Real w = 1;
       parameter Inverse_sine_definition.f_nonlinear_Data data=
                 Inverse_sine_definition.f_nonlinear_Data(A=A, w=w);
       Real x_zero "y_zero = A*sin(w*x_zero)";

    encapsulated package Inverse_sine_definition 
        "Define sine as non-linear equation to be solved"
         import Modelica;
       extends Modelica.Media.Common.OneNonLinearEquation;

       redeclare record extends f_nonlinear_Data 
          "Data for nonlinear equation"
          Real A;
          Real w;
       end f_nonlinear_Data;

       redeclare function extends f_nonlinear 
          "Non-linear equation to be solved"
       algorithm 
           y := f_nonlinear_data.A*Modelica.Math.sin(f_nonlinear_data.w*x);
       end f_nonlinear;

       // Dummy definition has to be added for current Dymola (advice from Hans)
       redeclare function extends solve 
          "Solution algorithm of non-linear equation"
       end solve;
    end Inverse_sine_definition;

    equation 
       x_zero = Inverse_sine_definition.solve(y_zero, x_min, x_max, f_nonlinear_data=data);

       print("x_zero = " + String(x_zero) + ", y_zero = " + String(y_zero) + ", A*sin(w*x_zero) = " +
             String(data.A*Modelica.Math.sin(data.w*x_zero)));
    end Inverse_sine;

* * * * *

![image9](Modelica.Media.Examples.SolveOneNonlinearEquation.Inverse_sineI.png) [Modelica.Media.Examples.SolveOneNonlinearEquation](Modelica_Media_Examples_SolveOneNonlinearEquation.html#Modelica.Media.Examples.SolveOneNonlinearEquation).Inverse\_sh\_T
===========================================================================================================================================================================================================================================================

**Solve h = h\_T(T), s = s\_T(T) for T, if h or s is given for ideal gas
NASA**

Information
-----------

::

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name Defau Description
                                      lt    
  ------------------------------ ---- ----- --------------------------------
  [Temperature](Modelica_SIunits T\_m 300   Vary temperature linearly from
  .html#Modelica.SIunits.Tempera in         T\_min (time=0) upto T\_max
  ture)                                     (time=1) [K]

  [Temperature](Modelica_SIunits T\_m 500   Vary temperature linearly from
  .html#Modelica.SIunits.Tempera ax         T\_min (time=0) upto T\_max
  ture)                                     (time=1) [K]

  [Pressure](Modelica_SIunits.ht p    1.0e5 Fixed pressure in model [Pa]
  ml#Modelica.SIunits.Pressure)             
  --------------------------------------------------------------------------

Modelica definition
-------------------

    model Inverse_sh_T 
      "Solve h = h_T(T), s = s_T(T) for T, if h or s is given for ideal gas NASA"
       import SI = Modelica.SIunits;
       extends Modelica.Icons.Example;

       replaceable package Medium = Modelica.Media.Air.DryAirNasa
             constrainedby Modelica.Media.IdealGases.Common.SingleGasNasa 
        "Medium model";

      parameter SI.Temperature T_min = 300 
        "Vary temperature linearly from T_min (time=0) upto T_max (time=1)";
      parameter SI.Temperature T_max = 500 
        "Vary temperature linearly from T_min (time=0) upto T_max (time=1)";
      parameter SI.Pressure p = 1.0e5 "Fixed pressure in model";
      final parameter SI.SpecificEnthalpy h_min = Medium.h_T(Medium.data,T_min) 
        "Specific enthalpy at T_min";
      final parameter SI.SpecificEnthalpy h_max = Medium.h_T(Medium.data,T_max) 
        "Specific enthalpy at T_max";
      final parameter SI.SpecificEntropy s_min = Medium.specificEntropy(Medium.setState_pT(p,T_min)) 
        "Specific entropy at T_min";
      final parameter SI.SpecificEntropy s_max = Medium.specificEntropy(Medium.setState_pT(p,T_max)) 
        "Specific entropy at T_max";
      SI.SpecificEnthalpy h1 "Pre-defined specific enthalpy";
      SI.SpecificEnthalpy h2 "Specific enthalpy computed from T (= h1 required)";
      SI.SpecificEntropy s1 "Pre-defined specific entropy";
      SI.SpecificEntropy s2 "Specific entropy computed from T (= h1 required)";
      SI.Temperature Th "Temperature computed from h1";
      SI.Temperature Ts "Temperature computed from s1";

    protected 
      constant SI.Time timeUnit = 1.0;

    equation 
       // Define specific enthalpy and specific entropy
       h1 = if time < 0 then h_min else 
            if time > 1 then h_max else 
               h_min + time/timeUnit*(h_max - h_min);
       s1 = if time < 0 then s_min else 
            if time > 1 then s_max else 
               s_min + time/timeUnit*(s_max - s_min);

       // Solve for temperature
       Th = Medium.temperature_phX(p, h1, fill(0.0,0));
       Ts = Medium.temperature_psX(p, s1, fill(0.0,0));

       // Check (h2 must be identical to h1)
       h2 = Medium.specificEnthalpy_pTX(p, Th, fill(0.0,0));
       s2 = Medium.specificEntropy(Medium.setState_pT(p,Ts));
    end Inverse_sh_T;

* * * * *

![image10](Modelica.Media.Examples.SolveOneNonlinearEquation.Inverse_sineI.png) [Modelica.Media.Examples.SolveOneNonlinearEquation](Modelica_Media_Examples_SolveOneNonlinearEquation.html#Modelica.Media.Examples.SolveOneNonlinearEquation).InverseIncompressible\_sh\_T
==========================================================================================================================================================================================================================================================================

**inverse computation for incmpressible media**

Information
-----------

::

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                          Name Default Description
  ----------------------------- ---- ------- ------------------------------
  [Temperature](Modelica_SIunit T\_m Medium. Vary temperature linearly from
  s.html#Modelica.SIunits.Tempe in   T\_min  T\_min (time=0) upto T\_max
  rature)                                    (time=1) [K]

  [Temperature](Modelica_SIunit T\_m Medium. Vary temperature linearly from
  s.html#Modelica.SIunits.Tempe ax   T\_max  T\_min (time=0) upto T\_max
  rature)                                    (time=1) [K]

  [Pressure](Modelica_SIunits.h p    1.0e5   Fixed pressure in model [Pa]
  tml#Modelica.SIunits.Pressure              
  )                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model InverseIncompressible_sh_T 
      "inverse computation for incmpressible media"
       import SI = Modelica.SIunits;
       import Cv = Modelica.SIunits.Conversions;
      extends Modelica.Icons.Example;

      replaceable package Medium =
           Modelica.Media.Incompressible.Examples.Glycol47 "Medium model";

      parameter SI.Temperature T_min = Medium.T_min 
        "Vary temperature linearly from T_min (time=0) upto T_max (time=1)";
      parameter SI.Temperature T_max = Medium.T_max 
        "Vary temperature linearly from T_min (time=0) upto T_max (time=1)";
      parameter SI.Pressure p = 1.0e5 "Fixed pressure in model";
      final parameter SI.SpecificEnthalpy h_min = Medium.h_T(Medium.T_min) 
        "Specific enthalpy at T_min";
      final parameter SI.SpecificEnthalpy h_max = Medium.h_T(Medium.T_max) 
        "Specific enthalpy at T_max";
      final parameter SI.SpecificEntropy s_min = Medium.specificEntropy(Medium.setState_pT(p,T_min)) 
        "Specific entropy at T_min";
      final parameter SI.SpecificEntropy s_max = Medium.specificEntropy(Medium.setState_pT(p,T_max)) 
        "Specific entropy at T_max";

      SI.SpecificEnthalpy h1 "Pre-defined specific enthalpy";
      SI.SpecificEnthalpy h2 "Specific enthalpy computed from T (= h1 required)";
      SI.SpecificEntropy s1 "Pre-defined specific entropy";
      SI.SpecificEntropy s2 "Specific entropy computed from T (= h1 required)";
      SI.Temperature Th "Temperature computed from h1";
      SI.Temperature Ts "Temperature computed from s1";

    protected 
      constant SI.Time timeUnit = 1.0;

    equation 
      // Define specific enthalpy
      h1 = if time < 0 then h_min else 
        if time > 1 then h_max else 
        h_min + time/timeUnit*(h_max - h_min);
      s1 = if time < 0 then s_min else 
        if time > 1 then s_max else 
        s_min + time/timeUnit*(s_max - s_min);

      // Solve for temperature
      Th = Medium.temperature_phX(p, h1, fill(0.0,0));
      Ts = Medium.temperature_psX(p, s1, fill(0.0,0));

      // Check (h2 must be identical to h1)
      h2 = Medium.specificEnthalpy_pTX(p, Th, fill(0.0,0));
      s2 = Medium.specificEntropy(Medium.setState_pT(p, Ts));
    end InverseIncompressible_sh_T;

* * * * *

![image11](Modelica.Media.Examples.SolveOneNonlinearEquation.Inverse_sineI.png) [Modelica.Media.Examples.SolveOneNonlinearEquation](Modelica_Media_Examples_SolveOneNonlinearEquation.html#Modelica.Media.Examples.SolveOneNonlinearEquation).Inverse\_sh\_TX
=============================================================================================================================================================================================================================================================

**Solve h = h\_TX(TX) for T, if h is given for ideal gas NASA**

Information
-----------

::

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  --------------------------------------------------------------------------
  Type                           Name Defau Description
                                      lt    
  ------------------------------ ---- ----- --------------------------------
  [Temperature](Modelica_SIunits T\_m 300   Vary temperature linearly from
  .html#Modelica.SIunits.Tempera in         T\_min (time=0) upto T\_max
  ture)                                     (time=1) [K]

  [Temperature](Modelica_SIunits T\_m 500   Vary temperature linearly from
  .html#Modelica.SIunits.Tempera ax         T\_min (time=0) upto T\_max
  ture)                                     (time=1) [K]

  [Pressure](Modelica_SIunits.ht p    1.0e5 Fixed pressure in model [Pa]
  ml#Modelica.SIunits.Pressure)             
  --------------------------------------------------------------------------

Modelica definition
-------------------

    model Inverse_sh_TX 
      "Solve h = h_TX(TX) for T, if h is given for ideal gas NASA"
       import SI = Modelica.SIunits;
       extends Modelica.Icons.Example;

       replaceable package Medium =
           Modelica.Media.IdealGases.MixtureGases.FlueGasLambdaOnePlus
             constrainedby Modelica.Media.IdealGases.Common.MixtureGasNasa 
        "Medium model";

      parameter SI.Temperature T_min = 300 
        "Vary temperature linearly from T_min (time=0) upto T_max (time=1)";
      parameter SI.Temperature T_max = 500 
        "Vary temperature linearly from T_min (time=0) upto T_max (time=1)";
      parameter SI.Pressure p = 1.0e5 "Fixed pressure in model";
      SI.SpecificEnthalpy h_min = Medium.h_TX(T_min,X) "Specific enthalpy at T_min";
      SI.SpecificEnthalpy h_max = Medium.h_TX(T_max,X) "Specific enthalpy at T_max";
      SI.SpecificEntropy s_min = Medium.specificEntropy(Medium.setState_pTX(p,T_min,Medium.reference_X)) 
        "Specific entropy at T_min";
      SI.SpecificEntropy s_max = Medium.specificEntropy(Medium.setState_pTX(p,T_max,Medium.reference_X)) 
        "Specific entropy at T_max";
      SI.SpecificEnthalpy h1 "Pre-defined specific enthalpy";
      SI.SpecificEnthalpy h2 "Specific enthalpy computed from T (= h1 required)";
      SI.SpecificEntropy s1 "Pre-defined specific entropy";
      SI.SpecificEntropy s2 "Specific entropy computed from T (= h1 required)";
      SI.Temperature Th "Temperature computed from h1";
      SI.Temperature Ts "Temperature computed from s1";
      SI.MassFraction[4] X "mass fraction vector";

    protected 
      constant SI.Time timeUnit = 1.0;

    equation 
      X = Medium.reference_X;
       // Define specific enthalpy
       h1 = if time < 0 then h_min else 
            if time > 1 then h_max else 
               h_min + time/timeUnit*(h_max - h_min);
       s1 = if time < 0 then s_min else 
            if time > 1 then s_max else 
               s_min + time/timeUnit*(s_max - s_min);

       // Solve for temperature
       Th = Medium.temperature_phX(p, h1, X);
       Ts = Medium.temperature_psX(p, s1, X);

       // Check (h2 must be identical to h1)
       h2 = Medium.specificEnthalpy_pTX(p, Th, X);
       s2 = Medium.specificEntropy(Medium.setState_pTX(p,Ts,X));
    end Inverse_sh_TX;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:28 2010.
