=============================================================================
Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice
=============================================================================

|Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss>`_.Orifice
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                                                                                                                                     | Description   |
+==========================================================================================================================================================================================================================================================================================================================+===============+
| |image3| `dp\_suddenChange <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_suddenChange>`_                                                                                                          |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image4| `dp\_thickEdgedOverall <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp_thickEdgedOverall>`_                                                                                                |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

|image5| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice>`_.dp\_suddenChange
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Restriction
^^^^^^^^^^^

This function shall be used within the restricted limits according to
the referenced literature.

-  **Smooth surface**
-  **Turbulent flow regime**
-  **Reynolds number for sudden expansion Re > 3.3e3** *[Idelchik 2006,
   p. 208, diag. 4-1]*
-  **Reynolds number for sudden contraction Re > 1e4** *[Idelchik 2006,
   p. 216-217, diag. 4-9]*

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/orifice/pic_suddenChangeSection.png
   :align: center
   :alt: pic\_suddenChangeSection

   pic\_suddenChangeSection
Calculation
^^^^^^^^^^^

The local pressure loss **dp** is generally determinated by:

::

        dp = 0.5 * zeta_LOC * rho * |v_1|*v_1

with

+-----------------+-----------------------------------------------------------------+
| **rho**         | as density of fluid [kg/m3],                                    |
+-----------------+-----------------------------------------------------------------+
| **v\_1**        | as average flow velocity in small cross sectional area [m/s].   |
+-----------------+-----------------------------------------------------------------+
| **zeta\_LOC**   | as local resistance coefficient [-],                            |
+-----------------+-----------------------------------------------------------------+

The local resistance coefficient **zeta\_LOC** of a sudden expansion can
be calculated for different ratios of cross sectional areas by:

::

        zeta_LOC = (1 - A_1/A_2)^2  [Idelchik 2006, p. 208, diag. 4-1] 

and for sudden contraction:

::

        zeta_LOC = 0.5*(1 - A_1/A_2)^0.75  [Idelchik 2006, p. 216-217, diag. 4-9] 

with

**A\_1**

small cross sectional area [m^2],

**A\_2**

large cross sectional area [m^2]

.

Verification
^^^^^^^^^^^^

The local resistance coefficient **zeta\_LOC** of a sudden expansion in
dependence of the cross sectional area ratio **A\_1/A\_2** is shown in
the figure below.

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/orifice/fig_orifice_suddenChangeExpansion.png
   :align: center
   :alt: fig\_orifice\_suddenChangeExpansion

   fig\_orifice\_suddenChangeExpansion
The local resistance coefficient **zeta\_LOC** of a sudden contraction
in dependence of the cross sectional area ratio **A\_1/A\_2** is shown
in the figure below.

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/orifice/fig_orifice_suddenChangeContraction.png
   :align: center
   :alt: fig\_orifice\_suddenChangeContraction

   fig\_orifice\_suddenChangeContraction
References
^^^^^^^^^^

Elmquist, H., M.Otter and S.E. Cellier:
    **Inline integration: A new mixed symbolic / numeric approach for
    solving differential-algebraic equation systems.**. In Proceedings
    of European Simulation MultiConference, Praque, 1995.
Idelchik,I.E.:
    **Handbook of hydraulic resistance**. Jaico Publishing House,
    Mumbai, 3rd edition, 2006.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image6| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_PressureLoss_Orifice.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice>`_.dp\_thickEdgedOverall
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Restriction
^^^^^^^^^^^

This function shall be used within the restricted limits according to
the referenced literature.

-  **Reynolds number (for vena contraction) Re > 1e3** *[Idelchik 2006,
   p. 222, diag. 4-15]*
-  **Relative length of vena contraction (L/d\_hyd\_0) > 0.015**
   *[Idelchik 2006, p. 222, diag. 4-15]*
-  **Darcy friction factor lambda\_FRI = 0.02** *[Idelchik 2006, p. 222,
   sec. 4-15]*

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/orifice/pic_thickEdged.png
   :align: center
   :alt: pic\_thickEdged

   pic\_thickEdged
Calculation
^^^^^^^^^^^

The pressure loss **dp** for a thick edged orifice is determined by:

::

        dp = zeta_TOT * (rho/2) * (velocity_1)^2

with

+-------------------+---------------------------------------------------------+
| **rho**           | as density of fluid [kg/m3],                            |
+-------------------+---------------------------------------------------------+
| **velocity\_1**   | as mean velocity in large cross sectional area [m/s],   |
+-------------------+---------------------------------------------------------+
| **zeta\_TOT**     | as pressure loss coefficient [-].                       |
+-------------------+---------------------------------------------------------+

The pressure loss coefficient **zeta\_TOT** of a thick edged orifice can
be calculated for different cross sectional areas **A\_0** and relative
length of orifice **l\_bar**=L/d\_hyd\_0 by:

::

        zeta_TOT = (0.5*(1 - A_0/A_1)^0.75 + tau*(1 - A_0/A_1)^1.375 + (1 - A_0/A_1)^2 + lambda_FRI*l_bar)*(A_1/A_0)^2 [Idelchik 2006, p. 222, diag. 4-15] 

with

+-------------------+--------------------------------------------------+
| **A\_0**          | cross sectional area of vena contraction [m2],   |
+-------------------+--------------------------------------------------+
| **A\_1**          | large cross sectional area of orifice [m2],      |
+-------------------+--------------------------------------------------+
| **d\_hyd\_0**     | hydraulic diameter of vena contraction [m],      |
+-------------------+--------------------------------------------------+
| **lambda\_FRI**   | as constant Darcy friction factor [-],           |
+-------------------+--------------------------------------------------+
| **l\_bar**        | relative length of orifice [-],                  |
+-------------------+--------------------------------------------------+
| **L**             | length of vena contraction [m],                  |
+-------------------+--------------------------------------------------+
| **tau**           | geometry parameter [-].                          |
+-------------------+--------------------------------------------------+

The geometry factor **tau** is determined by *[Idelchik 2006, p. 219,
diag. 4-12]*:

::

        tau = (2.4 - l_bar)*10^(-phi)
        phi = 0.25 + 0.535*l_bar^8 / (0.05 + l_bar^8) .

Verification
^^^^^^^^^^^^

The pressure loss coefficient **zeta\_TOT** of a thick edged orifice in
dependence of a relative length **(l\_bar = L /d\_hyd)** with different
ratios of cross sectional areas **A\_0/A\_1** is shown in the figure
below.

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/orifice/fig_orifice_thickEdgedOverall_ZETAvsLENGHT.png
   :align: center
   :alt: fig\_orifice\_thickEdgedOverall\_ZETAvsLENGHT

   fig\_orifice\_thickEdgedOverall\_ZETAvsLENGHT
**Incompressible case** [Pressure loss = f(m\_flow)]:

The pressure loss **DP** of an thick edged orifice in dependence of the
mass flow rate **m\_flow** of water for different ratios **A\_0/A\_1**
(where **A\_0** = 0.001 m^2) is shown in the figure below.

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/orifice/fig_orifice_thickEdgedOverall_DPvsMFLOW.png
   :align: center
   :alt: fig\_orifice\_thickEdgedOverall\_DPvsMFLOW

   fig\_orifice\_thickEdgedOverall\_DPvsMFLOW
**And for the compressible case** [Mass flow rate = f(dp)]:

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/orifice/fig_orifice_thickEdgedOverall_MFLOWvsDP.png
   :align: center
   :alt: fig\_orifice\_thickEdgedOverall\_MFLOWvsDP

   fig\_orifice\_thickEdgedOverall\_MFLOWvsDP
References
^^^^^^^^^^

Elmquist,H., M.Otter and S.E. Cellier:
    **Inline integration: A new mixed symbolic / numeric approach for
    solving differential-algebraic equation systems.**. In Proceedings
    of European Simulation MultiConference, Praque, 1995.
Idelchik,I.E.:
    **Handbook of hydraulic resistance**. Jaico Publishing House,Mumbai,
    3rd edition, 2006.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp\_suddenChange| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.PressureLoss.Orifice.dp\_thickEdgedOverall| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image3| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image4| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image5| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |image6| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
