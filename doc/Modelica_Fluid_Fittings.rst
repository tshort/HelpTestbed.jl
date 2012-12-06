=======================
Modelica.Fluid.Fittings
=======================

`Modelica.Fluid <Modelica_Fluid.html#Modelica.Fluid>`_.Fittings
---------------------------------------------------------------

**Adaptors for connections of fluid components and the regulation of
fluid flow**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                              | Description                                                                                                        |
+===================================================================================================================================================================+====================================================================================================================+
| |image10| `Bends <Modelica_Fluid_Fittings_Bends.html#Modelica.Fluid.Fittings.Bends>`_                                                                             | Flow models for bends                                                                                              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image11| `Orifices <Modelica_Fluid_Fittings_Orifices.html#Modelica.Fluid.Fittings.Orifices>`_                                                                    | Flow models for orifices                                                                                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image12| `GenericResistances <Modelica_Fluid_Fittings_GenericResistances.html#Modelica.Fluid.Fittings.GenericResistances>`_                                      | Flow models for generic resistances                                                                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image13| `SimpleGenericOrifice <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.SimpleGenericOrifice>`_                                                     | Simple generic orifice defined by pressure loss coefficient and diameter (only for flow from port\_a to port\_b)   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image14| `SharpEdgedOrifice <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.SharpEdgedOrifice>`_                                                           | Pressure drop due to sharp edged orifice (for both flow directions)                                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image15| `AbruptAdaptor <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.AbruptAdaptor>`_                                                                   | Pressure drop in pipe due to suddenly expanding or reducing area (for both flow directions)                        |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image16| `MultiPort <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.MultiPort>`_                                                                           | Multiply a port; useful if multiple connections shall be made to a port exposing a state                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image17| `TeeJunctionIdeal <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.TeeJunctionIdeal>`_                                                             | Splitting/joining component with static balances for an infinitesimal control volume                               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image18| `TeeJunctionVolume <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings.TeeJunctionVolume>`_                                                           | Splitting/joining component with static balances for a dynamic control volume                                      |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+
| |image19| `BaseClasses <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses>`_                                                           | Base classes used in the Fittings package (only of interest to build new component models)                         |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------------------------------------------+

--------------

|image20| `Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.SimpleGenericOrifice
----------------------------------------------------------------------------------------------------------------

**Simple generic orifice defined by pressure loss coefficient and
diameter (only for flow from port\_a to port\_b)**

.. figure:: Modelica.Fluid.Fittings.SimpleGenericOrificeD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.SimpleGenericOrifice

   Modelica.Fluid.Fittings.SimpleGenericOrifice

Information
~~~~~~~~~~~

::

This pressure drop component defines a simple, generic orifice, where
the loss factor ζ is provided for one flow direction (e.g., from loss
table of a book):

::

       Δp = 0.5*ζ*ρ*v*|v|
          = 8*ζ/(π^2*D^4*ρ) * m_flow*|m_flow|

where

-  Δp is the pressure drop: Δp = port\_a.p - port\_b.p
-  D is the diameter of the orifice at the position where ζ is defined
   (either at port\_a or port\_b). If the orifice has not a circular
   cross section, D = 4\*A/P, where A is the cross section area and P is
   the wetted perimeter.
-  ζ is the loss factor with respect to D that depends on the geometry
   of the orifice. In the turbulent flow regime, it is assumed that ζ is
   constant.
    For small mass flow rates, the flow is laminar and is approximated
   by a polynomial that has a finite derivative for m\_flow=0.
-  v is the mean velocity.
-  ρ is the upstream density.

Since the pressure loss factor zeta is provided only for a mass flow
from port\_a to port\_b, the pressure loss is not correct when the flow
is reversing. If reversing flow only occurs in a short time interval,
this is most likely uncritical. If significant reversing flow can
appear, this component should not be used.

::

Extends from
`Modelica.Fluid.Interfaces.PartialTwoPortTransport <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport>`_
(Partial element transporting fluid between two ports without storage of
mass or energy),
`Modelica.Fluid.Interfaces.PartialLumpedFlow <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedFlow>`_
(Base class for a lumped momentum balance).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                          | Name                                                                                                      | Default                      | Description                                                                               |
+===============================================================================================================================+===========================================================================================================+==============================+===========================================================================================+
| replaceable package Medium                                                                                                    | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component      |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                     | pathLength                                                                                                | 0                            | Length flow path [m]                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                 | diameter                                                                                                  |                              | Diameter of orifice [m]                                                                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Real                                                                                                                          | zeta                                                                                                      |                              | Loss factor for flow of port\_a -> port\_b                                                |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | use\_zeta                                                                                                 | true                         | = false to obtain zeta from dp\_nominal and m\_flow\_nominal                              |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_                                                 | dp\_nominal                                                                                               | 1e3                          | Nominal pressure drop [Pa]                                                                |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                         | m\_flow\_nominal                                                                                          | 1                            | Mass flow rate for dp\_nominal [kg/s]                                                     |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | allowFlowReversal                                                                                         | system.allowFlowReversal     | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Dynamics                                                                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                         | momentumDynamics                                                                                          | Types.Dynamics.SteadyState   | Formulation of momentum balance                                                           |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                  |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | dp\_start                                                                                                 | 0.01\*system.p\_start        | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_start                                                                                            | system.m\_flow\_start        | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_small                                                                                            | system.m\_flow\_small        | Small mass flow rate for regularization of zero flow [kg/s]                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | from\_dp                                                                                                  | true                         | = true, use m\_flow = f(dp) else dp = f(m\_flow)                                          |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | dp\_small                                                                                                 | system.dp\_small             | Turbulent flow if \|dp\| >= dp\_small [Pa]                                                |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_T                                                                                                   | true                         | = true, if temperatures at port\_a and port\_b are computed                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_V\_flow                                                                                             | true                         | = true, if volume flow rate at inflowing port is computed                                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+------------------------------+-------------------------------------------------------------------------------------------+

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

    model SimpleGenericOrifice 
      "Simple generic orifice defined by pressure loss coefficient and diameter (only for flow from port_a to port_b)"

      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport;

      extends Modelica.Fluid.Interfaces.PartialLumpedFlow(
        final pathLength = 0,
        final momentumDynamics = Types.Dynamics.SteadyState);

      parameter SI.Diameter diameter "Diameter of orifice";
      parameter Real zeta "Loss factor for flow of port_a -> port_b";
      parameter Boolean use_zeta = true 
        "= false to obtain zeta from dp_nominal and m_flow_nominal";

      // Operational conditions
      parameter SI.AbsolutePressure dp_nominal = 1e3 "Nominal pressure drop";
      parameter SI.MassFlowRate m_flow_nominal = 1 "Mass flow rate for dp_nominal";

      parameter Boolean from_dp = true 
        "= true, use m_flow = f(dp) else dp = f(m_flow)";
      parameter Medium.AbsolutePressure dp_small = system.dp_small 
        "Turbulent flow if |dp| >= dp_small";

      // Variables
      Real zeta_nominal(start = zeta);
      Medium.Density d = 0.5*(Medium.density(state_a) + Medium.density(state_b));
      Modelica.SIunits.Pressure dp_fg(start=dp_start) 
        "pressure loss due to friction and gravity";
      Modelica.SIunits.Area A_mean = Modelica.Constants.pi/4*diameter^2 
        "mean cross flow area";

    equation 
      if use_zeta then
        zeta_nominal = zeta;
      else
        dp_nominal = BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal)/d*m_flow_nominal^2;
      end if;

      Ib_flow = 0;
      F_p = A_mean*(Medium.pressure(state_b) - Medium.pressure(state_a));
      F_fg = A_mean*dp_fg;

      /*
       dp = 0.5*zeta*d*v*|v|
          = 0.5*zeta*d*1/(d*A)^2 * m_flow * |m_flow|
          = 0.5*zeta/A^2 *1/d * m_flow * |m_flow|
          = k/d * m_flow * |m_flow|
       k  = 0.5*zeta/A^2
          = 0.5*zeta/(pi*(D/2)^2)^2
          = 8*zeta/(pi*D^2)^2
      */
      if from_dp then
        m_flow = Utilities.regRoot2(
            dp_fg,
            dp_small,
            Medium.density(state_a)/BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal),
            Medium.density(state_b)/BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal));
      else
        dp_fg = Utilities.regSquare2(
            m_flow,
            m_flow_small,
            BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal)/Medium.density(state_a),
            BaseClasses.lossConstant_D_zeta(diameter, zeta_nominal)/Medium.density(state_b));
      end if;

      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

    end SimpleGenericOrifice;

--------------

|image21| `Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.SharpEdgedOrifice
-------------------------------------------------------------------------------------------------------------

**Pressure drop due to sharp edged orifice (for both flow directions)**

.. figure:: Modelica.Fluid.Fittings.SharpEdgedOrificeD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.SharpEdgedOrifice

   Modelica.Fluid.Fittings.SharpEdgedOrifice

Information
~~~~~~~~~~~

::

::

Extends from
`BaseClasses.QuadraticTurbulent.BaseModel <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModel>`_
(Generic pressure drop component with constant turbulent loss factor
data and without an icon).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name                                                                                                      | Default                           | Description                                                                               |
+=========================================================================================================================================================+===========================================================================================================+===================================+===========================================================================================+
| replaceable package Medium                                                                                                                              | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data                                                                                                      | BaseClasses.QuadraticTurbule...   | Loss factor data                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_                                                                                               | length                                                                                                    |                                   | Length of orifice [m]                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                           | diameter                                                                                                  |                                   | Inner diameter of pipe (= same at port\_a and port\_b) [m]                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                           | leastDiameter                                                                                             |                                   | Smallest diameter of orifice [m]                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Angle\_deg <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Angle_deg>`_                                          | alpha                                                                                                     |                                   | Angle of orifice [deg]                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | allowFlowReversal                                                                                         | system.allowFlowReversal          | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_start                                                                                                 | 0.01\*system.p\_start             | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_start                                                                                            | system.m\_flow\_start             | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_small                                                                                            | system.m\_flow\_small             | Small mass flow rate for regularization of zero flow [kg/s]                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | from\_dp                                                                                                  | true                              | = true, use m\_flow = f(dp) else dp = f(m\_flow)                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | use\_Re                                                                                                   | false                             | = true, if turbulent region is defined by Re, otherwise by dp\_small or m\_flow\_small    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_small                                                                                                 | system.dp\_small                  | Turbulent flow if \|dp\| >= dp\_small [Pa]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_T                                                                                                   | true                              | = true, if temperatures at port\_a and port\_b are computed                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_V\_flow                                                                                             | true                              | = true, if volume flow rate at inflowing port is computed                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_Re                                                                                                  | false                             | = true, if Reynolds number is included for plotting                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+

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

    model SharpEdgedOrifice 
      "Pressure drop due to sharp edged orifice (for both flow directions)"
        import NonSI = Modelica.SIunits.Conversions.NonSIunits;
      extends BaseClasses.QuadraticTurbulent.BaseModel(final data=
              BaseClasses.QuadraticTurbulent.LossFactorData.sharpEdgedOrifice(
              diameter,
              leastDiameter,
              length,
              alpha));
      parameter SI.Length length "Length of orifice";
      parameter SI.Diameter diameter 
        "Inner diameter of pipe (= same at port_a and port_b)";
      parameter SI.Diameter leastDiameter "Smallest diameter of orifice";
      parameter NonSI.Angle_deg alpha "Angle of orifice";

    end SharpEdgedOrifice;

--------------

|image22| `Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.AbruptAdaptor
---------------------------------------------------------------------------------------------------------

**Pressure drop in pipe due to suddenly expanding or reducing area (for
both flow directions)**

.. figure:: Modelica.Fluid.Fittings.AbruptAdaptorD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.AbruptAdaptor

   Modelica.Fluid.Fittings.AbruptAdaptor

Information
~~~~~~~~~~~

::

::

Extends from
`BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea>`_
(Generic pressure drop component with constant turbulent loss factor
data and without an icon, for non-constant cross section area).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                                    | Name                                                                                                      | Default                           | Description                                                                               |
+=========================================================================================================================================================+===========================================================================================================+===================================+===========================================================================================+
| replaceable package Medium                                                                                                                              | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `LossFactorData <Modelica_Fluid_Fittings_BaseClasses_QuadraticTurbulent.html#Modelica.Fluid.Fittings.BaseClasses.QuadraticTurbulent.LossFactorData>`_   | data                                                                                                      | BaseClasses.QuadraticTurbule...   | Loss factor data                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                           | diameter\_a                                                                                               |                                   | Inner diameter of pipe at port\_a [m]                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_                                                                                           | diameter\_b                                                                                               |                                   | Inner diameter of pipe at port\_b [m]                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | allowFlowReversal                                                                                         | system.allowFlowReversal          | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_start                                                                                                 | 0.01\*system.p\_start             | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_start                                                                                            | system.m\_flow\_start             | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                     | m\_flow\_small                                                                                            | system.m\_flow\_small             | Small mass flow rate for regularization of zero flow [kg/s]                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                             | dp\_small                                                                                                 | system.dp\_small                  | Turbulent flow if \|dp\| >= dp\_small [Pa]                                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_T                                                                                                   | true                              | = true, if temperatures at port\_a and port\_b are computed                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_V\_flow                                                                                             | true                              | = true, if volume flow rate at inflowing port is computed                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_Re                                                                                                  | false                             | = true, if Reynolds number is included for plotting                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_totalPressures                                                                                      | false                             | = true, if total pressures are included for plotting                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                 | show\_portVelocities                                                                                      | false                             | = true, if port velocities are included for plotting                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-----------------------------------+-------------------------------------------------------------------------------------------+

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

    model AbruptAdaptor 
      "Pressure drop in pipe due to suddenly expanding or reducing area (for both flow directions)"
      extends BaseClasses.QuadraticTurbulent.BaseModelNonconstantCrossSectionArea(final data=
              BaseClasses.QuadraticTurbulent.LossFactorData.suddenExpansion(
              diameter_a, diameter_b));
      parameter SI.Diameter diameter_a "Inner diameter of pipe at port_a";
      parameter SI.Diameter diameter_b "Inner diameter of pipe at port_b";

    end AbruptAdaptor;

--------------

|image23| `Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.MultiPort
-----------------------------------------------------------------------------------------------------

**Multiply a port; useful if multiple connections shall be made to a
port exposing a state**

.. figure:: Modelica.Fluid.Fittings.MultiPortD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.MultiPort

   Modelica.Fluid.Fittings.MultiPort

Information
~~~~~~~~~~~

::

This model is useful if multiple connections shall be made to a port of
a volume model exposing a state, like a pipe with ModelStructure av\_vb.
The mixing is shifted into the volume connected to port\_a and the
result is propageted back to each ports\_b.

If multiple connections were directly made to the volume, then ideal
mixing would take place in the connection set, outside the volume. This
is normally not intended.

::

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------+-----------------------+---------------+
| Type                                                                                       | Name                  | Description   |
+============================================================================================+=======================+===============+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_     | port\_a               |               |
+--------------------------------------------------------------------------------------------+-----------------------+---------------+
| `FluidPorts\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPorts_b>`_   | ports\_b[nPorts\_b]   |               |
+--------------------------------------------------------------------------------------------+-----------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model MultiPort 
      "Multiply a port; useful if multiple connections shall be made to a port exposing a state"

      function positiveMax
        input Real x;
        output Real y;
      algorithm 
        y :=max(x, 1e-10);
      end positiveMax;

      import Modelica.Constants;

      replaceable package Medium=Modelica.Media.Interfaces.PartialMedium;

      // Ports
      parameter Integer nPorts_b=0 
        "Number of outlet ports (mass is distributed evenly between the outlet ports";

      Modelica.Fluid.Interfaces.FluidPort_a port_a(
        redeclare package Medium=Medium);
      Modelica.Fluid.Interfaces.FluidPorts_b ports_b[nPorts_b](
        redeclare each package Medium=Medium);

      Medium.MassFraction ports_b_Xi_inStream[nPorts_b,Medium.nXi] 
        "inStream mass fractions at ports_b";
      Medium.ExtraProperty ports_b_C_inStream[nPorts_b,Medium.nC] 
        "inStream extra properties at ports_b";

    equation 
      // Only one connection allowed to a port to avoid unwanted ideal mixing
      for i in 1:nPorts_b loop
        assert(cardinality(ports_b[i]) <= 1,"
    each ports_b[i] of boundary shall at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections, which is usually not the intention
    of the modeller. Increase nPorts_b to add an additional port.
    ");
      end for;

      // mass and momentum balance
      0 = port_a.m_flow + sum(ports_b.m_flow);
      ports_b.p = fill(port_a.p, nPorts_b);

      // mixing at port_a
      port_a.h_outflow = sum({positiveMax(ports_b[j].m_flow)*inStream(ports_b[j].h_outflow) for j in 1:nPorts_b})
                           / sum({positiveMax(ports_b[j].m_flow) for j in 1:nPorts_b});
      for j in 1:nPorts_b loop
         // expose stream values from port_a to ports_b
         ports_b[j].h_outflow  = inStream(port_a.h_outflow);
         ports_b[j].Xi_outflow = inStream(port_a.Xi_outflow);
         ports_b[j].C_outflow  = inStream(port_a.C_outflow);

         ports_b_Xi_inStream[j,:] = inStream(ports_b[j].Xi_outflow);
         ports_b_C_inStream[j,:] = inStream(ports_b[j].C_outflow);
      end for;
      for i in 1:Medium.nXi loop
        port_a.Xi_outflow[i] = (positiveMax(ports_b.m_flow)*ports_b_Xi_inStream[:,i])
                             / sum(positiveMax(ports_b.m_flow));
      end for;
      for i in 1:Medium.nC loop
        port_a.C_outflow[i] = (positiveMax(ports_b.m_flow)*ports_b_C_inStream[:,i])
                             / sum(positiveMax(ports_b.m_flow));
      end for;
    end MultiPort;

--------------

|image24| `Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.TeeJunctionIdeal
------------------------------------------------------------------------------------------------------------

**Splitting/joining component with static balances for an infinitesimal
control volume**

.. figure:: Modelica.Fluid.Fittings.TeeJunctionIdealD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.TeeJunctionIdeal

   Modelica.Fluid.Fittings.TeeJunctionIdeal

Information
~~~~~~~~~~~

::

This model is the simplest implementation for a splitting/joining
component for three flows. Its use is not required. It just formulates
the balance equations in the same way that the connect symmantics would
formulate them anyways. The main advantage of using this component is,
that the user does not get confused when looking at the specific
enthalpy at each port which might be confusing when not using a
splitting/joining component. The reason for the confusion is that one
exmanins the mixing enthalpy of the infinitesimal control volume
introduced with the connect statement when looking at the specific
enthalpy in the connector which might not be equal to the specific
enthalpy at the port in the "real world".

::

Extends from
`Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction>`_
(Base class for a splitting/joining component with three ports).

Parameters
~~~~~~~~~~

+------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------+
| Type                         | Name                                                                                                      | Default                   | Description   |
+==============================+===========================================================================================================+===========================+===============+
| replaceable package Medium   | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component   |
+------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------------+---------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                     | Name      | Description   |
+==========================================================================================+===========+===============+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_1   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_2   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_3   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TeeJunctionIdeal 
      "Splitting/joining component with static balances for an infinitesimal control volume"
      extends Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction;

    equation 
      connect(port_1, port_2);
      connect(port_1, port_3);
    end TeeJunctionIdeal;

--------------

|image25| `Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.TeeJunctionVolume
-------------------------------------------------------------------------------------------------------------

**Splitting/joining component with static balances for a dynamic control
volume**

.. figure:: Modelica.Fluid.Fittings.TeeJunctionVolumeD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.TeeJunctionVolume

   Modelica.Fluid.Fittings.TeeJunctionVolume

Information
~~~~~~~~~~~

::

This model introduces a mixing volume into a junction. This might be
useful to examine the non-ideal mixing taking place in a real junction.

::

Extends from
`Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction <Modelica_Fluid_Fittings_BaseClasses.html#Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction>`_
(Base class for a splitting/joining component with three ports),
`Modelica.Fluid.Interfaces.PartialLumpedVolume <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialLumpedVolume>`_
(Lumped volume with mass and energy balance).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| Type                                                                                                                          | Name                                                                                                      | Default                             | Description                                    |
+===============================================================================================================================+===========================================================================================================+=====================================+================================================+
| replaceable package Medium                                                                                                    | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component             |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_                                                                     | fluidVolume                                                                                               | V                                   | Volume [m3]                                    |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_                                                                     | V                                                                                                         |                                     | Mixing volume inside junction [m3]             |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| **Assumptions**                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| Dynamics                                                                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                         | energyDynamics                                                                                            | system.energyDynamics               | Formulation of energy balance                  |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `Dynamics <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Dynamics>`_                                                         | massDynamics                                                                                              | system.massDynamics                 | Formulation of mass balance                    |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| **Initialization**                                                                                                            |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | p\_start                                                                                                  | system.p\_start                     | Start value of pressure [Pa]                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| Boolean                                                                                                                       | use\_T\_start                                                                                             | true                                | = true, use T\_start, otherwise h\_start       |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `Temperature <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Temperature>`_             | T\_start                                                                                                  | if use\_T\_start then system.T...   | Start value of temperature [K]                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `SpecificEnthalpy <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.SpecificEnthalpy>`_   | h\_start                                                                                                  | if use\_T\_start then Medium.s...   | Start value of specific enthalpy [J/kg]        |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `MassFraction <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFraction>`_           | X\_start[Medium.nX]                                                                                       | Medium.X\_default                   | Start value of mass fractions m\_i/m [kg/kg]   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+
| `ExtraProperty <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.ExtraProperty>`_         | C\_start[Medium.nC]                                                                                       | fill(0, Medium.nC)                  | Start value of trace substances                |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                     | Name      | Description   |
+==========================================================================================+===========+===============+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_1   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_   | port\_2   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_   | port\_3   |               |
+------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TeeJunctionVolume 
      "Splitting/joining component with static balances for a dynamic control volume"
      extends Modelica.Fluid.Fittings.BaseClasses.PartialTeeJunction;
      extends Modelica.Fluid.Interfaces.PartialLumpedVolume(
        final fluidVolume = V);

      parameter SI.Volume V "Mixing volume inside junction";

    equation 
      // Only one connection allowed to a port to avoid unwanted ideal mixing
      assert(cardinality(port_1) <= 1,"
    port_1 of volume can at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections which is usually not the intention
    of the modeller.
    ");
      assert(cardinality(port_2) <= 1,"
    port_2 of volume can at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections which is usually not the intention
    of the modeller.
    ");
      assert(cardinality(port_3) <= 1,"
    port_3 of volume can at most be connected to one component.
    If two or more connections are present, ideal mixing takes
    place with these connections which is usually not the intention
    of the modeller.
    ");

      // Boundary conditions
      port_1.h_outflow = medium.h;
      port_2.h_outflow = medium.h;
      port_3.h_outflow = medium.h;

      port_1.Xi_outflow = medium.Xi;
      port_2.Xi_outflow = medium.Xi;
      port_3.Xi_outflow = medium.Xi;

      port_1.C_outflow = C;
      port_2.C_outflow = C;
      port_3.C_outflow = C;

      // Mass balances
      mb_flow = port_1.m_flow + port_2.m_flow + port_3.m_flow "Mass balance";
      mbXi_flow = port_1.m_flow*actualStream(port_1.Xi_outflow)
                  + port_2.m_flow*actualStream(port_2.Xi_outflow)
                  + port_3.m_flow*actualStream(port_3.Xi_outflow) 
        "Component mass balances";

      mbC_flow  = port_1.m_flow*actualStream(port_1.C_outflow)
                + port_2.m_flow*actualStream(port_2.C_outflow)
                + port_3.m_flow*actualStream(port_3.C_outflow) 
        "Trace substance mass balances";

      // Momentum balance (suitable for compressible media)
      port_1.p = medium.p;
      port_2.p = medium.p;
      port_3.p = medium.p;

      // Energy balance
      Hb_flow = port_1.m_flow*actualStream(port_1.h_outflow)
                + port_2.m_flow*actualStream(port_2.h_outflow)
                + port_3.m_flow*actualStream(port_3.h_outflow);
      Qb_flow = 0;
      Wb_flow = 0;

    end TeeJunctionVolume;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:17
2010.

.. |Modelica.Fluid.Fittings.Bends| image:: Modelica.Fluid.Fittings.BendsS.png
.. |Modelica.Fluid.Fittings.Orifices| image:: Modelica.Fluid.Fittings.BendsS.png
.. |Modelica.Fluid.Fittings.GenericResistances| image:: Modelica.Fluid.Fittings.BendsS.png
.. |Modelica.Fluid.Fittings.SimpleGenericOrifice| image:: Modelica.Fluid.Fittings.SimpleGenericOrificeS.png
.. |Modelica.Fluid.Fittings.SharpEdgedOrifice| image:: Modelica.Fluid.Fittings.SharpEdgedOrificeS.png
.. |Modelica.Fluid.Fittings.AbruptAdaptor| image:: Modelica.Fluid.Fittings.AbruptAdaptorS.png
.. |Modelica.Fluid.Fittings.MultiPort| image:: Modelica.Fluid.Fittings.MultiPortS.png
.. |Modelica.Fluid.Fittings.TeeJunctionIdeal| image:: Modelica.Fluid.Fittings.TeeJunctionIdealS.png
.. |Modelica.Fluid.Fittings.TeeJunctionVolume| image:: Modelica.Fluid.Fittings.TeeJunctionVolumeS.png
.. |Modelica.Fluid.Fittings.BaseClasses| image:: Modelica.Fluid.Fittings.BaseClassesS.png
.. |image10| image:: Modelica.Fluid.Fittings.BendsS.png
.. |image11| image:: Modelica.Fluid.Fittings.BendsS.png
.. |image12| image:: Modelica.Fluid.Fittings.BendsS.png
.. |image13| image:: Modelica.Fluid.Fittings.SimpleGenericOrificeS.png
.. |image14| image:: Modelica.Fluid.Fittings.SharpEdgedOrificeS.png
.. |image15| image:: Modelica.Fluid.Fittings.AbruptAdaptorS.png
.. |image16| image:: Modelica.Fluid.Fittings.MultiPortS.png
.. |image17| image:: Modelica.Fluid.Fittings.TeeJunctionIdealS.png
.. |image18| image:: Modelica.Fluid.Fittings.TeeJunctionVolumeS.png
.. |image19| image:: Modelica.Fluid.Fittings.BaseClassesS.png
.. |image20| image:: Modelica.Fluid.Fittings.SimpleGenericOrificeI.png
.. |image21| image:: Modelica.Fluid.Fittings.SharpEdgedOrificeI.png
.. |image22| image:: Modelica.Fluid.Fittings.AbruptAdaptorI.png
.. |image23| image:: Modelica.Fluid.Fittings.MultiPortI.png
.. |image24| image:: Modelica.Fluid.Fittings.TeeJunctionIdealI.png
.. |image25| image:: Modelica.Fluid.Fittings.TeeJunctionVolumeI.png
