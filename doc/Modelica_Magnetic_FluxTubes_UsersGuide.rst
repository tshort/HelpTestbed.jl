======================================
Modelica.Magnetic.FluxTubes.UsersGuide
======================================

|Modelica.Magnetic.FluxTubes.UsersGuide| `Modelica.Magnetic.FluxTubes <Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes>`_.UsersGuide
-------------------------------------------------------------------------------------------------------------------------------------------------

::

This library contains components for modelling of electromagnetic
devices with lumped magnetic networks. Those models are suited for both
rough design of the magnetic subsystem of a device as well as for
efficient dynamic simulation at system level together with neighbouring
subsystems. At present, components and examples for modelling of
*translatory* electromagnetic and electrodynamic actuators are provided.
If needed, these components can be adapted to network modellling of
*rotational* electrical machines.

This user's guide gives a short introduction to the underlying concept
of **magnetic flux tubes**, summarizes the calculation of magnetic
**reluctance forces** from lumped magnetic network models and lists
**reference literature**.

`Examples <Modelica_Magnetic_FluxTubes_Examples.html#Modelica.Magnetic.FluxTubes.Examples>`_
illustrates the usage of magnetic network models with simple models from
different fields of application.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+
| Name                                                                                                                                                                                                                | Description         |
+=====================================================================================================================================================================================================================+=====================+
| |image5| `FluxTubeConcept <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.FluxTubeConcept>`_                                                                                    | Flux tube concept   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+
| |image6| `ReluctanceForceCalculation <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.ReluctanceForceCalculation>`_                                                              | Reluctance forces   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+
| |image7| `Literature <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_                                                                                              | Literature          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+
| |image8| `Contact <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Contact>`_                                                                                                    | Contact             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+

--------------

|image9| `Modelica.Magnetic.FluxTubes.UsersGuide <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide>`_.FluxTubeConcept
-------------------------------------------------------------------------------------------------------------------------------------------------------

::

Overview of the Concept of Magnetic Flux Tubes
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Following below, the concept of magnetic flux tubes is outlined in
short. For a detailed description of flux tube elements, please have a
look at the listed literature. Magnetic flux tubes enable for modeling
of magnetic fields with lumped networks. The figure below and the
following equations illustrate the transition from the original magnetic
field quantities described by *Maxwell*'s equations to network elements
with a flow variable and an across variable:

.. figure:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/FluxTubeConcept/magnetic_flux_tube_schematic.png
   :align: center
   :alt: Magnetic flux tube

   Magnetic flux tube
For a region with an approximately homogeneous distribution of the
magnetic field strength **H** and the magnetic flux density **B**
through cross sectional area *A* at each length coordinate *s* (*A*
perpendicular to the direction of the magnetic field lines), a magnetic
reluctance *R\ :sub:`m`\ * can be defined:

.. figure:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/FluxTubeConcept/eq_transition_reluctance_flowAcross_IntegralQuantities.png
   :align: center
   :alt: Transition from field quantities to flow- and across variables

   Transition from field quantities to flow- and across variables
With the definition of the magnetic potential difference *V\ :sub:`m`\ *
as an across variable and the magnetic flux *Φ* as flow variable, a
reluctance element *R\ :sub:`m`\ * can be defined similar to resistive
network elements in other physical domains. Using *Maxwell*'s
constitutive equation

.. figure:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/FluxTubeConcept/eq_MaxwellConstitutive.png
   :align: center
   :alt: Maxwell's constitutive equation

   Maxwell's constitutive equation
the general formula for the calculation of a magnetic reluctance
*R\ :sub:`m`\ * from its geometric and material properties is:

.. figure:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/FluxTubeConcept/eq_reluctance_general.png
   :align: center
   :alt: General formula for calculation of a magnetic reluctance

   General formula for calculation of a magnetic reluctance
For a prismatic or cylindrical volume of length *l* and cross sectional
area *A* with the magnetic flux entering and leaving the region through
its end planes, the above equation simplifies to:

.. figure:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/FluxTubeConcept/eq_reluctance_prismatic.png
   :align: center
   :alt: Magnetic reluctance of a prismatic or cylindrical volume

   Magnetic reluctance of a prismatic or cylindrical volume
Similar equations can be derived for other geometries. In cases where a
direct integration is not possible, the reluctance can be calclulated on
base of average length, average cross sectional area and volume *V*
respectively:

.. figure:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/FluxTubeConcept/eq_reluctanceFromAverageGeometry.png
   :align: center
   :alt: Reluctance calculation from average geometric quantities

   Reluctance calculation from average geometric quantities
Network elements for sources of a magnetic potential difference or
magnetomotive force, i.e., coils or permanent magnets can be formulated
as well. The resulting magnetic network models of actuators reflect the
main dimensions of these devices as well as the normally nonlinear
characteristics of their magnetically active materials.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image10| `Modelica.Magnetic.FluxTubes.UsersGuide <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide>`_.ReluctanceForceCalculation
-------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of reluctance forces from lumped magnetic network models
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Generally, the thrust *F* developed by a translatory
electro-magneto-mechanical actuator (similar for the rotational case
with torque and angular position) is equal to the change of magnetic
co-energy *W\ :sub:`m`\ \ :sup:`\*`\ * with armature position *x*
according to |Equation for force calculation from change of magnetic
co-energy with armature position| (*Ψ* flux linkage, *i* actuator
current). In lumped magnetic network models, the above equation
simplifies to |Equation for force calculation in lumped magnetic network
models|

where *n\ :sub:`linear`\ * is the number of flux tube elements with
constant relative permeability that change its permeance *G\ :sub:`m
i`\ * with armature position (index *i*), *V\ :sub:`m i`\ * the magnetic
voltage across each respective flux tube and *dG\ :sub:`m i`\ /dx* the
derivative of the respective permeances with respect to armature
position. Transition from the general formula based on magnetic
co-energy to the latter one is outlined in
`[Ka08] <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide.Literature>`_
for the reciprocal of the permeance, i.e., for the magnetic reluctance
*R\ :sub:`m`\ *. Note that

.. figure:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/ReluctanceForceCalculation/eq_transition_forceReluctancePermeance.png
   :align: center
   :alt: Transition from force calculation based on reluctance to
   calculation based on permeance

   Transition from force calculation based on reluctance to calculation
   based on permeance
with *Φ\ :sub:`i`\ * being the magnetic flux through each respective
flux tube element.

Flux tube elements with *non-linear* material characteristics
*μ\ :sub:`r`\ *(*B*) in magnetic network models do not restrict the
usability of the above equation. However, it is required that these
nonlinear flux tube elements do not change its shape with armature
motion (e.g., portion of a solenoid plunger where the magnetic flux
passes through in axial direction). This limitation is not a strong one,
since the permeance of nonlinear, but highly permeable ferromagnetic
flux tube elements and its change with armature position compared to
that of air gap flux tubes can be neglected in most cases. Because of
this constraint, the dimensions of possibly nonlinear flux tube elements
in sub-package
`Shapes.FixedShape <Modelica_Magnetic_FluxTubes_Shapes_FixedShape.html#Modelica.Magnetic.FluxTubes.Shapes.FixedShape>`_
are fixed, whereas the dimension in direction of motion of the linear
flux tube elements in sub-package
`Shapes.Force <Modelica_Magnetic_FluxTubes_Shapes_Force.html#Modelica.Magnetic.FluxTubes.Shapes.Force>`_
can vary during simulation. For the flux tubes defined in this package
with their rather simple shapes, the derivative *dG\ :sub:`m`\ /dx* is
given analytically. For more complex shapes and variations of dimensions
with armature motion, it must be provided analytically during model
development, preferably by extending the partial model
`Interfaces.PartialForce <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialForce>`_.

The sub-package
`Shapes.Leakage <Modelica_Magnetic_FluxTubes_Shapes_Leakage.html#Modelica.Magnetic.FluxTubes.Shapes.Leakage>`_
contains flux tube shapes typical for leakage flux around prismatic or
cylindrical poles. Since the permeance of these flux tubes does not
change with armature position, they do not contribute to a reluctance
actuator's thrust.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image13| `Modelica.Magnetic.FluxTubes.UsersGuide <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide>`_.Literature
---------------------------------------------------------------------------------------------------------------------------------------------------

::

Literature
^^^^^^^^^^

-  Usage of the Modelica Magnetic library is described in:

   [Bö08] Bödrich, T.:
       **Electromagnetic Actuator Modelling with the Extended Modelica
       Magnetic Library**. Modelica 2008 Conference, Bielefeld, Germany,
       pp. 221-227, March 3-4, 2008. Download from:
       `http://www.modelica.org/events/modelica2008/Proceedings/sessions/session2d2.pdf <http://www.modelica.org/events/modelica2008/Proceedings/sessions/session2d2.pdf>`_

-  The method of magnetic flux tubes as well as derivation of the
   permeance of many flux tube shapes is explained in detail in:

   [Ro41] Roters, H.:
       **Electromagnetic Devices**. New York: John Wiley & Sons 1941
       (8th Printing 1961)

-  Structure, properties, applications and design of electromagnetic
   (reluctance type) actuators are thoroughly described in:

   [Ka08] Kallenbach, E.; Eick, R.; Quendt, P.; Ströhla, T.; Feindt, K.;
   Kallenbach, M.:
       **Elektromagnete: Grundlagen, Berechnung, Entwurf und
       Anwendung**. 3rd ed., Wiesbaden: Vieweg Teubner 2008 (in German)
   [Ro00] Roschke, T.:
       **Entwurf geregelter elektromagnetischer Antriebe für
       Luftschütze**. Fortschritt-Berichte VDI, Reihe 21, Nr. 293,
       Düsseldorf: VDI-Verlag 2000 (in German)

-  Application of the method of magnetic flux tubes to the design of
   rotational electrical machines is explained for example in:

   [HM94] Hendershot, J.R. Jr.; Miller, T.J.E.:
       **Design of Brushless Permanent-Magnet Motors**. Magna Physics
       Publishing and Oxford University Press 1994

::

Extends from
`Modelica.Icons.References <Modelica_Icons.html#Modelica.Icons.References>`_
(Icon for external references).

--------------

|image14| `Modelica.Magnetic.FluxTubes.UsersGuide <Modelica_Magnetic_FluxTubes_UsersGuide.html#Modelica.Magnetic.FluxTubes.UsersGuide>`_.Contact
------------------------------------------------------------------------------------------------------------------------------------------------

::

Contact
^^^^^^^

**Main Author:**
    `Thomas Bödrich <http://www.ifte.de/mitarbeiter/boedrich.html>`_
     Dresden University of Technology
     Institute of Electromechanical and Electronic Design
     01062 Dresden, Germany
     Phone: +49 - 351 - 463 36296
     Fax: +49 - 351 - 463 37183
     email:
    `Thomas.Boedrich@mailbox.tu-dresden.de <mailto:Thomas.Boedrich@mailbox.tu-dresden.de>`_

**Acknowledgements:**

-  The magnetisation characteristics of the included soft magnetic
   materials were compiled and measured respectively by Thomas Roschke,
   now with Johnson Electric. Provision of this data is highly
   appreciated. He also formulated the approximation function used for
   description of the magnetisation characteristics of these materials.
-  André Klick of then Dresden University of Technology, Dresden,
   Germany gave valuable support on the implementation of this library.
   His contribution is highly appreciated, too.

::

Extends from
`Modelica.Icons.Contact <Modelica_Icons.html#Modelica.Icons.Contact>`_
(Icon for contact information).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:47
2010.

.. |Modelica.Magnetic.FluxTubes.UsersGuide| image:: Modelica.Magnetic.FluxTubes.UsersGuideI.png
.. |Modelica.Magnetic.FluxTubes.UsersGuide.FluxTubeConcept| image:: Modelica.Magnetic.FluxTubes.UsersGuide.FluxTubeConceptS.png
.. |Modelica.Magnetic.FluxTubes.UsersGuide.ReluctanceForceCalculation| image:: Modelica.Magnetic.FluxTubes.UsersGuide.FluxTubeConceptS.png
.. |Modelica.Magnetic.FluxTubes.UsersGuide.Literature| image:: Modelica.Magnetic.FluxTubes.UsersGuide.LiteratureS.png
.. |Modelica.Magnetic.FluxTubes.UsersGuide.Contact| image:: Modelica.Magnetic.FluxTubes.UsersGuide.ContactS.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.UsersGuide.FluxTubeConceptS.png
.. |image6| image:: Modelica.Magnetic.FluxTubes.UsersGuide.FluxTubeConceptS.png
.. |image7| image:: Modelica.Magnetic.FluxTubes.UsersGuide.LiteratureS.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.UsersGuide.ContactS.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.UsersGuideI.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.UsersGuideI.png
.. |Equation for force calculation from change of magnetic co-energy
with armature
position| image:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/ReluctanceForceCalculation/eq_CoEnergy_general.png
.. |Equation for force calculation in lumped magnetic network
models| image:: ../Resources/Images/Magnetic/FluxTubes/UsersGuide/ReluctanceForceCalculation/eq_forceFromPermeance_network.png
.. |image13| image:: Modelica.Magnetic.FluxTubes.UsersGuide.LiteratureI.png
.. |image14| image:: Modelica.Magnetic.FluxTubes.UsersGuide.ContactI.png
