=====================================
Modelica.Electrical.Spice3.UsersGuide
=====================================

|Modelica.Electrical.Spice3.UsersGuide| `Modelica.Electrical.Spice3 <Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3>`_.UsersGuide
---------------------------------------------------------------------------------------------------------------------------------------------

::

Package Spice3 is a **free** Modelica package

This is a short **User';s Guide** for the overall library.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| Name                                                                                                                                                                                        | Description             |
+=============================================================================================================================================================================================+=========================+
| |image9| `Overview <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.Overview>`_                                                                            | Overview                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| |image10| `Useofsemiconductors <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.Useofsemiconductors>`_                                                     | Use of Semiconductors   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| |image11| `Spicenetlist <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.Spicenetlist>`_                                                                   | SPICE3 netlists         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| |image12| `NamingPrinciple <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.NamingPrinciple>`_                                                             | Naming principle        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| |image13| `ParameterHandling <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.ParameterHandling>`_                                                         | Parameter handling      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| |image14| `Literature <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.Literature>`_                                                                       | Literature              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| |image15| `ReleaseNotes <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.ReleaseNotes>`_                                                                   | Release notes           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+
| |image16| `Contact <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide.Contact>`_                                                                             | Contact                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------+

--------------

|image17| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.Overview
----------------------------------------------------------------------------------------------------------------------------------------------

::

Overview of Spice3 library
^^^^^^^^^^^^^^^^^^^^^^^^^^

The Spice3 library is a Modelica library that contains some models of
the Berkeley SPICE3 analog simulator.

General information about the analog simulator SPICE3

SPICE (Simulation Program with Integrated Circuit Emphasis) is a
simulator for analog electrical circuits. It was developed as one of the
first analog simulators in the university of Berkeley. SPICE netlists,
which contain the circuit that shall be simulated, are a
de-facto-standard up to now. For nearly every electrical circuit a SPICE
netlist exists. Today the actual version of SPICE is SPICE3e/SPICE3f.
SPICE contains basic elements (resistor, inductor, capacitor), sources
and semiconductor devices (diode, bipolar transistors, junction field
effect transistors, MOS-field effect transistors) as well as models of
lines. Out of this offered pool of elements, the circuits that shall be
simulated are build as SPICE netlists.

The Spice3-library for Modelica

The Spice3 library was extraced from orinial SPICE3 C++ code. To be sure
the Modelica models are correct the simulation results were compared to
SPICE3. This way was chosen since SPICE3 is the only open source Spice
simulator.

The Spice3-library was built in accordance to the model structure in
SPICE. It contains the following packages:

-  Examples
-  Basic (R, C, L, controlled sources)
-  Semiconductors (MOS (P, N), BJT(NPN PNP), Diode, semiconductor
   resistor)
-  Sources (constant, sinusodial, exponential, pulse, piece wise linear,
   single-frequency FM, respectively for V and I)
-  Additionals (useful features from SPICE2)
-  Interfaces
-  Internal (functions and data needed to model the semiconductor
   devices)

Since the semiconductor models, especially MOS and BJT, are very complex
models, many functions, data and parameters were needed for their
description. Therefore a special Package called Internal was created
that contains all the functions and records with data and parameters
that are needed for the semiconductor models. It is not necessary that a
user of the library works inside this package, so it is not for user
access. The package Additionals is also a special one. It is not part of
the original SPICE3 models. Nevertheless it contains useful models or
features like the polynomial sources of SPICE2 that are often asked for.

There are many commercial SPICE simulators (PSPICE, NgSPICE, HSPICE,
...) which are derived from the Berkeley SPICE or are in some relation
to it. Netlists of such SPICE derivatives can differ from Berkeley
SPICE3 netlists. This has to be taken into account if netlists (their
parameter names) are used whith this package.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image18| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.Useofsemiconductors
---------------------------------------------------------------------------------------------------------------------------------------------------------

::

Within the semiconductor devices SPICE3 differentiates between
technology parameters and device parameters. Device parameters can be
chosen for every single model instance, e.g., the channel length of a
transistor. Technology parameters which are specified in a model card
(.model) are adjustable for more than one element simultaneously, e.g.
the type of transistors. As usualy done in Modelica the parameters of
the modelcard can be set in a parameter list.

To parametrice more than one model two ways are possible:

#. Apart record:
   For each transistor in the circuit a record with the
   technologieparameters is made available as an instance of the record
   modelcardMOS. In the example
   "inverterApartRecord" this way is explained more in detail.
#. Extended model:
   For each set of technologyparameters a apart model has to be defined.
   In the example "inverterExtendedModel" this way is explained more in
   detail.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image19| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.Spicenetlist
--------------------------------------------------------------------------------------------------------------------------------------------------

::

Translation of SPICE3 netlists to Modelica
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Since SPICE3 netlists are avaliable for nearly every electrical circuit
a desirable feature would be to translate SPICE3 netlists to Modelica.
With the help of the example of an inverter circuits a possible way of
the translation will be explained.

::

    inverter

    Mp1 11 1 13 11 MPmos
    Mp2 11 13 2 11 MPmos
    Mn1 13 1 0 0 MNmos
    Mn2 2 13 0 0 MNmos
    Vgate 1 0 PULSE(0 5 2s 1s)
    Vdrain 11 0 PULSE(0 5 0s 1s)
    .model MPmos PMOS (gamma=0.37)
    .model MNmos NMOS (gamma=0.37 lambda=0.02)















    .tran 0.01 5
    .end

::

    model inverter
      Spice3.Basic.Ground g;
      Spice3…M Mp1(mtype=true, M(GAMMA=0.37));
      Spice3…M Mp2(mtype=true, M(GAMMA=0.37));
      Spice3…M Mn1(M(LAMBDA=0.02, GAMMA=0.37));
      Spice3…M Mn2(p(LAMBDA=0.02, GAMMA=0.37));
      Spice3…V_pulse vdrain(V1=0, V2=5, TD=0, TR=1);
      Spice3…V_pulse vdrain(V1=0, V2=5, TD=0, TR=1);


      Spice3.Interfaces.Pin p_in, p_out;
    protected
      Spice3.Interfaces.Pin n0, n1, n2, n11, n13;
    equation
      connect(p_in, n1);    connect(p_out, n2);
      connect(g.p, n0);
      connect(vdrain.n,n0); connect(vdrain.p,n11);
      connect(Mp1.B,n11);   connect(Mp1.D, n11);
      connect(Mp1.G, n1);   connect(Mp1.S, n13);
      connect(Mp2.B,n11);   connect(Mp2.D, n11);
      connect(Mp2.G, n13);  connect(Mp2.S, n2);
      connect(Mn1.B,n0);    connect(Mn1.D, n13);
      connect(Mn1.G, n1);   connect(Mn1.S, n0);
      connect(Mn2.B,n0);    connect(Mn2.D, n2);
      connect(Mn2.G, n13);  connect(Mn2.S, n0);

    end inverter;

Table 1: Translation of the SPICE3 netlist (left side) to Modelica
(right side)

Given is a SPICE3 netlist that contains two inverter circuits. This
netlist should be translated to Modelica in which the input voltage of
the first inverter (node number 1) and the

output voltage of the second (node number 2)later will be connected with
the surrounding circuit. The following steps are necessary:

#. A name for the Modelica model has to be chosen. It could be taken
   from the first line of the SPICE3 netlist.
#. The ground node has to be instantiated (Spice3.Basic.Ground).
#. For each component of the netlist an instant has to be created.
   According to the first letter of the SPICE3 model identifier in the
   netlist, the needed component has to be chosen, instantiated and
   according to the given parameters parametrized, e.g., the SPICE
   lineVdrain 11 0 PULSE(0 5 0 1)becomes the following Modelica
   line:Spice3…V\_pulse vdrain(V1=0, V2=5, TD=0, TR=1);
#. For all node numbers an internal pin has to be created. For example
   the node number 2 from the SPICE3 netlist becomesprotected
   Spice3.Interfaces.Pin n2;in Modelica. The code letter (here n) is
   needed because a single number is no name in Modelica.
#. According to the netlist the internal pins have to be connected with
   the components, e.g., connect(Mp1.D, n11).
#. In the last step the external pins have to be allocated ant connected
   to the according internal pin. In table 1 this is done as follows:
   Spice3.Interfaces.Pin p\_in, p\_out;connect(p\_in, n1);
   connect(p\_out, n2);

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image20| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.NamingPrinciple
-----------------------------------------------------------------------------------------------------------------------------------------------------

::

In SPICE3 we have a predefined model pool. Each model device has got a
code letter (e.g., resistor - R). In analogy to the SPICE3 models the
models of the Spice3 library also got the according code letter in their
names. The following examples shows the relationship:

A typical SPICE3 line could be:

**C**1 3 2 1pF

The first letter is the code letter (here **C**). It specifies the type
of the model component (here capacitance). To see the analogy to the
SPICE3 models in the Spice3 library the transformed capacitance has got
the name **C**\_Capacitance. According to that naming rule the
components of the Spice3 library have the following names (the first
letter is the code letter that has to be used in SPICE3):

-  R\_Resistor
-  C\_Capacitance
-  L\_Inductor
-  E\_VCV, E\_VCV\_POLY
-  G\_VCC, G\_VCC\_POLY
-  H\_CCV, H\_CCV\_POLY
-  F\_CCC, F\_CCC\_POLY
-  M\_PMOS
-  M\_NMOS
-  Q\_NPNBJT
-  Q\_PNPBJT
-  D\_Diode
-  V\_constant, I\_constant
-  V\_sin, I\_sin
-  V\_exp, I\_exp
-  V\_pulse, I\_pulse
-  V\_pwl, I\_pwl
-  V\_sffm, I\_sffm
   **
   **

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image21| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.ParameterHandling
-------------------------------------------------------------------------------------------------------------------------------------------------------

::

In SPICE3 it is important to know whether a parameter was set by the
user or not because the calculation of some values depends on that
information and can be different. Since in Modelica there is no
possibility to check that, a circumvention was chosen. The relevant
parameters get an unrealistic value (-1e40) as their default value.
Within a function it is checked if the parameter has still got this
value (the parameter was not set by the user) of if it has a new value
(parameter was set by the user).

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image22| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.Literature
------------------------------------------------------------------------------------------------------------------------------------------------

::

[Böhme2009]

S. Böhme, K. Majetta, C. Clauss, P. Schneider, "Spice3 Modelica
Library," *7th Modelica Conference*, Como, Italy (2009)

[Antognetti1988]

P. Antognetti, G. Massobrio, *Semiconductor Device Modeling with
SPICE.*, McGraw-Hill Book Company, USA, 1988

[Connelly1992]

A. Connelly, A, P. Choi, *Macromodeling with SPICE.*, Prentice-Hall, New
Jersey, USA (1992)

[Johnson1991]

B. Johnson, T. Quarles, A.R. Newton, D. O. Pederson, A.
Sangiovanni-Vincentelli, *SPICE3 Version 3e User';s Manual.*, University
of Berkeley, Department of Electrical Engineering and Computer Sciences,
USA (1991) `SPICE3 user's
manual <http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.130.9471&rep=rep1&type=pdf>`_

[Kielkowski1994]

R. Kielkowski, *Inside SPICE - Overcoming the obstacles of circuit
simulation.*, McGraw-Hill, USA (1994)

::

Extends from
`Modelica.Icons.References <Modelica_Icons.html#Modelica.Icons.References>`_
(Icon for external references).

--------------

|image23| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.ReleaseNotes
--------------------------------------------------------------------------------------------------------------------------------------------------

::

This section summarizes the changes that have been performed on the
Spice3 library.

-  Version 1.0 (2010-02-18): first version of the library was released

::

Extends from
`Modelica.Icons.ReleaseNotes <Modelica_Icons.html#Modelica.Icons.ReleaseNotes>`_
(Icon for release notes in documentation).

--------------

|image24| `Modelica.Electrical.Spice3.UsersGuide <Modelica_Electrical_Spice3_UsersGuide.html#Modelica.Electrical.Spice3.UsersGuide>`_.Contact
---------------------------------------------------------------------------------------------------------------------------------------------

::

**Main Authors:**
    Kristin Majetta
    Fraunhofer Institute Integrated Circuits
    Design Automation Division
    Zeunerstrasse 38
    01069 Dresden, Germany
    email: `Kristin
    Majetta@eas.iis.fraunhofer.de <mailto:Kristin.Majetta@eas.iis.fraunhofer.de>`_
    Christoph Clauss
    Fraunhofer Institute Integrated Circuits
    Design Automation Division
    Zeunerstrasse 38
    01069 Dresden, Germany
    email:
    `Christoph.Clauss@eas.iis.fraunhofer.de <mailto:Christoph.Clauss@eas.iis.fraunhofer.de>`_
    Sandra Boehme
    Fraunhofer Institute Integrated Circuits
    Design Automation Division
    Zeunerstrasse 38
    01069 Dresden, Germany
    email:
    `Sandra.Boehme@eas.iis.fraunhofer.de <mailto:Sandra.Boehme@eas.iis.fraunhofer.de>`_

Acknowledgements:
^^^^^^^^^^^^^^^^^

-  The development of this library was done within the European ITEA2
   projects EUROSYSLIB and MODELISAR.
-  For his contribution we thank Mr. Jonathan Gerbet.

::

Extends from
`Modelica.Icons.Contact <Modelica_Icons.html#Modelica.Icons.Contact>`_
(Icon for contact information).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:44
2010.

.. |Modelica.Electrical.Spice3.UsersGuide| image:: Modelica.Electrical.Spice3.UsersGuideI.png
.. |Modelica.Electrical.Spice3.UsersGuide.Overview| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |Modelica.Electrical.Spice3.UsersGuide.Useofsemiconductors| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |Modelica.Electrical.Spice3.UsersGuide.Spicenetlist| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |Modelica.Electrical.Spice3.UsersGuide.NamingPrinciple| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |Modelica.Electrical.Spice3.UsersGuide.ParameterHandling| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |Modelica.Electrical.Spice3.UsersGuide.Literature| image:: Modelica.Electrical.Spice3.UsersGuide.LiteratureS.png
.. |Modelica.Electrical.Spice3.UsersGuide.ReleaseNotes| image:: Modelica.Electrical.Spice3.UsersGuide.ReleaseNotesS.png
.. |Modelica.Electrical.Spice3.UsersGuide.Contact| image:: Modelica.Electrical.Spice3.UsersGuide.ContactS.png
.. |image9| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |image10| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |image11| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |image12| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |image13| image:: Modelica.Electrical.Spice3.UsersGuide.OverviewS.png
.. |image14| image:: Modelica.Electrical.Spice3.UsersGuide.LiteratureS.png
.. |image15| image:: Modelica.Electrical.Spice3.UsersGuide.ReleaseNotesS.png
.. |image16| image:: Modelica.Electrical.Spice3.UsersGuide.ContactS.png
.. |image17| image:: Modelica.Electrical.Spice3.UsersGuideI.png
.. |image18| image:: Modelica.Electrical.Spice3.UsersGuideI.png
.. |image19| image:: Modelica.Electrical.Spice3.UsersGuideI.png
.. |image20| image:: Modelica.Electrical.Spice3.UsersGuideI.png
.. |image21| image:: Modelica.Electrical.Spice3.UsersGuideI.png
.. |image22| image:: Modelica.Electrical.Spice3.UsersGuide.LiteratureI.png
.. |image23| image:: Modelica.Electrical.Spice3.UsersGuide.ReleaseNotesI.png
.. |image24| image:: Modelica.Electrical.Spice3.UsersGuide.ContactI.png
