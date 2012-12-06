===================================
Modelica.Magnetic.FluxTubes.Sources
===================================

`Modelica.Magnetic.FluxTubes <Modelica_Magnetic_FluxTubes.html#Modelica.Magnetic.FluxTubes>`_.Sources
-----------------------------------------------------------------------------------------------------

**Sources of different complexity of magnetomotive force and magnetic
flux**

Information
~~~~~~~~~~~

::

This package contains sources of a magnetic potential difference or a
magnetic flux:

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| Name                                                                                                                                                                                                                                  | Description                              |
+=======================================================================================================================================================================================================================================+==========================================+
| |image4| `ConstantMagneticPotentialDifference <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifference>`_                                                                    | Constant magnetomotive force             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image5| `SignalMagneticPotentialDifference <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifference>`_                                                                        | Signal-controlled magnetomotive force    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image6| `ConstantMagneticFlux <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFlux>`_                                                                                                  | Source of constant magnetic flux         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+
| |image7| `SignalMagneticFlux <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFlux>`_                                                                                                      | Signal-controlled magnetic flux source   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------+

--------------

|image8| `Modelica.Magnetic.FluxTubes.Sources <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources>`_.ConstantMagneticPotentialDifference
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Constant magnetomotive force**

.. figure:: Modelica.Magnetic.FluxTubes.Interfaces.PartialLeakageD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifference

   Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifference

Information
~~~~~~~~~~~

::

Magnetic circuits under steady-state conditions, i.e., with stationary
magnetic fields (change of magnetic flux dΦ/dt = 0) can be described
with constant sources of a magnetic potential difference or
magnetomotive force (mmf). Constant magnetic potential differences are
imposed by

-  coils with stationary current (di / dt = 0) and
-  permanent magnets modelled with *Thévenin*'s equivalent magnetic
   circuit.

For modelling of reluctance actuators with this source component it is
assumed that the armature is fixed so that no motion-induced flux change
dΦ/dt can occur.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_
(Partial component with two magnetic ports p and n for textual
programming).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------------+
| Type                                                                                                  | Name   | Default   | Description                        |
+=======================================================================================================+========+===========+====================================+
| `MagneticPotentialDifference <Modelica_SIunits.html#Modelica.SIunits.MagneticPotentialDifference>`_   | V\_m   |           | Magnetic potential differnce [A]   |
+-------------------------------------------------------------------------------------------------------+--------+-----------+------------------------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantMagneticPotentialDifference 
      "Constant magnetomotive force"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      parameter SI.MagneticPotentialDifference V_m "Magnetic potential differnce";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;

    end ConstantMagneticPotentialDifference;

--------------

|image9| `Modelica.Magnetic.FluxTubes.Sources <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources>`_.SignalMagneticPotentialDifference
----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Signal-controlled magnetomotive force**

.. figure:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifferenceD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifference

   Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifference

Information
~~~~~~~~~~~

::

In electromagnetic devices, a change of a coil's magnetic flux linkage Ψ
reacts on the electrical subsystem in that a voltage v is induced due to
*Faraday*'s law:

::

        v = - dΨ/dt

This reaction can possibly be neglected for

-  modelling ofelectromagnetic actuators under quasi-stationary
   conditions (slow current change, slow armature motion),
-  modelling of current-controlled electromagnetic actuators (ideal
   current source) and
-  for system simulation where the system dynamics is not governed by an
   electromagnetic actuator, but by the surrounding subsystems.

In these cases, the magnetic potential difference or magnetomotive force
imposed by a coil can easily be modelled with a signal-controlled
source. Except for the neglected dynamics, steady-state actuator forces
will be calculated properly in actuator models based on these sources.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_
(Partial component with two magnetic ports p and n for textual
programming).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| Type                                                                                                                                | Name      | Description                     |
+=====================================================================================================================================+===========+=================================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port          |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port          |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                           | V\_m      | Magnetic potential difference   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalMagneticPotentialDifference 
      "Signal-controlled magnetomotive force"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      Modelica.Blocks.Interfaces.RealInput V_m "Magnetic potential difference";
      SI.MagneticFlux Phi "Magnetic flux from port_p to port_n";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;
    end SignalMagneticPotentialDifference;

--------------

|image10| `Modelica.Magnetic.FluxTubes.Sources <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources>`_.ConstantMagneticFlux
----------------------------------------------------------------------------------------------------------------------------------------------------

**Source of constant magnetic flux**

.. figure:: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFlux

   Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFlux

Information
~~~~~~~~~~~

::

Sources of a constant magnetic flux are useful for modelling of
permanent magnets with *Norton*'s magnetic equivalent circuit.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_
(Partial component with two magnetic ports p and n for textual
programming).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------+--------+-----------+----------------------+
| Type                                                                    | Name   | Default   | Description          |
+=========================================================================+========+===========+======================+
| `MagneticFlux <Modelica_SIunits.html#Modelica.SIunits.MagneticFlux>`_   | Phi    | 1         | Magnetic flux [Wb]   |
+-------------------------------------------------------------------------+--------+-----------+----------------------+

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantMagneticFlux "Source of constant magnetic flux"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      parameter SI.MagneticFlux Phi = 1 "Magnetic flux";
      SI.MagneticPotentialDifference V_m 
        "Magnetic potential difference between both ports";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;
    end ConstantMagneticFlux;

--------------

|image11| `Modelica.Magnetic.FluxTubes.Sources <Modelica_Magnetic_FluxTubes_Sources.html#Modelica.Magnetic.FluxTubes.Sources>`_.SignalMagneticFlux
--------------------------------------------------------------------------------------------------------------------------------------------------

**Signal-controlled magnetic flux source**

.. figure:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFluxD.png
   :align: center
   :alt: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFlux

   Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFlux

Information
~~~~~~~~~~~

::

This source of a magnetic flux is intended for test purposes, e.g., for
simulation and subsequent plotting of a softmagnetic material's
magnetisation characteristics if used together with a non-linear
reluctance element.

::

Extends from
`Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary>`_
(Partial component with two magnetic ports p and n for textual
programming).

Connectors
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| Type                                                                                                                                | Name      | Description              |
+=====================================================================================================================================+===========+==========================+
| `PositiveMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.PositiveMagneticPort>`_   | port\_p   | Positive magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| `NegativeMagneticPort <Modelica_Magnetic_FluxTubes_Interfaces.html#Modelica.Magnetic.FluxTubes.Interfaces.NegativeMagneticPort>`_   | port\_n   | Negative magnetic port   |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                           | Phi       | Magnetic flux            |
+-------------------------------------------------------------------------------------------------------------------------------------+-----------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalMagneticFlux "Signal-controlled magnetic flux source"

      extends Modelica.Magnetic.FluxTubes.Interfaces.PartialTwoPortsElementary;
      Modelica.Blocks.Interfaces.RealInput Phi "Magnetic flux";
      SI.MagneticPotentialDifference V_m 
        "Magnetic potential difference between both ports";

    equation 
      V_m = port_p.V_m - port_n.V_m;
      Phi = port_p.Phi;
      0 = port_p.Phi + port_n.Phi;
    end SignalMagneticFlux;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:53
2010.

.. |Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifference| image:: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifferenceS.png
.. |Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifference| image:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifferenceS.png
.. |Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFlux| image:: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFluxS.png
.. |Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFlux| image:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFluxS.png
.. |image4| image:: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifferenceS.png
.. |image5| image:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifferenceS.png
.. |image6| image:: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFluxS.png
.. |image7| image:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFluxS.png
.. |image8| image:: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticPotentialDifferenceI.png
.. |image9| image:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticPotentialDifferenceI.png
.. |image10| image:: Modelica.Magnetic.FluxTubes.Sources.ConstantMagneticFluxI.png
.. |image11| image:: Modelica.Magnetic.FluxTubes.Sources.SignalMagneticFluxI.png
