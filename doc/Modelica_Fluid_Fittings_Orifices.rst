================================
Modelica.Fluid.Fittings.Orifices
================================

`Modelica.Fluid.Fittings <Modelica_Fluid_Fittings.html#Modelica.Fluid.Fittings>`_.Orifices
------------------------------------------------------------------------------------------

**Flow models for orifices**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| Name                                                                                                                                                                   | Description                        |
+========================================================================================================================================================================+====================================+
| |image1| `ThickEdgedOrifice <Modelica_Fluid_Fittings_Orifices.html#Modelica.Fluid.Fittings.Orifices.ThickEdgedOrifice>`_                                               | Thicked edged orifice flow model   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+

--------------

|image2| `Modelica.Fluid.Fittings.Orifices <Modelica_Fluid_Fittings_Orifices.html#Modelica.Fluid.Fittings.Orifices>`_.ThickEdgedOrifice
---------------------------------------------------------------------------------------------------------------------------------------

**Thicked edged orifice flow model**

.. figure:: Modelica.Fluid.Fittings.Bends.CurvedBendD.png
   :align: center
   :alt: Modelica.Fluid.Fittings.Orifices.ThickEdgedOrifice

   Modelica.Fluid.Fittings.Orifices.ThickEdgedOrifice

Information
~~~~~~~~~~~

::

This component models a **thick edged orifice** with sharp corners in
the overall flow regime for incompressible and single-phase fluid flow
through an arbitrary shaped cross sectional area (square, circular,
etc.) considering influence of surface roughness. It is expected that
also compressible fluid flow can be handled up to about Ma = 0.3. It is
assumed that neither mass nor energy is stored in this component. In the
model basically a function is called to compute the mass flow rate as a
function of pressure loss for a thick edged orifice. Also the inverse of
this function is defined, and a tool might use this inverse function
instead, in order to avoid the solution of a nonlinear equation.

The details of the model are described in the `documentation of the
underlying
function <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_.

::

Extends from
`Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Orifice\_i <Modelica_Fluid_Dissipation_Utilities_Icons_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Orifice_i>`_
(Icon for orifice),
`Modelica.Fluid.Interfaces.PartialPressureLoss <Modelica_Fluid_Interfaces.html#Modelica.Fluid.Interfaces.PartialPressureLoss>`_
(Base flow model for pressure loss functions with the same area at
port\_a and at port\_b).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Type                                                                                                                                                        | Name                                                                                                      | Default                    | Description                                                                               |
+=============================================================================================================================================================+===========================================================================================================+============================+===========================================================================================+
| replaceable package Medium                                                                                                                                  | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium in the component    |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `Geometry <Modelica_Fluid_Fittings_BaseClasses_Orifices_ThickEdgedOrifice.html#Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry>`_   | geometry                                                                                                  |                            | Geometry of thick edged orifice                                                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Assumptions**                                                                                                                                             |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                     | allowFlowReversal                                                                                         | system.allowFlowReversal   | = true to allow flow reversal, false restricts to design direction (port\_a -> port\_b)   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| **Advanced**                                                                                                                                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `AbsolutePressure <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.AbsolutePressure>`_                                 | dp\_start                                                                                                 | 0.01\*system.p\_start      | Guess value of dp = port\_a.p - port\_b.p [Pa]                                            |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                         | m\_flow\_start                                                                                            | system.m\_flow\_start      | Guess value of m\_flow = port\_a.m\_flow [kg/s]                                           |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| `MassFlowRate <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium.MassFlowRate>`_                                         | m\_flow\_small                                                                                            | system.m\_flow\_small      | Small mass flow rate for regularization of zero flow [kg/s]                               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Diagnostics                                                                                                                                                 |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                     | show\_T                                                                                                   | true                       | = true, if temperatures at port\_a and port\_b are computed                               |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+
| Boolean                                                                                                                                                     | show\_V\_flow                                                                                             | true                       | = true, if volume flow rate at inflowing port is computed                                 |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+----------------------------+-------------------------------------------------------------------------------------------+

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

    model ThickEdgedOrifice "Thicked edged orifice flow model"
      extends Modelica.Fluid.Dissipation.Utilities.Icons.PressureLoss.Orifice_i;
      extends Modelica.Fluid.Interfaces.PartialPressureLoss;

      parameter Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.Geometry
                                                                                geometry 
        "Geometry of thick edged orifice";

    protected 
      parameter Medium.AbsolutePressure dp_small=
                 Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_DP(
                 Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=1e-10),
                    Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(
                      rho=Medium.density(state_dp_small),
                      eta=Medium.dynamicViscosity(state_dp_small)),
                    m_flow_small) 
        "Default small pressure drop for regularization of laminar and zero flow (calculated from m_flow_small)";
    equation 
      if allowFlowReversal then
         m_flow = Modelica.Fluid.Fittings.BaseClasses.Orifices.ThickEdgedOrifice.massFlowRate(
                    dp, geometry, d_a, d_b, eta_a, eta_b, dp_small, m_flow_small);
      else
         m_flow = Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_MFLOW(
                     Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_con(
                       A_0=geometry.venaCrossArea,
                       A_1=geometry.crossArea,
                       C_0=geometry.venaPerimeter,
                       C_1=geometry.perimeter,
                       L=geometry.venaLength,
                       dp_smooth=dp_small),
                    Modelica.Fluid.Dissipation.PressureLoss.Orifice.dp_thickEdgedOverall_IN_var(rho=d_a, eta=eta_a), dp);
      end if;

    end ThickEdgedOrifice;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:18
2010.

.. |Modelica.Fluid.Fittings.Orifices.ThickEdgedOrifice| image:: Modelica.Fluid.Fittings.Orifices.ThickEdgedOrificeS.png
.. |image1| image:: Modelica.Fluid.Fittings.Orifices.ThickEdgedOrificeS.png
.. |image2| image:: Modelica.Fluid.Fittings.Orifices.ThickEdgedOrificeI.png
