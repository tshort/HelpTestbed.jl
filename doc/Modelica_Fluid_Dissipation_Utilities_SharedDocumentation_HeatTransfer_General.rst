=============================================================================
Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General
=============================================================================

|Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer>`_.General
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                                                                                                                                                    | Description   |
+=========================================================================================================================================================================================================================================================================================================================================+===============+
| |image2| `kc\_approxForcedConvection <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc_approxForcedConvection>`_                                                                                                     |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

|image3| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_General.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General>`_.kc\_approxForcedConvection
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Approximate calculation of the mean convective heat transfer coefficient
**kc** for forced convection with a fully developed fluid flow in a
turbulent regime.

Functions **kc\_approxForcedConvection** and **kc\_approxForcedConvection\_KC**
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There are basically three differences:

-  The function **kc\_approxForcedConvection** is using
   **kc\_approxForcedConvection\_KC** but offers additional output
   variables like e.g. Reynolds number or Nusselt number and failure
   status (an output of **1** means that the function is not valid for
   the inputs).
-  Generally the function **kc\_approxForcedConvection\_KC** is
   numerically best used for the calculation of the mean convective heat
   transfer coefficient **kc** at known mass flow rate.
-  You can perform an inverse calculation from
   **kc\_approxForcedConvection\_KC**, where an unknown mass flow rate
   is calculated out of a given mean convective heat transfer
   coefficient **kc**

Restriction
^^^^^^^^^^^

-  Constant wall temperature **or** constant heat flux
-  Turbulent regime (Reynolds number 2500 < Re < 1e6)
-  Prandtl number 0.5 ≤ Pr ≤ 500

Calculation
^^^^^^^^^^^

The mean convective heat transfer coefficient **kc** is approximated
through different Nusselt number **Nu** correlations out of *[Bejan
2003, p. 424 ff]*.
 Roughest approximation according to Dittus/Boelter (1930):

::

        Nu_1 = 0.023 * Re^(4/5) * Pr^(exp_Pr)

Middle approximation according to Sieder/Tate (1936) considering the
temperature dependence of the fluid properties:

::

        Nu_2 = 0.023 * Re^(4/5) * Pr^(1/3) * (eta/eta_wall)^(0.14)

Finest approximation according to Gnielinski (1976):

::

        Nu_3 = 0.0214 * [Re^(0.8) - 100] * Pr^(0.4) for Pr ≤ 1.5
             = 0.012 * [Re^(0.87) - 280] * Pr^(0.4) for Pr > 1.5

The mean convective heat transfer coefficient **kc** is calculated by:

::

        kc =  Nu * lambda / d_hyd

with

+-----------------+--------------------------------------------------------------------------------------------------+
| **eta**         | as dynamic viscosity of fluid [Pa.s],                                                            |
+-----------------+--------------------------------------------------------------------------------------------------+
| **eta\_wall**   | as dynamic viscosity of fluid at wall temperature [Pa.s],                                        |
+-----------------+--------------------------------------------------------------------------------------------------+
| **exp\_Pr**     | as exponent for Prandtl number w.r.t. Dittus/Boelter (0.4 for heating or 0.3 for cooling) [-],   |
+-----------------+--------------------------------------------------------------------------------------------------+
| **kc**          | as mean convective heat transfer coefficient [W/(m2.K)],                                         |
+-----------------+--------------------------------------------------------------------------------------------------+
| **lambda**      | as heat conductivity of fluid [W/(m.K)],                                                         |
+-----------------+--------------------------------------------------------------------------------------------------+
| **d\_hyd**      | as hydraulic diameter [m],                                                                       |
+-----------------+--------------------------------------------------------------------------------------------------+
| **Nu\_1/2/3**   | as mean Nusselt number [-],                                                                      |
+-----------------+--------------------------------------------------------------------------------------------------+
| **Pr**          | as Prandtl number [-],                                                                           |
+-----------------+--------------------------------------------------------------------------------------------------+
| **Re**          | as Reynolds number [-].                                                                          |
+-----------------+--------------------------------------------------------------------------------------------------+

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** for Prandtl numbers of different fluids is
shown in the figure below.

**Dittus/Boelter** (Target = 1)

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/general/fig_kc_approxForcedConvection_T1.png
   :align: center
   :alt: fig\_kc\_approxForcedConvection\_T1

   fig\_kc\_approxForcedConvection\_T1
**Sieder/Tate** (Target = 2)

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/general/fig_kc_approxForcedConvection_T2.png
   :align: center
   :alt: fig\_kc\_approxForcedConvection\_T2

   fig\_kc\_approxForcedConvection\_T2
**Gnielinski** (Target = 3)

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/general/fig_kc_approxForcedConvection_T3.png
   :align: center
   :alt: fig\_kc\_approxForcedConvection\_T3

   fig\_kc\_approxForcedConvection\_T3
Note that all fluid properties shall be calculated with the mean
temperature of the fluid between the entrance and the outlet of the
generic device.

References
^^^^^^^^^^

Bejan,A.:
    **Heat transfer handbook**. Wiley, 2003.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.General.kc\_approxForcedConvection| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image2| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image3| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
