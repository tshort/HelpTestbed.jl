% Modelica.Electrical.Spice3.Interfaces
% 
% 

[Modelica.Electrical.Spice3](Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3).Interfaces
===================================================================================================

**Connectors, Interfaces, and partial models**

Information
-----------

::

The SPICE3 package uses the Modelica.Electrical.Analog interfaces. Only
special partial models used in the SPICE3 package are located in this
Interfaces package.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image1](Modelica.Electrical.Spice3.Interfaces.TwoPort Component with
  ControlledSourcesS.png)                                 two electrical
  [TwoPortControlledSources](Modelica_Electrical_Spice3_I ports, including
  nterfaces.html#Modelica.Electrical.Spice3.Interfaces.Tw current
  oPortControlledSources)                                 
  ------------------------------------------------------------------------

* * * * *

![image2](Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSourcesI.png) [Modelica.Electrical.Spice3.Interfaces](Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces).TwoPortControlledSources
=================================================================================================================================================================================================================================

**Component with two electrical ports, including current**

Information
-----------

::

TwoPort is a partial model that consists of two ports. It is assumed
that the current flowing into the positive pin is identical to the
current flowing out of pin n. This currents of each port are provided
explicitly as currents i1 and i2, the voltages respectively as v1 and
v2.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- ------------------
  [PositivePin](Modelica_Electrical_Analog_Interface p1  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlling
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n1  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlling
  ivePin)                                                port

  [PositivePin](Modelica_Electrical_Analog_Interface p2  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlled
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n2  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlled
  ivePin)                                                port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model TwoPortControlledSources 
      "Component with two electrical ports, including current"
      SI.Voltage v1 "Voltage drop over the controlling port";
      SI.Voltage v2 "Voltage drop over the controlled port";
      SI.Current i1 "Current flowing from pos. to neg. pin of the controlling port";
      SI.Current i2 "Current flowing from pos. to neg. pin of the controlled port";
      Modelica.Electrical.Analog.Interfaces.PositivePin p1 
        "Positive pin of the controlling port";
      Modelica.Electrical.Analog.Interfaces.NegativePin n1 
        "Negative pin of the controlling port";
      Modelica.Electrical.Analog.Interfaces.PositivePin p2 
        "Positive pin of the controlled port";
      Modelica.Electrical.Analog.Interfaces.NegativePin n2 
        "Negative pin of the controlled port";
    equation 
      v1 = p1.v - n1.v;
      v2 = p2.v - n2.v;
      0 = p1.i + n1.i;
      0 = p2.i + n2.i;
      i1 = p1.i;
      i2 = p2.i;
    end TwoPortControlledSources;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:46 2010.
