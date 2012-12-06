% Modelica.Media.Incompressible.Examples
% 
% 

[Modelica.Media.Incompressible](Modelica_Media_Incompressible.html#Modelica.Media.Incompressible).Examples
==========================================================================================================

**Examples for incompressible media**

Information
-----------

::

This package provides a few examples of how to construct medium models
for incompressible fluids. The package contains:

-   **Glycol47**, a model of 47% glycol water mixture, based on tables
    of density and heat capacity as functions of temperature.
-   **Essotherm650**, a medium model for thermal oil, also based on
    tables.

::

Extends from
[Modelica.Icons.MaterialPropertiesPackage](Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage)
(Icon for package containing property classes).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ---------------
  ![image3](Modelica.Media.Incompressible.TableBasedS.png) 1,2-Propylene
  [Glycol47](Modelica_Media_Incompressible_Examples_Glycol glycol, 47%
  47.html#Modelica.Media.Incompressible.Examples.Glycol47) mixture with
                                                           water

  ![image4](Modelica.Media.Incompressible.TableBasedS.png) Essotherm
  [Essotherm650](Modelica_Media_Incompressible_Examples_Es thermal oil
  sotherm650.html#Modelica.Media.Incompressible.Examples.E 
  ssotherm650)                                             

  ![image5](Modelica.Media.Incompressible.Examples.TestGly Test Glycol47
  colS.png)                                                Medium model
  [TestGlycol](Modelica_Media_Incompressible_Examples.html 
  #Modelica.Media.Incompressible.Examples.TestGlycol)      
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Media.Incompressible.Examples.TestGlycolI.png) [Modelica.Media.Incompressible.Examples](Modelica_Media_Incompressible_Examples.html#Modelica.Media.Incompressible.Examples).TestGlycol
=========================================================================================================================================================================================================

**Test Glycol47 Medium model**

Information
-----------

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Modelica definition
-------------------

    model TestGlycol "Test Glycol47 Medium model"
      extends Modelica.Icons.Example;
      package Medium = Glycol47 "Medium model (Glycol47)";
      Medium.BaseProperties medium;

      Medium.DynamicViscosity eta=Medium.dynamicViscosity(medium.state);
      Medium.ThermalConductivity lambda=Medium.thermalConductivity(medium.state);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium.state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium.state);
    protected 
      constant Modelica.SIunits.Time timeUnit = 1;
      constant Modelica.SIunits.Temperature Ta = 1;
    equation 
      medium.p = 1e5;
      medium.T = Medium.T_min + time/timeUnit*Ta;
    end TestGlycol;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:34 2010.
