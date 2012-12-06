% Modelica.Magnetic.FundamentalWave.UsersGuide
% 
% 

![Modelica.Magnetic.FundamentalWave.UsersGuide](Modelica.Magnetic.FundamentalWave.UsersGuideI.png) [Modelica.Magnetic.FundamentalWave](Modelica_Magnetic_FundamentalWave.html#Modelica.Magnetic.FundamentalWave).UsersGuide
===========================================================================================================================================================================================================================

::

This library contains components for modelling of electromagnetic
fundamental wave models for the application in three phase [electric
machines](Modelica_Magnetic_FundamentalWave_BasicMachines.html#Modelica.Magnetic.FundamentalWave.BasicMachines).
DC machines are (currently) not included in this library. The
FundamentalWave library is an alternative approach to the
[Modelica.Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines)
library. A great advantage of this library is the strict object
orientation of the electrical and magnetic components that the electric
machines models are composed of. From a didactic point of view this
library is very beneficial for students in the field of electrical
engineering.

For more details see the
[concept.](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.Concept)

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                           Descripti
                                                                 on
  -------------------------------------------------------------- ---------
  ![image5](Modelica.Magnetic.FundamentalWave.UsersGuide.Concept Fundament
  S.png)                                                         al
  [Concept](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Mo wave
  delica.Magnetic.FundamentalWave.UsersGuide.Concept)            concept

  ![image6](Modelica.Magnetic.FundamentalWave.UsersGuide.Contact Contact
  S.png)                                                         
  [Contact](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Mo 
  delica.Magnetic.FundamentalWave.UsersGuide.Contact)            

  ![image7](Modelica.Magnetic.FundamentalWave.UsersGuide.Release Release
  NotesS.png)                                                    Notes
  [ReleaseNotes](Modelica_Magnetic_FundamentalWave_UsersGuide.ht 
  ml#Modelica.Magnetic.FundamentalWave.UsersGuide.ReleaseNotes)  

  ![image8](Modelica.Magnetic.FundamentalWave.UsersGuide.Referen Reference
  cesS.png)                                                      s
  [References](Modelica_Magnetic_FundamentalWave_UsersGuide.html 
  #Modelica.Magnetic.FundamentalWave.UsersGuide.References)      
  ------------------------------------------------------------------------

* * * * *

![image9](Modelica.Magnetic.FundamentalWave.UsersGuideI.png) [Modelica.Magnetic.FundamentalWave.UsersGuide](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide).Concept
===================================================================================================================================================================================================================

::

### Overview of the concept of fundamental waves

The exact magnetic field in the air gap of an electric machine is
usually determined by an electro magnetic finite element analysis. The
waveform of the magnetic field, e.g., the magnetic potential difference
![image10](../Resources/Images/Magnetic/FundamentalWave/V_m_phi.png),
consists of a spatial fundamental wave - with respect to one pole pair -
and additional harmonic waves of different order. The fundamental wave
is however dominant in the air gap of an electric machine.

Field lines of a four pole induction machine

In the fundamental wave theory only a pure sinusoidal distribution of
magnetic quantities is assumed. It is thus assumed that all other
harmonic wave effects are not taken into account.

Magnetic potential difference of a four pole machine, where
![image11](../Resources/Images/Magnetic/FundamentalWave/varphi.png) is
the angle of the spatial domain with respect to one pole pair

The waveforms of the magnetic field quantities, e.g., the magnetic
potential difference
![image12](../Resources/Images/Magnetic/FundamentalWave/V_m_phi.png),
can be represented by complex phasor, e.g.,
![image13](../Resources/Images/Magnetic/FundamentalWave/V_m.png)
according to:

Spatial distribution of the magnetic potential difference (red shade =
positive sine wave, blue shade = negative sine wave) including complex
phasor representing this spatial distribution

The potential and flow quantities of this library are the complex
magnetic potential difference and the complex magnetic flux as defined
in the basic [magnetic
port](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.MagneticPort).
Due to the sinusoidal distribution of magnetic potential and flux, such
a complex phasor representation can be used. This way, the
FundamentalWave library can be seen as a spatial extension of the
[FluxTubes](Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes)
library.

The specific arrangement of windings in electric machines with
![image14](../Resources/Images/Magnetic/FundamentalWave/p.png) pole
pairs give rise to sinusoidal dominant magnetic potential wave. The
spatial period of this wave is determined by one pole pair
[[Mueller70](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References),
[Spaeth73](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References)].

The main components of an electric machine model based on the
FundamentalWave library are [multi
phase](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding)
and [single phase
windings](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding),
[air
gap](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap)
as well as
[symmetric](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding)
or [salient
cage](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SaliencyCageWinding)
models. The electric machine models provided in this library are based
on symmetrical three phase windings in the stator and equivalent two or
three phase windings in the rotor.

### Assumptions

The machine models of the FundamentalWave library are currently based on
the following assumptions

-   The number of stator phases is limited to three
    [[Eckhardt82](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References)]
-   The phase windings are assumed to be symmetrical; an extension to
    this approach can be considererd
-   Only fundamental wave effects are taken into account
-   There are no restrictions on the waveforms of voltages and currents
-   All resistances and inductances are modeled as constant quantities;
    saturation effects, cross coupling effects
    [[Li07](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References)],
    temperature dependency of resistances and deep bar effects could be
    considered in an extension to this library
-   Core losses, i.e., eddy current and hysteresis losses, friction
    losses and stray load losses are currently not considered
    [[Haumer09](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References)]
-   The only dissipated losses in the electric machine models are
    currently ohmic heat losses

### Note

The term **fundamental wave** refers to spatial waves of the electro
magnetic quantities. This library has no limitations with respect to the
waveforms of the time domain signals of any voltages, currents, etc.

::

Extends from
[Modelica.Icons.Information](Modelica_Icons.html#Modelica.Icons.Information)
(Icon for general information packages).

* * * * *

![image15](Modelica.Magnetic.FundamentalWave.UsersGuide.ContactI.png) [Modelica.Magnetic.FundamentalWave.UsersGuide](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide).Contact
============================================================================================================================================================================================================================

::

### Contact

Christian Kral
  ~ [Austrian Institute of Technology, AIT](http://www.ait.ac.at)
    Mobility Department Giefinggasse 2, 1210 Vienna, Austria email:
    [[christian.kral@ait.ac.at](mailto:christian.kral@ait.ac.at)](mailto:christian.kral@ait.ac.at)

Anton Haumer
  ~ [Technical Consulting & Electrical
    Engineering](http://www.haumer.at) 3423 St. Andrae-Woerdern, Austria
    email:
    [[a.haumer@haumer.at](mailto:a.haumer@haumer.at)](mailto:a.haumer@haumer.at)

### Acknowledgements

Based on an original idea of Michael Beuschel this library was developed
[[Beuschel00](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References)].
The authors of the FundamentalWave library would like to thank Michael
Beuschel for contributing his source code to this library.

::

Extends from
[Modelica.Icons.Contact](Modelica_Icons.html#Modelica.Icons.Contact)
(Icon for contact information).

* * * * *

![image16](Modelica.Magnetic.FundamentalWave.UsersGuide.ReleaseNotesI.png) [Modelica.Magnetic.FundamentalWave.UsersGuide](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide).ReleaseNotes
======================================================================================================================================================================================================================================

::

#### Version 1.7.1, 2010-09-03

-   Naming and documentation of
    [PartialTwoPort](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPort)
    is exchanged by
    [PartialTwoPortElementary](Modelica_Magnetic_FundamentalWave_Interfaces.html#Modelica.Magnetic.FundamentalWave.Interfaces.PartialTwoPortElementary)
    to match the naming conventions of
    [Rotational.Interfaces](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces)
    and
    [Translational.Interfaces](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces)
-   Fixed a broken link and updated documentation
-   Adaptions to Complex SIunits

#### Version 1.7.0, 2010-05-31

-   Changed [symmetric multi phase
    winding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding)
    model

    -   Added zero sequence inductance based on [zero
        inductor](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.ZeroInductor)
    -   Replaced electrical model of stray
        [inductor](Modelica_Electrical_MultiPhase_Basic.html#Modelica.Electrical.MultiPhase.Basic.Inductor)
        by stray
        [reluctance](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.Reluctance)
        model
    -   Integrated cores
        [losses](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent)
        and [heat
        port](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)

-   Added rotor core loss parameters in asynchronous induction machine
    with slip rings
-   Renamed heat ports of [single phase
    winding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding)
    and [symmetric multi phase
    winding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseWinding)
-   Relocated core losses between zero inductor and stray reluctance
    model in the magntic domain
-   Renamed instances of stator and rotor (winding) models in each
    machines
-   Added magnetic potential sensor
-   Removed state selections
-   Updates due to changed loss variable and heat port names in
    [Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines)
-   Added machine specific output records to summarize power and loss
    balance
-   Updated images of Users Guide
-   Improved performance due to `annotation(Evaluate=true)` added to the
    parameters of the [single phase
    winding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding)
-   Reduced number of states in [symmetric
    cage](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SymmetricMultiPhaseCageWinding)
    model by introducing an additional non-grounded star connection

#### Version 1.6.0, 2010-05-05

-   Renamed all parameters `windingAngle` to `orientation`. The
    following classes are affected:

    -   [SinglePhaseElectroMagneticConverter](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.SinglePhaseElectroMagneticConverter)
    -   [MultiPhaseElectroMagneticConverter](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.MultiPhaseElectroMagneticConverter)
    -   [SinglePhaseWinding](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.SinglePhaseWinding)
    -   [symmetricOrientation](Modelica_Magnetic_FundamentalWave_BasicMachines_Functions.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Functions.symmetricOrientation)

-   Update due to changed class names in
    [Machines.Icons](Modelica_Electrical_Machines_Icons.html#Modelica.Electrical.Machines.Icons)
-   Using
    [HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort](Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.PartialElementaryConditionalHeatPort)
    instead of
    [Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
    in
    [EddyCurrent](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent)
-   Added `modelica://` to all Modelica hyper links
-   Fixed bug in displayed parameters of
    [EddyCurrent](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent)
-   Updated some images (and renamed image file `LossPower.png` to
    `lossPower.png`)
-   Exchanged positive and negative stator ports of
    [RotorSaliencyAirGap](Modelica_Magnetic_FundamentalWave_BasicMachines_Components.html#Modelica.Magnetic.FundamentalWave.BasicMachines.Components.RotorSaliencyAirGap)
    model, adapted equations accordingly and updated code documentation.

#### Version 1.5.0, 2010-04-28

-   Added stator core, friction, stray load and brush losses to all
    machine types based on [loss
    models](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses)
    of the
    [Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines)
    library.
-   Changed parameter of
    [EddyCurrent](Modelica_Magnetic_FundamentalWave_Components.html#Modelica.Magnetic.FundamentalWave.Components.EddyCurrent)
    model from R to G
-   Fixed wrong sign of internal quantity `tauElectrical`, model
    behavior does not change
-   Rewrote equations of electro magnetic coupling to look more elegant

#### Version 1.4.0, 2010-04-22

-   Added eddy current model in accordance to
    [FluxTubes](Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes)
    library
-   Added thermal heat port to eddy current model
-   Minor updates due to dependencies of
    [Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines)

#### Version 1.3.0, 2010-02-26

-   Changed some icon references
-   Added state selections for the machine models
-   Restructured partial machine model
-   Added copyright information

#### Version 1.2.0, 2010-02-17

-   Renamed Machines to BasicMachines
-   Updated dependencies due to renamed class
    [LinearTemperatureCoefficient20](Modelica_Electrical_Machines_Thermal.html#Modelica.Electrical.Machines.Thermal.LinearTemperatureCoefficient20)
-   Added release notes in User's Guide

#### Version 1.1.0, 2010-02-15

-   Added thermal connectors and temperature dependent resistances

#### Version 1.0.0, 2010-02-04

-   Integrated the libray into the MSL

#### Version 0.4.0, 2009-10-29

-   Corrected bug in magnetic potential calculation

#### Version 0.3.0, 2009-10-28

-   Renamed number of turns and winding angles

#### Version 0.2.0, 2009-10-20

-   Added idle model

#### Version 0.1.0, 2009-07-22

-   First version based on the concept of the FluxTubes library and the
    Magnetics library of Michael Beuschel
    [[Beuschel00](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide.References)]

::

Extends from
[Modelica.Icons.ReleaseNotes](Modelica_Icons.html#Modelica.Icons.ReleaseNotes)
(Icon for release notes in documentation).

* * * * *

![image17](Modelica.Magnetic.FundamentalWave.UsersGuide.ReferencesI.png) [Modelica.Magnetic.FundamentalWave.UsersGuide](Modelica_Magnetic_FundamentalWave_UsersGuide.html#Modelica.Magnetic.FundamentalWave.UsersGuide).References
==================================================================================================================================================================================================================================

::

### References

  ---- -------------------------------------------------------------------
  [Beu M.  Beuschel, "[A uniform approach for modelling electrical
  sche     machines](http://www.modelica.org/events/workshop2000/proceedin
  l00] gs/Beuschel.pdf),"
           *Modelica Workshop*, pp. 101-108, October 23-24, 2000.
       

  [Eck H.  Eckhardt, *Grundzüge der elektrischen Maschinen* (in German),
  hard     B. G. Teubner Verlag, Stuttgart, 1982.
  t82] 

  [Hau A.  Haumer, and C. Kral, "[The AdvancedMachines Library: Loss
  mer0     Models for Electric
  9]       Machines](http://www.modelica.org/events/modelica2009/Proceedin
       gs/memorystick/pages/papers/0103/0103.pdf),"
           *Modelica Conference*, 2009.
       

  [Li0 Y.  Li, Z. Q. Zhu, D. Howe, and C. M. Bingham, "Modeling of
  7]       Cross-Coupling Magnetic Saturation in Signal-Injection-Based
           Sensorless Control of Permanent-Magnet Brushless AC Motors,"
           *IEEE Transactions on Magnetics*, vol. 43, no. 6, pp.
           2552-2554, June 2007.
       

  [Mue G, Müller, *Elektrische Maschinen -- Grundlagen, Aufbau und
  ller Wirkungsweise* (in German), VEB Verlag Technik Berlin, 4th edition,
  70]  1970.

  [Spa H.  Späth, *Elektrische Maschinen -- Eine Einführung in die Theorie
  eth7     des Betriebsverhaltens* (in German), Springer-Verlag, Berlin,
  3]       Heidelberg, New York, 1973.
       
  ---- -------------------------------------------------------------------

::

Extends from
[Modelica.Icons.References](Modelica_Icons.html#Modelica.Icons.References)
(Icon for external references).

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:53 2010.
