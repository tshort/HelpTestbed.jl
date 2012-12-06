==============================================================
Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice
==============================================================

`Modelica.Fluid.Fittings.BaseClasses.Orifices <Modelica_Fluid_Fittings_BaseClasses_Orifices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices>`_.ThickEdgedOrifice
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss functions for thick edged orifices**

Information
~~~~~~~~~~~

::

This package contains utility functions and records for the
ThickEdgedOrifice fitting component.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                              | Description                                                                               |
+===================================================================================================================================================================================================================================================+===========================================================================================+
| |image4| `massFlowRate <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRate>`_                                                                        | Return mass flow rate m\_flow as function of pressure loss dp for a thick edged orifice   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image5| `pressureLoss <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.pressureLoss>`_                                                                        | Return pressure loss dp as function of mass flow rate m\_flow for a thick edged orifice   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image6| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry>`_                                                                                | Geometric data for a thick edged orifice                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+
| |image7| `Choices <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice_Choices.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices>`_                                                                          | Choices for Geometry                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice>`_.massFlowRate
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate m\_flow as function of pressure loss dp for a
thick edged orifice**

Information
~~~~~~~~~~~

::

This function returns the mass flow rate m\_flow as function of pressure
loss dp for a thick edged orifice. The details of the function are
described
`here <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_.

The orifice characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| Type                                                                                                                                                        | Name             | Default   | Description                                                                                    |
+=============================================================================================================================================================+==================+===========+================================================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                                               | dp               |           | Pressure loss [Pa]                                                                             |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry>`_   | geometry         |           | Geometry of bend                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                                 | d\_a             |           | Density at port\_a when fluid is flowing from port\_a to port\_b [kg/m3]                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                                 | d\_b             |           | Density at port\_b when fluid is flowing from port\_b to port\_a [kg/m3]                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                               | eta\_a           |           | Dynamic viscosity at port\_a when fluid is flowing from port\_a to port\_b [Pa.s]              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                               | eta\_b           |           | Dynamic viscosity at port\_b when fluid is flowing from port\_b to port\_a [Pa.s]              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_                                                                               | dp\_small        |           | Small pressure drop used for regularization if m\_flow=f(...,dp\_small,..,dp) [Pa]             |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                       | m\_flow\_small   |           | Small mass flow rate used for regularization if dp=f\_inv(...,m\_flow\_small,m\_flow) [kg/s]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+-----------+---------------------------------------------+
| Type                                                                    | Name      | Description                                 |
+=========================================================================+===========+=============================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | m\_flow   | Mass flow rate (= port\_a.m\_flow) [kg/s]   |
+-------------------------------------------------------------------------+-----------+---------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function massFlowRate 
      "Return mass flow rate m_flow as function of pressure loss dp for a thick edged orifice"
        import SI = Modelica.SIunits;
      input SI.Pressure dp "Pressure loss";
      input Geometry geometry "Geometry of bend";
      input SI.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      input SI.Density d_b 
        "Density at port_b when fluid is flowing from port_b to port_a";
      input SI.DynamicViscosity eta_a 
        "Dynamic viscosity at port_a when fluid is flowing from port_a to port_b";
      input SI.DynamicViscosity eta_b 
        "Dynamic viscosity at port_b when fluid is flowing from port_b to port_a";
      input SI.AbsolutePressure dp_small 
        "Small pressure drop used for regularization if m_flow=f(...,dp_small,..,dp)";
      input SI.MassFlowRate m_flow_small 
        "Small mass flow rate used for regularization if dp=f_inv(...,m_flow_small,m_flow)";
      output SI.MassFlowRate m_flow "Mass flow rate (= port_a.m_flow)";
    algorithm 
       m_flow := Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW(
                   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=dp_small),
                   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(dp, d_a, d_b, dp_small),
                       eta=Modelica.Fluid.Utilities.regStep(dp, eta_a, eta_b, dp_small)),
                   dp);
    end massFlowRate;

--------------

`Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice>`_.pressureLoss
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure loss dp as function of mass flow rate m\_flow for a
thick edged orifice**

Information
~~~~~~~~~~~

::

This function returns the pressure loss dp as function of mass flow rate
m\_flow for a thick edged orifice. The details of the function are
described
`here <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_.

The orifice characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| Type                                                                                                                                                        | Name             | Default   | Description                                                                                    |
+=============================================================================================================================================================+==================+===========+================================================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                       | m\_flow          |           | Mass flow rate (= port\_a.m\_flow) [kg/s]                                                      |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry>`_   | geometry         |           | Geometry of bend                                                                               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                                 | d\_a             |           | Density at port\_a when fluid is flowing from port\_a to port\_b [kg/m3]                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                                                 | d\_b             |           | Density at port\_b when fluid is flowing from port\_b to port\_a [kg/m3]                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                               | eta\_a           |           | Dynamic viscosity at port\_a when fluid is flowing from port\_a to port\_b [Pa.s]              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                                               | eta\_b           |           | Dynamic viscosity at port\_b when fluid is flowing from port\_b to port\_a [Pa.s]              |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_                                                                               | dp\_small        |           | Small pressure drop used for regularization if m\_flow=f(...,dp\_small,..,dp) [Pa]             |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                                       | m\_flow\_small   |           | Small mass flow rate used for regularization if dp=f\_inv(...,m\_flow\_small,m\_flow) [kg/s]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+----------------------+
| Type                                                            | Name   | Description          |
+=================================================================+========+======================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | dp     | Pressure loss [Pa]   |
+-----------------------------------------------------------------+--------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function pressureLoss 
      "Return pressure loss dp as function of mass flow rate m_flow for a thick edged orifice"

        import SI = Modelica.SIunits;
      input SI.MassFlowRate m_flow "Mass flow rate (= port_a.m_flow)";
      input Geometry geometry "Geometry of bend";
      input SI.Density d_a 
        "Density at port_a when fluid is flowing from port_a to port_b";
      input SI.Density d_b 
        "Density at port_b when fluid is flowing from port_b to port_a";
      input SI.DynamicViscosity eta_a 
        "Dynamic viscosity at port_a when fluid is flowing from port_a to port_b";
      input SI.DynamicViscosity eta_b 
        "Dynamic viscosity at port_b when fluid is flowing from port_b to port_a";
      input SI.AbsolutePressure dp_small 
        "Small pressure drop used for regularization if m_flow=f(...,dp_small,..,dp)";
      input SI.MassFlowRate m_flow_small 
        "Small mass flow rate used for regularization if dp=f_inv(...,m_flow_small,m_flow)";
      output SI.Pressure dp "Pressure loss";
    algorithm 
       dp := Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP(
               Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=dp_small),
                   Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(m_flow, d_a, d_b, m_flow_small),
                       eta=Modelica.Fluid.Utilities.regStep(m_flow, eta_a, eta_b, m_flow_small)),
                   m_flow);

    end pressureLoss;

--------------

|image8| `Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice>`_.Geometry
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Geometric data for a thick edged orifice**

Information
~~~~~~~~~~~

::

This record is used to define the geometric (constant) data of a thick
edged orifice. The details of the record are described
`here <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| Type                                                        | Name            | Default   | Description                                     |
+=============================================================+=================+===========+=================================================+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | crossArea       |           | Inner cross sectional area [m2]                 |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | perimeter       |           | Inner perimeter [m]                             |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_       | venaCrossArea   |           | Cross sectional area of vena contraction [m2]   |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | venaPerimeter   |           | Perimeter of vena contraction [m]               |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+
| `Length <Modelica_SIunits.html#Modelica.SIunits.Length>`_   | venaLength      |           | Length of vena contraction [m]                  |
+-------------------------------------------------------------+-----------------+-----------+-------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Geometry "Geometric data for a thick edged orifice"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Record;

      SI.Area crossArea "Inner cross sectional area";
      SI.Length perimeter "Inner perimeter";

      SI.Area venaCrossArea "Cross sectional area of vena contraction";
      SI.Length venaPerimeter "Perimeter of vena contraction";
      SI.Length venaLength "Length of vena contraction";

    end Geometry;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:18
2010.

.. |Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRate| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRateS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.pressureLoss| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRateS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.GeometryS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Choices| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.ChoicesS.png
.. |image4| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRateS.png
.. |image5| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRateS.png
.. |image6| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.GeometryS.png
.. |image7| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.ChoicesS.png
.. |image8| image:: Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.GeometryI.png
