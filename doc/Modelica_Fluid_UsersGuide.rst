=========================
Modelica.Fluid.UsersGuide
=========================

|Modelica.Fluid.UsersGuide| `Modelica.Fluid <Modelica_Fluid.html#Modelica.Fluid>`_.UsersGuide
---------------------------------------------------------------------------------------------

::

Library **Modelica.Fluid** is a **free** Modelica package providing
components for **1-dimensional thermo-fluid flow** in networks of pipes.
A unique feature is that the component equations and the media models as
well as pressure loss and heat transfer correlations are decoupled from
each other. All components are implemented such that they can be used
for media from the Modelica.Media library. This means especially that an
incompressible or compressible medium, a single or a multiple substance
medium with one or more phases might be used.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| Name                                                                                                                                                                            | Description              |
+=================================================================================================================================================================================+==========================+
| |image7| `Overview <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide.Overview>`_                                                                                        | Overview                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| |image8| `GettingStarted <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide.GettingStarted>`_                                                                            | Getting started          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| |image9| `ComponentDefinition <Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition>`_                                              | Component definition     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| |image10| `BuildingSystemModels <Modelica_Fluid_UsersGuide_BuildingSystemModels.html#Modelica.Fluid.UsersGuide.BuildingSystemModels>`_                                          | Building system models   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| |image11| `ReleaseNotes <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide.ReleaseNotes>`_                                                                               | Release notes            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| |image12| `Contact <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide.Contact>`_                                                                                         | Contact                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+

--------------

|image13| `Modelica.Fluid.UsersGuide <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide>`_.Overview
----------------------------------------------------------------------------------------------------------

::

The Modelica.Fluid library provides basic interfaces and components to
model 1-dimensional thermo-fluid flow in networks of pipes. It is not
the intention that this library covers all application cases because the
fluid flow area is too large and because for special applications it is
possible to implement libraries with simpler component interfaces.
Instead, the goal is that the Modelica.Fluid library provides a
**reasonable set of components** and that it **demonstrates** how to
implement components of a fluid flow library in Modelica, in particular
to cope with difficult issues such as connector design, reversing flow
and initialization. It is planned to include more components in the
future. User proposals are welcome.

This library has the following main features:

-  The connectors Modelica.Fluid.Interfaces.FluidPort\_a/\_b are
   designed for one-dimensional flow of a **single substance** or of a
   **mixture of substances** with optional **multiple phases**. All
   media models from Modelica.Media can be utilized when connecting
   components. For one substance media, the additional arrays for
   multiple substance media have zero dimension and are therefore
   removed from the code during translation. The general connector
   definition therefore does not introduce an overhead for special
   cases.
-  All the components of the Modelica.Fluid library are designed that
   they can be utilized for all media models from Modelica.Media if this
   is posssible. For example, all media can be utilized for the
   Modelica.Fluid.Sensors/Sources components. For some components only
   special media are possible, since additional functionality is
   required. For example, Modelica.Fluid.Components.Evaporator requires
   a two phase medium (extending from
   Modelica.Media.Interfaces.PartialTwoPhaseMedium).
-  In order to simplify the initialization in the components, there is
   the restriction that only media models are supported that have T,
   (p,T), (p,h), (T,X), (p,T,X) or (p,h,X) as independent variables.
   Other media models would be possible, e.g., with (T,d) as independent
   variables. However, this requires to rewrite the code for the
   component initialization. (Note, T is temperature, p is pressure, d
   is density, h is specific enthalpy, and X is a mass fraction vector).
-  All components work for **incompressible** and **compressible**
   media. This is implemented by a small change in the initialization of
   a component, if the medium is incompressible. Otherwise, the
   equations of the components are not influenced by this property.
-  All components allow fluid flow in both directions, i.e., **reversing
   flow** is supported. However, it is possible to declare that the flow
   through a component only has the design direction, in order to obtain
   faster simulation code.
-  Two or more components can be connected together. This means that the
   pressures of all connected ports are equal and the mass flow rates
   sum up to zero. Specific enthalpy, mass fractions and trace
   substances are mixed according to the mass flow rates.
-  The **momentum balance** and the **energy balance** are only
   fulfilled exactly if **two ports of equal diameter** are connected.
   In all other cases, the balances are approximated, because kinetic
   and friction effect are neglected. An explicit fitting or junction
   should be used if these are important for the specific problem at
   hand. In all circuits where friction dominates, or components such as
   pumps determine the flow rate, kinetic pressure is typically
   irrelevant. You can consider the
   `Modelica.Fluid.Examples.Explanatory.MomentumBalanceFittings <Modelica_Fluid_Examples_Explanatory.html#Modelica.Fluid.Examples.Explanatory.MomentumBalanceFittings>`_
   model (and its documentation) to see one case where the momentum
   balance essentially depends on kinetic pressure, so it is necessary
   to use explicit fittings in order to obtain correct results.
-  Given the above-mentioned limitations, there is no restriction how
   components can be connected together. The resulting simulation
   performance however often strongly depends on the model structure and
   modeling assumptions made. In particular the direct connection of
   fluid volumes generally results in high-index DAEs for the pressures.
   The direct connection of flow models generally results in systems of
   implicit nonlinear algebraic equations.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image14| `Modelica.Fluid.UsersGuide <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide>`_.GettingStarted
----------------------------------------------------------------------------------------------------------------

::

Please explore the
`Examples <Modelica_Fluid_Examples.html#Modelica.Fluid.Examples>`_,
which provide simple models for a broad variety of applications.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image15| `Modelica.Fluid.UsersGuide <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide>`_.ReleaseNotes
--------------------------------------------------------------------------------------------------------------

::

Version 1.1, 2009-06-21
^^^^^^^^^^^^^^^^^^^^^^^

The Modelica\_Fluid library (revisionId = r2625) was included as
Modelica.Fluid in the Modelica Standard Library 3.1.

Version 1.0, 2009-01-28
^^^^^^^^^^^^^^^^^^^^^^^

Modelica\_Fluid was refactored and finalized for the release:

-  Refactoring of the code
    This became necessary as the previous release Modelica.Fluid Streams
   Beta3 still reflected the long development history, while the basic
   concepts had been crystalized. Please consult the subversion control
   (SVN) logs for individual changes.
-  Device oriented package names
    The former sub-packages Junctions and PressureLosses have been
   combined into the new subpackage Fittings. The former Pumps and
   Volumes.SweptVolume have become the initial version of fluid
   Machines. The former Volumes package is now called Vessels.
-  Complete implementation of one-dimenstional fluid flow
    The balance equations as documented in
   `UsersGuide.ComponentDefinition.BalanceEquations <Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.BalanceEquations>`_
   are now completely implemented. The implementations with generic
   boundary flow and source terms find in:

   -  `Interfaces.PartialDistributedVolume <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialDistributedVolume>`_,
      `Interfaces.PartialLumpedVolume <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedVolume>`_:
      Energy, Mass and Substance balances
   -  `Interfaces.PartialDistributedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialDistributedFlow>`_,
      `Interfaces.PartialLumpedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedFlow>`_:
      Momentum balance

   Specific models combine the balances and define the boundary flow and
   source terms as appropriate. For instance

   -  `Vessels.OpenTank <Modelica_Fluid_Vessels.html#Modelica.Fluid.Vessels.OpenTank>`_
      extends from
      `Interfaces.PartialLumpedVolume <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedVolume>`_,
   -  `Fittings.SimpleGenericOrifice <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.SimpleGenericOrifice>`_
      extends from
      `Interfaces.PartialLumpedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedFlow>`_,
      besides
      `Interfaces.PartialTwoPortTransport <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport>`_,
   -  `Pipes.DynamicPipe <Modelica_Fluid_Pipes.html#Modelica.Fluid.Pipes.DynamicPipe>`_
      is based on
      `Interfaces.PartialDistributedVolume <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialDistributedVolume>`_
      and
      `Interfaces.PartialDistributedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialDistributedFlow>`_,
      besides
      `Interfaces.PartialTwoPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPort>`_.

   All non-trivial mass and energy balances of Vessels, Machines and
   Fittings have been replaced with PartialLumpedVolume. The mass and
   energy balances of Pipes are based on PartialDistributedVolume.
    See
   `Examples.BranchingDynamicPipes <Modelica_Fluid_Examples.html#Modelica.Fluid.Examples.BranchingDynamicPipes>`_
   for an example utilizing the complete balance equations.
-  New approach for the connection of distributed flow models
    The staggered grid approach offers different choices for the
   connection approach. So far the preferred modeling was to put full
   mass balances into the pipes and expose half momentum balances
   through the ports (ModelStructure a\_v\_b). This resulted in
   nonlinear equation systems for pressure/flow correlations in
   connection sets. A new default ModelStructure av\_vb has been
   introduced putting full momentum balances into the models and
   exposing half mass balances through the ports (av\_vb replaces the
   former avb). This way the nonlinear equation systems are avoided.
   High-index DAEs need to be treated instead in connection sets.
   Alternatively a Fitting like SuddenExpansion can be introduced to
   account for different cross flow areas of connected flow models.
-  New Vessels.BaseClasses.PartialLumpedVessel treating the ports,
   including hydraulic resistances, for ClosedVolume, SimpleTank and
   SweptVolume.
-  Clarification of modeling assumptions
    The documentation has been extended to better explain the modeling
   assumptions made. In particular the section
   `UsersGuide.ComponentDefinition.FluidConnectors <Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.FluidConnectors>`_
   now makes clear that the ports represent the thermodynamic enthalpy,
   as opposed to stagnation enthalpy, and thermodynamic or static
   pressure, as opposed to total pressure. An new package Explanatory
   has been added to the examples to show the difference beteen static
   pressure and total pressure and possible implications. See
   `Examples.Explanatory.MomentumBalanceFittings <Modelica_Fluid_Examples_Explanatory.html#Modelica.Fluid.Examples.Explanatory.MomentumBalanceFittings>`_.
-  System (former Ambient)
    The use of the global System object has been extended towards common
   default values for modeling assumptions, initialization, and advanced
   settings that are different for each application of the library but
   should nevertheless provide default values for reasons of
   convenience. In particular steady-state initialization and complete
   steady-state simulation can now be specified system-wide. A new
   Types.Init.Dynamics has been introduced, combining steady-state and
   initial conditions. The former Types.Init has become obsolete.
   See
   `Examples.HeatingSystem <Modelica_Fluid_Examples.html#Modelica.Fluid.Examples.HeatingSystem>`_
-  Extension of pumps for better consideration of zero flow and heat
   transfer with environment
    The simplified mass and energy balances have been replaced with a
   rigorous formulation. Moreover an optional heat transfer model can be
   configured for heat exchanged with the environment or the housing.
    See
   `Machines.BaseClasses.PartialPump <Modelica_Fluid_Machines_BaseClasses.html#Modelica.Fluid.Machines.BaseClasses.PartialPump>`_
-  Refinement of valves for flow reversal
    All valves now use upstream discretization for reverting flow
   conditions.
-  Finalization of trace substrances
    Modelica.Fluid now provides a sound implementation for trace
   substances, which can easily be added to existing Media models, in
   order to study their evolution in a fluid system.
    See
   `Examples.TraceSubstances.RoomCO2WithControls <Modelica_Fluid_Examples_TraceSubstances.html#Modelica.Fluid.Examples.TraceSubstances.RoomCO2WithControls>`_
-  Vectorized ports for volumes
    The ports of models that typically have large volumes, like Vessels
   and Sources, have been vectorized. Formerly the connection of
   multiple flow models to the same port of such volume models resulted
   in unintended mixing equations for stream variables in connection
   sets outside the volumes. The mixing takes place inside the volumes
   when using multiple ports. Moreover a
   `Fittings.MultiPort <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.MultiPort>`_
   has been introduced. It can be attached to components like pipes,
   which don't have vectorized ports on their own.
-  Inverse parameterization of flow models with nominal operational
   conditions
    Flow models have been added or extended to support the
   parameterization with nominal values (Machines.ControlledPump,
   Orifices.SimpleGenericOrifice,
   Pipes.BaseClasses.FlowModels.NominalTurbulentFlow). They are intended
   for early phases of system modeling, if geometries and flow
   characteristics are of secondary interest. As these models use the
   same interfaces, base classes and naming conventions, they can easily
   be replaced with more detailed models as more information shall be
   taken into account later on.
    See
   `Examples.InverseParameterization <Modelica_Fluid_Examples.html#Modelica.Fluid.Examples.InverseParameterization>`_
-  Replaceable HeatTransfer models
    The Vessels and the Machines now have replaceable HeatTransfer
   models, besides the Pipes. All HeatTransfer models are optional. The
   heat transfer models are parameterized with the Medium and the
   ThermodynamicState of involved flow segments.
    See
   `Interfaces.PartialHeatTransfer <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialHeatTransfer>`_.
-  All examples are working now (using Dymola 7.1).
    The number of examples has been extended with the former critical
   test cases HeatingSystem and IncompressibleFluidNetwork. Moreover the
   HeatExchangers have been moved into Examples.

Version 1.0 Streams Beta 3, 2008-10-12
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Modelica.Fluid was further improved:

-  Volumes, tanks, junctions
    Added asserts to require that ports are connected at most once. If a
   user would perform more than one connection, ideal mixing takes place
   for the connected components and this is nearly never what the user
   would like to have
-  Ambient
    Renamed Ambient to System, including adaptation of models.
    Introduced default values system.flowDirection and as a comment
   system.initType. system.flowDirection is used in two port components
   as default.
-  GenericJunction
    Corrected specification of flowDirection.
    Added a HeatPort.
-  PartialDistributedFlow models
    Adapted determination of velocities to usage of upstream properties
   at ports.
    Corrected and unified initialization of p\_start[\*] values.
-  
-  DistributedPipe models
    Changed treatment of port densities and viscosities to the treatment
   of the lumped pipe model. This way events are avoided if the mass
   flow rate crosses or approaches zero.
    Correct determination of Reynolds numbers.
    Added test model DistributedPipeClosingValve.
-  ControlValves
    Changed flowCharacteristic into valveCharacteristic
    Removed parameter Kv and added dp\_nom, m\_flow\_nom from linear and
   discrete valve interfaces. Added test cases.
    Adapted Examples to new LinearValve and DiscreteValve, using nominal
   values instead of Kv.
    Changed default flow coefficient selection to OpPoint
-  
-  Fixed units for Kv and Cv in control valve models.
-  Updated tests for valves.
-  Bug in Modelica.Fluid.Test.TestComponents.Pumps.TestWaterPump2
   corrected (complicated redeclaration issue).
-  Adapted AST\_BatchPlant so that "Check" is sucessful. Simulation
   fails after 600 s.
-  Introduced density\_pTX(Medium.p\_default, Medium.T\_default,
   Medium.X\_default) as default value for nominal densities (previously
   it was a literal such as 1000).
-  Pumps
    Updated energy balance equations for pumps (no division by zero
   anymore, fixed several bugs related to Np).
    Added two more test cases for pumps.
    Fixed pump initialization options.
-  PartialPump
    Explanation for the energy balanced added as comment
    "h=0" replaced by "h=Medium.h\_default" since otherwise an assert is
   triggered if "h=0" is not in the medium range.
    Fluid ports positioned in the middle line and using the same size as
   for all other components.
-  Pumps.Pump
    Resized input connector, so that it has the same size as the
   standard input connectors.
    Changed icon text to input connector to "N\_in [rpm]".
    Added unit 1/min to the external and internal input connector.
-  PartialValve
    fillcolor=white added to icon
    made line Thickness = Single, since icon does not look nice
   sometimes
-  All components
    Changed %name color from black to blue (is a conversion bug, since
   Modelica 2 has blue as default color whereas Modelica 3 has black and
   Dymola is not taking care off this).
-  Sources
    Made icon elements unvisible, if corresponding input is disabled.
-  Valves, Pipes, PressureLosses, HeatExchangers, two port senors
    Added an arrow in the icon for the "design flow direction" from
   port\_a to port\_b.
-  Moved default initialization in "System" in to a comment, since no
   effect yet
-  Added the explanation from Francesco for Kv, Cv for valves in the
   User's Guide and added links in the corresponding valves to this
   description

"Check" for the library is successful. "Check with Simulation" (i.e.,
simulating all test models in the library) is successful with the
exceptions:

-  Examples.AST\_BatchPlant.BatchPlant\_StandardWater
    Need to be fixed in a later release (requires quite a lot of work).
-  Test.TestOverdeterminedSteadyStateInit.Test5
    Test.TestOverdeterminedSteadyStateInit.Test6
    These are test cases where too much initial conditions are given.
   The goal is to work on methods how this can be handled. So, this is a
   principal problem that these models do not simulate.

Version 1.0 Streams Beta 2, 2008-10-08
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Modelica.Fluid was transformed to Modelica 3 and to Modelica Standard
library 3.0 (by automatic conversion). Further changes:

-  Emulated enumerations changed to real enumerations.
-  Improved ControlValves code
-  Introduced stream connectors with stream keyword (was previously an
   annotation)
-  Introduced inStream() instead of inflow()
-  Introduced m\_flow\*actualStream(h\_outflow) instead of streamFlow()
   or semiLinear(m\_flow, inStream(h\_outflow), medium.h)
-  Removed Modelica.Fluid.Media and all references to it (since now
   available in Modelica.Media of MSL3.0).
-  Fixed PartialLumpedVolume for media with multiple substances
-  New function "Utilities.RegFun3" for regularization with static head
-  Fix density in static head models with the new RegFun3 functions
   (ticket 7)
-  Minor bug in MixingVolume corrected:
    V\_lumped and Wb\_flow have been set as modifiers when extending
   from PartialLumpedVolume, although they are not declared as input.
   This is not allowed in Modelica 3. Fixed by replacing the modifiers
   by equations.
-  Modelica.Fluid.Sources.FixedBoundary
    Introduced p\_default, T\_default, h\_default as default values,
   since otherwise warnings will always be printed because parameter
   value is missing.
-  Modelica.Fluid.Sources.Boundary\_pT
    Modelica.Fluid.Sources.Boundary\_ph
    Modelica.Fluid.Sources.MassFlowSource\_T
    Changed default values of parameters reference\_p, reference\_T to
   p\_default, T\_default (some have been xx\_default, some
   reference\_xx, it seems best to always use the same approach)
-  Modelica.Fluid.Pipes.BaseClasses.PartialDistributedFlow
    Added default value for parameter "rho\_nominal" =
   Medium.density\_pTX(Medium.p\_default, Medium.T\_default,
   Medium.X\_default) in order to avoid unnecessary warning messages.
   Should be replaced by "Medium.rho\_default", once available.
-  Modelica.Fluid.Pipes.DistributedPipe
    Modelica.Fluid.Pipes.DistributedPipeSb
    Modelica.Fluid.Pipes.DistributedPipeSa
    Added default value for parameter "mu\_nominal" (computed with
   default values of p,T,X from dynamicViscosity(..))
-  Modelica.Fluid.Pipes.BaseClasses.PartialDistributedFlowLumpedPressure
    Replaced default value "rho\_nominal=0.01" by
   Medium.density\_pTX(Medium.p\_default, Medium.T\_default,
   Medium.X\_default)
-  Modelica.Fluid.Volumes.OpenTank
    Modelica.Fluid.Volumes.Tank
    Corrected icons of ports (wrongly sized by automatic conversion from
   Modelica 2 to Modelica 3).
-  Examples.BranchingDistributedPipes
    Modelica.Fluid.Test.TestComponents.Junctions.TestGenericJunction
    Modelica.Fluid.Test.TestComponents.Pipes.TestDistributedPipe01
    Parameters dp\_nom, m\_flow\_nom are not defined in junction
   components. Values provided.
-  PressureLosses.BaseClasses.QuadraticTurbulent.BaseModel
    No default or start values for "parameter LossFactorData data"
   Changed the model to "partial model" to avoid warning messages

Version 1.0 Streams Beta 1, 2008-05-02
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Changed connectors to stream connectors and adapted the following
sublibraries:

-  Volumes
-  PressureLosses
-  Sensors
-  Sources
-  ControlValves
-  HeatExchangers
-  Junctions
-  Pipes
-  Pumps
-  Test and Exampleas (most of the examples and tests are simulating)

Other changes:

-  Introduced HeatPorts with vectorized icon in
   Modelica.Fluid.Interfaces
-  Deleted Modelica.Fluid.WorkInProgress since it seems to be too much
   work to convert it to stream connectors
-  Added Modelica.Fluid.Media (contains ConstantLiquidWater medium
   because functions are missing in Modelica.Media),
-  
-  Added two additional test cases with LumpedPipes (to identify
   problems with hierarchically connected stream connectors).
-  Deleted TestPortVolumes since PortVolumes can no longer be
   implemented with stream connectors
-  Leakage flow introduced for valves
-  Drumboiler Example corrected
-  Regularization for sensors (T,h,...), in order that no discontinuity
   for bi-directional flow
-  Density computation in static head corrected
-  New functions Utilities.regUnitStep, regStep
-  New components
   (TestComponents.Sensors.TestOnePortSensors1/.TestOnePortSensors2l,
   TestRegStep)
-  PartialTwoPortTransport

   -  Introduced port\_a.T, port\_b.T (for plotting)
   -  Removed initialization menu
   -  Introduced dp\_start, m\_flow\_start
   -  Removed previous start values of PartialTwoPortTransport in all
      models

-  PartialPump: Removed p\_nom, since no longer needed (only dp\_nom)
-  Made "%name" in the icons of all components unified (and better
   looking)
-  Changed default value of leackage flow of valves to zero.
-  Fixed Modelica.Fluid.Junctions.MassFlowRatio so that it compiles
   (inflow(..) currently only supported for scalars, not for vectors)
-  Added script libraryinfo.mos, in order that Modelica.Fluid appears in
   the Dymola library window automatically (provided library is in
   MODELICAPATH)
-  Replaced semiLinear(..) by streamFlow(..) (not yet at all places)
-  Introduced check-boxes in parameter menu of Sources (is more
   convenient to use)
-  TwoPortTransport
    Computation of V\_flow and optionally port\_a\_T, port\_b\_T. Error
   in temperature calculation corrected
-  Tank:
    Default of bottom pipe diameter changed from 0 to 0.1, since
   otherwise a division by zero (if not connected and not changed).
-  Modelica.Fluid.ControlValves.ValveVaporizing:
    Due to changes in PartialTwoPortTransport, port\_a\_T\_inflow does
   no longer exist and the usage to it is removed.
-  Modelica.Fluid.Test.TestComponents.Sensors.TestTemperatureSensor:
    Due to changes in PartialTwoPortTransport, p\_start does no longer
   exist and the usage to it is removed.
-  VersionBuild introduced, as well as automatic update of
   VersionBuild/VersionDate

Version 1.0 Beta 4, 2008-04-26
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Changes according to the Modelica Design Meetings since the last beta
version. This version is used to "freeze" the current development, in
order to change to a version with a new connector design using stream
variables.

Version 1.0 Beta 3, 2007-06-05
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Changes according to the Modelica Design Meetings since the
Modelica'2006 conference, especially, improved initialization, changed
Source components (input connectors must be enabled), improved tank
component, moved test models from Examples to new package Test, many
more test models, etc. This version is slightly non-backward compatible
to version 1.0 Beta 2.

Version 1.0 Beta 2, 2006-08-28
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Package considerably restructured and some new components added. New
examples (ControlledTankSystem, AST\_BatchPlant).

Version 0.96, 2006-01-08
^^^^^^^^^^^^^^^^^^^^^^^^

-  New package Modelica.Fluid.PressureLosses.
-  New package Modelica.Fluid.WorkInProgress.
-  New components in Modelica.Fluid.Components:
    ShortPipe, OpenTank, ValveDiscrete, StaticHead.
-  New components in Modelica.Fluid.Examples.
-  Improved users guide.

Version 0.910, 2005-10-25
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Changes as decided on 41th-45th Modelica Design Meetings (details,
   see minutes).

Version 0.900, 2004-10-18
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Changes as decided on 40th Modelica Design Meeting in Dresden (see
   also minutes)

Version 0.794, 2004-05-31
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Sensors.mo, Examples/DrumBoiler.mo: extend sensors with user choice
   for measurement unit.
-  Components.mo, Types.mo: moved components and types to package
   Examples.
-  Moved Examples from **file** Modelica.Fluid/package.mo to
   Modelica.Media/Examples **subdirectory** and created separate file
   per sub-package. This shall simplify the maintenance of examples by
   different authors
-  Moved Interfaces from file Modelica.Fluid/package.mo to
   Modelica.Fluid/Interfaces.mo

Version 0.793, 2004-05-18
^^^^^^^^^^^^^^^^^^^^^^^^^

-  Removed "semiLinear" function since available as Modelica 2.1
   built-in operator in Dymola.
-  Minor bug in "Components.ShortPipe" corrected.
-  Bug in "Components.Orifice" corrected (dp was previously calculated
   in Interfaces.PartialTwoPortTransport, but this was removed and not
   updated in Orifice).

Version 0.792, 2003-11-07
^^^^^^^^^^^^^^^^^^^^^^^^^

This is the first consolidated version made up from several changes for
Modelica'2003. Modelica.Fluid is still quite far away from a library
that could be included in the Modelica standard library.

Previous Releases
^^^^^^^^^^^^^^^^^

-  *Oct., 2003*
    by Martin Otter: Adapted to latest design of the Modelica.Media
   library.
    by Ruediger Franke: Included sensor components and
   Modelica.Fluid.Examples.DrumBoiler example.
-  *Sept., 2003*
    by Martin Otter: Changes according to the decisions of the Modelica
   design meeting in Dearborn, Sept. 2-4, 2003. Fluid library splitt in
   to two packages: Modelica.Media that contains the media models and
   Modelica.Fluid that contains fluid flow components. Modelica.Media is
   independent of Modelica.Fluid and my be used also from other packages
   that may have a different design as Modelica.Fluid.
-  *Aug., 2003*
    by Martin Otter: Improved documentation, PortVicinity (now called
   semiLinear) manually expanded, two different volume types, replaced
   number of massFractions from n to n-1 in order that usage of model
   for single substances is easier and in order that no special cases
   have to be treated in the equations (previously the massFraction
   equations had to be removed for single substance flow; now they are
   removed automatically, since the dimensions are zero, and not one as
   previously), included asserts to check the validity of the medium
   models, included the dynamic viscosity in the medium models, adapted
   the examples and medium models to the changes in Interfaces, improved
   menus according to the new features in Dymola 5.1. Added
   "Components.ShortPipe" that contains a detailed model of the
   frictional losses in pipes over a very wide range.
-  *Feb., 2003*
    by Martin Otter: Included several elementary components and a model
   for moisted air. Some elementary components, such as FixedAmbient,
   are adapted versions from the SimpleFlow fluid library of Anton
   Haumer.
-  *Dec., 2002*
    by Hubertus Tummescheit: Improved version of the high precision
   water model (Copy from ThermoFluid library, code reorganization,
   enhanced documentation, additional functions).
-  *Nov. 30, 2002*
    by Martin Otter: Improved the design from the design meeting:
   Adapted to Modelica standard library 1.5, added
   "choicesAllMatching=true" annotation, added short documentation to
   "Interfaces", added packages "Examples" and "Media" (previously
   called "Properties") from previous versions and adapted them to the
   updated "Interfaces" package.
-  *Nov. 20-21, 2002*
    by Hilding Elmqvist, Mike Tiller, Allan Watson, John Batteh, Chuck
   Newman, Jonas Eborn: Improved at the 32nd Modelica Design Meeting.
-  *Nov. 11, 2002*
    by Hilding Elmqvist, Martin Otter: improved version.
-  *Nov. 6, 2002*
    by Hilding Elmqvist: first version of the basic design.

::

Extends from
`Modelica.Icons.ReleaseNotes <Modelica_Icons.html#Modelica.Icons.ReleaseNotes>`_
(Icon for release notes in documentation).

--------------

|image16| `Modelica.Fluid.UsersGuide <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide>`_.Contact
---------------------------------------------------------------------------------------------------------

::

**Library Officers:**
    +---------------------------------------------------------------------+----+-------+----+-----------------------------------------------------------------------------+
    | Francesco Casella                                                   |    | and   |    | Rüdiger Franke                                                              |
    |  Dipartimento di Elettronica e Informazione                         |    |       |    |  ABB AG                                                                     |
    |  Politecnico di Milano                                              |    |       |    |  PTSP-E22                                                                   |
    |  Via Ponzio 34/5                                                    |    |       |    |  Kallstadter Str. 1                                                         |
    |  I-20133 Milano, Italy                                              |    |       |    |  D-68163, Germany                                                           |
    |  email: `casella@elet.polimi.it <mailto:casella@elet.polimi.it>`_   |    |       |    |  email: `ruediger.franke@de.abb.com <mailto:ruediger.franke@de.abb.com>`_   |
    +---------------------------------------------------------------------+----+-------+----+-----------------------------------------------------------------------------+

**Acknowledgements:**

The development of this library has been a collaborative effort and many
have contributed.

-  The previous design of this library (until beginning of 2008) was
   based on the paper Elmqvist H., Tummescheit H., and Otter M.:
   `Object-Oriented Modeling of Thermo-Fluid
   Systems <http://www.modelica.org/events/Conference2003/papers/h40_Elmqvist_fluid.pdf>`_.
   Modelica 2003 Conference, Linköping, Sweden, pp. 269-286, Nov. 3-4,
   2003.
    This design has been partly changed, especially by the introduction
   of the streams concept.
-  The Fluid library development was organized in 2002-2004 by Martin
   Otter, since 2004 it is organized by Francesco Casella, and since
   2008 it is organized jointly by Francesco Casella and Rüdiger Franke.
-  Francesco Casella included several components of his ThermoPower
   library with some rewriting. The stream connector concept used in
   Modelica.Fluid is based on a similar concept developed by him for the
   ThermoPower library.
-  Rüdiger Franke initiated the stream connector concept as an extension
   and improved version of the ThermoPower concept. In Nov. 2008 - Jan.
   2009 he greatly restructured and improved the library.
-  
-  Michael Wetter introduced trace constituents in Modelica.Fluid
   consistently and provided corresponding examples under
   Examples.TraceSubstances.
-  The following people contributed to the fluid component models,
   examples, and the further design of the library (alphabetical list):
    John Batteh, Francesco Casella, Jonas Eborn, Hilding Elmqvist,
   Rüdiger Franke, Manuel Gräber, Henning Knigge, Sven Erik Mattsson,
   Chuck Newman, Hans Olsson, Martin Otter, Katrin Prölß, Christoph
   Richter, Michael Sielemann, Mike Tiller, Hubertus Tummescheit, Allan
   Watson, Michael Wetter.

Partial financial support of ABB and DLR by BMBF (BMBF
Förderkennzeichen: 01IS07022F) for the further development of this
library within the `ITEA <http://www.itea2.org>`_ project
`EUROSYSLIB <http://www.itea2.org/public/project_leaflets/EUROSYSLIB_profile_oct-07.pdf>`_
is highly appreciated.

::

Extends from
`Modelica.Icons.Contact <Modelica_Icons.html#Modelica.Icons.Contact>`_
(Icon for contact information).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:52
2010.

.. |Modelica.Fluid.UsersGuide| image:: Modelica.Fluid.UsersGuideI.png
.. |Modelica.Fluid.UsersGuide.Overview| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |Modelica.Fluid.UsersGuide.GettingStarted| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |Modelica.Fluid.UsersGuide.ComponentDefinition| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |Modelica.Fluid.UsersGuide.BuildingSystemModels| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |Modelica.Fluid.UsersGuide.ReleaseNotes| image:: Modelica.Fluid.UsersGuide.ReleaseNotesS.png
.. |Modelica.Fluid.UsersGuide.Contact| image:: Modelica.Fluid.UsersGuide.ContactS.png
.. |image7| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |image8| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |image9| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |image10| image:: Modelica.Fluid.UsersGuide.OverviewS.png
.. |image11| image:: Modelica.Fluid.UsersGuide.ReleaseNotesS.png
.. |image12| image:: Modelica.Fluid.UsersGuide.ContactS.png
.. |image13| image:: Modelica.Fluid.UsersGuideI.png
.. |image14| image:: Modelica.Fluid.UsersGuideI.png
.. |image15| image:: Modelica.Fluid.UsersGuide.ReleaseNotesI.png
.. |image16| image:: Modelica.Fluid.UsersGuide.ContactI.png
