=================================
Modelica.Fluid.Valves.BaseClasses
=================================

`Modelica.Fluid.Valves <Modelica_Fluid_Valves.html#Modelica.Fluid.Valves>`_.BaseClasses
---------------------------------------------------------------------------------------

**Base classes used in the Valves package (only of interest to build new
component models)**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.BasesPackage <Modelica_Icons_BasesPackage.html#Modelica.Icons.BasesPackage>`_
(Icon for packages containing base classes).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| Name                                                                                                                                                                                                    | Description                           |
+=========================================================================================================================================================================================================+=======================================+
| |image2| `PartialValve <Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve>`_                                                                                        | Base model for valves                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+
| |image3| `ValveCharacteristics <Modelica_Fluid_Valves_BaseClasses_ValveCharacteristics.html#Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics>`_                                                   | Functions for valve characteristics   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------+

--------------

|image4| `Modelica.Fluid.Valves.BaseClasses <Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses>`_.PartialValve
-------------------------------------------------------------------------------------------------------------------------------------

**Base model for valves**

.. figure:: Modelica.Fluid.Valves.BaseClasses.PartialValveD.png
   :align: center
   :alt: Modelica.Fluid.Valves.BaseClasses.PartialValve

   Modelica.Fluid.Valves.BaseClasses.PartialValve

Information
~~~~~~~~~~~

::

This is the base model for the ``ValveIncompressible``,
``ValveVaporizing``, and ``ValveCompressible`` valve models. The model
is based on the IEC 534 / ISA S.75 standards for valve sizing.

The model optionally supports reverse flow conditions (assuming
symmetrical behaviour) or check valve operation, and has been suitably
regularized, compared to the equations in the standard, in order to
avoid numerical singularities around zero pressure drop operating
conditions.

The model assumes adiabatic operation (no heat losses to the ambient);
changes in kinetic energy from inlet to outlet are neglected in the
energy balance.

**Modelling options**

The following options are available to specify the valve flow
coefficient in fully open conditions:

-  ``CvData = Modelica.Fluid.Types.CvTypes.Av``: the flow coefficient is
   given by the metric ``Av`` coefficient (m^2).
-  ``CvData = Modelica.Fluid.Types.CvTypes.Kv``: the flow coefficient is
   given by the metric ``Kv`` coefficient (m^3/h).
-  ``CvData = Modelica.Fluid.Types.CvTypes.Cv``: the flow coefficient is
   given by the US ``Cv`` coefficient (USG/min).
-  ``CvData = Modelica.Fluid.Types.CvTypes.OpPoint``: the flow is
   computed from the nominal operating point specified by ``p_nominal``,
   ``dp_nominal``, ``m_flow_nominal``, ``rho_nominal``,
   ``opening_nominal``.

The nominal pressure drop ``dp_nominal`` must always be specified; to
avoid numerical singularities, the flow characteristic is modified for
pressure drops less than ``b*dp_nominal`` (the default value is 1% of
the nominal pressure drop). Increase this parameter if numerical
problems occur in valves with very low pressure drops.

If ``checkValve`` is true, then the flow is stopped when the outlet
pressure is higher than the inlet pressure; otherwise, reverse flow
takes place. Use this option only when neede, as it increases the
numerical complexity of the problem.

The valve opening characteristic ``valveCharacteristic``, linear by
default, can be replaced by any user-defined function. Quadratic and
equal percentage with customizable rangeability are already provided by
the library. The characteristics for constant port\_a.p and port\_b.p
pressures with continuously changing opening are shown in the next two
figures:

    .. figure:: ../Resources/Images/Fluid/Components/ValveCharacteristics1a.png
       :align: center
       :alt: 

    .. figure:: ../Resources/Images/Fluid/Components/ValveCharacteristics1b.png
       :align: center
       :alt: 

The treatment of parameters **Kv** and **Cv** is explained in detail in
the `User's
Guide <Modelica_Fluid_UsersGuide_ComponentDefinition.html#Modelica.Fluid.UsersGuide.ComponentDefinition.ValveCharacteristics>`_.

With the optional parameter "filteredOpening", the opening can be
filtered with a **second order, criticalDamping** filter so that the
opening demand is delayed by parameter "riseTime". The filtered opening
is then available via the output signal "opening\_filtered" and is used
to control the valve equations. This approach approximates the driving
device of a valve. The "riseTime" parameter is used to compute the
cut-off frequency of the filter by the equation: f\_cut =
5/(2\*pi\*riseTime). It defines the time that is needed until
opening\_filtered reaches 99.6 % of a step input of opening. The icon of
a valve changes in the following way (left image: filteredOpening=false,
right image: filteredOpening=true):

    .. figure:: ../Resources/Images/Fluid/Components/FilteredValveIcon.png
       :align: center
       :alt: 

If "filteredOpening = **true**", the input signal "opening" is limited
by parameter **leackageOpening**, i.e., if "opening" becomes smaller as
"leakageOpening", then "leakageOpening" is used instead of "opening" as
input for the filter. The reason is that "opening=0" might structurally
change the equations of the fluid network leading to a singularity. If a
small leakage flow is introduced (which is often anyway present in
reality), the singularity might be avoided.

In the next figure, "opening" and "filtered\_opening" are shown in the
case that filteredOpening = **true**, riseTime = 1 s, and
leackageOpening = 0.02.

    .. figure:: ../Resources/Images/Fluid/Components/ValveFilteredOpening.png
       :align: center
       :alt: 

::

Extends from
`Modelica.Fluid.Interfaces.PartialTwoPortTransport <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialTwoPortTransport>`_
(Partial element transporting fluid between two ports without storage of
mass or energy).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                          | Name                                                                                                      | Default                             | Description                                                                               |
+===============================================================================================================================+===========================================================================================================+=====================================+===========================================================================================+
| replaceable package Medium                                                                                                    | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component             |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Flow Coefficient                                                                                                              |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `CvTypes <Modelica_Fluid_Types.html#Modelica.Fluid.Types.CvTypes>`_                                                           | CvData                                                                                                    | Modelica.Fluid.Types.CvTypes...     | Selection of flow coefficient                                                             |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_                                                                         | Av                                                                                                        | 0                                   | Av (metric) flow coefficient [m2]                                                         |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Real                                                                                                                          | Kv                                                                                                        | 0                                   | Kv (metric) flow coefficient [m3/h]                                                       |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Real                                                                                                                          | Cv                                                                                                        | 0                                   | Cv (US) flow coefficient [USG/min]                                                        |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Nominal operating point                                                                                                       |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                 | dp\_nominal                                                                                               |                                     | Nominal pressure drop [Pa]                                                                |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_nominal                                                                                          |                                     | Nominal mass flowrate [kg/s]                                                              |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `Density <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.Density>`_                     | rho\_nominal                                                                                              | Medium.density\_pTX(Medium.p\_...   | Nominal inlet density [kg/m3]                                                             |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Real                                                                                                                          | opening\_nominal                                                                                          | 1                                   | Nominal opening                                                                           |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Filtered opening                                                                                                              |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | filteredOpening                                                                                           | false                               | = true, if opening is filtered with a 2nd order CriticalDamping filter                    |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                                                         | riseTime                                                                                                  | 1                                   | Rise time of the filter (time to reach 99.6 % of an opening step) [s]                     |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Real                                                                                                                          | leakageOpening                                                                                            | 1e-3                                | The opening signal is limited by leakageOpening (to improve the numerics)                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | allowFlowReversal                                                                                         | system.allowFlowReversal            | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | checkValve                                                                                                | false                               | Reverse flow stopped                                                                      |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                  |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_   | dp\_start                                                                                                 | dp\_nominal                         | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_start                                                                                            | m\_flow\_nominal                    | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_           | m\_flow\_small                                                                                            | system.m\_flow\_small               | Small mass flow rate for regularization of zero flow [kg/s]                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                 | dp\_small                                                                                                 | system.dp\_small                    | Regularisation of zero flow [Pa]                                                          |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                   |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_T                                                                                                   | true                                | = true, if temperatures at port\_a and port\_b are computed                               |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                       | show\_V\_flow                                                                                             | true                                | = true, if volume flow rate at inflowing port is computed                                 |
+-------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+-------------------------------------+-------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------------------------------------------+
| Type                                                                                           | Name                | Description                                                                     |
+================================================================================================+=====================+=================================================================================+
| `FluidPort\_a <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_a>`_         | port\_a             | Fluid connector a (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------------------------------------------+
| `FluidPort\_b <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.FluidPort_b>`_         | port\_b             | Fluid connector b (positive design flow direction is from port\_a to port\_b)   |
+------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | opening             | Valve position in the range 0..1                                                |
+------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | opening\_filtered   | Filtered valve position in the range 0..1                                       |
+------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialValve "Base model for valves"

      import Modelica.Fluid.Types.CvTypes;
      extends Modelica.Fluid.Interfaces.PartialTwoPortTransport(
        dp_start = dp_nominal,
        m_flow_start = m_flow_nominal,
        m_flow_small = system.m_flow_small);

      parameter Modelica.Fluid.Types.CvTypes CvData=Modelica.Fluid.Types.CvTypes.OpPoint 
        "Selection of flow coefficient";
      parameter SI.Area Av(
        fixed=if CvData == Modelica.Fluid.Types.CvTypes.Av then true else false,
        start=m_flow_nominal/(sqrt(rho_nominal*dp_nominal))*valveCharacteristic(
            opening_nominal)) = 0 "Av (metric) flow coefficient";
      parameter Real Kv = 0 "Kv (metric) flow coefficient [m3/h]";
      parameter Real Cv = 0 "Cv (US) flow coefficient [USG/min]";
      parameter SI.Pressure dp_nominal "Nominal pressure drop";
      parameter Medium.MassFlowRate m_flow_nominal "Nominal mass flowrate";
      parameter Medium.Density rho_nominal=Medium.density_pTX(Medium.p_default, Medium.T_default, Medium.X_default) 
        "Nominal inlet density";
      parameter Real opening_nominal(min=0,max=1)=1 "Nominal opening";

      parameter Boolean filteredOpening=false 
        "= true, if opening is filtered with a 2nd order CriticalDamping filter";
      parameter Modelica.SIunits.Time riseTime=1 
        "Rise time of the filter (time to reach 99.6 % of an opening step)";
      parameter Real leakageOpening(min=0,max=1)=1e-3 
        "The opening signal is limited by leakageOpening (to improve the numerics)";
      parameter Boolean checkValve=false "Reverse flow stopped";

      replaceable function valveCharacteristic =
          Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.linear
        constrainedby 
        Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics.baseFun 
        "Inherent flow characteristic";

      parameter SI.Pressure dp_small=system.dp_small "Regularisation of zero flow";

      constant SI.Area Kv2Av = 27.7e-6 "Conversion factor";
      constant SI.Area Cv2Av = 24.0e-6 "Conversion factor";

      Modelica.Blocks.Interfaces.RealInput opening(min=0, max=1) 
        "Valve position in the range 0..1";

      Modelica.Blocks.Interfaces.RealOutput opening_filtered if filteredOpening 
        "Filtered valve position in the range 0..1";

      Modelica.Blocks.Continuous.Filter filter(order=2, f_cut=5/(2*Modelica.Constants.pi
            *riseTime)) if filteredOpening;

    protected 
      Modelica.Blocks.Interfaces.RealOutput opening_actual;

    block MinLimiter "Limit the signal above a threshold"
     parameter Real uMin=0 "Lower limit of input signal";
      extends Modelica.Blocks.Interfaces.SISO;

    equation 
      y = smooth(0, noEvent( if u < uMin then uMin else u));
    end MinLimiter;

      MinLimiter minLimiter(uMin=leakageOpening);
    initial equation 
      if CvData == CvTypes.Kv then
        Av = Kv*Kv2Av "Unit conversion";
      elseif CvData == CvTypes.Cv then
        Av = Cv*Cv2Av "Unit conversion";
      end if;

    equation 
      // Isenthalpic state transformation (no storage and no loss of energy)
      port_a.h_outflow = inStream(port_b.h_outflow);
      port_b.h_outflow = inStream(port_a.h_outflow);

      connect(filter.y, opening_filtered);

      if filteredOpening then
         connect(filter.y, opening_actual);
      else
         connect(opening, opening_actual);
      end if;

      connect(minLimiter.y, filter.u);
      connect(minLimiter.u, opening);
    end PartialValve;

--------------

|Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiter| `Modelica.Fluid.Valves.BaseClasses.PartialValve <Modelica_Fluid_Valves_BaseClasses.html#Modelica.Fluid.Valves.BaseClasses.PartialValve>`_.MinLimiter
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Limit the signal above a threshold**

.. figure:: Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiterD.png
   :align: center
   :alt: Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiter

   Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiter

Information
~~~~~~~~~~~

::

The block passes its input signal as output signal as long as the input
is above uMin. If this is not the case, y=uMin is passed as output.

::

Extends from
`Modelica.Blocks.Interfaces.SISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SISO>`_
(Single Input Single Output continuous control block).

Parameters
~~~~~~~~~~

+--------+--------+-----------+-------------------------------+
| Type   | Name   | Default   | Description                   |
+========+========+===========+===============================+
| Real   | uMin   | 0         | Lower limit of input signal   |
+--------+--------+-----------+-------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u      | Connector of Real input signal    |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block MinLimiter "Limit the signal above a threshold"
     parameter Real uMin=0 "Lower limit of input signal";
      extends Modelica.Blocks.Interfaces.SISO;

    equation 
      y = smooth(0, noEvent( if u < uMin then uMin else u));
    end MinLimiter;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:17
2010.

.. |Modelica.Fluid.Valves.BaseClasses.PartialValve| image:: Modelica.Fluid.Valves.BaseClasses.PartialValveS.png
.. |Modelica.Fluid.Valves.BaseClasses.ValveCharacteristics| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristicsS.png
.. |image2| image:: Modelica.Fluid.Valves.BaseClasses.PartialValveS.png
.. |image3| image:: Modelica.Fluid.Valves.BaseClasses.ValveCharacteristicsS.png
.. |image4| image:: Modelica.Fluid.Valves.BaseClasses.PartialValveI.png
.. |Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiter| image:: Modelica.Fluid.Valves.BaseClasses.PartialValve.MinLimiterI.png
