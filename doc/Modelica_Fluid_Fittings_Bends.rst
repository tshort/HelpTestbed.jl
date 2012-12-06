=============================
Modelica.Fluid.Fittings.Bends
=============================

`Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.Bends
---------------------------------------------------------------------------------------

**Flow models for bends**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| Name                                                                                                                                     | Description              |
+==========================================================================================================================================+==========================+
| |image2| `CurvedBend <Modelica_Fluid_Fittings_Bends.html#Modelica.Fluid.Fittings.Bends.CurvedBend>`_                                     | Curved bend flow model   |
+------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+
| |image3| `EdgedBend <Modelica_Fluid_Fittings_Bends.html#Modelica.Fluid.Fittings.Bends.EdgedBend>`_                                       | Edged bend flow model    |
+------------------------------------------------------------------------------------------------------------------------------------------+--------------------------+

--------------

|image4| `Modelica.Fluid.Fittings.Bends <Modelica_Fluid_Fittings_Bends.html#Modelica.Fluid.Fittings.Bends>`_.CurvedBend
-----------------------------------------------------------------------------------------------------------------------

**Curved bend flow model**

.. figure:: Modelica.Fluid.Fittings.Bends.CurvedBendD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.Bends.CurvedBend

   Modelica.Fluid.Fittings.Bends.CurvedBend

Information
~~~~~~~~~~~

::

This component models a **curved bend** in the overall flow regime for
incompressible and single-phase fluid flow through circular cross
sectional area considering surface roughness. It is expected that also
compressible fluid flow can be handled up to about Ma = 0.3. It is
assumed that neither mass nor energy is stored in this component. In the
model basically a function is called to compute the mass flow rate as a
function of pressure loss for a curved bend. Also the inverse of this
function is defined, and a tool might use this inverse function instead,
in order to avoid the solution of a nonlinear equation.

The details of the model are described in the `documentation of the
underlying
function <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_curvedOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend\_i <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i>`_
(Icon for bend),
`Modelica.Fluid.Interfaces.PartialPressureLoss <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialPressureLoss>`_
(Base flow model for pressure loss functions with the same area at
port\_a and at port\_b).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                    | Name                                                                                                      | Default                    | Description                                                                               |
+=========================================================================================================================================+===========================================================================================================+============================+===========================================================================================+
| replaceable package Medium                                                                                                              | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Bends_CurvedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.Geometry>`_   | geometry                                                                                                  |                            | Geometry of curved bend                                                                   |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                         |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                 | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_             | dp\_start                                                                                                 | 0.01\*system.p\_start      | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                     | m\_flow\_start                                                                                            | system.m\_flow\_start      | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                     | m\_flow\_small                                                                                            | system.m\_flow\_small      | Small mass flow rate for regularization of zero flow [kg/s]                               |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                             |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                 | show\_T                                                                                                   | true                       | = true, if temperatures at port\_a and port\_b are computed                               |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                 | show\_V\_flow                                                                                             | true                       | = true, if volume flow rate at inflowing port is computed                                 |
+-----------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+

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

    model CurvedBend "Curved bend flow model"
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i;
      extends Modelica.Fluid.Interfaces.PartialPressureLoss;

      parameter Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.Geometry geometry 
        "Geometry of curved bend";

    protected 
      parameter Medium.AbsolutePressure dp_small=
                 Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_DP(
                    geometry,
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var(
                      rho=Medium.density(state_dp_small),
                      eta=Medium.dynamicViscosity(state_dp_small)),
                    m_flow_small) 
        "Default small pressure drop for regularization of laminar and zero flow (calculated from m_flow_small)";

    equation 
      if allowFlowReversal then
         m_flow = Modelica.Fluid.Fittings.BaseClasses.Bends.CurvedBend.massFlowRate(
                    dp, geometry, d_a, d_b, eta_a, eta_b, dp_small, m_flow_small);
      else
         m_flow = Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_MFLOW(
                    geometry,
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_curvedOverall_IN_var(rho=d_a, eta=eta_a), dp);
      end if;

    end CurvedBend;

--------------

|image5| `Modelica.Fluid.Fittings.Bends <Modelica_Fluid_Fittings_Bends.html#Modelica.Fluid.Fittings.Bends>`_.EdgedBend
----------------------------------------------------------------------------------------------------------------------

**Edged bend flow model**

.. figure:: Modelica.Fluid.Fittings.Bends.CurvedBendD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.Bends.EdgedBend

   Modelica.Fluid.Fittings.Bends.EdgedBend

Information
~~~~~~~~~~~

::

This component models an **edged bend** in the overall flow regime for
incompressible and single-phase fluid flow through circular cross
sectional area considering surface roughness. It is expected that also
compressible fluid flow can be handled up to about Ma = 0.3. It is
assumed that neither mass nor energy is stored in this component. In the
model basically a function is called to compute the mass flow rate as a
function of pressure loss for an edged bend. Also the inverse of this
function is defined, and a tool might use this inverse function instead,
in order to avoid the solution of a nonlinear equation.

The details of the model are described in the `documentation of the
underlying
function <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Bend.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Bend.dp_edgedOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend\_i <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i>`_
(Icon for bend),
`Modelica.Fluid.Interfaces.PartialPressureLoss <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialPressureLoss>`_
(Base flow model for pressure loss functions with the same area at
port\_a and at port\_b).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                  | Name                                                                                                      | Default                    | Description                                                                               |
+=======================================================================================================================================+===========================================================================================================+============================+===========================================================================================+
| replaceable package Medium                                                                                                            | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Bends_EdgedBend.html#Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend.Geometry>`_   | geometry                                                                                                  |                            | Geometry of curved bend                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                               | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_           | dp\_start                                                                                                 | 0.01\*system.p\_start      | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                   | m\_flow\_start                                                                                            | system.m\_flow\_start      | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                   | m\_flow\_small                                                                                            | system.m\_flow\_small      | Small mass flow rate for regularization of zero flow [kg/s]                               |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                               | show\_T                                                                                                   | true                       | = true, if temperatures at port\_a and port\_b are computed                               |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                               | show\_V\_flow                                                                                             | true                       | = true, if volume flow rate at inflowing port is computed                                 |
+---------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+

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

    model EdgedBend "Edged bend flow model"
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Bend_i;
      extends Modelica.Fluid.Interfaces.PartialPressureLoss;

      parameter Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend.Geometry geometry 
        "Geometry of curved bend";

    protected 
      parameter Medium.AbsolutePressure dp_small=
                 Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_DP(
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con(
                       d_hyd=geometry.d_hyd,
                       delta=geometry.delta,
                       K=geometry.K),
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var(
                      rho=Medium.density(state_dp_small),
                      eta=Medium.dynamicViscosity(state_dp_small)),
                    m_flow_small) 
        "Default small pressure drop for regularization of laminar and zero flow (calculated from m_flow_small)";

    equation 
      if allowFlowReversal then
         m_flow = Modelica.Fluid.Fittings.BaseClasses.Bends.EdgedBend.massFlowRate(
                    dp, geometry, d_a, d_b, eta_a, eta_b, dp_small, m_flow_small);
      else
         m_flow = Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_MFLOW(
                   Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_con(
                       d_hyd=geometry.d_hyd,
                       delta=geometry.delta,
                       K=geometry.K),
                    Modelica.Fluid.Dissipation.PressureLoss.Bend.dp_edgedOverall_IN_var(rho=d_a, eta=eta_a), dp);
      end if;

    end EdgedBend;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:17
2010.

.. |Modelica.Fluid.Fittings.Bends.CurvedBend| image:: Modelica.Fluid.Fittings.Bends.CurvedBendS.png
.. |Modelica.Fluid.Fittings.Bends.EdgedBend| image:: Modelica.Fluid.Fittings.Bends.CurvedBendS.png
.. |image2| image:: Modelica.Fluid.Fittings.Bends.CurvedBendS.png
.. |image3| image:: Modelica.Fluid.Fittings.Bends.CurvedBendS.png
.. |image4| image:: Modelica.Fluid.Fittings.Bends.CurvedBendI.png
.. |image5| image:: Modelica.Fluid.Fittings.Bends.CurvedBendI.png
