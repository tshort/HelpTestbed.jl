% Modelica.Media.Incompressible:
  [Modelica.Media](Modelica_Media.html#Modelica.Media).Incompressible
% 
% 

**Medium model for T-dependent properties, defined by tables or
polynomials**

Information
===========

::

Incompressible media package
----------------------------

This package provides a structure and examples of how to create simple
medium models of incompressible fluids, meaning fluids with very little
pressure influence on density. The medium properties is typically
described in terms of tables, functions or polynomial coefficients.

Definitions
-----------

The common meaning of *incompressible* is that properties like density
and enthalpy are independent of pressure. Thus properties are
conveniently described as functions of temperature, e.g., as polynomials
density(T) and cp(T). However, enthalpy can not be independent of
pressure since h = u - p/d. For liquids it is anyway common to neglect
this dependence since for constant density the neglected term is (p
-p0)/d, which in comparison with cp is very small for most liquids. For
water, the equivalent change of temperature to increasing pressure 1 bar
is 0.025 Kelvin.

Two boolean flags are used to choose how enthalpy and inner energy is
calculated:

-   **enthalpyOfT**=true, means assuming that enthalpy is only a
    function of temperature, neglecting the pressure dependent term.
-   **singleState**=true, means also neglect the pressure influence on
    inner energy, which makes all medium properties pure functions of
    temperature.

The default setting for both these flags is true, which enables the
simulation tool to choose temperature as the only medium state and
avoids non-linear equation systems, see the section about [Static state
selection](Modelica_Media_UsersGuide_MediumDefinition.html#Modelica.Media.UsersGuide.MediumDefinition.StaticStateSelection)
in the Modelica.Media User's Guide.

Contents
--------

Currently, the package contains the following parts:

1.  [Table based medium
    models](Modelica_Media_Incompressible_TableBased.html#Modelica.Media.Incompressible.TableBased)
2.  [Example medium
    models](Modelica_Media_Incompressible_Examples.html#Modelica.Media.Incompressible.Examples)

A few examples are given in the Examples package. The model
[Examples.Glycol47](Modelica_Media_Incompressible_Examples_Glycol47.html#Modelica.Media.Incompressible.Examples.Glycol47)
shows how the medium models can be used. For more realistic examples of
how to implement volume models with medium properties look in the
[Medium usage
section](Modelica_Media_UsersGuide_MediumUsage.html#Modelica.Media.UsersGuide.MediumUsage)
of the User's Guide.

::

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                                  Description
  ----------------------------------------------------- ------------------
  ![image3](Modelica.Media.IdealGases.SingleGases.ArS.p Examples for
  ng)                                                   incompressible
  [Examples](Modelica_Media_Incompressible_Examples.htm media
  l#Modelica.Media.Incompressible.Examples)             

  ![image4](Modelica.Media.Incompressible.CommonS.png)  Common data
  [Common](Modelica_Media_Incompressible_Common.html#Mo structures
  delica.Media.Incompressible.Common)                   

  ![image5](Modelica.Media.Incompressible.TableBasedS.p Incompressible
  ng)                                                   medium properties
  [TableBased](Modelica_Media_Incompressible_TableBased based on tables
  .html#Modelica.Media.Incompressible.TableBased)       
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:34 2010.
