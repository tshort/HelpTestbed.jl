% Modelica.Electrical.Analog.Examples.Utilities
% 
% 

[Modelica.Electrical.Analog.Examples](Modelica_Electrical_Analog_Examples.html#Modelica.Electrical.Analog.Examples).Utilities
=============================================================================================================================

**Utility components used by package Examples**

Information
-----------

::

This package contains some utility components used by package examples.
These components are auxiliary components that should not be used like
true MLS components since they are designed the purpose of the examples
only, not for common use.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image4](Modelica.Electrical.Analog.Examples.Utilities.Na CMOS NAND
  ndS.png)                                                   Gate (see
  [Nand](Modelica_Electrical_Analog_Examples_Utilities.html# Tietze/Schenk
  Modelica.Electrical.Analog.Examples.Utilities.Nand)        ,
                                                             page 157)

  ![image5](Modelica.Electrical.Analog.Examples.Utilities.No Chua's
  nlinearResistorS.png)                                      resistor
  [NonlinearResistor](Modelica_Electrical_Analog_Examples_Ut 
  ilities.html#Modelica.Electrical.Analog.Examples.Utilities 
  .NonlinearResistor)                                        

  ![image6](Modelica.Electrical.Analog.Examples.Utilities.Re Ideal switch
  alSwitchS.png)                                             with
  [RealSwitch](Modelica_Electrical_Analog_Examples_Utilities resistance
  .html#Modelica.Electrical.Analog.Examples.Utilities.RealSw 
  itch)                                                      

  ![image7](Modelica.Electrical.Analog.Examples.Utilities.Tr Transistor
  ansistorS.png)                                             with
  [Transistor](Modelica_Electrical_Analog_Examples_Utilities resistance an
  .html#Modelica.Electrical.Analog.Examples.Utilities.Transi capacitance
  stor)                                                      
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Electrical.Analog.Examples.Utilities.NandI.png) [Modelica.Electrical.Analog.Examples.Utilities](Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities).Nand
=========================================================================================================================================================================================================================

**CMOS NAND Gate (see Tietze/Schenk, page 157)**

Information
-----------

::

The nand gate is a basic CMOS building block. It consists of four CMOS
transistors.

**Reference:**

Tietze, U.; Schenk, Ch.: Halbleiter-Schaltungstechnik. Springer-Verlag
Berlin Heidelberg NewYork 1980, p. 157

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica x1    
  .Electrical.Analog.Interfaces.Pin)                              

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica x2    
  .Electrical.Analog.Interfaces.Pin)                              

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica Vdd   
  .Electrical.Analog.Interfaces.Pin)                              

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica y     
  .Electrical.Analog.Interfaces.Pin)                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Nand "CMOS NAND Gate (see Tietze/Schenk, page 157)"

      Semiconductors.PMOS TP1(
        W=6.5e-6,
        L=3.1e-6,
        Beta=1.05e-5,
        Vt=-1,
        K2=0.41,
        K5=0.8385,
        dW=-2.5e-6,
        dL=-2.1e-6);
      Semiconductors.PMOS TP2(
        W=6.5e-6,
        L=3.1e-6,
        Beta=1.05e-5,
        Vt=-1,
        K2=0.41,
        K5=0.8385,
        dW=-2.5e-6,
        dL=-2.1e-6);
      Semiconductors.NMOS TN1(
        W=6.5e-6,
        L=3.1e-6,
        Beta=4.1e-5,
        Vt=0.8,
        K2=1.144,
        K5=0.7311,
        dW=-2.5e-6,
        dL=-1.5e-6);
      Semiconductors.NMOS TN2(
        W=6.5e-6,
        L=3.1e-6,
        Beta=4.1e-5,
        Vt=0.8,
        K2=1.144,
        K5=0.7311,
        dW=-2.5e-6,
        dL=-1.5e-6);
      Basic.Capacitor C4(C=0.4e-13);
      Basic.Capacitor C7(C=0.4e-13);
      Basic.Ground Gnd;
      Basic.Ground Gnd2;
      Basic.Ground Gnd3;
      Basic.Ground Gnd6;
      Basic.Ground Gnd7;
      Basic.Ground Gnd8;
      Interfaces.Pin x1;
      Interfaces.Pin x2;
      Interfaces.Pin Vdd;
      Interfaces.Pin y;
    equation 
      connect(TN1.S, TN2.D);
      connect(TN2.B, Gnd.p);
      connect(TN2.D, C7.p);
      connect(TN2.S, Gnd.p);
      connect(TP1.S, TN1.D);
      connect(TP1.G, TN1.G);
      connect(C4.n, Gnd2.p);
      connect(C7.n, Gnd3.p);
      connect(TP2.B, Gnd6.p);
      connect(TN1.B, Gnd7.p);
      connect(TP1.B, Gnd8.p);
      connect(TP2.G, x1);
      connect(TP2.G, TN2.G);
      connect(TN1.G, x2);
      connect(TP2.S, TN1.D);
      connect(TN1.D, C4.p);
      connect(Vdd, TP1.D);
      connect(TP2.D, Vdd);
      connect(C4.p, y);
    end Nand;

* * * * *

![image9](Modelica.Electrical.Analog.Examples.Utilities.NonlinearResistorI.png) [Modelica.Electrical.Analog.Examples.Utilities](Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities).NonlinearResistor
===================================================================================================================================================================================================================================================

**Chua's resistor**

Information
-----------

::

This is the only nonlinear component for Chua';s circuit. It is a
piecewise linear resistor with both an inner and an outer range, which
includes the inner one. The slopes of both ranges are given by
parameters. The resistance caracteristic is continuous. For Chua';s
circuit both slopes have to be chosen to be negative.

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name Defaul Description
                                              t      
  -------------------------------------- ---- ------ ----------------------
  [Conductance](Modelica_SIunits.html#Mo Ga          Conductance in inner
  delica.SIunits.Conductance)                        voltage range [S]

  [Conductance](Modelica_SIunits.html#Mo Gb          Conductance in outer
  delica.SIunits.Conductance)                        voltage range [S]

  [Voltage](Modelica_SIunits.html#Modeli Ve          Inner voltage range
  ca.SIunits.Voltage)                                limit [V]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Nam Description
                                              e   
  ------------------------------------------- --- -------------------------
  [PositivePin](Modelica_Electrical_Analog_In p   Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In     p.v \> n.v for positive
  terfaces.PositivePin)                           voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n   Negative pin
  terfaces.html#Modelica.Electrical.Analog.In     
  terfaces.NegativePin)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model NonlinearResistor "Chua's resistor"
      extends Interfaces.OnePort;

      parameter SI.Conductance Ga "Conductance in inner voltage range";
      parameter SI.Conductance Gb "Conductance in outer voltage range";
      parameter SI.Voltage Ve "Inner voltage range limit";
    equation 
      i = if (v < -Ve) then Gb*(v + Ve) - Ga*Ve else if (v > Ve) then Gb*(v - Ve)
         + Ga*Ve else Ga*v;
    end NonlinearResistor;

* * * * *

![image10](Modelica.Electrical.Analog.Examples.Utilities.RealSwitchI.png) [Modelica.Electrical.Analog.Examples.Utilities](Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities).RealSwitch
======================================================================================================================================================================================================================================

**Ideal switch with resistance**

Information
-----------

::

This component is a special kind of a commuting switch which possesses
an additional constant resistance. This resistance was necessary in an
example. It is not designed for common use.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                     Name   Descripti
                                                                  on
  -------------------------------------------------------- ------ ---------
  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelic p      
  a.Electrical.Analog.Interfaces.Pin)                             

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelic n1     
  a.Electrical.Analog.Interfaces.Pin)                             

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelic n2     
  a.Electrical.Analog.Interfaces.Pin)                             

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelic contro 
  a.Electrical.Analog.Interfaces.Pin)                      l      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model RealSwitch "Ideal switch with resistance"

      Ideal.ControlledIdealCommutingSwitch S(level=2.5);
      Basic.Resistor R(R=0.01);
      Interfaces.Pin p;
      Interfaces.Pin n1;
      Interfaces.Pin n2;
      Interfaces.Pin control;
    equation 
      connect(p, R.p);
      connect(R.n, S.p);
      connect(n1, S.n1);
      connect(n2, S.n2);
      connect(control, S.control);
    end RealSwitch;

* * * * *

![image11](Modelica.Electrical.Analog.Examples.Utilities.TransistorI.png) [Modelica.Electrical.Analog.Examples.Utilities](Modelica_Electrical_Analog_Examples_Utilities.html#Modelica.Electrical.Analog.Examples.Utilities).Transistor
======================================================================================================================================================================================================================================

**Transistor with resistance an capacitance**

Information
-----------

::

Since the simple bipolar transistor model does not have base or
collector resistances both are added in this component. Additionally, a
capacity is added to the base pin. See the schematic for more detailes.
In such a way the transistor model can be enhanced to become more
common.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica c     
  .Electrical.Analog.Interfaces.Pin)                              

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica b     
  .Electrical.Analog.Interfaces.Pin)                              

  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica e     
  .Electrical.Analog.Interfaces.Pin)                              
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Transistor "Transistor with resistance an capacitance"

      Basic.Resistor rtb(R=0.05);
      Basic.Resistor rtc(R=0.1);
      Basic.Capacitor ct(C=1e-10);
      Semiconductors.NPN Tr(
        Bf=50,
        Br=0.1,
        Is=1e-16,
        Vak=0.02,
        Tauf=0.12e-9,
        Taur=5e-9,
        Ccs=1e-12,
        Cje=0.4e-12,
        Cjc=0.5e-12,
        Phie=0.8,
        Me=0.4,
        Phic=0.8,
        Mc=0.333,
        Gbc=1e-15,
        Gbe=1e-15,
        Vt=0.02585);
      Basic.Ground Ground1;
      Interfaces.Pin c;
      Interfaces.Pin b;
      Interfaces.Pin e;
    equation 
      connect(rtb.n, Tr.B);
      connect(rtb.n, ct.p);
      connect(ct.n, Ground1.p);
      connect(Tr.C, rtc.p);
      connect(rtc.n, c);
      connect(b, rtb.p);
      connect(Tr.E, e);
    end Transistor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:06 2010.
