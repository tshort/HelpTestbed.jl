% Modelica.Blocks.Types:
  [Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).Types
% 
% 

**Library of constants and types with choices, especially to build
menus**

Information
===========

::

In this package **types** and **constants** are defined that are used in
library Modelica.Blocks. The types have additional annotation choices
definitions that define the menus to be built up in the graphical user
interface when the type is used as parameter in a declaration.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                   Description
  -------------------------------------- ---------------------------------
  [Smoothness](Modelica_Blocks_Types.htm Enumeration defining the
  l#Modelica.Blocks.Types.Smoothness)    smoothness of table interpolation

  [Extrapolation](Modelica_Blocks_Types. Enumeration defining the
  html#Modelica.Blocks.Types.Extrapolati extrapolation of time table
  on)                                    interpolation

  [Init](Modelica_Blocks_Types.html#Mode Enumeration defining
  lica.Blocks.Types.Init)                initialization of a block

  [InitPID](Modelica_Blocks_Types.html#M Enumeration defining
  odelica.Blocks.Types.InitPID)          initialization of PID and LimPID
                                         blocks

  [SimpleController](Modelica_Blocks_Typ Enumeration defining P, PI, PD,
  es.html#Modelica.Blocks.Types.SimpleCo or PID simple controller type
  ntroller)                              

  [AnalogFilter](Modelica_Blocks_Types.h Enumeration defining the method
  tml#Modelica.Blocks.Types.AnalogFilter of filtering
  )                                      

  [FilterType](Modelica_Blocks_Types.htm Enumeration of analog filter
  l#Modelica.Blocks.Types.FilterType)    types (low, high, band pass or
                                         band stop filter
  ------------------------------------------------------------------------

Types and constants
===================

    type Smoothness = enumeration(
      LinearSegments "Table points are linearly interpolated",
      ContinuousDerivative 
        "Table points are interpolated such that the first derivative is continuous")
    "Enumeration defining the smoothness of table interpolation";

    type Extrapolation = enumeration(
      HoldLastPoint "Hold the last table point outside of the table scope",
      LastTwoPoints 
        "Extrapolate linearly through the last two table points outside of the table scope",

      Periodic "Repeat the table scope periodically") 
    "Enumeration defining the extrapolation of time table interpolation";

    type Init = enumeration(
      NoInit 
        "No initialization (start values are used as guess values with fixed=false)",

      SteadyState "Steady state initialization (derivatives of states are zero)",

      InitialState "Initialization with initial states",
      InitialOutput 
        "Initialization with initial outputs (and steady state of the states if possibles)")
    "Enumeration defining initialization of a block";

    type InitPID = enumeration(
      NoInit 
        "No initialization (start values are used as guess values with fixed=false)",

      SteadyState "Steady state initialization (derivatives of states are zero)",

      InitialState "Initialization with initial states",
      InitialOutput 
        "Initialization with initial outputs (and steady state of the states if possibles)",

      DoNotUse_InitialIntegratorState 
        "Don't use, only for backward compatibility (initialize only integrator state)")
    "Enumeration defining initialization of PID and LimPID blocks";

    type SimpleController = enumeration(
      P "P controller",
      PI "PI controller",
      PD "PD controller",
      PID "PID controller") 
    "Enumeration defining P, PI, PD, or PID simple controller type";

    type AnalogFilter = enumeration(
        CriticalDamping "Filter with critical damping",
        Bessel "Bessel filter",
        Butterworth "Butterworth filter",
        ChebyshevI "Chebyshev I filter") 
      "Enumeration defining the method of filtering";

    type FilterType = enumeration(
        LowPass "Low pass filter",
        HighPass "High pass filter",
        BandPass "Band pass filter",
        BandStop "Band stop / notch filter") 
      "Enumeration of analog filter types (low, high, band pass or band stop filter";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:40 2010.
