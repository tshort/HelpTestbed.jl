==============================================
Modelica.Fluid.UsersGuide.BuildingSystemModels
==============================================

|Modelica.Fluid.UsersGuide.BuildingSystemModels| `Modelica.Fluid.UsersGuide <Modelica_Fluid_UsersGuide.html#Modelica.Fluid.UsersGuide>`_.BuildingSystemModels
-------------------------------------------------------------------------------------------------------------------------------------------------------------

::

This section is a quick primer explaining how to build a system model
using Modelica.Fluid. It covers some key issues, such as the System
component, the definition of medium models in the system, and the
typical customizations available in the Modelica.Fluid models.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| Name                                                                                                                                                                                                          | Description                       |
+===============================================================================================================================================================================================================+===================================+
| |image4| `SystemComponent <Modelica_Fluid_UsersGuide_BuildingSystemModels.html#Modelica.Fluid.UsersGuide.BuildingSystemModels.SystemComponent>`_                                                              | System component                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image5| `MediumDefinition <Modelica_Fluid_UsersGuide_BuildingSystemModels.html#Modelica.Fluid.UsersGuide.BuildingSystemModels.MediumDefinition>`_                                                            | Definition of the medium models   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+
| |image6| `CustomizingModel <Modelica_Fluid_UsersGuide_BuildingSystemModels.html#Modelica.Fluid.UsersGuide.BuildingSystemModels.CustomizingModel>`_                                                            | Customizing a system model        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------+

--------------

|image7| `Modelica.Fluid.UsersGuide.BuildingSystemModels <Modelica_Fluid_UsersGuide_BuildingSystemModels.html#Modelica.Fluid.UsersGuide.BuildingSystemModels>`_.SystemComponent
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

The Modelica.Fluid library is designed so that each model of a system
must include an instance ``system`` of the ``System`` component at the
top level, in the same way as the ``World`` model of the MultiBody
Library. The System component contains the parameters that describe the
environment surrounding the components (ambient pressure and
temperature, gravity acceleration), and also provides default settings
for many parameters which are used consistently by the models in the
library. These parameters are then propagated to the individual
components using the inner/outer variable mechanism. In case the system
model is structured hieararchically, it is possible to either put a
single System component at the top level, or possibly to put many of
them at different levels, which will only influence the system
components from that level down.

All the parameters defined in the System model are used as default
values for the parameters of the individual components of the system
model. Note that it is always possible to ovverride these defaults
locally by changing the value of the parameters in the specific
component instance.

-  The *General* tab of the System model allows to set the default
   enviroment variables (pressure, temperature and gravity) used by all
   the components.
-  The *Assumptions* tab allows to change the default modelling
   assumptions used by all the components (see the section *Customizing
   a system model later*)
-  The *Initialization* tab allows to define default start values for
   mass flow rates, pressures and temperatures in the model; this can be
   useful to help nonlinear solver converge to the solution of any
   nonlinear system of equations that involves such variables, by
   providing meaningful guess values.
-  The *Advanced* tab contains default values for parameters used in the
   advanced settings of some components.

Remember to **always add a System component** at the top level of your
system model, otherwise you will get errors when compiling the model.
The tool will automatically name it ``system``, so that it is recognised
by all other components.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image8| `Modelica.Fluid.UsersGuide.BuildingSystemModels <Modelica_Fluid_UsersGuide_BuildingSystemModels.html#Modelica.Fluid.UsersGuide.BuildingSystemModels>`_.MediumDefinition
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

All the models in Modelica.Fluid compute fluid properties by using
medium models defined by Modelica.Media packages. Custom fluid models
can also be used, provided they extend the interfaces defined in
Modelica.Media.Interfaces.

All the components in Modelica.Fluid use a *replaceable* medium package,
called ``Medium``: the model is written for a generic fluid, and a
specific fluid model can then be specified when building a system model
by redeclaring the package. This can be done in different ways:

-  If several components use the same medium, it is possible to select
   all of them within a GUI, and set them simultaneously (as they are
   all named Medium).
-  It is also possible to declare one or more (possibly replaceable)
   medium packages in the model, and then use them to set up the
   individual components.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image9| `Modelica.Fluid.UsersGuide.BuildingSystemModels <Modelica_Fluid_UsersGuide_BuildingSystemModels.html#Modelica.Fluid.UsersGuide.BuildingSystemModels>`_.CustomizingModel
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Once a system model has been built, it is possible to obtain different
approximations by appropriately setting the defaults in the System
component (and/or the settings of specific components.

The Assumptions \| allowFlowReversal parameter determines whether
reversing flow conditions (i.e., flow direction opposite to design
direction) are modelled or not. By default, reversing flow conditions
are considered by the models, but this causes a significant increase of
complexity in the equations, due to the conditional equations depending
on the flow direction. If you know in advance that the flow in a certain
component (or in the whole system) will always be in the design
direction, then setting this parameter to false will produce a much
faster and possibly more robust simulation code.

The flags in the Assumptions \| Dynamics tab allow different degrees of
approximation on the mass, energy, and momentum equations of the
components.

-  DynamicFreeInitial: dynamic equations are considered (nonzero
   storage), no initial equations are provided, and the start values are
   used as guess values.
-  FixedInitial: dynamic equations are considered (nonzero storage) and
   initial equations are included, fixing the states to the start values
   provided by the component parameters.
-  SteadyStateInitial: dynamic equations are considered (nonzero
   storage), initial equations are included, declaring that the state
   derivatives are zero (steady-state initialization) and the start
   values are used as guess values for the nonlinear solver.
-  SteadyState: algebraic (or static) balance equations are considered
   (no storage) and the start values are used as guess values for the
   nonlinear solver.

It is then possible to neglect the storage of mass, momentum, and energy
in the whole system (or just in parts of it) just by a few mouse clicks
in a GUI, and also to change the type of initialization when considering
dynamic models. Please note that some combinations of the options might
be contradictory, and will therefore trigger compilation errors.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:52
2010.

.. |Modelica.Fluid.UsersGuide.BuildingSystemModels| image:: Modelica.Fluid.UsersGuide.ComponentDefinitionI.png
.. |Modelica.Fluid.UsersGuide.BuildingSystemModels.SystemComponent| image:: Modelica.Fluid.UsersGuide.ComponentDefinition.FluidConnectorsS.png
.. |Modelica.Fluid.UsersGuide.BuildingSystemModels.MediumDefinition| image:: Modelica.Fluid.UsersGuide.ComponentDefinition.FluidConnectorsS.png
.. |Modelica.Fluid.UsersGuide.BuildingSystemModels.CustomizingModel| image:: Modelica.Fluid.UsersGuide.ComponentDefinition.FluidConnectorsS.png
.. |image4| image:: Modelica.Fluid.UsersGuide.ComponentDefinition.FluidConnectorsS.png
.. |image5| image:: Modelica.Fluid.UsersGuide.ComponentDefinition.FluidConnectorsS.png
.. |image6| image:: Modelica.Fluid.UsersGuide.ComponentDefinition.FluidConnectorsS.png
.. |image7| image:: Modelica.Fluid.UsersGuide.ComponentDefinitionI.png
.. |image8| image:: Modelica.Fluid.UsersGuide.ComponentDefinitionI.png
.. |image9| image:: Modelica.Fluid.UsersGuide.ComponentDefinitionI.png
