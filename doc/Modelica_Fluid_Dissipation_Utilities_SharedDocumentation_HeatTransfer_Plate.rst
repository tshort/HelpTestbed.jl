===========================================================================
Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate
===========================================================================

|Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer>`_.Plate
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                                                                                                       | Description   |
+============================================================================================================================================================================================================================================================================================+===============+
| |image4| `kc\_laminar <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_laminar>`_                                                                                          |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image5| `kc\_overall <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_overall>`_                                                                                          |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image6| `kc\_turbulent <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_turbulent>`_                                                                                      |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

|image7| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate>`_.kc\_laminar
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of the mean convective heat transfer coefficient **kc** for
a laminar fluid flow over an even surface.

Functions **kc\_laminar** and **kc\_laminar\_KC**
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There are basically three differences:

-  The function **kc\_laminar** is using **kc\_laminar\_KC** but offers
   additional output variables like e.g. Reynolds number or Nusselt
   number and failure status (an output of **1** means that the function
   is not valid for the inputs).
-  Generally the function **kc\_laminar\_KC** is numerically best used
   for the calculation of the mean convective heat transfer coefficient
   **kc** at known mass flow rate.
-  You can perform an inverse calculation from **kc\_laminar\_KC**,
   where an unknown mass flow rate is calculated out of a given mean
   convective heat transfer coefficient **kc**

Restriction
^^^^^^^^^^^

-  laminar regime (Reynolds number ≤ 1e5)
-  Prandtl number 0.6 ≤ Pr ≤ 2000

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/plate/pic_plate.png
   :align: center
   :alt: pic\_plate

   pic\_plate
Calculation
^^^^^^^^^^^

The mean convective heat transfer coefficient **kc** for flat plate is
calculated through the corresponding Nusselt number **Nu\_lam**
according to *[VDI 2002, p. Gd 1, eq. 1]* :

::

        Nu_lam = 0.664 * Re^(0.5) * (Pr)^(1/3)

and the corresponding mean convective heat transfer coefficient **kc**:

::

        kc =  Nu_lam * lambda / L

with

+---------------------------+--------------------------------------------------------------+
| **cp**                    | as specific heat capacity at constant pressure [J/(kg.K)],   |
+---------------------------+--------------------------------------------------------------+
| **eta**                   | as dynamic viscosity of fluid [Pa.s],                        |
+---------------------------+--------------------------------------------------------------+
| **kc**                    | as mean convective heat transfer coefficient [W/(m2.K)],     |
+---------------------------+--------------------------------------------------------------+
| **lambda**                | as heat conductivity of fluid [W/(m.K)],                     |
+---------------------------+--------------------------------------------------------------+
| **L**                     | as length of plate [m],                                      |
+---------------------------+--------------------------------------------------------------+
| **Nu\_lam**               | as mean Nusselt number for laminar regime [-],               |
+---------------------------+--------------------------------------------------------------+
| **Pr = eta\*cp/lambda**   | as Prandtl number [-],                                       |
+---------------------------+--------------------------------------------------------------+
| **rho**                   | as fluid density [kg/m3],                                    |
+---------------------------+--------------------------------------------------------------+
| **Re = rho\*v\*L/eta**    | as Reynolds number [-].                                      |
+---------------------------+--------------------------------------------------------------+

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu** in the laminar regime representing the
mean convective heat transfer coefficient **kc** for Prandtl numbers of
different fluids is shown in the figure below.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/plate/fig_plate_kc_laminar.png
   :align: center
   :alt: fig\_plate\_kc\_laminar

   fig\_plate\_kc\_laminar
Note that this function is best used in the laminar regime up to a
Reynolds number **Re** smaller than 2300. There is a deviation w.r.t.
literature due to the neglect of the turbulence influence in the
transition regime even though this function is used inside its cited
restrictions for a higher Reynolds number. The function
`kc\_overall <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc_overall>`_
is recommended for the simulation of a Reynolds number higher than 2300.

References
^^^^^^^^^^

VDI:
    **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image8| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate>`_.kc\_overall
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of the mean convective heat transfer coefficient **kc** for
a laminar or turbulent fluid flow over an even surface.

Functions **kc\_overall** and **kc\_overall\_KC**
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There are basically three differences:

-  The function **kc\_overall** is using **kc\_overall\_KC** but offers
   additional output variables like e.g. Reynolds number or Nusselt
   number and failure status (an output of **1** means that the function
   is not valid for the inputs).
-  Generally the function **kc\_overall\_KC** is numerically best used
   for the calculation of the mean convective heat transfer coefficient
   **kc** at known mass flow rate.
-  You can perform an inverse calculation from **kc\_overall\_KC**,
   where an unknown mass flow rate is calculated out of a given mean
   convective heat transfer coefficient **kc**

Restriction
^^^^^^^^^^^

-  constant wall temperature
-  overall regime (Reynolds number 1e1 < Re < 1e7)
-  Prandtl number 0.6 ≤ Pr ≤ 2000

Geometry and Calculation
^^^^^^^^^^^^^^^^^^^^^^^^

This heat transfer function enables a calculation of heat transfer
coefficient for laminar and turbulent flow regime. The geometry,
constant and fluid parameters of the function are the same as for
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_laminar>`_
and
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.HeatTransfer.Plate.kc_turbulent>`_.

The calculation conditions for laminar and turbulent flow is equal to
the calculation in **kc\_laminar** and **kc\_turbulent**. A smooth
transition between both functions is carried out between 1e5 ≤ Re ≤ 5e5
(see figure below).

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu = sqrt(Nu\_lam^2 + Nu\_turb^2)**
representing the mean convective heat transfer coefficient **kc** for
Prandtl numbers of different fluids is shown in the figure below.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/plate/fig_plate_kc_overall.png
   :align: center
   :alt: fig\_plate\_kc\_overall

   fig\_plate\_kc\_overall
References
^^^^^^^^^^

VDI:
    **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image9| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_Plate.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate>`_.kc\_turbulent
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of the mean convective heat transfer coefficient **kc** for
a hydrodynamically developed turbulent fluid flow over an even surface.

Functions **kc\_turbulent** and **kc\_turbulent\_KC**
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There are basically three differences:

-  The function **kc\_turbulent** is using **kc\_turbulent\_KC** but
   offers additional output variables like e.g. Reynolds number or
   Nusselt number and failure status (an output of **1** means that the
   function is not valid for the inputs).
-  Generally the function **kc\_turbulent\_KC** is numerically best used
   for the calculation of the mean convective heat transfer coefficient
   **kc** at known mass flow rate.
-  You can perform an inverse calculation from **kc\_turbulent\_KC**,
   where an unknown mass flow rate is calculated out of a given mean
   convective heat transfer coefficient **kc**

Restriction
^^^^^^^^^^^

-  constant wall temperature
-  turbulent regime (Reynolds number 5e5 < Re < 1e7)
-  Prandtl number 0.6 ≤ Pr ≤ 2000

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/plate/pic_plate.png
   :align: center
   :alt: pic\_plate

   pic\_plate
Calculation
^^^^^^^^^^^

The mean convective heat transfer coefficient **kc** for flat plate is
calculated through the corresponding Nusselt number **Nu\_turb**
according to *[VDI 2002, p. Gd 1, eq. 2]*:

::

        Nu_turb = (0.037 * Re^0.8 * Pr) / (1 + 2.443/Re^0.1 * (Pr^(2/3)-1))

and the corresponding mean convective heat transfer coefficient **kc**:

::

        kc =  Nu_turb * lambda / L

with

+---------------------------+--------------------------------------------------------------+
| **cp**                    | as specific heat capacity at constant pressure [J/(kg.K)],   |
+---------------------------+--------------------------------------------------------------+
| **eta**                   | as dynamic viscosity of fluid [Pa.s],                        |
+---------------------------+--------------------------------------------------------------+
| **kc**                    | as mean convective heat transfer coefficient [W/(m2.K)],     |
+---------------------------+--------------------------------------------------------------+
| **lambda**                | as heat conductivity of fluid [W/(m.K)],                     |
+---------------------------+--------------------------------------------------------------+
| **L**                     | as length of plate [m],                                      |
+---------------------------+--------------------------------------------------------------+
| **Nu\_turb**              | as mean Nusselt number for turbulent regime [-],             |
+---------------------------+--------------------------------------------------------------+
| **Pr = eta\*cp/lambda**   | as Prandtl number [-],                                       |
+---------------------------+--------------------------------------------------------------+
| **rho**                   | as fluid density [kg/m3],                                    |
+---------------------------+--------------------------------------------------------------+
| **Re = v\*rho\*L/eta**    | as Reynolds number [-].                                      |
+---------------------------+--------------------------------------------------------------+

Verification
^^^^^^^^^^^^

The mean Nusselt number in turbulent regime **Nu** representing the mean
convective heat transfer coefficient **kc** for Prandtl numbers of
different fluids is shown in the figure below.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/plate/fig_plate_kc_turbulent.png
   :align: center
   :alt: fig\_plate\_kc\_turbulent

   fig\_plate\_kc\_turbulent
References
^^^^^^^^^^

VDI:
    **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc\_laminar| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc\_overall| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.Plate.kc\_turbulent| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image4| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image5| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image6| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image7| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |image8| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |image9| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
