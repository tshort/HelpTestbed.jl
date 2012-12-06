% Modelica.Thermal.FluidHeatFlow:
  [Modelica.Thermal](Modelica_Thermal.html#Modelica.Thermal).FluidHeatFlow
% 
% 

**Simple components for 1-dimensional incompressible thermo-fluid flow
models**

Information
===========

::

This package contains very simple-to-use components to model coolant
flows as needed to simulate cooling e.g., of electric machines:

-   Components: components like different types of pipe models
-   Examples: some test examples
-   Interfaces: definition of connectors and partial models (containing
    the core thermodynamic equations)
-   Media: definition of media properties
-   Sensors: various sensors for pressure, temperature, volume and
    enthalpy flow
-   Sources: various flow sources

**Variables used in connectors:**

-   Pressure p
-   flow MassFlowRate m\_flow
-   SpecificEnthalpy h
-   flow EnthalpyFlowRate H\_flow

EnthalpyFlowRate means the Enthalpy = cp~constant~ \* m \* T that is
carried by the medium's flow. **Limitations and assumptions:**

-   Splitting and mixing of coolant flows (media with the same cp) is
    possible.
-   Reversing the direction of flow is possible.
-   The medium is considered to be incompressible.
-   No mixtures of media is taken into consideration.
-   The medium may not change its phase.
-   Medium properties are kept constant.
-   Pressure changes are only due to pressure drop and geodetic height
    differnence rho\*g\*h (if h \> 0).
-   A user-defined part (0..1) of the friction losses (V\_flow\*dp) are
    fed to the medium.
-   **Note:** Connected flowPorts have the same temperature (mixing
    temperature)! Since mixing may occur, the outlet temperature may be
    different from the connector's temperature. Outlet temperature is
    defined by variable T of the corresponding component.

**Further development:**

-   Additional components like tanks (if needed)

**Main Authors:**
  ~ [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern, Austria email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

    Dr. Christian Kral
      ~ [Austrian Institute of Technology, AIT](http://www.ait.ac.at/)
        Giefinggasse 2 A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
[Modelica.UsersGuide.ModelicaLicense2](Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2)
or visit
[[http://www.modelica.org/licenses/ModelicaLicense2](http://www.modelica.org/licenses/ModelicaLicense2)](http://www.modelica.org/licenses/ModelicaLicense2).*

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image6](Modelica.Thermal.FluidHeatFlow.Example Examples that
  sS.png)                                          demonstrate the usage
  [Examples](Modelica_Thermal_FluidHeatFlow_Exampl of the FluidHeatFlow
  es.html#Modelica.Thermal.FluidHeatFlow.Examples) components

  ![image7](Modelica.Thermal.FluidHeatFlow.Compone Basic components
  ntsS.png)                                        (pipes, valves)
  [Components](Modelica_Thermal_FluidHeatFlow_Comp 
  onents.html#Modelica.Thermal.FluidHeatFlow.Compo 
  nents)                                           

  ![image8](Modelica.Thermal.FluidHeatFlow.MediaS. Medium properties
  png)                                             
  [Media](Modelica_Thermal_FluidHeatFlow_Media.htm 
  l#Modelica.Thermal.FluidHeatFlow.Media)          

  ![image9](Modelica.Thermal.FluidHeatFlow.Sensors Ideal sensors to
  S.png)                                           measure port properties
  [Sensors](Modelica_Thermal_FluidHeatFlow_Sensors 
  .html#Modelica.Thermal.FluidHeatFlow.Sensors)    

  ![image10](Modelica.Thermal.FluidHeatFlow.Source Ideal fluid sources,
  sS.png)                                          e.g., ambient, volume
  [Sources](Modelica_Thermal_FluidHeatFlow_Sources flow
  .html#Modelica.Thermal.FluidHeatFlow.Sources)    

  ![image11](Modelica.Thermal.FluidHeatFlow.Interf Connectors and partial
  acesS.png)                                       models
  [Interfaces](Modelica_Thermal_FluidHeatFlow_Inte 
  rfaces.html#Modelica.Thermal.FluidHeatFlow.Inter 
  faces)                                           
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:41 2010.
