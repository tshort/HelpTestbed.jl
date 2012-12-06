====================================================
Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend
====================================================

`Modelica.Fluid.Fittings.BaseClasses.Bends <Modelica_Fluid_Fittings_BaseClasses_Bends.html#Modelica.Fluid.Fittings.BaseClasses.Bends>`_.CurvedBend
--------------------------------------------------------------------------------------------------------------------------------------------------

**Pressure loss functions for curved bends**

Information
~~~~~~~~~~~

::

This package contains utility functions and records for the CurvedBend
fitting component.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                | Description                                                                       |
+=====================================================================================================================================================================================================================+===================================================================================+
| |image3| `massFlowRate <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRate>`_                                                              | Return mass flow rate m\_flow as function of pressure loss dp for a curved bend   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image4| `pressureLoss <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.pressureLoss>`_                                                              | Return pressure loss dp as function of mass flow rate m\_flow for a curved bend   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+
| |image5| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.Geometry>`_                                                                      | Geometric data for a curved bend                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------+

--------------

`Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend>`_.massFlowRate
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return mass flow rate m\_flow as function of pressure loss dp for a
curved bend**

Information
~~~~~~~~~~~

::

This function returns the mass flow rate m\_flow as function of pressure
loss dp for a curved bend. The details of the function are described
`here <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall>`_.

The bend characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| Type                                                                                                                                    | Name             | Default   | Description                                                                                    |
+=========================================================================================================================================+==================+===========+================================================================================================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_                                                                           | dp               |           | Pressure loss [Pa]                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.Geometry>`_   | geometry         |           | Geometry of bend                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                             | d\_a             |           | Density at port\_a when fluid is flowing from port\_a to port\_b [kg/m3]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                             | d\_b             |           | Density at port\_b when fluid is flowing from port\_b to port\_a [kg/m3]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                           | eta\_a           |           | Dynamic viscosity at port\_a when fluid is flowing from port\_a to port\_b [Pa.s]              |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                           | eta\_b           |           | Dynamic viscosity at port\_b when fluid is flowing from port\_b to port\_a [Pa.s]              |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_                                                           | dp\_small        |           | Small pressure drop used for regularization if m\_flow=f(...,dp\_small,..,dp) [Pa]             |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                   | m\_flow\_small   |           | Small mass flow rate used for regularization if dp=f\_inv(...,m\_flow\_small,m\_flow) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+

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
      "Return mass flow rate m_flow as function of pressure loss dp for a curved bend"
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
       m_flow := Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_MFLOW(
                   geometry,
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(dp, d_a, d_b, dp_small),
                       eta=Modelica.Fluid.Utilities.regStep(dp, eta_a, eta_b, dp_small)),
                   dp);

    end massFlowRate;

--------------

`Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend>`_.pressureLoss
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Return pressure loss dp as function of mass flow rate m\_flow for a
curved bend**

Information
~~~~~~~~~~~

::

This function returns the pressure loss dp as function of mass flow rate
m\_flow for a curved bend. The details of the function are described
`here <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall>`_.

The bend characteristic is valid for constant density and constant
dynamic viscosity. It can be approximately also used for compressible
media. This is performed by providing the upstream density and upstream
dynamic viscosity. In order to be able to regularize density and dynamic
viscosity around zero mass flow rate, the two quantities have to be
given if fluid flows from port\_a to port\_b (d\_a, eta\_a) and if fluid
flows from port\_b to port\_a (d\_b, eta\_b).

::

Inputs
~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| Type                                                                                                                                    | Name             | Default   | Description                                                                                    |
+=========================================================================================================================================+==================+===========+================================================================================================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                   | m\_flow          |           | Mass flow rate (= port\_a.m\_flow) [kg/s]                                                      |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.Geometry>`_   | geometry         |           | Geometry of bend                                                                               |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                             | d\_a             |           | Density at port\_a when fluid is flowing from port\_a to port\_b [kg/m3]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                                                                             | d\_b             |           | Density at port\_b when fluid is flowing from port\_b to port\_a [kg/m3]                       |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                           | eta\_a           |           | Dynamic viscosity at port\_a when fluid is flowing from port\_a to port\_b [Pa.s]              |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `DynamicViscosity <Modelica_SIunits.html#Modelica.SIunits.DynamicViscosity>`_                                                           | eta\_b           |           | Dynamic viscosity at port\_b when fluid is flowing from port\_b to port\_a [Pa.s]              |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_                                                           | dp\_small        |           | Small pressure drop used for regularization if m\_flow=f(...,dp\_small,..,dp) [Pa]             |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_                                                                   | m\_flow\_small   |           | Small mass flow rate used for regularization if dp=f\_inv(...,m\_flow\_small,m\_flow) [kg/s]   |
+-----------------------------------------------------------------------------------------------------------------------------------------+------------------+-----------+------------------------------------------------------------------------------------------------+

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
      "Return pressure loss dp as function of mass flow rate m_flow for a curved bend"

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
       dp := Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_DP(
                   geometry,
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var(
                       rho=Modelica.Fluid.Utilities.regStep(m_flow, d_a, d_b, m_flow_small),
                       eta=Modelica.Fluid.Utilities.regStep(m_flow, eta_a, eta_b, m_flow_small)),
                   m_flow);

    end pressureLoss;

--------------

|image6| `Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend>`_.Geometry
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Geometric data for a curved bend**

Information
~~~~~~~~~~~

::

This record is used to define the geometric (constant) data of a curved
bend. The details of the record are described
`here <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall>`_.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------+----------+-------------------+------------------------------------------------------------------+
| Type                                                                      | Name     | Default           | Description                                                      |
+===========================================================================+==========+===================+==================================================================+
| `Diameter <Modelica_SIunits.html#Modelica.SIunits.Diameter>`_             | d\_hyd   |                   | Hydraulic diameter [m]                                           |
+---------------------------------------------------------------------------+----------+-------------------+------------------------------------------------------------------+
| `Radius <Modelica_SIunits.html#Modelica.SIunits.Radius>`_                 | R\_0     |                   | Curvature radius [m]                                             |
+---------------------------------------------------------------------------+----------+-------------------+------------------------------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_                   | delta    | 1.5707963267949   | Angle of turning [rad]                                           |
+---------------------------------------------------------------------------+----------+-------------------+------------------------------------------------------------------+
| `Roughness <Modelica_Fluid_Types.html#Modelica.Fluid.Types.Roughness>`_   | K        | 2.5e-5            | Absolute roughness, with a default for a smooth steel pipe [m]   |
+---------------------------------------------------------------------------+----------+-------------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Geometry "Geometric data for a curved bend"
      import SI = Modelica.SIunits;
      extends Modelica.Icons.Record;

      SI.Diameter d_hyd "Hydraulic diameter";
      SI.Radius R_0 "Curvature radius";
      SI.Angle delta=1.5707963267949 "Angle of turning";
      Modelica.Fluid.Types.Roughness K=2.5e-5 
        "Absolute roughness, with a default for a smooth steel pipe";
    end Geometry;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:18
2010.

.. |Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRate| image:: Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRateS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.pressureLoss| image:: Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRateS.png
.. |Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.Geometry| image:: Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.GeometryS.png
.. |image3| image:: Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRateS.png
.. |image4| image:: Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRateS.png
.. |image5| image:: Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.GeometryS.png
.. |image6| image:: Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.GeometryI.png
