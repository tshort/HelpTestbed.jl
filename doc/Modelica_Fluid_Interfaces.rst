=========================
Modelica.Fluid.Interfaces
=========================

`Modelica.Fluid <Modelica_Fluid.html#Modelica.Fluid>`_.Interfaces
-----------------------------------------------------------------

**Interfaces for steady state and unsteady, mixed-phase,
multi-substance, incompressible and compressible flow**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                | Description                                                                                                                                       |
+=====================================================================================================================================================================+===================================================================================================================================================+
| |image11| `FluidPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort>`_                                                                         | Interface for quasi one-dimensional fluid flow in a piping network (incompressible or compressible, one or more phases, one or more substances)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image12| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_                                                                    | Generic fluid connector at design inlet                                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image13| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_                                                                    | Generic fluid connector at design outlet                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image14| `FluidPorts\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPorts_a>`_                                                                  | Fluid connector with filled, large icon to be used for vectors of FluidPorts (vector dimensions must be added after dragging)                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image15| `FluidPorts\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPorts_b>`_                                                                  | Fluid connector with outlined, large icon to be used for vectors of FluidPorts (vector dimensions must be added after dragging)                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image16| `PartialTwoPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPort>`_                                                               | Partial component with two ports                                                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image17| `PartialTwoPortTransport <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport>`_                                             | Partial element transporting fluid between two ports without storage of mass or energy                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image18| `HeatPorts\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.HeatPorts_a>`_                                                                    | HeatPort connector with filled, large icon to be used for vectors of HeatPorts (vector dimensions must be added after dragging)                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image19| `HeatPorts\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.HeatPorts_b>`_                                                                    | HeatPort connector with filled, large icon to be used for vectors of HeatPorts (vector dimensions must be added after dragging)                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image20| `PartialHeatTransfer <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialHeatTransfer>`_                                                     | Common interface for heat transfer models                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| `PartialLumpedVolume <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedVolume>`_                                                               | Lumped volume with mass and energy balance                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| `PartialLumpedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedFlow>`_                                                                   | Base class for a lumped momentum balance                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| `PartialDistributedVolume <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialDistributedVolume>`_                                                     | Base class for distributed volume models                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| `PartialDistributedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialDistributedFlow>`_                                                         | Base class for a distributed momentum balance                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+
| |image21| `PartialPressureLoss <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialPressureLoss>`_                                                     | Base flow model for pressure loss functions with the same area at port\_a and at port\_b                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.FluidPort
-------------------------------------------------------------------------------------------------

**Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)**

Contents
~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                                 | Name                      | Description                                                                                      |
+======================================================================================================================================+===========================+==================================================================================================+
| flow `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_             | m\_flow                   | Mass flow rate from the connection point into the component [kg/s]                               |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_          | p                         | Thermodynamic pressure in the connection point [Pa]                                              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_outflow                | Specific thermodynamic enthalpy close to the connection point if m\_flow < 0 [J/kg]              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | Xi\_outflow[Medium.nXi]   | Independent mixture mass fractions m\_i/m close to the connection point if m\_flow < 0 [kg/kg]   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_outflow[Medium.nC]     | Properties c\_i/m close to the connection point if m\_flow < 0                                   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FluidPort 
      "Interface for quasi one-dimensional fluid flow in a piping network (incompressible or compressible, one or more phases, one or more substances)"

      replaceable package Medium = Modelica.Media.Interfaces.PartialMedium 
        "Medium model";

      flow Medium.MassFlowRate m_flow 
        "Mass flow rate from the connection point into the component";
      Medium.AbsolutePressure p "Thermodynamic pressure in the connection point";
      stream Medium.SpecificEnthalpy h_outflow 
        "Specific thermodynamic enthalpy close to the connection point if m_flow < 0";
      stream Medium.MassFraction Xi_outflow[Medium.nXi] 
        "Independent mixture mass fractions m_i/m close to the connection point if m_flow < 0";
      stream Medium.ExtraProperty C_outflow[Medium.nC] 
        "Properties c_i/m close to the connection point if m_flow < 0";
    end FluidPort;

--------------

|image22| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.FluidPort\_a
--------------------------------------------------------------------------------------------------------------

**Generic fluid connector at design inlet**

.. figure:: Modelica.Fluid.Interfaces.FluidPort_aD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.FluidPort\_a

   Modelica.Fluid.Interfaces.FluidPort\_a

Information
~~~~~~~~~~~

Extends from
`FluidPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort>`_
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                         | Name                                                                                                      | Default        | Description   |
+==============================+===========================================================================================================+================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+

Contents
~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                                 | Name                      | Description                                                                                      |
+======================================================================================================================================+===========================+==================================================================================================+
| flow `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_             | m\_flow                   | Mass flow rate from the connection point into the component [kg/s]                               |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_          | p                         | Thermodynamic pressure in the connection point [Pa]                                              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_outflow                | Specific thermodynamic enthalpy close to the connection point if m\_flow < 0 [J/kg]              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | Xi\_outflow[Medium.nXi]   | Independent mixture mass fractions m\_i/m close to the connection point if m\_flow < 0 [kg/kg]   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_outflow[Medium.nC]     | Properties c\_i/m close to the connection point if m\_flow < 0                                   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FluidPort_a "Generic fluid connector at design inlet"
      extends FluidPort;
    end FluidPort_a;

--------------

|image23| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.FluidPort\_b
--------------------------------------------------------------------------------------------------------------

**Generic fluid connector at design outlet**

.. figure:: Modelica.Fluid.Interfaces.FluidPort_bD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.FluidPort\_b

   Modelica.Fluid.Interfaces.FluidPort\_b

Information
~~~~~~~~~~~

Extends from
`FluidPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort>`_
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                         | Name                                                                                                      | Default        | Description   |
+==============================+===========================================================================================================+================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+

Contents
~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                                 | Name                      | Description                                                                                      |
+======================================================================================================================================+===========================+==================================================================================================+
| flow `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_             | m\_flow                   | Mass flow rate from the connection point into the component [kg/s]                               |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_          | p                         | Thermodynamic pressure in the connection point [Pa]                                              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_outflow                | Specific thermodynamic enthalpy close to the connection point if m\_flow < 0 [J/kg]              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | Xi\_outflow[Medium.nXi]   | Independent mixture mass fractions m\_i/m close to the connection point if m\_flow < 0 [kg/kg]   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_outflow[Medium.nC]     | Properties c\_i/m close to the connection point if m\_flow < 0                                   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FluidPort_b "Generic fluid connector at design outlet"
      extends FluidPort;
    end FluidPort_b;

--------------

|image24| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.FluidPorts\_a
---------------------------------------------------------------------------------------------------------------

**Fluid connector with filled, large icon to be used for vectors of
FluidPorts (vector dimensions must be added after dragging)**

.. figure:: Modelica.Fluid.Interfaces.FluidPorts_aD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.FluidPorts\_a

   Modelica.Fluid.Interfaces.FluidPorts\_a

Information
~~~~~~~~~~~

Extends from
`FluidPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort>`_
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                         | Name                                                                                                      | Default        | Description   |
+==============================+===========================================================================================================+================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+

Contents
~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                                 | Name                      | Description                                                                                      |
+======================================================================================================================================+===========================+==================================================================================================+
| flow `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_             | m\_flow                   | Mass flow rate from the connection point into the component [kg/s]                               |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_          | p                         | Thermodynamic pressure in the connection point [Pa]                                              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_outflow                | Specific thermodynamic enthalpy close to the connection point if m\_flow < 0 [J/kg]              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | Xi\_outflow[Medium.nXi]   | Independent mixture mass fractions m\_i/m close to the connection point if m\_flow < 0 [kg/kg]   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_outflow[Medium.nC]     | Properties c\_i/m close to the connection point if m\_flow < 0                                   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FluidPorts_a 
      "Fluid connector with filled, large icon to be used for vectors of FluidPorts (vector dimensions must be added after dragging)"
      extends FluidPort;
    end FluidPorts_a;

--------------

|image25| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.FluidPorts\_b
---------------------------------------------------------------------------------------------------------------

**Fluid connector with outlined, large icon to be used for vectors of
FluidPorts (vector dimensions must be added after dragging)**

.. figure:: Modelica.Fluid.Interfaces.FluidPorts_bD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.FluidPorts\_b

   Modelica.Fluid.Interfaces.FluidPorts\_b

Information
~~~~~~~~~~~

Extends from
`FluidPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort>`_
(Interface for quasi one-dimensional fluid flow in a piping network
(incompressible or compressible, one or more phases, one or more
substances)).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+
| Type                         | Name                                                                                                      | Default        | Description   |
+==============================+===========================================================================================================+================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+----------------+---------------+

Contents
~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| Type                                                                                                                                 | Name                      | Description                                                                                      |
+======================================================================================================================================+===========================+==================================================================================================+
| flow `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_             | m\_flow                   | Mass flow rate from the connection point into the component [kg/s]                               |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_          | p                         | Thermodynamic pressure in the connection point [Pa]                                              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_outflow                | Specific thermodynamic enthalpy close to the connection point if m\_flow < 0 [J/kg]              |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | Xi\_outflow[Medium.nXi]   | Independent mixture mass fractions m\_i/m close to the connection point if m\_flow < 0 [kg/kg]   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+
| stream `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_outflow[Medium.nC]     | Properties c\_i/m close to the connection point if m\_flow < 0                                   |
+--------------------------------------------------------------------------------------------------------------------------------------+---------------------------+--------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector FluidPorts_b 
      "Fluid connector with outlined, large icon to be used for vectors of FluidPorts (vector dimensions must be added after dragging)"
      extends FluidPort;
    end FluidPorts_b;

--------------

|image26| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialTwoPort
----------------------------------------------------------------------------------------------------------------

**Partial component with two ports**

.. figure:: Modelica.Fluid.Interfaces.PartialTwoPortD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.PartialTwoPort

   Modelica.Fluid.Interfaces.PartialTwoPort

Information
~~~~~~~~~~~

::

This partial model defines an interface for components with two ports.
The treatment of the design flow direction and of flow reversal are
predefined based on the parameter ``allowFlowReversal``. The component
may transport fluid and may have internal storage for a given fluid
``Medium``.

An extending model providing direct access to internal storage of mass
or energy through port\_a or port\_b should redefine the protected
parameters ``port_a_exposesState`` and ``port_b_exposesState``
appropriately. This will be visualized at the port icons, in order to
improve the understanding of fluid model diagrams.

::

Parameters
~~~~~~~~~~

+-------------------+---------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type              | Name                | Default                    | Description                                                                               |
+===================+=====================+============================+===========================================================================================+
| **Assumptions**   |
+-------------------+---------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean           | allowFlowReversal   | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+-------------------+---------------------+----------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                     | Name      | Description                                                                     |
+==========================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoPort "Partial component with two ports"
      import Modelica.Constants;
      outer Modelica.Fluid.System system "System wide properties";

      replaceable package Medium =
          Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      parameter Boolean allowFlowReversal = system.allowFlowReversal 
        "= true to allow flow reversal, false restricts to design direction (port_a -> port_b)";

      Modelica.Fluid.Interfaces.FluidPort_a port_a(
                                    redeclare package Medium = Medium,
                         m_flow(min=if allowFlowReversal then -Constants.inf else 0)) 
        "Fluid connector a (positive design flow direction is from port_a to port_b)";
      Modelica.Fluid.Interfaces.FluidPort_b port_b(
                                    redeclare package Medium = Medium,
                         m_flow(max=if allowFlowReversal then +Constants.inf else 0)) 
        "Fluid connector b (positive design flow direction is from port_a to port_b)";
      // Model structure, e.g., used for visualization
    protected 
      parameter Boolean port_a_exposesState = false 
        "= true if port_a exposes the state of a fluid volume";
      parameter Boolean port_b_exposesState = false 
        "= true if port_b.p exposes the state of a fluid volume";
      parameter Boolean showDesignFlowDirection = true 
        "= false to hide the arrow in the model icon";

    end PartialTwoPort;

--------------

|image27| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialTwoPortTransport
-------------------------------------------------------------------------------------------------------------------------

**Partial element transporting fluid between two ports without storage
of mass or energy**

.. figure:: Modelica.Fluid.Interfaces.PartialTwoPortD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.PartialTwoPortTransport

   Modelica.Fluid.Interfaces.PartialTwoPortTransport

Information
~~~~~~~~~~~

::

This component transports fluid between its two ports, without storing
mass or energy. Energy may be exchanged with the environment though,
e.g., in the form of work. ``PartialTwoPortTransport`` is intended as
base class for devices like orifices, valves and simple fluid machines.

Three equations need to be added by an extending class using this
component:

-  the momentum balance specifying the relationship between the pressure
   drop ``dp`` and the mass flow rate ``m_flow``
-  ``port_b.h_outflow`` for flow in design direction, and
-  ``port_a.h_outflow`` for flow in reverse direction.

::

Extends from
`PartialTwoPort <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPort>`_
(Partial component with two ports).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                          | Name                                                                                                      | Default                    | Description                                                                               |
+===============================================================================================================================+===========================================================================================================+============================+===========================================================================================+
| replaceable package Medium                                                                                                    | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                  |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | dp\_start                                                                                                 | 0.01\*system.p\_start      | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_start                                                                                            | system.m\_flow\_start      | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_small                                                                                            | system.m\_flow\_small      | Small mass flow rate for regularization of zero flow [kg/s]                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_T                                                                                                   | true                       | = true, if temperatures at port\_a and port\_b are computed                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_V\_flow                                                                                             | true                       | = true, if volume flow rate at inflowing port is computed                                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                     | Name      | Description                                                                     |
+==========================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialTwoPortTransport 
      "Partial element transporting fluid between two ports without storage of mass or energy"

      extends PartialTwoPort(
        final port_a_exposesState=false,
        final port_b_exposesState=false);

      // Advanced
      parameter Medium.AbsolutePressure dp_start = 0.01*system.p_start 
        "Guess value of dp = port_a.p - port_b.p";
      parameter Medium.MassFlowRate m_flow_start = system.m_flow_start 
        "Guess value of m_flow = port_a.m_flow";
      parameter Medium.MassFlowRate m_flow_small = system.m_flow_small 
        "Small mass flow rate for regularization of zero flow";

      // Diagnostics
      parameter Boolean show_T = true 
        "= true, if temperatures at port_a and port_b are computed";
      parameter Boolean show_V_flow = true 
        "= true, if volume flow rate at inflowing port is computed";

      // Variables
      Medium.MassFlowRate m_flow(
         min=if allowFlowReversal then -Modelica.Constants.inf else 0,
         start = m_flow_start) "Mass flow rate in design flow direction";
      Modelica.SIunits.Pressure dp(start=dp_start) 
        "Pressure difference between port_a and port_b (= port_a.p - port_b.p)";

      Modelica.SIunits.VolumeFlowRate V_flow=
          m_flow/Modelica.Fluid.Utilities.regStep(m_flow,
                      Medium.density(state_a),
                      Medium.density(state_b),
                      m_flow_small) if show_V_flow 
        "Volume flow rate at inflowing port (positive when flow from port_a to port_b)";

      Medium.Temperature port_a_T=
          Modelica.Fluid.Utilities.regStep(port_a.m_flow,
                      Medium.temperature(state_a),
                      Medium.temperature(Medium.setState_phX(port_a.p, port_a.h_outflow, port_a.Xi_outflow)),
                      m_flow_small) if show_T 
        "Temperature close to port_a, if show_T = true";
      Medium.Temperature port_b_T=
          Modelica.Fluid.Utilities.regStep(port_b.m_flow,
                      Medium.temperature(state_b),
                      Medium.temperature(Medium.setState_phX(port_b.p, port_b.h_outflow, port_b.Xi_outflow)),
                      m_flow_small) if show_T 
        "Temperature close to port_b, if show_T = true";
    protected 
      Medium.ThermodynamicState state_a "state for medium inflowing through port_a";
      Medium.ThermodynamicState state_b "state for medium inflowing through port_b";
    equation 
      // medium states
      state_a = Medium.setState_phX(port_a.p, inStream(port_a.h_outflow), inStream(port_a.Xi_outflow));
      state_b = Medium.setState_phX(port_b.p, inStream(port_b.h_outflow), inStream(port_b.Xi_outflow));

      // Pressure drop in design flow direction
      dp = port_a.p - port_b.p;

      // Design direction of mass flow rate
      m_flow = port_a.m_flow;
      assert(m_flow > -m_flow_small or allowFlowReversal, "Reverting flow occurs even though allowFlowReversal is false");

      // Mass balance (no storage)
      port_a.m_flow + port_b.m_flow = 0;

      // Transport of substances
      port_a.Xi_outflow = inStream(port_b.Xi_outflow);
      port_b.Xi_outflow = inStream(port_a.Xi_outflow);

      port_a.C_outflow = inStream(port_b.C_outflow);
      port_b.C_outflow = inStream(port_a.C_outflow);

    end PartialTwoPortTransport;

--------------

|image28| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.HeatPorts\_a
--------------------------------------------------------------------------------------------------------------

**HeatPort connector with filled, large icon to be used for vectors of
HeatPorts (vector dimensions must be added after dragging)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Thermal.HeatTransfer.Interfaces.HeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort>`_
(Thermal port for 1-dim. heat transfer).

Contents
~~~~~~~~

+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| Type                                                                         | Name      | Description                                                                |
+==============================================================================+===========+============================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_          | T         | Port temperature [K]                                                       |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| flow `HeatFlowRate <Modelica_SIunits.html#Modelica.SIunits.HeatFlowRate>`_   | Q\_flow   | Heat flow rate (positive if flowing from outside into the component) [W]   |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector HeatPorts_a 
      "HeatPort connector with filled, large icon to be used for vectors of HeatPorts (vector dimensions must be added after dragging)"
      extends Modelica.Thermal.HeatTransfer.Interfaces.HeatPort;
    end HeatPorts_a;

--------------

|image29| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.HeatPorts\_b
--------------------------------------------------------------------------------------------------------------

**HeatPort connector with filled, large icon to be used for vectors of
HeatPorts (vector dimensions must be added after dragging)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Thermal.HeatTransfer.Interfaces.HeatPort <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort>`_
(Thermal port for 1-dim. heat transfer).

Contents
~~~~~~~~

+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| Type                                                                         | Name      | Description                                                                |
+==============================================================================+===========+============================================================================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_          | T         | Port temperature [K]                                                       |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+
| flow `HeatFlowRate <Modelica_SIunits.html#Modelica.SIunits.HeatFlowRate>`_   | Q\_flow   | Heat flow rate (positive if flowing from outside into the component) [W]   |
+------------------------------------------------------------------------------+-----------+----------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector HeatPorts_b 
      "HeatPort connector with filled, large icon to be used for vectors of HeatPorts (vector dimensions must be added after dragging)"
      extends Modelica.Thermal.HeatTransfer.Interfaces.HeatPort;
    end HeatPorts_b;

--------------

|image30| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialHeatTransfer
---------------------------------------------------------------------------------------------------------------------

**Common interface for heat transfer models**

.. figure:: Modelica.Fluid.Interfaces.PartialHeatTransferD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.PartialHeatTransfer

   Modelica.Fluid.Interfaces.PartialHeatTransfer

Information
~~~~~~~~~~~

::

This component is a common interface for heat transfer models. The heat
flow rates ``Q_flows[n]`` through the boundaries of n flow segments are
obtained as function of the thermodynamic ``states`` of the flow
segments for a given fluid ``Medium``, the ``surfaceAreas[n]`` and the
boundary temperatures ``heatPorts[n].T``.

The heat loss coefficient ``k`` can be used to model a thermal isolation
between ``heatPorts.T`` and ``T_ambient``.

An extending model implementing this interface needs to define one
equation: the relation between the predefined fluid temperatures
``Ts[n]``, the boundary temperatures ``heatPorts[n].T``, and the heat
flow rates ``Q_flows[n]``.

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+--------------+---------------------+---------------------------------------------------+
| Type                                                                                              | Name         | Default             | Description                                       |
+===================================================================================================+==============+=====================+===================================================+
| Ambient                                                                                           |
+---------------------------------------------------------------------------------------------------+--------------+---------------------+---------------------------------------------------+
| `CoefficientOfHeatTransfer <Modelica_SIunits.html#Modelica.SIunits.CoefficientOfHeatTransfer>`_   | k            | 0                   | Heat transfer coefficient to ambient [W/(m2.K)]   |
+---------------------------------------------------------------------------------------------------+--------------+---------------------+---------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_                               | T\_ambient   | system.T\_ambient   | Ambient temperature [K]                           |
+---------------------------------------------------------------------------------------------------+--------------+---------------------+---------------------------------------------------+
| **Internal Interface**                                                                            |
+---------------------------------------------------------------------------------------------------+--------------+---------------------+---------------------------------------------------+
| Integer                                                                                           | n            | 1                   | Number of heat transfer segments                  |
+---------------------------------------------------------------------------------------------------+--------------+---------------------+---------------------------------------------------+
| Boolean                                                                                           | use\_k       | false               | = true to use k value for thermal isolation       |
+---------------------------------------------------------------------------------------------------+--------------+---------------------+---------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+----------------+-----------------------------------+
| Type                                                                                     | Name           | Description                       |
+==========================================================================================+================+===================================+
| `HeatPorts\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.HeatPorts_a>`_   | heatPorts[n]   | Heat port to component boundary   |
+------------------------------------------------------------------------------------------+----------------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialHeatTransfer 
      "Common interface for heat transfer models"

      // Parameters
      replaceable package Medium=Modelica.Media.Interfaces.PartialMedium 
        "Medium in the component";

      parameter Integer n=1 "Number of heat transfer segments";

      // Inputs provided to heat transfer model
      input Medium.ThermodynamicState[n] states 
        "Thermodynamic states of flow segments";

      input SI.Area[n] surfaceAreas "Heat transfer areas";

      // Outputs defined by heat transfer model
      output SI.HeatFlowRate[n] Q_flows "Heat flow rates";

      // Parameters
      parameter Boolean use_k = false "= true to use k value for thermal isolation";
      parameter SI.CoefficientOfHeatTransfer k = 0 
        "Heat transfer coefficient to ambient";
      parameter SI.Temperature T_ambient = system.T_ambient "Ambient temperature";
      outer Modelica.Fluid.System system "System wide properties";

      // Heat ports
      Modelica.Fluid.Interfaces.HeatPorts_a[n] heatPorts 
        "Heat port to component boundary";

      // Variables
      SI.Temperature[n] Ts = Medium.temperature(states) 
        "Temperatures defined by fluid states";

    equation 
      if use_k then
        Q_flows = heatPorts.Q_flow + {k*surfaceAreas[i]*(T_ambient - heatPorts[i].T) for i in 1:n};
      else
        Q_flows = heatPorts.Q_flow;
      end if;

    end PartialHeatTransfer;

--------------

`Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialLumpedVolume
-----------------------------------------------------------------------------------------------------------

**Lumped volume with mass and energy balance**

Information
~~~~~~~~~~~

::

Interface and base class for an ideally mixed fluid volume with the
ability to store mass and energy. The following boundary flow and source
terms are part of the energy balance and must be specified in an
extending class:

-  ``Qb_flow``, e.g., convective or latent heat flow rate across segment
   boundary, and
-  ``Wb_flow``, work term, e.g., p\*der(fluidVolume) if the volume is
   not constant.

The component volume ``fluidVolume`` is an input that needs to be set in
the extending class to complete the model.

Further source terms must be defined by an extending class for fluid
flow across the segment boundary:

-  ``Hb_flow``, enthalpy flow,
-  ``mb_flow``, mass flow,
-  ``mbXi_flow``, substance mass flow, and
-  ``mbC_flow``, trace substance mass flow.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| Type                                                                                                                          | Name                  | Default                             | Description                                    |
+===============================================================================================================================+=======================+=====================================+================================================+
| **Assumptions**                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| Dynamics                                                                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                         | energyDynamics        | system.energyDynamics               | Formulation of energy balance                  |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                         | massDynamics          | system.massDynamics                 | Formulation of mass balance                    |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| **Initialization**                                                                                                            |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p\_start              | system.p\_start                     | Start value of pressure [Pa]                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| Boolean                                                                                                                       | use\_T\_start         | true                                | = true, use T\_start, otherwise h\_start       |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_             | T\_start              | if use\_T\_start then system.T...   | Start value of temperature [K]                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_start              | if use\_T\_start then Medium.s...   | Start value of specific enthalpy [J/kg]        |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X\_start[Medium.nX]   | Medium.X\_default                   | Start value of mass fractions m\_i/m [kg/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_start[Medium.nC]   | fill(0, Medium.nC)                  | Start value of trace substances                |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialLumpedVolume 
      "Lumped volume with mass and energy balance"
      import Modelica.Fluid.Types;
      import Modelica.Fluid.Types.Dynamics;
      import Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables;

      outer Modelica.Fluid.System system "System properties";
      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      // Inputs provided to the volume model
      input SI.Volume fluidVolume "Volume";

      // Assumptions
      parameter Types.Dynamics energyDynamics=system.energyDynamics 
        "Formulation of energy balance";
      parameter Types.Dynamics massDynamics=system.massDynamics 
        "Formulation of mass balance";
      final parameter Types.Dynamics substanceDynamics=massDynamics 
        "Formulation of substance balance";
      final parameter Types.Dynamics traceDynamics=massDynamics 
        "Formulation of trace substance balance";

      // Initialization
      parameter Medium.AbsolutePressure p_start = system.p_start 
        "Start value of pressure";
      parameter Boolean use_T_start = true "= true, use T_start, otherwise h_start";
      parameter Medium.Temperature T_start=
        if use_T_start then system.T_start else Medium.temperature_phX(p_start,h_start,X_start) 
        "Start value of temperature";
      parameter Medium.SpecificEnthalpy h_start=
        if use_T_start then Medium.specificEnthalpy_pTX(p_start, T_start, X_start) else Medium.h_default 
        "Start value of specific enthalpy";
      parameter Medium.MassFraction X_start[Medium.nX] = Medium.X_default 
        "Start value of mass fractions m_i/m";
      parameter Medium.ExtraProperty C_start[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Start value of trace substances";

      Medium.BaseProperties medium(
        preferredMediumStates=true,
        p(start=p_start),
        h(start=h_start),
        T(start=T_start),
        Xi(start=X_start[1:Medium.nXi]));
      SI.Energy U "Internal energy of fluid";
      SI.Mass m "Mass of fluid";
      SI.Mass[Medium.nXi] mXi "Masses of independent components in the fluid";
      SI.Mass[Medium.nC] mC "Masses of trace substances in the fluid";
      // C need to be added here because unlike for Xi, which has medium.Xi,
      // there is no variable medium.C
      Medium.ExtraProperty C[Medium.nC] "Trace substance mixture content";

      // variables that need to be defined by an extending class
      SI.MassFlowRate mb_flow "Mass flows across boundaries";
      SI.MassFlowRate[Medium.nXi] mbXi_flow 
        "Substance mass flows across boundaries";
      Medium.ExtraPropertyFlowRate[Medium.nC] mbC_flow 
        "Trace substance mass flows across boundaries";
      SI.EnthalpyFlowRate Hb_flow 
        "Enthalpy flow across boundaries or energy source/sink";
      SI.HeatFlowRate Qb_flow "Heat flow across boundaries or energy source/sink";
      SI.Power Wb_flow "Work flow across boundaries or source term";
    protected 
      parameter Boolean initialize_p = not Medium.singleState 
        "= true to set up initial equations for pressure";
      Real[Medium.nC] mC_scaled(min=fill(Modelica.Constants.eps, Medium.nC)) 
        "Scaled masses of trace substances in the fluid";
    equation 
      assert(not (energyDynamics<>Dynamics.SteadyState and massDynamics==Dynamics.SteadyState) or Medium.singleState,
             "Bad combination of dynamics options and Medium not conserving mass if fluidVolume is fixed.");

      // Total quantities
      m = fluidVolume*medium.d;
      mXi = m*medium.Xi;
      U = m*medium.u;
      mC = m*C;

      // Energy and mass balances
      if energyDynamics == Dynamics.SteadyState then
        0 = Hb_flow + Qb_flow + Wb_flow;
      else
        der(U) = Hb_flow + Qb_flow + Wb_flow;
      end if;

      if massDynamics == Dynamics.SteadyState then
        0 = mb_flow;
      else
        der(m) = mb_flow;
      end if;

      if substanceDynamics == Dynamics.SteadyState then
        zeros(Medium.nXi) = mbXi_flow;
      else
        der(mXi) = mbXi_flow;
      end if;

      if traceDynamics == Dynamics.SteadyState then
        zeros(Medium.nC)  = mbC_flow;
      else
        der(mC_scaled) = mbC_flow./Medium.C_nominal;
      end if;
        mC = mC_scaled.*Medium.C_nominal;

    initial equation 
      // initialization of balances
      if energyDynamics == Dynamics.FixedInitial then
        /*
        if use_T_start then
          medium.T = T_start;
        else
          medium.h = h_start;
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           medium.h = h_start;
        else
           medium.T = T_start;
        end if;
      elseif energyDynamics == Dynamics.SteadyStateInitial then
        /*
        if use_T_start then
          der(medium.T) = 0;
        else
          der(medium.h) = 0;
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           der(medium.h) = 0;
        else
           der(medium.T) = 0;
        end if;
      end if;

      if massDynamics == Dynamics.FixedInitial then
        if initialize_p then
          medium.p = p_start;
        end if;
      elseif massDynamics == Dynamics.SteadyStateInitial then
        if initialize_p then
          der(medium.p) = 0;
        end if;
      end if;

      if substanceDynamics == Dynamics.FixedInitial then
        medium.Xi = X_start[1:Medium.nXi];
      elseif substanceDynamics == Dynamics.SteadyStateInitial then
        der(medium.Xi) = zeros(Medium.nXi);
      end if;

      if traceDynamics == Dynamics.FixedInitial then
        mC_scaled = m*C_start[1:Medium.nC]./Medium.C_nominal;
      elseif traceDynamics == Dynamics.SteadyStateInitial then
        der(mC_scaled) = zeros(Medium.nC);
      end if;

    end PartialLumpedVolume;

--------------

`Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialLumpedFlow
---------------------------------------------------------------------------------------------------------

**Base class for a lumped momentum balance**

Information
~~~~~~~~~~~

::

Interface and base class for a momentum balance, defining the mass flow
rate ``m_flow`` of a given ``Medium`` in a flow model.

The following boundary flow and force terms are part of the momentum
balance and must be specified in an extending model (to zero if not
considered):

-  ``Ib_flow``, the flow of momentum across model boundaries,
-  ``F_p[m]``, pressure force, and
-  ``F_fg[m]``, friction and gravity forces.

The length of the flow path ``pathLength`` is an input that needs to be
set in an extending class to complete the model.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                              | Default                    | Description                                                                         |
+=======================================================================================================================+===================================+============================+=====================================================================================+
| replaceable package Medium                                                                                            | Modelica.Media.Interfaces.Pa...   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                 | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (m\_flow >= 0)   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+
| Dynamics                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                 | momentumDynamics                  | system.momentumDynamics    | Formulation of momentum balance                                                     |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+
| **Initialization**                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_start                    | system.m\_flow\_start      | Start value of mass flow rates [kg/s]                                               |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+-------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------+---------------------------+---------------+
| Type                         | Name                      | Description   |
+==============================+===========================+===============+
| replaceable package Medium   | Medium in the component   |
+------------------------------+---------------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialLumpedFlow 
      "Base class for a lumped momentum balance"

      outer Modelica.Fluid.System system "System properties";

      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      parameter Boolean allowFlowReversal = system.allowFlowReversal 
        "= true to allow flow reversal, false restricts to design direction (m_flow >= 0)";

      // Inputs provided to the flow model
      input SI.Length pathLength "Length flow path";

      // Variables defined by the flow model
      Medium.MassFlowRate m_flow(
         min=if allowFlowReversal then -Modelica.Constants.inf else 0,
         start = m_flow_start,
         stateSelect = if momentumDynamics == Types.Dynamics.SteadyState then StateSelect.default else 
                                   StateSelect.prefer) 
        "mass flow rates between states";

      // Parameters
      parameter Modelica.Fluid.Types.Dynamics momentumDynamics=system.momentumDynamics 
        "Formulation of momentum balance";

      parameter Medium.MassFlowRate m_flow_start=system.m_flow_start 
        "Start value of mass flow rates";

      // Total quantities
      SI.Momentum I "Momentums of flow segments";

      // Source terms and forces to be defined by an extending model (zero if not used)
      SI.Force Ib_flow "Flow of momentum across boudaries";
      SI.Force F_p "Pressure force";
      SI.Force F_fg "Friction and gravity force";

    equation 
      // Total quantities
      I = m_flow*pathLength;

      // Momentum balances
      if momentumDynamics == Types.Dynamics.SteadyState then
        0 = Ib_flow - F_p - F_fg;
      else
        der(I) = Ib_flow - F_p - F_fg;
      end if;

    initial equation 
      if momentumDynamics == Types.Dynamics.FixedInitial then
        m_flow = m_flow_start;
      elseif momentumDynamics == Types.Dynamics.SteadyStateInitial then
        der(m_flow) = 0;
      end if;

    end PartialLumpedFlow;

--------------

`Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialDistributedVolume
----------------------------------------------------------------------------------------------------------------

**Base class for distributed volume models**

Information
~~~~~~~~~~~

::

Interface and base class for ``n`` ideally mixed fluid volumes with the
ability to store mass and energy. It is inteded to model a
one-dimensional spatial discretization of fluid flow according to the
finite volume method. The following boundary flow and source terms are
part of the energy balance and must be specified in an extending class:

-  ``Qb_flows[n]``, heat flow term, e.g., conductive heat flows across
   segment boundaries, and
-  ``Wb_flows[n]``, work term.

The component volumes ``fluidVolumes[n]`` are an input that needs to be
set in an extending class to complete the model.

Further source terms must be defined by an extending class for fluid
flow across the segment boundary:

-  ``Hb_flows[n]``, enthalpy flow,
-  ``mb_flows[n]``, mass flow,
-  ``mbXi_flows[n]``, substance mass flow, and
-  ``mbC_flows[n]``, trace substance mass flow.

::

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| Type                                                                                                                          | Name                  | Default                             | Description                                    |
+===============================================================================================================================+=======================+=====================================+================================================+
| Integer                                                                                                                       | n                     | 2                                   | Number of discrete volumes                     |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| **Assumptions**                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| Dynamics                                                                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                         | energyDynamics        | system.energyDynamics               | Formulation of energy balances                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                         | massDynamics          | system.massDynamics                 | Formulation of mass balances                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| **Initialization**                                                                                                            |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p\_a\_start           | system.p\_start                     | Start value of pressure at port a [Pa]         |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p\_b\_start           | p\_a\_start                         | Start value of pressure at port b [Pa]         |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| Boolean                                                                                                                       | use\_T\_start         | true                                | Use T\_start if true, otherwise h\_start       |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_             | T\_start              | if use\_T\_start then system.T...   | Start value of temperature [K]                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_start              | if use\_T\_start then Medium.s...   | Start value of specific enthalpy [J/kg]        |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X\_start[Medium.nX]   | Medium.X\_default                   | Start value of mass fractions m\_i/m [kg/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+
| `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_start[Medium.nC]   | fill(0, Medium.nC)                  | Start value of trace substances                |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------+-------------------------------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialDistributedVolume 
      "Base class for distributed volume models"
        import Modelica.Fluid.Types;
        import Modelica.Fluid.Types.Dynamics;
        import Modelica.Media.Interfaces.PartialMedium.Choices.IndependentVariables;
      outer Modelica.Fluid.System system "System properties";

      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      // Discretization
      parameter Integer n=2 "Number of discrete volumes";

      // Inputs provided to the volume model
      input SI.Volume[n] fluidVolumes 
        "Discretized volume, determine in inheriting class";

      // Assumptions
      parameter Types.Dynamics energyDynamics=system.energyDynamics 
        "Formulation of energy balances";
      parameter Types.Dynamics massDynamics=system.massDynamics 
        "Formulation of mass balances";
      final parameter Types.Dynamics substanceDynamics=massDynamics 
        "Formulation of substance balances";
      final parameter Types.Dynamics traceDynamics=massDynamics 
        "Formulation of trace substance balances";

      //Initialization
      parameter Medium.AbsolutePressure p_a_start=system.p_start 
        "Start value of pressure at port a";
      parameter Medium.AbsolutePressure p_b_start=p_a_start 
        "Start value of pressure at port b";
      final parameter Medium.AbsolutePressure[n] ps_start=if n > 1 then linspace(
            p_a_start, p_b_start, n) else {(p_a_start + p_b_start)/2} 
        "Start value of pressure";

      parameter Boolean use_T_start=true "Use T_start if true, otherwise h_start";

      parameter Medium.Temperature T_start=if use_T_start then system.T_start else 
                  Medium.temperature_phX(
            (p_a_start + p_b_start)/2,
            h_start,
            X_start) "Start value of temperature";
      parameter Medium.SpecificEnthalpy h_start=if use_T_start then 
            Medium.specificEnthalpy_pTX(
            (p_a_start + p_b_start)/2,
            T_start,
            X_start) else Medium.h_default "Start value of specific enthalpy";
      parameter Medium.MassFraction X_start[Medium.nX]=Medium.X_default 
        "Start value of mass fractions m_i/m";
      parameter Medium.ExtraProperty C_start[Medium.nC](
           quantity=Medium.extraPropertiesNames)=fill(0, Medium.nC) 
        "Start value of trace substances";

      // Total quantities
      SI.Energy[n] Us "Internal energy of fluid";
      SI.Mass[n] ms "Fluid mass";
      SI.Mass[n,Medium.nXi] mXis "Substance mass";
      SI.Mass[n,Medium.nC] mCs "Trace substance mass";
      // C need to be added here because unlike for Xi, which has medium[:].Xi,
      // there is no variable medium[:].C
      SI.Mass[n,Medium.nC] mCs_scaled "Scaled trace substance mass";
      Medium.ExtraProperty Cs[n, Medium.nC] "Trace substance mixture content";

      Medium.BaseProperties[n] mediums(
        each preferredMediumStates=true,
        p(start=ps_start),
        each h(start=h_start),
        each T(start=T_start),
        each Xi(start=X_start[1:Medium.nXi]));

      //Source terms, have to be defined by an extending model (to zero if not used)
      Medium.MassFlowRate[n] mb_flows "Mass flow rate, source or sink";
      Medium.MassFlowRate[n,Medium.nXi] mbXi_flows 
        "Independent mass flow rates, source or sink";
      Medium.ExtraPropertyFlowRate[n,Medium.nC] mbC_flows 
        "Trace substance mass flow rates, source or sink";
      SI.EnthalpyFlowRate[n] Hb_flows "Enthalpy flow rate, source or sink";
      SI.HeatFlowRate[n] Qb_flows "Heat flow rate, source or sink";
      SI.Power[n] Wb_flows "Mechanical power, p*der(V) etc.";

    protected 
      parameter Boolean initialize_p = not Medium.singleState 
        "= true to set up initial equations for pressure";

    equation 
      assert(not (energyDynamics<>Dynamics.SteadyState and massDynamics==Dynamics.SteadyState) or Medium.singleState,
             "Bad combination of dynamics options and Medium not conserving mass if fluidVolumes are fixed.");

      // Total quantities
      for i in 1:n loop
        ms[i] =fluidVolumes[i]*mediums[i].d;
        mXis[i, :] = ms[i]*mediums[i].Xi;
        mCs[i, :]  = ms[i]*Cs[i, :];
        Us[i] = ms[i]*mediums[i].u;
      end for;

      // Energy and mass balances
      if energyDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          0 = Hb_flows[i] + Wb_flows[i] + Qb_flows[i];
        end for;
      else
        for i in 1:n loop
          der(Us[i]) = Hb_flows[i] + Wb_flows[i] + Qb_flows[i];
        end for;
      end if;
      if massDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          0 = mb_flows[i];
        end for;
      else
        for i in 1:n loop
          der(ms[i]) = mb_flows[i];
        end for;
      end if;
      if substanceDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          zeros(Medium.nXi) = mbXi_flows[i, :];
        end for;
      else
        for i in 1:n loop
          der(mXis[i, :]) = mbXi_flows[i, :];
        end for;
      end if;
      if traceDynamics == Dynamics.SteadyState then
        for i in 1:n loop
          zeros(Medium.nC)  = mbC_flows[i, :];
        end for;
      else
        for i in 1:n loop
          der(mCs_scaled[i, :])  = mbC_flows[i, :]./Medium.C_nominal;
          mCs[i, :] = mCs_scaled[i, :].*Medium.C_nominal;
        end for;
      end if;

    initial equation 
      // initialization of balances
      if energyDynamics == Dynamics.FixedInitial then
        /*
        if use_T_start then
          mediums.T = fill(T_start, n);
        else
          mediums.h = fill(h_start, n);
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           mediums.h = fill(h_start, n);
        else
           mediums.T = fill(T_start, n);
        end if;

      elseif energyDynamics == Dynamics.SteadyStateInitial then
        /*
        if use_T_start then
          der(mediums.T) = zeros(n);
        else
          der(mediums.h) = zeros(n);
        end if;
        */
        if Medium.ThermoStates == IndependentVariables.ph or 
           Medium.ThermoStates == IndependentVariables.phX then
           der(mediums.h) = zeros(n);
        else
           der(mediums.T) = zeros(n);
        end if;
      end if;

      if massDynamics == Dynamics.FixedInitial then
        if initialize_p then
          mediums.p = ps_start;
        end if;
      elseif massDynamics == Dynamics.SteadyStateInitial then
        if initialize_p then
          der(mediums.p) = zeros(n);
        end if;
      end if;

      if substanceDynamics == Dynamics.FixedInitial then
        mediums.Xi = fill(X_start[1:Medium.nXi], n);
      elseif substanceDynamics == Dynamics.SteadyStateInitial then
        for i in 1:n loop
          der(mediums[i].Xi) = zeros(Medium.nXi);
        end for;
      end if;

      if traceDynamics == Dynamics.FixedInitial then
        Cs = fill(C_start[1:Medium.nC], n);
      elseif traceDynamics == Dynamics.SteadyStateInitial then
        for i in 1:n loop
          der(mCs[i,:])      = zeros(Medium.nC);
        end for;
      end if;

    end PartialDistributedVolume;

--------------

`Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialDistributedFlow
--------------------------------------------------------------------------------------------------------------

**Base class for a distributed momentum balance**

Information
~~~~~~~~~~~

::

Interface and base class for ``m`` momentum balances, defining the mass
flow rates ``m_flows[m]`` of a given ``Medium`` in ``m`` flow segments.

The following boundary flow and force terms are part of the momentum
balances and must be specified in an extending model (to zero if not
considered):

-  ``Ib_flows[m]``, the flows of momentum across segment boundaries,
-  ``Fs_p[m]``, pressure forces, and
-  ``Fs_fg[m]``, friction and gravity forces.

The lengths along the flow path ``pathLengths[m]`` are an input that
needs to be set in an extending class to complete the model.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| Type                                                                                                                  | Name                              | Default                    | Description                                                                                 |
+=======================================================================================================================+===================================+============================+=============================================================================================+
| replaceable package Medium                                                                                            | Modelica.Media.Interfaces.Pa...   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| Integer                                                                                                               | m                                 | 1                          | Number of flow segments                                                                     |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| Boolean                                                                                                               | allowFlowReversal                 | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (m\_flows >= zeros(m))   |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| Dynamics                                                                                                              |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                 | momentumDynamics                  | system.momentumDynamics    | Formulation of momentum balance                                                             |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| **Initialization**                                                                                                    |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_   | m\_flow\_start                    | system.m\_flow\_start      | Start value of mass flow rates [kg/s]                                                       |
+-----------------------------------------------------------------------------------------------------------------------+-----------------------------------+----------------------------+---------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------+---------------------------+---------------+
| Type                         | Name                      | Description   |
+==============================+===========================+===============+
| replaceable package Medium   | Medium in the component   |
+------------------------------+---------------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialDistributedFlow 
      "Base class for a distributed momentum balance"

      outer Modelica.Fluid.System system "System properties";

      replaceable package Medium =
        Modelica.Media.Interfaces.PartialMedium "Medium in the component";

      parameter Boolean allowFlowReversal = system.allowFlowReversal 
        "= true to allow flow reversal, false restricts to design direction (m_flows >= zeros(m))";

      // Discretization
      parameter Integer m=1 "Number of flow segments";

      // Inputs provided to the flow model
      input SI.Length[m] pathLengths "Lengths along flow path";

      // Variables defined by momentum model
      Medium.MassFlowRate[m] m_flows(
         each min=if allowFlowReversal then -Modelica.Constants.inf else 0,
         each start = m_flow_start,
         each stateSelect = if momentumDynamics == Types.Dynamics.SteadyState then StateSelect.default else 
                                   StateSelect.prefer) 
        "mass flow rates between states";

      // Parameters
      parameter Modelica.Fluid.Types.Dynamics momentumDynamics=system.momentumDynamics 
        "Formulation of momentum balance";

      parameter Medium.MassFlowRate m_flow_start=system.m_flow_start 
        "Start value of mass flow rates";

      // Total quantities
      SI.Momentum[m] Is "Momentums of flow segments";

      // Source terms and forces to be defined by an extending model (zero if not used)
      SI.Force[m] Ib_flows "Flow of momentum across boudaries";
      SI.Force[m] Fs_p "Pressure forces";
      SI.Force[m] Fs_fg "Friction and gravity forces";

    equation 
      // Total quantities
      Is = {m_flows[i]*pathLengths[i] for i in 1:m};

      // Momentum balances
      if momentumDynamics == Types.Dynamics.SteadyState then
        zeros(m) = Ib_flows - Fs_p - Fs_fg;
      else
        der(Is) = Ib_flows - Fs_p - Fs_fg;
      end if;

    initial equation 
      if momentumDynamics == Types.Dynamics.FixedInitial then
        m_flows = fill(m_flow_start, m);
      elseif momentumDynamics == Types.Dynamics.SteadyStateInitial then
        der(m_flows) = zeros(m);
      end if;

    end PartialDistributedFlow;

--------------

|image31| `Modelica.Fluid.Interfaces <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces>`_.PartialPressureLoss
---------------------------------------------------------------------------------------------------------------------

**Base flow model for pressure loss functions with the same area at
port\_a and at port\_b**

.. figure:: Modelica.Fluid.Interfaces.PartialPressureLossD.png
   :align: center
   :alt: Modelica.Fluid.Interfaces.PartialPressureLoss

   Modelica.Fluid.Interfaces.PartialPressureLoss

Information
~~~~~~~~~~~

Extends from
`Modelica.Fluid.Interfaces.PartialTwoPortTransport <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport>`_
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                          | Name                                                                                                      | Default                    | Description                                                                               |
+===============================================================================================================================+===========================================================================================================+============================+===========================================================================================+
| replaceable package Medium                                                                                                    | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                  |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | dp\_start                                                                                                 | 0.01\*system.p\_start      | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_start                                                                                            | system.m\_flow\_start      | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_small                                                                                            | system.m\_flow\_small      | Small mass flow rate for regularization of zero flow [kg/s]                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_T                                                                                                   | true                       | = true, if temperatures at port\_a and port\_b are computed                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_V\_flow                                                                                             | true                       | = true, if volume flow rate at inflowing port is computed                                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| Type                                                                                     | Name      | Description                                                                     |
+==========================================================================================+===========+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_a   | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_b   | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------+-----------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialPressureLoss 
      "Base flow model for pressure loss functions with the same area at port_a and at port_b"
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;
    protected 
      parameter Medium.ThermodynamicState state_dp_small=Medium.setState_pTX(
                           Medium.reference_p,
                           Medium.reference_T,
                           Medium.reference_X) "Medium state to compute dp_small";
      Medium.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      Medium.Density d_b 
        "If allowFlowReversal=true then Density at port_b when fluid is flowing from port_b to port_a else d_a";
      Medium.DynamicViscosity eta_a 
        "Dynamic viscosity at port_a when fluid is flowing from port_a to port_b";
      Medium.DynamicViscosity eta_b 
        "If allowFlowReversal=true then Dynamic viscosity at port_b when fluid is flowing from port_b to port_a else eta_a";
    equation 
      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

      // Medium properties
      d_a   = Medium.density(state_a);
      eta_a = Medium.dynamicViscosity(state_a);
      if allowFlowReversal then
        d_b   = Medium.density(state_b);
        eta_b = Medium.dynamicViscosity(state_b);
      else
        d_b   = d_a;
        eta_b = eta_a;
      end if;

    end PartialPressureLoss;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:19
2010.

.. |Modelica.Fluid.Interfaces.FluidPort| image:: Modelica.Fluid.Interfaces.FluidPortS.png
.. |Modelica.Fluid.Interfaces.FluidPort\_a| image:: Modelica.Fluid.Interfaces.FluidPort_aS.png
.. |Modelica.Fluid.Interfaces.FluidPort\_b| image:: Modelica.Fluid.Interfaces.FluidPort_bS.png
.. |Modelica.Fluid.Interfaces.FluidPorts\_a| image:: Modelica.Fluid.Interfaces.FluidPorts_aS.png
.. |Modelica.Fluid.Interfaces.FluidPorts\_b| image:: Modelica.Fluid.Interfaces.FluidPorts_bS.png
.. |Modelica.Fluid.Interfaces.PartialTwoPort| image:: Modelica.Fluid.Interfaces.PartialTwoPortS.png
.. |Modelica.Fluid.Interfaces.PartialTwoPortTransport| image:: Modelica.Fluid.Interfaces.PartialTwoPortTransportS.png
.. |Modelica.Fluid.Interfaces.HeatPorts\_a| image:: Modelica.Fluid.Interfaces.HeatPorts_aS.png
.. |Modelica.Fluid.Interfaces.HeatPorts\_b| image:: Modelica.Fluid.Interfaces.HeatPorts_bS.png
.. |Modelica.Fluid.Interfaces.PartialHeatTransfer| image:: Modelica.Fluid.Interfaces.PartialHeatTransferS.png
.. |Modelica.Fluid.Interfaces.PartialPressureLoss| image:: Modelica.Fluid.Interfaces.PartialPressureLossS.png
.. |image11| image:: Modelica.Fluid.Interfaces.FluidPortS.png
.. |image12| image:: Modelica.Fluid.Interfaces.FluidPort_aS.png
.. |image13| image:: Modelica.Fluid.Interfaces.FluidPort_bS.png
.. |image14| image:: Modelica.Fluid.Interfaces.FluidPorts_aS.png
.. |image15| image:: Modelica.Fluid.Interfaces.FluidPorts_bS.png
.. |image16| image:: Modelica.Fluid.Interfaces.PartialTwoPortS.png
.. |image17| image:: Modelica.Fluid.Interfaces.PartialTwoPortTransportS.png
.. |image18| image:: Modelica.Fluid.Interfaces.HeatPorts_aS.png
.. |image19| image:: Modelica.Fluid.Interfaces.HeatPorts_bS.png
.. |image20| image:: Modelica.Fluid.Interfaces.PartialHeatTransferS.png
.. |image21| image:: Modelica.Fluid.Interfaces.PartialPressureLossS.png
.. |image22| image:: Modelica.Fluid.Interfaces.FluidPort_aI.png
.. |image23| image:: Modelica.Fluid.Interfaces.FluidPort_bI.png
.. |image24| image:: Modelica.Fluid.Interfaces.FluidPorts_aI.png
.. |image25| image:: Modelica.Fluid.Interfaces.FluidPorts_bI.png
.. |image26| image:: Modelica.Fluid.Interfaces.PartialTwoPortI.png
.. |image27| image:: Modelica.Fluid.Interfaces.PartialTwoPortTransportI.png
.. |image28| image:: Modelica.Fluid.Interfaces.HeatPorts_aI.png
.. |image29| image:: Modelica.Fluid.Interfaces.HeatPorts_bI.png
.. |image30| image:: Modelica.Fluid.Interfaces.PartialHeatTransferI.png
.. |image31| image:: Modelica.Fluid.Interfaces.PartialPressureLossI.png
