% Modelica.Electrical.QuasiStationary.MultiPhase.Examples
% 
% 

[Modelica.Electrical.QuasiStationary.MultiPhase](Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase).Examples
=============================================================================================================================================================

**Test examples**

Information
-----------

::

Examples to demonstrate the usage of quasistationary electric
components.

::

Extends from
[Modelica.Icons.ExamplesPackage](Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage)
(Icon for packages containing runnable examples).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image2](Modelica.Electrical.QuasiStationary.MultiPhase.E Balancing an
  xamples.BalancingStarS.png)                                unsymmetrical
  [BalancingStar](Modelica_Electrical_QuasiStationary_MultiP star-connecte
  hase_Examples.html#Modelica.Electrical.QuasiStationary.Mul d
  tiPhase.Examples.BalancingStar)                            load

  ![image3](Modelica.Electrical.QuasiStationary.MultiPhase.E Balancing an
  xamples.BalancingStarS.png)                                unsymmetrical
  [BalancingDelta](Modelica_Electrical_QuasiStationary_Multi delta-connect
  Phase_Examples.html#Modelica.Electrical.QuasiStationary.Mu ed
  ltiPhase.Examples.BalancingDelta)                          load
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Electrical.QuasiStationary.MultiPhase.Examples.BalancingStarI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Examples](Modelica_Electrical_QuasiStationary_MultiPhase_Examples.html#Modelica.Electrical.QuasiStationary.MultiPhase.Examples).BalancingStar
===================================================================================================================================================================================================================================================================================

**Balancing an unsymmetrical star-connected load**

Information
-----------

::

For the unsymmetrical load (resistor, capacitor and inductor) the
parameters inductance L and capacitance C are choosen such way that the
neutral current (see currentSensor0) is zero.

P.Vaske, Berechnung von Drehstromschaltungen (German, Calculation of
polyphase circuits), Teubner 1973, page 42, example 18

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                Name Default            Description
  ----------------------------------- ---- ------------------ ------------
  Integer                             m    3                  Number of
                                                              phases

  [Voltage](Modelica_SIunits.html#Mod V    100                Source
  elica.SIunits.Voltage)                                      Voltage [V]

  [Frequency](Modelica_SIunits.html#M f    50                 Source
  odelica.SIunits.Frequency)                                  frequency
                                                              [Hz]

  [Resistance](Modelica_SIunits.html# R    10                 Load
  Modelica.SIunits.Resistance)                                resistance
                                                              [Ohm]

  [Inductance](Modelica_SIunits.html# L    (R\*sqrt(3))/(2\*M Load
  Modelica.SIunits.Inductance)             odelica.Cons...    inductance
                                                              [H]

  [Capacitance](Modelica_SIunits.html C    1/(R\*sqrt(3))/(2\ Load
  #Modelica.SIunits.Capacitance)           *Modelica.Co...    capacitance
                                                              [F]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model BalancingStar "Balancing an unsymmetrical star-connected load"
      extends Modelica.Icons.Example;
      parameter Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage V = 100 "Source Voltage";
      parameter Modelica.SIunits.Frequency f = 50 "Source frequency";
      parameter Modelica.SIunits.Resistance R = 10 "Load resistance";
      parameter Modelica.SIunits.Inductance L = (R*sqrt(3))/(2*Modelica.Constants.pi*f) 
        "Load inductance";
      parameter Modelica.SIunits.Capacitance C = 1/(R*sqrt(3))/(2*Modelica.Constants.pi*f) 
        "Load capacitance";
      QuasiStationary.MultiPhase.Sources.VoltageSource voltageSource(
        m=m,
        f=f,
        V=fill(V, m),
        phi={-(j - 1)*2*Modelica.Constants.pi/m for j in 1:m});
      QuasiStationary.MultiPhase.Basic.Star star(m=m);
      QuasiStationary.SinglePhase.Basic.Ground ground;
      QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p1(                    m=m, k=1);
      QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p2(                    k=2, m=m);
      QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p3(                    k=3, m=m);
      QuasiStationary.MultiPhase.Sensors.PowerSensor powerSensor(
                    m=m);
      QuasiStationary.MultiPhase.Sensors.CurrentSensor currentSensor(
                      m=m);
      QuasiStationary.SinglePhase.Basic.Resistor resistor(R_ref=R);
      QuasiStationary.SinglePhase.Basic.Capacitor capacitor(C=C);
      QuasiStationary.SinglePhase.Basic.Inductor inductor(L=L);
      QuasiStationary.MultiPhase.Basic.Star star2(m=m);
      QuasiStationary.MultiPhase.Basic.PlugToPin_n plugToPin_n1(                    m=m, k=1);
      QuasiStationary.MultiPhase.Basic.PlugToPin_n plugToPin_n2(                    k=2, m=m);
      QuasiStationary.MultiPhase.Basic.PlugToPin_n plugToPin_n3(                    k=3, m=m);
      QuasiStationary.SinglePhase.Sensors.CurrentSensor currentSensor0;
    equation 
      connect(ground.pin, star.pin_n);
      connect(star.plug_p, voltageSource.plug_n);
      connect(voltageSource.plug_p, powerSensor.currentP);
      connect(powerSensor.currentN, currentSensor.plug_p);
      connect(powerSensor.voltageP, powerSensor.currentP);
      connect(powerSensor.voltageN, star.plug_p);
      connect(currentSensor.plug_n, plugToPin_p2.plug_p);
      connect(currentSensor.plug_n, plugToPin_p3.plug_p);
      connect(currentSensor.plug_n, plugToPin_p1.plug_p);
      connect(plugToPin_p1.pin_p, inductor.pin_p);
      connect(plugToPin_p2.pin_p, capacitor.pin_p);
      connect(plugToPin_p3.pin_p, resistor.pin_p);
      connect(inductor.pin_n, plugToPin_n1.pin_n);
      connect(capacitor.pin_n, plugToPin_n2.pin_n);
      connect(resistor.pin_n, plugToPin_n3.pin_n);
      connect(plugToPin_n1.plug_n, star2.plug_p);
      connect(plugToPin_n2.plug_n, star2.plug_p);
      connect(plugToPin_n3.plug_n, star2.plug_p);
      connect(star2.pin_n, currentSensor0.pin_p);
      connect(currentSensor0.pin_n, star.pin_n);
    end BalancingStar;

* * * * *

![image5](Modelica.Electrical.QuasiStationary.MultiPhase.Examples.BalancingStarI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Examples](Modelica_Electrical_QuasiStationary_MultiPhase_Examples.html#Modelica.Electrical.QuasiStationary.MultiPhase.Examples).BalancingDelta
====================================================================================================================================================================================================================================================================================

**Balancing an unsymmetrical delta-connected load**

Information
-----------

::

For the unsymmetrical load (resistor, capacitor and inductor) the
parameters inductance L and capacitance C are choosen such way that the
magnitudes of the three phase currents (see currentSensor12,
currentSensor23, currentSensor31) are equal.

P.Vaske, Berechnung von Drehstromschaltungen (German, Calculation of
polyphase circuits), Teubner 1973, page 43, example 23

::

Extends from
[Modelica.Icons.Example](Modelica_Icons.html#Modelica.Icons.Example)
(Icon for runnable examples).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name Default           Description
  -------------------------------- ---- ----------------- -----------------
  Integer                          m    3                 Number of phases

  [Voltage](Modelica_SIunits.html# V\_L 100               Source voltage
  Modelica.SIunits.Voltage)        L                      line-to-line [V]

  [Frequency](Modelica_SIunits.htm f    50                Source frequency
  l#Modelica.SIunits.Frequency)                           [Hz]

  [Resistance](Modelica_SIunits.ht R    10                Load resistance
  ml#Modelica.SIunits.Resistance)                         [Ohm]

  [Inductance](Modelica_SIunits.ht L    (R\*sqrt(3))/(2\* Load inductance
  ml#Modelica.SIunits.Inductance)       Modelica.Cons...  [H]

  [Capacitance](Modelica_SIunits.h C    1/(R\*sqrt(3))/(2 Load capacitance
  tml#Modelica.SIunits.Capacitance      \*Modelica.Co...  [F]
  )                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BalancingDelta 
      "Balancing an unsymmetrical delta-connected load"
      extends Modelica.Icons.Example;
      parameter Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage V_LL = 100 "Source voltage line-to-line";
      parameter Modelica.SIunits.Frequency f = 50 "Source frequency";
      parameter Modelica.SIunits.Resistance R = 10 "Load resistance";
      parameter Modelica.SIunits.Inductance L = (R*sqrt(3))/(2*Modelica.Constants.pi*f) 
        "Load inductance";
      parameter Modelica.SIunits.Capacitance C = 1/(R*sqrt(3))/(2*Modelica.Constants.pi*f) 
        "Load capacitance";
      QuasiStationary.MultiPhase.Sources.VoltageSource voltageSource(
        m=m,
        f=f,
        V=fill(V_LL, m),
        phi={-(j - 1)*2*Modelica.Constants.pi/m for j in 1:m});
      QuasiStationary.MultiPhase.Basic.Star star(m=m);
      QuasiStationary.SinglePhase.Basic.Ground ground;
      QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p1(                    m=m, k=1);
      QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p2(                    k=2, m=m);
      QuasiStationary.MultiPhase.Basic.PlugToPin_p plugToPin_p3(                    k=3, m=m);
      QuasiStationary.MultiPhase.Sensors.PowerSensor powerSensor(
                    m=m);
      QuasiStationary.MultiPhase.Sensors.CurrentSensor currentSensor(
                      m=m);
      QuasiStationary.SinglePhase.Basic.Resistor resistor(R_ref=R);
      QuasiStationary.SinglePhase.Basic.Capacitor capacitor(C=C);
      QuasiStationary.SinglePhase.Basic.Inductor inductor(L=L);
      QuasiStationary.SinglePhase.Sensors.CurrentSensor currentSensor12;
      QuasiStationary.SinglePhase.Sensors.CurrentSensor currentSensor23;
      QuasiStationary.SinglePhase.Sensors.CurrentSensor currentSensor31;
      Modelica.ComplexBlocks.ComplexMath.ComplexToPolar complexToPolar[m];
    equation 
      connect(ground.pin, star.pin_n);
      connect(star.plug_p, voltageSource.plug_n);
      connect(voltageSource.plug_p, powerSensor.currentP);
      connect(powerSensor.currentP, powerSensor.voltageP);
      connect(powerSensor.currentN, currentSensor.plug_p);
      connect(powerSensor.voltageN, star.plug_p);
      connect(currentSensor.plug_n, plugToPin_p2.plug_p);
      connect(currentSensor.plug_n, plugToPin_p1.plug_p);
      connect(currentSensor.plug_n, plugToPin_p3.plug_p);
      connect(currentSensor12.pin_p, plugToPin_p1.pin_p);
      connect(currentSensor12.pin_n, capacitor.pin_p);
      connect(capacitor.pin_n, plugToPin_p2.pin_p);
      connect(plugToPin_p2.pin_p, currentSensor23.pin_p);
      connect(currentSensor23.pin_n, inductor.pin_p);
      connect(inductor.pin_n, plugToPin_p3.pin_p);
      connect(plugToPin_p1.pin_p, resistor.pin_n);
      connect(resistor.pin_p, currentSensor31.pin_n);
      connect(currentSensor31.pin_p, plugToPin_p3.pin_p);
      connect(currentSensor.y, complexToPolar.u);
    end BalancingDelta;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:40 2010.
