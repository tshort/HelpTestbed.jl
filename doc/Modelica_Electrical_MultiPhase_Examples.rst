=======================================
Modelica.Electrical.MultiPhase.Examples
=======================================

`Modelica.Electrical.MultiPhase <Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase>`_.Examples
---------------------------------------------------------------------------------------------------------------

**Multiphase test examples**

Information
~~~~~~~~~~~

::

This package contains test examples of analog electrical multiphase
circuits.

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| Name                                                                                                                                                                            | Description                               |
+=================================================================================================================================================================================+===========================================+
| |image3| `TransformerYY <Modelica_Electrical_MultiPhase_Examples.html#Modelica.Electrical.MultiPhase.Examples.TransformerYY>`_                                                  | Test example with multiphase components   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image4| `TransformerYD <Modelica_Electrical_MultiPhase_Examples.html#Modelica.Electrical.MultiPhase.Examples.TransformerYD>`_                                                  | Test example with multiphase components   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+
| |image5| `Rectifier <Modelica_Electrical_MultiPhase_Examples.html#Modelica.Electrical.MultiPhase.Examples.Rectifier>`_                                                          | Test example with multiphase components   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------+

--------------

|image6| `Modelica.Electrical.MultiPhase.Examples <Modelica_Electrical_MultiPhase_Examples.html#Modelica.Electrical.MultiPhase.Examples>`_.TransformerYY
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Test example with multiphase components**

.. figure:: Modelica.Electrical.MultiPhase.Examples.TransformerYYD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Examples.TransformerYY

   Modelica.Electrical.MultiPhase.Examples.TransformerYY

Information
~~~~~~~~~~~

::

Test example with multiphase components:
 Star-connected voltage source feeds via a Y-Y-transformer with internal
impedance (RT, LT) a load resistor RT.
 Using f=5 Hz LT=3mH defines nominal voltage drop of approximately 10 %.
 Simulate for 1 second (2 periods) and compare voltages and currents of
source, transformer and load.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| Type                                                                | Name   | Default   | Description                        |
+=====================================================================+========+===========+====================================+
| Integer                                                             | m      | 3         | Number of phases                   |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_         | V      | 1         | Amplitude of Star-Voltage [V]      |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_     | f      | 5         | Frequency [Hz]                     |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | LT     | 0.003     | Transformer stray inductance [H]   |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | RT     | 0.05      | Transformer resistance [Ohm]       |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | RL     | 1         | Load Resistance [Ohm]              |
+---------------------------------------------------------------------+--------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TransformerYY "Test example with multiphase components"
      extends Modelica.Icons.Example;
      parameter Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage V=1 "Amplitude of Star-Voltage";
      parameter Modelica.SIunits.Frequency f=5 "Frequency";
      parameter Modelica.SIunits.Inductance LT=0.003 "Transformer stray inductance";
      parameter Modelica.SIunits.Resistance RT=0.05 "Transformer resistance";
      parameter Modelica.SIunits.Resistance RL=1 "Load Resistance";
      Sources.SineVoltage sineVoltage(
        V=fill(V, m),
        freqHz=fill(f, m),
        m=m);
      Basic.Star starS(m=m);
      Modelica.Electrical.Analog.Basic.Ground groundS;
      Ideal.IdealTransformer idealTransformer(m=m);
      Basic.Star starT1(m=m);
      Basic.Star starT2(m=m);
      Modelica.Electrical.Analog.Basic.Ground groundT2;
      Basic.Resistor transformerR(m=m, R=fill(RT, m));
      Basic.Inductor transformerL(m=m, L=fill(LT, m));
      Basic.Resistor loadR(m=m, R=fill(RL, m));
      Basic.Star starL(m=m);
      Modelica.Electrical.Analog.Basic.Ground groundT1;
    equation 
      connect(starS.pin_n, groundS.p);
      connect(starT1.pin_n,groundT1. p);
      connect(starT2.pin_n,groundT2. p);
      connect(starS.plug_p, sineVoltage.plug_n);
      connect(sineVoltage.plug_p, idealTransformer.plug_p1);
      connect(idealTransformer.plug_n1, starT1.plug_p);
      connect(starT2.plug_p, idealTransformer.plug_n2);
      connect(idealTransformer.plug_p2, transformerR.plug_p);
      connect(transformerR.plug_n, transformerL.plug_p);
      connect(transformerL.plug_n, loadR.plug_p);
      connect(loadR.plug_n, starL.plug_p);
    end TransformerYY;

--------------

|image7| `Modelica.Electrical.MultiPhase.Examples <Modelica_Electrical_MultiPhase_Examples.html#Modelica.Electrical.MultiPhase.Examples>`_.TransformerYD
--------------------------------------------------------------------------------------------------------------------------------------------------------

**Test example with multiphase components**

.. figure:: Modelica.Electrical.MultiPhase.Examples.TransformerYDD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Examples.TransformerYD

   Modelica.Electrical.MultiPhase.Examples.TransformerYD

Information
~~~~~~~~~~~

::

Test example with multiphase components:
 Star-connected voltage source feeds via a Y-D-transformer with internal
impedance (RT, LT) a load resistor RT.
 Using f=5 Hz LT=3mH defines nominal voltage drop of approximately 10 %.
 Simulate for 1 second (2 periods) and compare voltages and currents of
source, transformer and load.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+
| Type                                                                | Name   | Default                           | Description                        |
+=====================================================================+========+===================================+====================================+
| Integer                                                             | m      | 3                                 | Number of phases                   |
+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_         | V      | 1                                 | Amplitude of Star-Voltage [V]      |
+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_     | f      | 5                                 | Frequency [Hz]                     |
+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_   | LT     | 0.003                             | Transformer stray inductance [H]   |
+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | RT     | 0.05                              | Transformer resistance [Ohm]       |
+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_   | RL     | 1                                 | Load Resistance [Ohm]              |
+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+
| Real                                                                | nT     | 1/sqrt((1 - Modelica.Math.co...   | Transformer ratio                  |
+---------------------------------------------------------------------+--------+-----------------------------------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TransformerYD "Test example with multiphase components"
      extends Modelica.Icons.Example;
      parameter Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage V=1 "Amplitude of Star-Voltage";
      parameter Modelica.SIunits.Frequency f=5 "Frequency";
      parameter Modelica.SIunits.Inductance LT=0.003 "Transformer stray inductance";
      parameter Modelica.SIunits.Resistance RT=0.05 "Transformer resistance";
      parameter Modelica.SIunits.Resistance RL=1 "Load Resistance";
      parameter Real nT=1/sqrt((1 - Modelica.Math.cos(2*Modelica.Constants.pi/m))
          ^2 + (Modelica.Math.sin(2*Modelica.Constants.pi/m))^2) 
        "Transformer ratio";
      Sources.SineVoltage sineVoltage(
        V=fill(V, m),
        freqHz=fill(f, m),
        m=m);
      Basic.Star starS(m=m);
      Modelica.Electrical.Analog.Basic.Ground groundS;
      Ideal.IdealTransformer idealTransformer(m=m, n=fill(nT, m));
      Basic.Star starT(m=m);
      Basic.Delta deltaT2(m=m);
      Modelica.Electrical.Analog.Basic.Ground groundT;
      Basic.Resistor transformerR(m=m, R=fill(RT/nT^2, m));
      Basic.Inductor transformerL(m=m, L=fill(LT/nT^2, m));
      Basic.Resistor loadR(m=m, R=fill(RL, m));
      Basic.Star starL(m=m);
      Modelica.Electrical.Analog.Basic.Ground groundL;
    equation 
      connect(groundS.p, starS.pin_n);
      connect(groundT.p, starT.pin_n);
      connect(starS.plug_p, sineVoltage.plug_n);
      connect(sineVoltage.plug_p, idealTransformer.plug_p1);
      connect(idealTransformer.plug_n1, starT.plug_p);
      connect(idealTransformer.plug_p2, transformerR.plug_p);
      connect(transformerR.plug_n, transformerL.plug_p);
      connect(transformerL.plug_n, deltaT2.plug_p);
      connect(deltaT2.plug_n, idealTransformer.plug_n2);
      connect(deltaT2.plug_p, loadR.plug_p);
      connect(loadR.plug_n, starL.plug_p);
      connect(starL.pin_n, groundL.p);
    end TransformerYD;

--------------

|image8| `Modelica.Electrical.MultiPhase.Examples <Modelica_Electrical_MultiPhase_Examples.html#Modelica.Electrical.MultiPhase.Examples>`_.Rectifier
----------------------------------------------------------------------------------------------------------------------------------------------------

**Test example with multiphase components**

.. figure:: Modelica.Electrical.MultiPhase.Examples.RectifierD.png
   :align: center
   :alt: Modelica.Electrical.MultiPhase.Examples.Rectifier

   Modelica.Electrical.MultiPhase.Examples.Rectifier

Information
~~~~~~~~~~~

::

Test example with multiphase components:
 Star-connected voltage source feeds via a line reactor a diode bridge
rectifier with a DC burden.
 Using f=5 Hz, simulate for 1 second (2 periods) and compare voltages
and currents of source and DC burden, neglecting initial transient.

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                                  | Name   | Default   | Description                     |
+=======================================================================+========+===========+=================================+
| Integer                                                               | m      | 3         | Number of phases                |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_           | V      | 1         | Amplitude of Star-Voltage [V]   |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_       | f      | 5         | Frequency [Hz]                  |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| `Inductance <Modelica_SIunits.html#Modelica.SIunits.Inductance>`_     | L      | 0.001     | Line Inductance [H]             |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | RL     | 2         | Load Resistance [Ohm]           |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| `Capacitance <Modelica_SIunits.html#Modelica.SIunits.Capacitance>`_   | C      | 0.05      | Total DC-Capacitance [F]        |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+
| `Resistance <Modelica_SIunits.html#Modelica.SIunits.Resistance>`_     | RE     | 1E6       | Earthing Resistance [Ohm]       |
+-----------------------------------------------------------------------+--------+-----------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Rectifier "Test example with multiphase components"
      extends Modelica.Icons.Example;
      parameter Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage V=1 "Amplitude of Star-Voltage";
      parameter Modelica.SIunits.Frequency f=5 "Frequency";
      parameter Modelica.SIunits.Inductance L=0.001 "Line Inductance";
      parameter Modelica.SIunits.Resistance RL=2 "Load Resistance";
      parameter Modelica.SIunits.Capacitance C=0.05 "Total DC-Capacitance";
      parameter Modelica.SIunits.Resistance RE=1E6 "Earthing Resistance";
      Sources.SineVoltage sineVoltage(
        m=m,
        V=fill(V, m),
        freqHz=fill(f, m));
      Basic.Star starS(m=m);
      Basic.Inductor supplyL(m=m, L=fill(L, m));
      Ideal.IdealDiode idealDiode1(m=m);
      Basic.Star star1(m=m);
      Ideal.IdealDiode idealDiode2(m=m);
      Basic.Star star2(m=m);
      Modelica.Electrical.Analog.Basic.Resistor loadR(R=RL);
      Modelica.Electrical.Analog.Basic.Capacitor cDC1(C=2*C);
      Modelica.Electrical.Analog.Basic.Capacitor cDC2(C=2*C);
      Modelica.Electrical.Analog.Basic.Ground groundDC;
    equation 
      connect(cDC1.n, cDC2.p);
      connect(cDC1.n, groundDC.p);
      connect(starS.plug_p, sineVoltage.plug_n);
      connect(sineVoltage.plug_p, supplyL.plug_p);
      connect(idealDiode1.plug_p, supplyL.plug_n);
      connect(idealDiode2.plug_n, supplyL.plug_n);
      connect(idealDiode1.plug_n, star1.plug_p);
      connect(idealDiode2.plug_p, star2.plug_p);
      connect(star2.pin_n, loadR.n);
      connect(star2.pin_n, cDC2.n);
      connect(star1.pin_n,loadR. p);
      connect(star1.pin_n, cDC1.p);
    end Rectifier;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:17
2010.

.. |Modelica.Electrical.MultiPhase.Examples.TransformerYY| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYS.png
.. |Modelica.Electrical.MultiPhase.Examples.TransformerYD| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYS.png
.. |Modelica.Electrical.MultiPhase.Examples.Rectifier| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYS.png
.. |image3| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYS.png
.. |image4| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYS.png
.. |image5| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYS.png
.. |image6| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYI.png
.. |image7| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYI.png
.. |image8| image:: Modelica.Electrical.MultiPhase.Examples.TransformerYYI.png
