==============
Modelica.Fluid
==============

`Modelica <Modelica.html#Modelica>`_.Fluid
------------------------------------------

**Library of 1-dim. thermo-fluid flow models using the Modelica.Media
media description**

Information
~~~~~~~~~~~

::

Library **Modelica.Fluid** is a **free** Modelica package providing
components for **1-dimensional thermo-fluid flow** in networks of
vessels, pipes, fluid machines, valves and fittings. A unique feature is
that the component equations and the media models as well as pressure
loss and heat transfer correlations are decoupled from each other. All
components are implemented such that they can be used for media from the
Modelica.Media library. This means especially that an incompressible or
compressible medium, a single or a multiple substance medium with one or
more phases might be used.

In the next figure, several features of the library are demonstrated
with a simple heating system with a closed flow cycle. By just changing
one configuration parameter in the system object the equations are
changed between steady-state and dynamic simulation with fixed or
steady-state initial conditions.

.. figure:: ../Resources/Images/Fluid/UsersGuide/HeatingSystem.png
   :align: center
   :alt: 

With respect to previous versions, the design of the connectors has been
changed in a non-backward compatible way, using the recently developed
concept of stream connectors that results in much more reliable
simulations (see also Stream-Connectors-Overview-Rationale.pdf). This
extension was included in Modelica 3.1. As of Jan. 2009, the stream
concept is supported in Dymola 7.1. It is recommended to use Dymola 7.2
(available since Feb. 2009), or a later Dymola version, since this
version supports a new annotation to connect very conveniently to
vectors of connectors. Other tool vendors will support the stream
concept as well.

The following parts are useful, when newly starting with this library:

-  `Modelica.Fluid.UsersGuide <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide>`_.
-  `Modelica.Fluid.UsersGuide.ReleaseNotes <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide.ReleaseNotes>`_
   summarizes the changes of the library releases.
-  `Modelica.Fluid.Examples <Modelica_Fluid_Examples.html#Modelica.Fluid.Examples>`_
   contains examples that demonstrate the usage of this library.

**Licensed by the Modelica Association under the Modelica License 2**
 Copyright © 2002-2010, ABB, DLR, Dassault Systèmes AB, Modelon, TU
Braunschweig, TU Hamburg-Harburg, Politecnico di Milano.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| Name                                                                                                       | Description                                                                                                    |
+============================================================================================================+================================================================================================================+
| |image15| `UsersGuide <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide>`_                         | User's Guide                                                                                                   |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image16| `Examples <Modelica_Fluid_Examples.html#Modelica.Fluid.Examples>`_                               | Demonstration of the usage of the library                                                                      |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image17| `System <Modelica_Fluid.html#Modelica.Fluid.System>`_                                            | System properties and default values (ambient, flow direction, initialization)                                 |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image18| `Vessels <Modelica_Fluid_Vessels.html#Modelica.Fluid.Vessels>`_                                  | Devices for storing fluid                                                                                      |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image19| `Pipes <Modelica_Fluid_Pipes.html#Modelica.Fluid.Pipes>`_                                        | Devices for conveying fluid                                                                                    |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image20| `Machines <Modelica_Fluid_Machines.html#Modelica.Fluid.Machines>`_                               | Devices for converting between energy held in a fluid and mechanical energy                                    |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image21| `Valves <Modelica_Fluid_Valves.html#Modelica.Fluid.Valves>`_                                     | Components for the regulation and control of fluid flow                                                        |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image22| `Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_                               | Adaptors for connections of fluid components and the regulation of fluid flow                                  |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image23| `Sources <Modelica_Fluid_Sources.html#Modelica.Fluid.Sources>`_                                  | Define fixed or prescribed boundary conditions                                                                 |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image24| `Sensors <Modelica_Fluid_Sensors.html#Modelica.Fluid.Sensors>`_                                  | Ideal sensor components to extract signals from a fluid connector                                              |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image25| `Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_                         | Interfaces for steady state and unsteady, mixed-phase, multi-substance, incompressible and compressible flow   |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image26| `Types <Modelica_Fluid_Types.html#Modelica.Fluid.Types>`_                                        | Common types for fluid models                                                                                  |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image27| `Dissipation <Modelica_Fluid_Dissipation.html#Modelica.Fluid.Dissipation>`_                      | Functions for convective heat transfer and pressure loss characteristics                                       |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image28| `Utilities <Modelica_Fluid_Utilities.html#Modelica.Fluid.Utilities>`_                            | Utility models to construct fluid components (should not be used directly)                                     |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+
| |image29| `Icons <Modelica_Fluid_Icons.html#Modelica.Fluid.Icons>`_                                        |                                                                                                                |
+------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------+

--------------

|image30| `Modelica.Fluid <Modelica_Fluid.html#Modelica.Fluid>`_.System
-----------------------------------------------------------------------

**System properties and default values (ambient, flow direction,
initialization)**

Information
~~~~~~~~~~~

::

A system component is needed in each fluid model to provide system-wide
settings, such as ambient conditions and overall modeling assumptions.
The system settings are propagated to the fluid models using the
inner/outer mechanism.

A model should never directly use system parameters. Instead a local
parameter should be declared, which uses the global setting as default.
The only exception currently made is the gravity system.g.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| Type                                                                            | Name                | Default                           | Description                                                                    |
+=================================================================================+=====================+===================================+================================================================================+
| Environment                                                                     |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | p\_ambient          | 101325                            | Default ambient pressure [Pa]                                                  |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_ambient          | 293.15                            | Default ambient temperature [K]                                                |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Acceleration <Modelica_SIunits.html#Modelica.SIunits.Acceleration>`_           | g                   | Modelica.Constants.g\_n           | Constant gravity acceleration [m/s2]                                           |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| **Assumptions**                                                                 |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| Boolean                                                                         | allowFlowReversal   | true                              | = false to restrict to design flow direction (port\_a -> port\_b)              |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| Dynamics                                                                        |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_           | energyDynamics      | Modelica.Fluid.Types.Dynamic...   | Default formulation of energy balances                                         |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_           | massDynamics        | energyDynamics                    | Default formulation of mass balances                                           |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_           | momentumDynamics    | Modelica.Fluid.Types.Dynamic...   | Default formulation of momentum balances, if options available                 |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| **Initialization**                                                              |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow\_start      | 0                                 | Default start value for mass flow rates [kg/s]                                 |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | p\_start            | p\_ambient                        | Default start value for pressures [Pa]                                         |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_start            | T\_ambient                        | Default start value for temperatures [K]                                       |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| **Advanced**                                                                    |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_           | m\_flow\_small      | 0.01                              | Default small laminar mass flow rate for regularization of zero flow [kg/s]    |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | dp\_small           | 1                                 | Default small pressure drop for regularization of laminar and zero flow [Pa]   |
+---------------------------------------------------------------------------------+---------------------+-----------------------------------+--------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model System 
      "System properties and default values (ambient, flow direction, initialization)"

      package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model for default start values";
      parameter Modelica.SIunits.AbsolutePressure p_ambient=101325 
        "Default ambient pressure";
      parameter Modelica.SIunits.Temperature T_ambient=293.15 
        "Default ambient temperature";
      parameter Modelica.SIunits.Acceleration g=Modelica.Constants.g_n 
        "Constant gravity acceleration";

      // Assumptions
      parameter Boolean allowFlowReversal = true 
        "= false to restrict to design flow direction (port_a -> port_b)";
      parameter Modelica.Fluid.Types.Dynamics energyDynamics=
        Modelica.Fluid.Types.Dynamics.DynamicFreeInitial 
        "Default formulation of energy balances";
      parameter Modelica.Fluid.Types.Dynamics massDynamics=
        energyDynamics "Default formulation of mass balances";
      final parameter Modelica.Fluid.Types.Dynamics substanceDynamics=
        massDynamics "Default formulation of substance balances";
      final parameter Modelica.Fluid.Types.Dynamics traceDynamics=
        massDynamics "Default formulation of trace substance balances";
      parameter Modelica.Fluid.Types.Dynamics momentumDynamics=
        Modelica.Fluid.Types.Dynamics.SteadyState 
        "Default formulation of momentum balances, if options available";

      // Initialization
      parameter Modelica.SIunits.MassFlowRate m_flow_start = 0 
        "Default start value for mass flow rates";
      parameter Modelica.SIunits.AbsolutePressure p_start = p_ambient 
        "Default start value for pressures";
      parameter Modelica.SIunits.Temperature T_start = T_ambient 
        "Default start value for temperatures";

      // Advanced
      parameter Modelica.SIunits.MassFlowRate m_flow_small(min=0) = 0.01 
        "Default small laminar mass flow rate for regularization of zero flow";
      parameter Modelica.SIunits.AbsolutePressure dp_small(min=0) = 1 
        "Default small pressure drop for regularization of laminar and zero flow";


    end System;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:52
2010.

.. |Modelica.Fluid.UsersGuide| image:: Modelica.Fluid.UsersGuideS.png
.. |Modelica.Fluid.Examples| image:: Modelica.Fluid.ExamplesS.png
.. |Modelica.Fluid.System| image:: Modelica.Fluid.SystemS.png
.. |Modelica.Fluid.Vessels| image:: Modelica.Fluid.VesselsS.png
.. |Modelica.Fluid.Pipes| image:: Modelica.Fluid.VesselsS.png
.. |Modelica.Fluid.Machines| image:: Modelica.Fluid.VesselsS.png
.. |Modelica.Fluid.Valves| image:: Modelica.Fluid.VesselsS.png
.. |Modelica.Fluid.Fittings| image:: Modelica.Fluid.VesselsS.png
.. |Modelica.Fluid.Sources| image:: Modelica.Fluid.SourcesS.png
.. |Modelica.Fluid.Sensors| image:: Modelica.Fluid.SensorsS.png
.. |Modelica.Fluid.Interfaces| image:: Modelica.Fluid.InterfacesS.png
.. |Modelica.Fluid.Types| image:: Modelica.Fluid.TypesS.png
.. |Modelica.Fluid.Dissipation| image:: Modelica.Fluid.TypesS.png
.. |Modelica.Fluid.Utilities| image:: Modelica.Fluid.TypesS.png
.. |Modelica.Fluid.Icons| image:: Modelica.Fluid.TypesS.png
.. |image15| image:: Modelica.Fluid.UsersGuideS.png
.. |image16| image:: Modelica.Fluid.ExamplesS.png
.. |image17| image:: Modelica.Fluid.SystemS.png
.. |image18| image:: Modelica.Fluid.VesselsS.png
.. |image19| image:: Modelica.Fluid.VesselsS.png
.. |image20| image:: Modelica.Fluid.VesselsS.png
.. |image21| image:: Modelica.Fluid.VesselsS.png
.. |image22| image:: Modelica.Fluid.VesselsS.png
.. |image23| image:: Modelica.Fluid.SourcesS.png
.. |image24| image:: Modelica.Fluid.SensorsS.png
.. |image25| image:: Modelica.Fluid.InterfacesS.png
.. |image26| image:: Modelica.Fluid.TypesS.png
.. |image27| image:: Modelica.Fluid.TypesS.png
.. |image28| image:: Modelica.Fluid.TypesS.png
.. |image29| image:: Modelica.Fluid.TypesS.png
.. |image30| image:: Modelica.Fluid.SystemI.png
