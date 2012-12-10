% Modelica.Media.Interfaces.PartialMedium.Choices:
  [Modelica.Media.Interfaces.PartialMedium](Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium).Choices
% 
% 

**Types, constants to define menu choices**

Information
===========

::

Enumerations and data types for all types of fluids

Note: Reference enthalpy might have to be extended with enthalpy of
formation.

::

Package Content
===============

  ------------------------------------------------------------------------
  Name                                            Description
  ----------------------------------------------- ------------------------
  [IndependentVariables](Modelica_Media_Interface Enumeration defining the
  s_PartialMedium_Choices.html#Modelica.Media.Int independent variables of
  erfaces.PartialMedium.Choices.IndependentVariab a medium
  les)                                            

  [Init](Modelica_Media_Interfaces_PartialMedium_ Enumeration defining
  Choices.html#Modelica.Media.Interfaces.PartialM initialization for fluid
  edium.Choices.Init)                             flow

  [ReferenceEnthalpy](Modelica_Media_Interfaces_P Enumeration defining the
  artialMedium_Choices.html#Modelica.Media.Interf reference enthalpy of a
  aces.PartialMedium.Choices.ReferenceEnthalpy)   medium

  [ReferenceEntropy](Modelica_Media_Interfaces_Pa Enumeration defining the
  rtialMedium_Choices.html#Modelica.Media.Interfa reference entropy of a
  ces.PartialMedium.Choices.ReferenceEntropy)     medium

  [pd](Modelica_Media_Interfaces_PartialMedium_Ch Enumeration defining
  oices.html#Modelica.Media.Interfaces.PartialMed whether p or d are known
  ium.Choices.pd)                                 for the boundary
                                                  condition

  [Th](Modelica_Media_Interfaces_PartialMedium_Ch Enumeration defining
  oices.html#Modelica.Media.Interfaces.PartialMed whether T or h are known
  ium.Choices.Th)                                 as boundary condition
  ------------------------------------------------------------------------

Types and constants
===================

    type IndependentVariables = enumeration(
      T "Temperature",
      pT "Pressure, Temperature",
      ph "Pressure, Specific Enthalpy",
      phX "Pressure, Specific Enthalpy, Mass Fraction",
      pTX "Pressure, Temperature, Mass Fractions",
      dTX "Density, Temperature, Mass Fractions") 
    "Enumeration defining the independent variables of a medium";

    type Init = enumeration(
      NoInit "NoInit (no initialization)",
      InitialStates "InitialStates (initialize medium states)",
      SteadyState "SteadyState (initialize in steady state)",
      SteadyMass "SteadyMass (initialize density or pressure in steady state)") 
    "Enumeration defining initialization for fluid flow";

    type ReferenceEnthalpy = enumeration(
      ZeroAt0K 
        "The enthalpy is 0 at 0 K (default), if the enthalpy of formation is excluded",

      ZeroAt25C 
        "The enthalpy is 0 at 25 degC, if the enthalpy of formation is excluded",

      UserDefined 
        "The user-defined reference enthalpy is used at 293.15 K (25 degC)") 
    "Enumeration defining the reference enthalpy of a medium";

    type ReferenceEntropy = enumeration(
      ZeroAt0K "The entropy is 0 at 0 K (default)",
      ZeroAt0C "The entropy is 0 at 0 degC",
      UserDefined 
        "The user-defined reference entropy is used at 293.15 K (25 degC)") 
    "Enumeration defining the reference entropy of a medium";

    type pd = enumeration(
      default "Default (no boundary condition for p or d)",
      p_known "p_known (pressure p is known)",
      d_known "d_known (density d is known)") 
    "Enumeration defining whether p or d are known for the boundary condition";

    type Th = enumeration(
      default "Default (no boundary condition for T or h)",
      T_known "T_known (temperature T is known)",
      h_known "h_known (specific enthalpy h is known)") 
    "Enumeration defining whether T or h are known as boundary condition";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:29 2010.
