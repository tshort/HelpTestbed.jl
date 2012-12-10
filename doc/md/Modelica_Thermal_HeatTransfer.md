% Modelica.Thermal.HeatTransfer:
  [Modelica.Thermal](Modelica_Thermal.html#Modelica.Thermal).HeatTransfer
% 
% 

**Library of 1-dimensional heat transfer with lumped elements**

Information
===========

::

This package contains components to model **1-dimensional heat
transfer** with lumped elements. This allows especially to model heat
transfer in machines provided the parameters of the lumped elements,
such as the heat capacity of a part, can be determined by measurements
(due to the complex geometries and many materials used in machines,
calculating the lumped element parameters from some basic analytic
formulas is usually not possible).

Example models how to use this library are given in subpackage
**Examples**. For a first simple example, see **Examples.TwoMasses**
where two masses with different initial temperatures are getting in
contact to each other and arriving after some time at a common
temperature. **Examples.ControlledTemperature** shows how to hold a
temperature within desired limits by switching on and off an electric
resistor. A more realistic example is provided in **Examples.Motor**
where the heating of an electrical motor is modelled, see the following
screen shot of this example:

The **filled** and **non-filled red squares** at the left and right side
of a component represent **thermal ports** (connector HeatPort). Drawing
a line between such squares means that they are thermally connected. The
variables of a HeatPort connector are the temperature **T** at the port
and the heat flow rate **Q\_flow** flowing into the component (if
Q\_flow is positive, the heat flows into the element, otherwise it flows
out of the element):

    Modelica.SIunits.Temperature  T  "absolute temperature at port in Kelvin";
    Modelica.SIunits.HeatFlowRate Q_flow  "flow rate at the port in Watt";

Note, that all temperatures of this package, including initial
conditions, are given in Kelvin. For convenience, in subpackages
**HeatTransfer.Celsius**, **HeatTransfer.Fahrenheit** and
**HeatTransfer.Rankine** components are provided such that source and
sensor information is available in degree Celsius, degree Fahrenheit, or
degree Rankine, respectively. Additionally, in package
**SIunits.Conversions** conversion functions between the units Kelvin
and Celsius, Fahrenheit, Rankine are provided. These functions may be
used in the following way:

    import SI=Modelica.SIunits;
    import Modelica.SIunits.Conversions.*;
       ...
    parameter SI.Temperature T = from_degC(25);  // convert 25 degree Celsius to Kelvin

There are several other components available, such as AxialConduction
(discretized PDE in axial direction), which have been temporarily
removed from this library. The reason is that these components reference
material properties, such as thermal conductivity, and currently the
Modelica design group is discussing a general scheme to describe
material properties.

For technical details in the design of this library, see the following
reference: **Michael Tiller (2001)**: [Introduction to Physical Modeling
with Modelica](http://www.amazon.de). Kluwer Academic Publishers Boston.

**Acknowledgements:**
  ~ Several helpful remarks from the following persons are acknowledged:

John Batteh, Ford Motors, Dearborn, U.S.A; [Anton
Haumer](http://www.haumer.at/), Technical Consulting & Electrical
Engineering, Austria; Ludwig Marvan, VA TECH ELIN EBG Elektronik GmbH,
Wien, Austria; Hans Olsson, Dassault Systèmes AB, Sweden; Hubertus
Tummescheit, Lund Institute of Technology, Lund, Sweden.

**Main Authors:**
  ~ [Anton Haumer](http://www.haumer.at/)
      ~ Technical Consulting & Electrical Engineering A-3423
        St.Andrae-Woerdern, Austria email:
        [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

**Copyright © 2001-2010, Modelica Association, Michael Tiller and DLR.**

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
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image8](Modelica.Thermal.HeatTransfer.Examp Example models to
  lesS.png)                                     demonstrate the usage of
  [Examples](Modelica_Thermal_HeatTransfer_Exam package
  ples.html#Modelica.Thermal.HeatTransfer.Examp Modelica.Thermal.HeatTrans
  les)                                          fer

  ![image9](Modelica.Thermal.HeatTransfer.Compo Lumped thermal components
  nentsS.png)                                   
  [Components](Modelica_Thermal_HeatTransfer_Co 
  mponents.html#Modelica.Thermal.HeatTransfer.C 
  omponents)                                    

  ![image10](Modelica.Thermal.HeatTransfer.Sens Thermal sensors
  orsS.png)                                     
  [Sensors](Modelica_Thermal_HeatTransfer_Senso 
  rs.html#Modelica.Thermal.HeatTransfer.Sensors 
  )                                             

  ![image11](Modelica.Thermal.HeatTransfer.Sour Thermal sources
  cesS.png)                                     
  [Sources](Modelica_Thermal_HeatTransfer_Sourc 
  es.html#Modelica.Thermal.HeatTransfer.Sources 
  )                                             

  ![image12](Modelica.Thermal.HeatTransfer.Cels Components with Celsius
  iusS.png)                                     input and/or output
  [Celsius](Modelica_Thermal_HeatTransfer_Celsi 
  us.html#Modelica.Thermal.HeatTransfer.Celsius 
  )                                             

  ![image13](Modelica.Thermal.HeatTransfer.Cels Components with Fahrenheit
  iusS.png)                                     input and/or output
  [Fahrenheit](Modelica_Thermal_HeatTransfer_Fa 
  hrenheit.html#Modelica.Thermal.HeatTransfer.F 
  ahrenheit)                                    

  ![image14](Modelica.Thermal.HeatTransfer.Cels Components with Rankine
  iusS.png)                                     input and/or output
  [Rankine](Modelica_Thermal_HeatTransfer_Ranki 
  ne.html#Modelica.Thermal.HeatTransfer.Rankine 
  )                                             

  ![image15](Modelica.Thermal.HeatTransfer.Inte Connectors and partial
  rfacesS.png)                                  models
  [Interfaces](Modelica_Thermal_HeatTransfer_In 
  terfaces.html#Modelica.Thermal.HeatTransfer.I 
  nterfaces)                                    
  ------------------------------------------------------------------------

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:44 2010.
