=======================================================
Modelica.Electrical.QuasiStationary.UsersGuide.Overview
=======================================================

|Modelica.Electrical.QuasiStationary.UsersGuide.Overview| `Modelica.Electrical.QuasiStationary.UsersGuide <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide>`_.Overview
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

The
`Modelica.Electrical.QuasiStationary <Modelica_Electrical_QuasiStationary.html#Modelica.Electrical.QuasiStationary>`_
library addresses the analysis of electrical circuits with purely
sinusoidal voltages and currents. The main characteristics of the
library are:

-  Only pure sinusoidal voltages and currents are taken into account.
   Higher harmonic voltages and currents are not considered.
-  Any electrical transient effects are negelcted.
-  The electrical components of this library are strictly linear.
-  The angular frequency ``omega`` of the voltages and currents of a
   circuit are determined from a reference angle ``gamma`` by means of
   ``omega = der(gamma)``.
-  The reference angle ``gamma`` is not a global quantity since it
   propagated through the connector. Therefore, independent circuits of
   different frequencies can be modeled in one model.
-  The connectors contain the real and the imaginary part of the voltage
   and the current `RMS
   phasors <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Introduction>`_

The main intention of this library is the modeling of quasi stationary
behavior of single and multi phase `AC
circuits <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ACCircuit>`_
with fixed and variable frequency. Quasi stationary theory and
applications can be found in
[`Dorf1993 <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_],
[`Burton1994 <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_],
[`Landolt1936 <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_],
[`Philippow1967 <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_],
[`Weyh1967 <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_],
[`Vaske1973 <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References>`_].

Note
^^^^

A general electrical circuit can be a DC circuit, an AC circuit with
periodic sinusoidal or non-sinusodial voltages and currents or a
transient circuit without particular waveform of voltages and currents.
Therefore a coupling model between a quasi stationary circuit and a
general (transient) electrical circuit has to be designed carefully
taking the specific application into account. As an exmaple, you may
look at the `ideal AC DC
converter <Modelica_Electrical_QuasiStationary_SinglePhase_Utilities.html#Modelica.Electrical.QuasiStationary.SinglePhase.Utilities.IdealACDCConverter>`_,
which is used in the `rectifier
example <Modelica_Electrical_QuasiStationary_SinglePhase_Examples.html#Modelica.Electrical.QuasiStationary.SinglePhase.Examples.Rectifier>`_.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------+
| Name                                                                                                                                                                                                                                  | Description               |
+=======================================================================================================================================================================================================================================+===========================+
| |image5| `Introduction <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Introduction>`_                                                                          | Introduction to phasors   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------+
| |image6| `ACCircuit <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ACCircuit>`_                                                                                | AC circuit                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------+
| |image7| `Power <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Power>`_                                                                                        | Real and reactive power   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------+
| |image8| `ReferenceSystem <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ReferenceSystem>`_                                                                    | Reference system          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------+

--------------

|image9| `Modelica.Electrical.QuasiStationary.UsersGuide.Overview <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview>`_.Introduction
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

The purely sinusoidal voltage

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Introduction/img1.png
   :align: center
   :alt:  v=\\sqrt{2}V\_{\\mathrm{RMS}}\\cos(\\omega t+\\varphi\_{v})

    v=\\sqrt{2}V\_{\\mathrm{RMS}}\\cos(\\omega t+\\varphi\_{v})
in the time domain can be represented by a complex
`rms <Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.Glossar>`_
phasor

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Introduction/img2.png
   :align: center
   :alt:  \\underline{v}=V\_{\\mathrm{RMS}}e^{j\\varphi\_{v}}.

    \\underline{v}=V\_{\\mathrm{RMS}}e^{j\\varphi\_{v}}.
For these quasi stationary phasor the following relationship applies:

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Introduction/img3.png
   :align: center
   :alt: \\begin{displaymath}
   v=\\mathrm{Re}(\\sqrt{2}\\underline{v}e^{j\\omega
   t})\\end{displaymath}

   \\begin{displaymath}
   v=\\mathrm{Re}(\\sqrt{2}\\underline{v}e^{j\\omega
   t})\\end{displaymath}
This equation is also illustrated in Fig. 1.

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Introduction/phasor_voltage.png
   :align: center
   :alt: 

Fig. 1: Relationship between voltage phasor and time domain voltage

From the above equation it is obvious that for *t* = 0 the time domain
voltage is *v* = cos(*φ\ :sub:`v`\ *). The complex representation of the
phasor corresponds with this instance, too, since the phasor is leading
the real axis by the angle *φ\ :sub:`v`\ *.

The explanation given for sinusoidal voltages can certainly also be
applied to sinusoidal currents.

See also
^^^^^^^^

`AC
circuit <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ACCircuit>`_,
`Power <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Power>`_,
`Reference
system <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ReferenceSystem>`_

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image10| `Modelica.Electrical.QuasiStationary.UsersGuide.Overview <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview>`_.ACCircuit
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

A simple
`example <Modelica_Electrical_QuasiStationary_SinglePhase_Examples.html#Modelica.Electrical.QuasiStationary.SinglePhase.Examples.SeriesResonance>`_
of a series connection of a resistor, an inductor and a capacitor as
depicted in Fig. 1 should be explained in the following. For various
frequencies, the voltage drops across the resistor, the inductor and the
capacitor should be determined.

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/ACCircuit/resonance_circuit.png
   :align: center
   :alt: 

Fig. 1: Series AC circuit of a resistor and an inductor at variable
frequency

The voltage drop across the resistor

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/ACCircuit/img1.png
   :align: center
   :alt:  \\underline{v}\_{r}=R\\underline{i}

    \\underline{v}\_{r}=R\\underline{i}
and the inductor

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/ACCircuit/img2.png
   :align: center
   :alt:  \\underline{v}\_{l}=j\\omega L\\underline{i}

    \\underline{v}\_{l}=j\\omega L\\underline{i}
and the capacitor

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/ACCircuit/img3.png
   :align: center
   :alt:  \\underline{v}\_{l}=j\\omega L\\underline{i}

    \\underline{v}\_{l}=j\\omega L\\underline{i}
add up to the total voltage

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/ACCircuit/img4.png
   :align: center
   :alt:  \\underline{v}=\\underline{v}\_{r}+\\underline{v}\_{l}

    \\underline{v}=\\underline{v}\_{r}+\\underline{v}\_{l}
as illustrated in the phasor diagram of Fig. 2.

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/ACCircuit/phasor_diagram.png
   :align: center
   :alt: 

Fig. 2: Phasor diagram of a resistor and inductance series connection

Due to the series connection of the resistor, inductor and capacitor,
the three currents are all equal:

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/ACCircuit/img5.png
   :align: center
   :alt: 

See also
^^^^^^^^

`Introduction <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Introduction>`_,
`Power <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Power>`_,
`Reference
system <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ReferenceSystem>`_

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image11| `Modelica.Electrical.QuasiStationary.UsersGuide.Overview <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview>`_.Power
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

For periodic waveforms, the average value of the instantaneous power is
**real power** *P*. **Reactive power** *Q* is a term associated with
inductors and capacitors. For pure inductors and capacitors, real power
is equal to zero. Yet, there is instantaneous power exchanged with
connecting network.

The `series resonance
circuit <Modelica_Electrical_QuasiStationary_SinglePhase_Examples.html#Modelica.Electrical.QuasiStationary.SinglePhase.Examples.SeriesResonance>`_
which was also adressed in the `AC
circuit <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ACCircuit>`_
will be investigated.

Power of a resistor
'''''''''''''''''''

The instantaneous voltage and current are in phase:

|image12|
 |image13|

Therefore, the instantaneous power is

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/power_r.png
   :align: center
   :alt: 

A graphical representation of these equations is depicted in Fig. 1

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/power_resistor.png
   :align: center
   :alt: 

Fig. 1: Instantaneous voltage, current of power of a resistor

Real power of the resistor is the average of instantaneous power:

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/p_r.png
   :align: center
   :alt: 

Power of an inductor
''''''''''''''''''''

The instantaneous voltage leads the current by a quarter of the period:

|image14|
 |image15|

Therefore, the instantaneous power is

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/power_l.png
   :align: center
   :alt: 

A graphical representation of these equations is depicted in Fig. 2

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/power_inductor.png
   :align: center
   :alt: 

Fig. 2: Instantaneous voltage, current of power of an inductor

Reqactive power of the inductor is:

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/q_l.png
   :align: center
   :alt: 

Power of a capacitor
''''''''''''''''''''

The instantaneous voltage lags the current by a quarter of the period:

|image16|
 |image17|

Therefore, the instantaneous power is

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/power_c.png
   :align: center
   :alt: 

A graphical representation of these equations is depicted in Fig. 3

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/power_capacitor.png
   :align: center
   :alt: 

Fig. 3: Instantaneous voltage, current of power of a capacitor

Reqactive power of the capacitor is:

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/q_c.png
   :align: center
   :alt: 

Complex apparent power
''''''''''''''''''''''

For an arbitrary component with two pins, real and reactive power can be
determined by the complex phasors:

.. figure:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/s.png
   :align: center
   :alt: 

In this equation \ :sup:`\*`\  represents the conjugate complex operator

See also
^^^^^^^^

`Introduction <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Introduction>`_,
`AC
circuit <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ACCircuit>`_,
`Reference
system <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ReferenceSystem>`_

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image18| `Modelica.Electrical.QuasiStationary.UsersGuide.Overview <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview>`_.ReferenceSystem
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

The reference angle ``gamma``:

-  defines the angular frequency ``omega`` of the voltages and currents
   of a circuit by means of ``omega = der(gamma)``.
-  is not a global quantity since it propagated through the connector.
   Therefore, independent circuits of different frequencies can be
   modeled in one model.
-  is present only once in a multiphase connector; a multiphase
   component has only one reference angle common to all phases.
-  can be either constant or variable, but it has to be consistent in
   one contiguous circuit.
-  is defined by the sources.

Designing new components, the guidelines of the Modelica Specification
dealing with Overconstrained Equation Operators for Connection Graphs
have to be taken into account.

See also
^^^^^^^^

`Introduction <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Introduction>`_,
`AC
circuit <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ACCircuit>`_,
`Power <Modelica_Electrical_QuasiStationary_UsersGuide_Overview.html#Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Power>`_

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:22
2010.

.. |Modelica.Electrical.QuasiStationary.UsersGuide.Overview| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarI.png
.. |Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Introduction| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ACCircuit| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |Modelica.Electrical.QuasiStationary.UsersGuide.Overview.Power| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |Modelica.Electrical.QuasiStationary.UsersGuide.Overview.ReferenceSystem| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |image5| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |image6| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |image7| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarI.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarI.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarI.png
.. |image12| image:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/v_r.png
.. |image13| image:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/i_r.png
.. |image14| image:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/v_l.png
.. |image15| image:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/i_l.png
.. |image16| image:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/v_c.png
.. |image17| image:: ../Resources/Images/Electrical/QuasiStationary/UsersGuide/Overview/Power/i_c.png
.. |image18| image:: Modelica.Electrical.QuasiStationary.UsersGuide.GlossarI.png
