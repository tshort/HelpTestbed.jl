============================================
Modelica.Magnetic.FundamentalWave.UsersGuide
============================================

|Modelica.Magnetic.FundamentalWave.UsersGuide| `Modelica.Magnetic.FundamentalWave <Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave>`_.UsersGuide
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

This library contains components for modelling of electromagnetic
fundamental wave models for the application in three phase `electric
machines <Modelica_Magnetic_FundamentalWave_BasicMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines>`_.
DC machines are (currently) not included in this library. The
FundamentalWave library is an alternative approach to the
`Modelica.Electrical.Machines <Modelica_Electrical_Machines.html#Modelica.Electrical.Machines>`_
library. A great advantage of this library is the strict object
orientation of the electrical and magnetic components that the electric
machines models are composed of. From a didactic point of view this
library is very beneficial for students in the field of electrical
engineering.

For more details see the
`concept. <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.Concept>`_

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+
| Name                                                                                                                                                                                        | Description                |
+=============================================================================================================================================================================================+============================+
| |image5| `Concept <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.Concept>`_                                                                | Fundamental wave concept   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+
| |image6| `Contact <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.Contact>`_                                                                | Contact                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+
| |image7| `ReleaseNotes <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.ReleaseNotes>`_                                                      | Release Notes              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+
| |image8| `References <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_                                                          | References                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------+

--------------

|image9| `Modelica.Magnetic.FundamentalWave.UsersGuide <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide>`_.Concept
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Overview of the concept of fundamental waves
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

The exact magnetic field in the air gap of an electric machine is
usually determined by an electro magnetic finite element analysis. The
waveform of the magnetic field, e.g., the magnetic potential difference
|image10|, consists of a spatial fundamental wave - with respect to one
pole pair - and additional harmonic waves of different order. The
fundamental wave is however dominant in the air gap of an electric
machine.

Field lines of a four pole induction machine

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/UsersGuide/Concept/aimc_fem.png
   :align: center
   :alt: 

In the fundamental wave theory only a pure sinusoidal distribution of
magnetic quantities is assumed. It is thus assumed that all other
harmonic wave effects are not taken into account.

Magnetic potential difference of a four pole machine, where |image11| is
the angle of the spatial domain with respect to one pole pair

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/UsersGuide/Concept/four_pole_V_m.png
   :align: center
   :alt: 

The waveforms of the magnetic field quantities, e.g., the magnetic
potential difference |image12|, can be represented by complex phasor,
e.g., |image13| according to:

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/V_m_real_complex.png
   :align: center
   :alt: 

Spatial distribution of the magnetic potential difference (red shade =
positive sine wave, blue shade = negative sine wave) including complex
phasor representing this spatial distribution

.. figure:: ../Resources/Images/Magnetic/FundamentalWave/UsersGuide/Concept/electrical_reference_V_m.png
   :align: center
   :alt: 

The potential and flow quantities of this library are the complex
magnetic potential difference and the complex magnetic flux as defined
in the basic `magnetic
port <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort>`_.
Due to the sinusoidal distribution of magnetic potential and flux, such
a complex phasor representation can be used. This way, the
FundamentalWave library can be seen as a spatial extension of the
`FluxTubes <Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes>`_
library.

The specific arrangement of windings in electric machines with |image14|
pole pairs give rise to sinusoidal dominant magnetic potential wave. The
spatial period of this wave is determined by one pole pair
[`Mueller70 <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_,
`Spaeth73 <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_].

The main components of an electric machine model based on the
FundamentalWave library are `multi
phase <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding>`_
and `single phase
windings <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding>`_,
`air
gap <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap>`_
as well as
`symmetric <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding>`_
or `salient
cage <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding>`_
models. The electric machine models provided in this library are based
on symmetrical three phase windings in the stator and equivalent two or
three phase windings in the rotor.

Assumptions
^^^^^^^^^^^

The machine models of the FundamentalWave library are currently based on
the following assumptions

-  The number of stator phases is limited to three
   [`Eckhardt82 <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_]
-  The phase windings are assumed to be symmetrical; an extension to
   this approach can be considererd
-  Only fundamental wave effects are taken into account
-  There are no restrictions on the waveforms of voltages and currents
-  All resistances and inductances are modeled as constant quantities;
   saturation effects, cross coupling effects
   [`Li07 <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_],
   temperature dependency of resistances and deep bar effects could be
   considered in an extension to this library
-  Core losses, i.e., eddy current and hysteresis losses, friction
   losses and stray load losses are currently not considered
   [`Haumer09 <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_]
-  The only dissipated losses in the electric machine models are
   currently ohmic heat losses

Note
^^^^

The term **fundamental wave** refers to spatial waves of the electro
magnetic quantities. This library has no limitations with respect to the
waveforms of the time domain signals of any voltages, currents, etc.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image15| `Modelica.Magnetic.FundamentalWave.UsersGuide <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide>`_.Contact
------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Contact
^^^^^^^

Christian Kral
 `Austrian Institute of Technology, AIT <http://www.ait.ac.at>`_
 Mobility Department
 Giefinggasse 2, 1210 Vienna, Austria
 email: `christian.kral@ait.ac.at <mailto:christian.kral@ait.ac.at>`_

Anton Haumer
 `Technical Consulting & Electrical Engineering <http://www.haumer.at>`_
 3423 St. Andrae-Woerdern, Austria
 email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

Acknowledgements
^^^^^^^^^^^^^^^^

Based on an original idea of Michael Beuschel this library was developed
[`Beuschel00 <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_].
The authors of the FundamentalWave library would like to thank Michael
Beuschel for contributing his source code to this library.

::

Extends from
`Modelica.Icons.Contact <Modelica_Icons.html#Modelica.Icons.Contact>`_
(Icon for contact information).

--------------

|image16| `Modelica.Magnetic.FundamentalWave.UsersGuide <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide>`_.ReleaseNotes
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Version 1.7.1, 2010-09-03
'''''''''''''''''''''''''

-  Naming and documentation of
   `PartialTwoPort <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort>`_
   is exchanged by
   `PartialTwoPortElementary <Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary>`_
   to match the naming conventions of
   `Rotational.Interfaces <Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces>`_
   and
   `Translational.Interfaces <Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces>`_
-  Fixed a broken link and updated documentation
-  Adaptions to Complex SIunits

Version 1.7.0, 2010-05-31
'''''''''''''''''''''''''

-  Changed `symmetric multi phase
   winding <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding>`_
   model

   -  Added zero sequence inductance based on `zero
      inductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.ZeroInductor>`_
   -  Replaced electrical model of stray
      `inductor <Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Inductor>`_
      by stray
      `reluctance <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Reluctance>`_
      model
   -  Integrated cores
      `losses <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent>`_
      and `heat
      port <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_

-  Added rotor core loss parameters in asynchronous induction machine
   with slip rings
-  Renamed heat ports of `single phase
   winding <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding>`_
   and `symmetric multi phase
   winding <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding>`_
-  Relocated core losses between zero inductor and stray reluctance
   model in the magntic domain
-  Renamed instances of stator and rotor (winding) models in each
   machines
-  Added magnetic potential sensor
-  Removed state selections
-  Updates due to changed loss variable and heat port names in
   `Electrical.Machines <Modelica_Electrical_Machines.html#Modelica.Electrical.Machines>`_
-  Added machine specific output records to summarize power and loss
   balance
-  Updated images of Users Guide
-  Improved performance due to ``annotation(Evaluate=true)`` added to
   the parameters of the `single phase
   winding <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding>`_
-  Reduced number of states in `symmetric
   cage <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWinding>`_
   model by introducing an additional non-grounded star connection

Version 1.6.0, 2010-05-05
'''''''''''''''''''''''''

-  Renamed all parameters ``windingAngle`` to ``orientation``. The
   following classes are affected:

   -  `SinglePhaseElectroMagneticConverter <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter>`_
   -  `MultiPhaseElectroMagneticConverter <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter>`_
   -  `SinglePhaseWinding <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding>`_
   -  `symmetricOrientation <Modelica_Magnetic_FundamentalWave_BasicMachines_Functions.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Functions.symmetricOrientation>`_

-  Update due to changed class names in
   `Machines.Icons <Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons>`_
-  Using
   `HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort>`_
   instead of
   `Analog.Interfaces.ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_
   in
   `EddyCurrent <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent>`_
-  Added ``modelica://`` to all Modelica hyper links
-  Fixed bug in displayed parameters of
   `EddyCurrent <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent>`_
-  Updated some images (and renamed image file ``LossPower.png`` to
   ``lossPower.png``)
-  Exchanged positive and negative stator ports of
   `RotorSaliencyAirGap <Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap>`_
   model, adapted equations accordingly and updated code documentation.

Version 1.5.0, 2010-04-28
'''''''''''''''''''''''''

-  Added stator core, friction, stray load and brush losses to all
   machine types based on `loss
   models <Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses>`_
   of the
   `Machines <Modelica_Electrical_Machines.html#Modelica.Electrical.Machines>`_
   library.
-  Changed parameter of
   `EddyCurrent <Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent>`_
   model from R to G
-  Fixed wrong sign of internal quantity ``tauElectrical``, model
   behavior does not change
-  Rewrote equations of electro magnetic coupling to look more elegant

Version 1.4.0, 2010-04-22
'''''''''''''''''''''''''

-  Added eddy current model in accordance to
   `FluxTubes <Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes>`_
   library
-  Added thermal heat port to eddy current model
-  Minor updates due to dependencies of
   `Machines <Modelica_Electrical_Machines.html#Modelica.Electrical.Machines>`_

Version 1.3.0, 2010-02-26
'''''''''''''''''''''''''

-  Changed some icon references
-  Added state selections for the machine models
-  Restructured partial machine model
-  Added copyright information

Version 1.2.0, 2010-02-17
'''''''''''''''''''''''''

-  Renamed Machines to BasicMachines
-  Updated dependencies due to renamed class
   `LinearTemperatureCoefficient20 <Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20>`_
-  Added release notes in User's Guide

Version 1.1.0, 2010-02-15
'''''''''''''''''''''''''

-  Added thermal connectors and temperature dependent resistances

Version 1.0.0, 2010-02-04
'''''''''''''''''''''''''

-  Integrated the libray into the MSL

Version 0.4.0, 2009-10-29
'''''''''''''''''''''''''

-  Corrected bug in magnetic potential calculation

Version 0.3.0, 2009-10-28
'''''''''''''''''''''''''

-  Renamed number of turns and winding angles

Version 0.2.0, 2009-10-20
'''''''''''''''''''''''''

-  Added idle model

Version 0.1.0, 2009-07-22
'''''''''''''''''''''''''

-  First version based on the concept of the FluxTubes library and the
   Magnetics library of Michael Beuschel
   [`Beuschel00 <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References>`_]

::

Extends from
`Modelica.Icons.ReleaseNotes <Modelica_Icons.html#Modelica.Icons.ReleaseNotes>`_
(Icon for release notes in documentation).

--------------

|image17| `Modelica.Magnetic.FundamentalWave.UsersGuide <Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide>`_.References
---------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

References
^^^^^^^^^^

+----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Beuschel00]   | M. Beuschel, "`A uniform approach for modelling electrical machines <http://www.modelica.org/events/workshop2000/proceedings/Beuschel.pdf>`_," *Modelica Workshop*, pp. 101-108, October 23-24, 2000.                                                              |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Eckhardt82]   | H. Eckhardt, *Grundzüge der elektrischen Maschinen* (in German), B. G. Teubner Verlag, Stuttgart, 1982.                                                                                                                                                            |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Haumer09]     | A. Haumer, and C. Kral, "`The AdvancedMachines Library: Loss Models for Electric Machines <http://www.modelica.org/events/modelica2009/Proceedings/memorystick/pages/papers/0103/0103.pdf>`_," *Modelica Conference*, 2009.                                        |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Li07]         | Y. Li, Z. Q. Zhu, D. Howe, and C. M. Bingham, "Modeling of Cross-Coupling Magnetic Saturation in Signal-Injection-Based Sensorless Control of Permanent-Magnet Brushless AC Motors," *IEEE Transactions on Magnetics*, vol. 43, no. 6, pp. 2552-2554, June 2007.   |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Mueller70]    | G, Müller, *Elektrische Maschinen -- Grundlagen, Aufbau und Wirkungsweise* (in German), VEB Verlag Technik Berlin, 4th edition, 1970.                                                                                                                              |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+
| [Spaeth73]     | H. Späth, *Elektrische Maschinen -- Eine Einführung in die Theorie des Betriebsverhaltens* (in German), Springer-Verlag, Berlin, Heidelberg, New York, 1973.                                                                                                       |
+----------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+

::

Extends from
`Modelica.Icons.References <Modelica_Icons.html#Modelica.Icons.References>`_
(Icon for external references).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:53
2010.

.. |Modelica.Magnetic.FundamentalWave.UsersGuide| image:: Modelica.Magnetic.FundamentalWave.UsersGuideI.png
.. |Modelica.Magnetic.FundamentalWave.UsersGuide.Concept| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ConceptS.png
.. |Modelica.Magnetic.FundamentalWave.UsersGuide.Contact| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ContactS.png
.. |Modelica.Magnetic.FundamentalWave.UsersGuide.ReleaseNotes| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ReleaseNotesS.png
.. |Modelica.Magnetic.FundamentalWave.UsersGuide.References| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ReferencesS.png
.. |image5| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ConceptS.png
.. |image6| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ContactS.png
.. |image7| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ReleaseNotesS.png
.. |image8| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ReferencesS.png
.. |image9| image:: Modelica.Magnetic.FundamentalWave.UsersGuideI.png
.. |image10| image:: ../Resources/Images/Magnetic/FundamentalWave/V_m_phi.png
.. |image11| image:: ../Resources/Images/Magnetic/FundamentalWave/varphi.png
.. |image12| image:: ../Resources/Images/Magnetic/FundamentalWave/V_m_phi.png
.. |image13| image:: ../Resources/Images/Magnetic/FundamentalWave/V_m.png
.. |image14| image:: ../Resources/Images/Magnetic/FundamentalWave/p.png
.. |image15| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ContactI.png
.. |image16| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ReleaseNotesI.png
.. |image17| image:: Modelica.Magnetic.FundamentalWave.UsersGuide.ReferencesI.png
