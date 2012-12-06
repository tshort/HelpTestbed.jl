===========================================================================
Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve
===========================================================================

|Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss>`_.Valve
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                                                                                                                                              | Description   |
+===================================================================================================================================================================================================================================================================================================================================+===============+
| |image2| `dp\_severalGeometryOverall <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp_severalGeometryOverall>`_                                                                                                   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

|image3| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Valve.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve>`_.dp\_severalGeometryOverall
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of pressure loss for a valve with different geometries at
overall flow regime for incompressible and single-phase fluid flow in
dependence of its opening.

Restriction
^^^^^^^^^^^

This function shall be used inside of the restricted limits according to
the referenced literature.

-  **developed fluid flow**
-  **ball valve**
-  **diaphragm valve**
-  **butterfly valve**
-  **gate valve**
-  **sluice valve**

Geometry
^^^^^^^^

Wide variations in valve geometry are possible and a manufacturer will
not necessarily maintain geometric similarity between valves of the same
type but of different size. Here pressure loss can be estimated for the
following types of a valve:

-  **ball valve**
-  **diaphragm valve**
-  **butterfly valve**
-  **gate valve**
-  **sluice valve**

Calculation
^^^^^^^^^^^

The mass flow rate **m\_flow** for valves out of pressure loss is
determined by:

::

        m_flow = [rho * dp * Av^2 / (zeta_TOT/2]^0.5
        m_flow = (2/zeta_TOT)^0.5 * Av * (rho * dp)^0.5
        m_flow = valveCharacteristic * Av * (rho * dp)^0.5

with

+---------------------------+---------------------------------------------------------------+
| **rho**                   | as density of fluid [kg/m3],                                  |
+---------------------------+---------------------------------------------------------------+
| **Av**                    | as (metric) flow coefficient (cross sectional area) [m^2],    |
+---------------------------+---------------------------------------------------------------+
| **m\_flow**               | as mass flow rate [kg/s],                                     |
+---------------------------+---------------------------------------------------------------+
| **valveCharacteristic**   | as coefficient of a valve in dependence of its opening [-],   |
+---------------------------+---------------------------------------------------------------+
| **velocity**              | as mean velocity [m/s],                                       |
+---------------------------+---------------------------------------------------------------+
| **zeta\_TOT**             | as pressure loss coefficient [-].                             |
+---------------------------+---------------------------------------------------------------+

The **valveCharacteristic** is determined out of a correlation for the
pressure loss coefficient (**zeta\_TOT**) in dependence of its opening.
The reason for introducing an additional variable
**valveCharacteristic** is a different definition of the following
pressure loss correlations of valves.

Verification
^^^^^^^^^^^^

The pressure loss coefficient (**zeta\_TOT**) of a valve with different
geometries are shown in dependence of the **opening** in the figure
below.

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/valve/fig_valve_dp_severalGeometryOverall_zetaVsOpening.png
   :align: center
   :alt: fig\_valve\_dp\_severalGeometryOverall\_zetaVsOpening

   fig\_valve\_dp\_severalGeometryOverall\_zetaVsOpening
Note that the pressure loss coefficients (**zeta\_TOT**) are numerically
optimised for very small openings (opening ≤ 5%). At openings smaller
than 5% the pressure loss coefficient is smoothly set to a maximum value
(**zeta\_TOT\_max**) to be adjusted as parameter. Therefore a very small
leakage mass flow rate can be adjusted for a given pressure difference
at almost closed valves. A very small leakage mass flow rate can often
be neglected in system simulation with valves, whereas the numerical
behaviour of the simulation is improved.

The mass flow rate of different valves at a constant opening of 50% in
dependence of pressure loss is shown in the figure below.

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/valve/fig_valve_dp_severalGeometryOverall_MFLOWvsDP.png
   :align: center
   :alt: fig\_valve\_dp\_severalGeometryOverall\_MFLOWvsDP

   fig\_valve\_dp\_severalGeometryOverall\_MFLOWvsDP
References
^^^^^^^^^^

Miller,D.S.:
    **Internal flow systems**. Volume 5th of BHRA Fluid Engineering
    Series. BHRA Fluid Engineering, 1978.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Valve.dp\_severalGeometryOverall| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image2| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image3| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
