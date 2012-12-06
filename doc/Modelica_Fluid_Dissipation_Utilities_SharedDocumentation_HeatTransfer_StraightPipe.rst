==================================================================================
Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe
==================================================================================

|Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer>`_.StraightPipe
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                                                                                                                                              | Description   |
+===================================================================================================================================================================================================================================================================================================================================+===============+
| |image5| `kc\_laminar <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_laminar>`_                                                                                                                   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image6| `kc\_overall <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_overall>`_                                                                                                                   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image7| `kc\_turbulent <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_turbulent>`_                                                                                                               |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image8| `kc\_twoPhaseOverall <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc_twoPhaseOverall>`_                                                                                                   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

|image9| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe>`_.kc\_laminar
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar
fluid flow.

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

-  circular cross sectional area
-  uniform wall temperature (UWT) **or** uniform heat flux (UHF)
-  hydrodynamically developed fluid flow (DFF) **or** hydrodynamically
   undeveloped fluid flow (UFF)
-  0.6 ≤ Prandtl number ≤ 1000
-  laminar regime (Reynolds number ≤ 2000)

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/straightPipe/pic_straightPipe.png
   :align: center
   :alt: pic\_straightPipe

   pic\_straightPipe
Calculation
^^^^^^^^^^^

The mean convective heat transfer coefficient **kc** of a straight pipe
in the laminar regime can be calculated for the following four heat
transfer boundary conditions through its corresponding Nusselt number
**Nu**:

**Uniform wall temperature in developed fluid flow (heatTransferBoundary
= 1)** according to *[VDI 2002, p. Ga 2, eq. 6]* :

::

        Nu_TD = [3.66^3 + 0.7^3 + {1.615*(Re*Pr*d_hyd/L)^1/3 - 0.7}^3]^1/3

**Uniform heat flux in developed fluid flow (heatTransferBoundary ==
2)** according to *[VDI 2002, p. Ga 4, eq. 19]* :

::

        Nu_qD = [4.364^3 + 0.6^3 + {1.953*(Re*Pr*d_hyd/L)^1/3 - 0.6}^3]^1/3

**Uniform wall temperature in undeveloped fluid flow
(heatTransferBoundary = 3)** according to *[VDI 2002, p. Ga 2, eq. 12]*
:

::

        Nu_TU = [3.66^3 + 0.7^3 + {1.615*(Re*Pr*d_hyd/L)^1/3 - 0.7}^3 + {(2/[1+22*Pr])^1/6*(Re*Pr*d_hyd/L)^0.5}^3]^1/3

**Uniform heat flux in developed fluid flow (heatTransferBoundary ==
4)** according to *[VDI 2002, p. Ga 5, eq. 25]* :

::

        Nu_qU = [4.364^3 + 0.6^3 + {1.953*(Re*Pr*d_hyd/L)^1/3 - 0.6}^3 + {0.924*Pr^1/3*[Re*d_hyd/L]^0.5}^3]^1/3.

The corresponding mean convective heat transfer coefficient **kc** is
determined w.r.t. the chosen heat transfer boundary by:

::

        kc =  Nu * lambda / d_hyd

with

+-------------------------------+-----------------------------------------------------------+
| **d\_hyd**                    | as hydraulic diameter of straight pipe [m],               |
+-------------------------------+-----------------------------------------------------------+
| **kc**                        | as mean convective heat transfer coefficient [W/(m2K)],   |
+-------------------------------+-----------------------------------------------------------+
| **lambda**                    | as heat conductivity of fluid [W/(mK)],                   |
+-------------------------------+-----------------------------------------------------------+
| **L**                         | as length of straight pipe [m],                           |
+-------------------------------+-----------------------------------------------------------+
| **Nu = kc\*d\_hyd/lambda**    | as mean Nusselt number [-],                               |
+-------------------------------+-----------------------------------------------------------+
| **Pr = eta\*cp/lambda**       | as Prandtl number [-],                                    |
+-------------------------------+-----------------------------------------------------------+
| **Re = rho\*v\*d\_hyd/eta**   | as Reynolds number [-],                                   |
+-------------------------------+-----------------------------------------------------------+
| **v**                         | as mean velocity [m/s].                                   |
+-------------------------------+-----------------------------------------------------------+

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** depending on four different heat transfer
boundary conditions is shown in the figures below.

This verification has been done with the fluid properties of Water
(Prandtl number Pr = 7) and a diameter to pipe length fraction of 0.1.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/straightPipe/fig_straightPipe_kc_laminar.png
   :align: center
   :alt: fig\_straightPipe\_kc\_laminar

   fig\_straightPipe\_kc\_laminar
References
^^^^^^^^^^

Bejan,A.:
    **Heat transfer handbook**. Wiley, 2003.
VDI:
    **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image10| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe>`_.kc\_overall
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe at an uniform wall temperature **or** uniform heat flux
**and** for a hydrodynamically developed **or** undeveloped laminar or
turbulent fluid flow with neglect **or** consideration of pressure loss
influence.

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

-  circular cross sectional area
-  uniform wall temperature (UWT) **or** uniform heat flux (UHF)
-  hydrodynamically developed fluid flow
-  hydraulic diameter / length ≤ 1
-  0.6 ≤ Prandtl number ≤ 1000

Geometry and Calculation
^^^^^^^^^^^^^^^^^^^^^^^^

This heat transfer function enables a calculation of heat transfer
coefficient for laminar and turbulent flow regime. The geometry,
constant and fluid parameters of the function are the same as for
`kc\_laminar <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_laminar>`_
and
`kc\_turbulent <Modelica_Fluid_Dissipation_HeatTransfer_HelicalPipe.html#Modelica.Fluid.Dissipation.HeatTransfer.HelicalPipe.kc_turbulent>`_.

The calculation conditions for laminar and turbulent flow is equal to
the calculation in **kc\_laminar** and **kc\_turbulent**. A smooth
transition between both functions is carried out between 2200 ≤ Re ≤
10000 (see figure below).

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** is shown for the fluid properties of Water
(Prandtl number Pr = 7) and a diameter to pipe length fraction of 0.1 in
the figure below.

The following verification considers pressure loss influence (roughness
=2).

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/straightPipe/fig_straightPipe_kc_overall.png
   :align: center
   :alt: fig\_straightPipe\_kc\_overall

   fig\_straightPipe\_kc\_overall
References
^^^^^^^^^^

Bejan,A.:
    **Heat transfer handbook**. Wiley, 2003.
VDI:
    **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image11| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe>`_.kc\_turbulent
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of mean convective heat transfer coefficient **kc** of a
straight pipe for a hydrodynamically developed turbulent fluid flow at
uniform wall temperature **or** uniform heat flux with neglecting **or**
considering of pressure loss influence.

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

-  circular cross sectional area
-  hydrodynamically developed fluid flow
-  hydraulic diameter / length ≤ 1
-  0.6 ≤ Prandtl number ≤ 1000
-  turbulent flow regime (1e4 ≤ Reynolds number ≤ 1e6)

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/straightPipe/pic_straightPipe.png
   :align: center
   :alt: pic\_straightPipe

   pic\_straightPipe
Calculation
^^^^^^^^^^^

**Neglect pressure loss influence (roughness == 1):**

The mean convective heat transfer coefficient **kc** for smooth straight
pipes is calculated through its corresponding Nusselt number **Nu**
according to *[Dittus and Boelter in Bejan 2003, p. 424, eq. 5.76]*

::

        Nu = 0.023 * Re^(4/5) * Pr^(1/3).

**Consider pressure loss influence (roughness == 2):**

The mean convective heat transfer coefficient **kc** for rough straight
pipes is calculated through its corresponding Nusselt number **Nu**
according to *[Gnielinski in VDI 2002, p. Ga 5, eq. 26]*

::

        Nu = (zeta/8)*Re*Pr/(1 + 12.7*(zeta/8)^0.5*(Pr^(2/3)-1))*(1+(d_hyd/L)^(2/3)),

where the influence of the pressure loss on the heat transfer
calculation is considered through

::

        zeta =  (1.8*log10(Re)-1.5)^-2.

The mean convective heat transfer coefficient **kc** in dependence of
the chosen calculation (neglecting or considering of pressure loss
influence) results into:

::

        kc =  Nu * lambda / d_hyd

with

+-------------------------------+-----------------------------------------------------------+
| **d\_hyd**                    | as hydraulic diameter of straight pipe [m],               |
+-------------------------------+-----------------------------------------------------------+
| **kc**                        | as mean convective heat transfer coefficient [W/(m2K)],   |
+-------------------------------+-----------------------------------------------------------+
| **lambda**                    | as heat conductivity of fluid [W/(mK)],                   |
+-------------------------------+-----------------------------------------------------------+
| **L**                         | as length of straight pipe [m],                           |
+-------------------------------+-----------------------------------------------------------+
| **Nu = kc\*d\_hyd/lambda**    | as mean Nusselt number [-],                               |
+-------------------------------+-----------------------------------------------------------+
| **Pr = eta\*cp/lambda**       | as Prandtl number [-],                                    |
+-------------------------------+-----------------------------------------------------------+
| **Re = rho\*v\*d\_hyd/eta**   | as Reynolds number [-],                                   |
+-------------------------------+-----------------------------------------------------------+
| **v**                         | as mean velocity [m/s],                                   |
+-------------------------------+-----------------------------------------------------------+
| **zeta**                      | as pressure loss coefficient [-].                         |
+-------------------------------+-----------------------------------------------------------+

Note that there is no significant difference for the calculation of the
mean Nusselt number **Nu** at a uniform wall temperature (UWT) or a
uniform heat flux (UHF) as heat transfer boundary in the turbulent
regime (Bejan 2003, p.303).

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** for Prandtl numbers of different fluids is
shown in the figures below.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/straightPipe/fig_straightPipe_kc_turbulent.png
   :align: center
   :alt: fig\_straightPipe\_kc\_turbulent

   fig\_straightPipe\_kc\_turbulent
Note that the higher the Prandtl number **Pr** there is a higher
difference in Nusselt numbers **Nu** comparing the neglect and
consideration of pressure loss.

References
^^^^^^^^^^

Bejan,A.:
    **Heat transfer handbook**. Wiley, 2003.
VDI:
    **VDI - Wärmeatlas: Berechnungsblätter für den Wärmeübergang**.
    Springer Verlag, 9th edition, 2002.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image12| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_StraightPipe.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe>`_.kc\_twoPhaseOverall
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of local **two phase** heat transfer coefficient
**kc\_2ph**for (horizontal/vertical) **boiling** or (horizontal)
**condensation** for an overall flow regime.

Restriction
^^^^^^^^^^^

-  circular cross sectional area
-  no subcooled boiling
-  film condensation

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/pressureLoss/straightPipe/pic_straightPipe.png
   :align: center
   :alt: 

Calculation
^^^^^^^^^^^

**Boiling in a horizontal pipe (target = 1):**

The local two phase heat transfer coefficient **kc\_2ph** during boiling
in a **horizontal** straight pipe for an overall regime is calculated
according to *[Gungor/Winterton 1986, p.354, eq. 2]* :

::

        kc_2ph = E_fc*E_fc_hor*kc_fc+S_nb+S_nb_hor*kc_nb

with

+------------------------------------+--------------------------------------------------------------------------------+
| **Bo**=qdot\_A/(mdot\_A\*dh\_lv)   | as boiling number [-],                                                         |
+------------------------------------+--------------------------------------------------------------------------------+
| **dh\_lv**                         | as evaporation enthalpy [J/kg],                                                |
+------------------------------------+--------------------------------------------------------------------------------+
| **E\_fc**=f(Bo,Fr\_l,X\_tt)        | as forced convection enhancement factor [-],                                   |
+------------------------------------+--------------------------------------------------------------------------------+
| **E\_fc\_hor** =f(Fr\_l)           | as forced convection enhancement factor for horizontal straight pipes [-],     |
+------------------------------------+--------------------------------------------------------------------------------+
| **Fr\_l**                          | as Froude number assuming total mass flow rate flowing as liquid [-],          |
+------------------------------------+--------------------------------------------------------------------------------+
| **kc\_2ph**                        | as local two phase heat transfer coefficient [W/(m2K)],                        |
+------------------------------------+--------------------------------------------------------------------------------+
| **kc\_fc**                         | as heat transfer coefficient considering forced convection [W/(m2K)],          |
+------------------------------------+--------------------------------------------------------------------------------+
| **kc\_nb**                         | as heat transfer coefficient considering nucleate boiling [W/(m2K)],           |
+------------------------------------+--------------------------------------------------------------------------------+
| **mdot\_A**                        | as total mass flow rate density [kg/(m2s)],                                    |
+------------------------------------+--------------------------------------------------------------------------------+
| **qdot\_A**                        | as heat flow rate density [W/m2],                                              |
+------------------------------------+--------------------------------------------------------------------------------+
| **Re\_l**                          | as Reynolds number assuming liquid mass flow rate flowing alone [-],           |
+------------------------------------+--------------------------------------------------------------------------------+
| **S\_nb** =f(E\_fc,Re\_l)          | as suppression factor of nucleate boiling [-],                                 |
+------------------------------------+--------------------------------------------------------------------------------+
| **S\_nb\_hor** =f(Fr\_l)           | as suppression factor of nucleate boiling for horizontal straight pipes [-],   |
+------------------------------------+--------------------------------------------------------------------------------+
| **x\_flow**                        | as mass flow rate quality [-],                                                 |
+------------------------------------+--------------------------------------------------------------------------------+
| **X\_tt** = f(x\_flow)             | as Martinelli parameter [-].                                                   |
+------------------------------------+--------------------------------------------------------------------------------+

**Boiling in a vertical pipe (target = 2):**

The local two phase heat transfer coefficient **kc\_2ph** during boiling
in a **vertical** straight pipe for an overall regime is calculated out
of the correlations for boiling in a horizontal straight pipe, where the
horizontal correction factors **E\_fc\_hor,S\_nb\_hor** are unity.

Please note that the correlations named above are not valid for
subcooled boiling due to a different driving temperature for nucleate
boiling and forced convection. At subcooled boiling there is no
enhancement factor (no vapour generation) but the suppression factor
remains effective.

**Condensation in a horizontal pipe (target = 3):**

The local two phase heat transfer coefficient **kc\_2ph** during
condensation in a **horizontal** straight pipe for an overall regime is
calculated according to *[Shah 1979, p.548, eq. 8]* :

::

      kc_2ph = kc_1ph*[(1 - x_flow)^0.8 + 3.8*x_flow^0.76*(1 - x_flow)^0.04/p_red^0.38]

where the convective heat transfer coefficient **kc\_1ph** assuming the
total mass flow rate is flowing as liquid according to *[Shah 1979,
p.548, eq. 5]* :

::

      kc_1ph = 0.023*Re_l^0.8*Pr_l^0.4*lambda_l/d_hyd
     

with

+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **d\_hyd**                      | as hydraulic diameter [m],                                                                              |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **kc\_2ph**                     | as local two phase heat transfer coefficient [W/(m2K)],                                                 |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **kc\_1ph**                     | as convective heat transfer coefficient assuming total mass flow rate is flowing as liquid [W/(m2K)],   |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **lambda\_l**                   | as thermal conductivity of fluid [W/(mK)],                                                              |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **pressure**                    | as thermodynamic pressure of fluid [Pa],                                                                |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **p\_crit**                     | as critical pressure of fluid [Pa],                                                                     |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **p\_red** = pressure/p\_crit   | as reduced pressure [-],                                                                                |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **Pr\_l**                       | as Prandtl number assuming [-],                                                                         |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **Re\_l**                       | as Reynolds number assuming **total** mass flow rate is flowing as liquid [-],                          |
+---------------------------------+---------------------------------------------------------------------------------------------------------+
| **x\_flow**                     | as mass flow rate quality [-],                                                                          |
+---------------------------------+---------------------------------------------------------------------------------------------------------+

Verification
^^^^^^^^^^^^

The local two phase heat transfer coefficient **kc\_2ph** during for
horizontal and vertical boiling as well as for horizontal condensation
is shown for a straight pipe in the figures below.

**Boiling in a horizontal pipe (target = 1):**

Here the validation of the two phase heat transfer coefficient is shown
for boiling in a horizontal straight pipe.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/straightPipe/fig_kc_twoPhaseOverall_KC_4.png
   :align: center
   :alt: fig\_kc\_twoPhaseOverall

   fig\_kc\_twoPhaseOverall
The two phase heat transfer coefficient (**kc\_2ph**) w.r.t.
*Gungor/Winterton* is shown in dependence of the mass flow rate quality
(**x\_flow**) for different mass flow rate densities (**mdot\_A**). The
validation has been done with measurement results from *Kattan/Thome*
for R134a as medium.

The two phase heat transfer coefficient increases with increasing mass
flow rate quality up to a maximum value. After that there is a rapid
decrease of (**kc\_2ph**) with increasing (**x\_flow**). This can be
explained with a partial dryout of the pipe wall for a high mass flow
rate quality.

**Condensation in a horizontal pipe (target = 3):**

Here the validation of the two phase heat transfer coefficient is shown
for condensation in a horizontal straight pipe.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/straightPipe/fig_kc_twoPhaseOverall_KC_2.png
   :align: center
   :alt: fig\_kc\_twoPhaseOverall

   fig\_kc\_twoPhaseOverall
The two phase heat transfer coefficient (**kc\_2ph**) w.r.t. *Shah* is
shown in dependence of the mass flow rate quality (**x\_flow**) for
different mass flow rate densities (**mdot\_A**). The validation has
been done with measurement results from *Dobson/Chato* for R134a as
medium.

References
^^^^^^^^^^

Bejan,A.:
    **Heat transfer handbook**. Wiley, 2003.
M.K. Dobson and J.C. Chato:
    **Condensation in smooth horizontal tubes**. Journal of
    HeatTransfer, Vol.120, p.193-213, 1998.
Gungor, K.E. and R.H.S. Winterton:
    **A general correlation for flow boiling in tubes and annuli**,
    Int.J. Heat Mass Transfer, Vol.29, p.351-358, 1986.
N. Kattan and J.R. Thome:
    **Flow boiling in horizontal pipes: Part 2 - new heat transfer data
    for five refrigerants.**. Journal of Heat Transfer, Vol.120.
    p.148-155, 1998.
Shah, M.M.:
    **A general correlation for heat transfer during film condensation
    inside pipes**. Int. J. Heat Mass Transfer, Vol.22, p.547-556, 1979.

::


Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc\_laminar| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc\_overall| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc\_turbulent| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.StraightPipe.kc\_twoPhaseOverall| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image5| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image6| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image7| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image8| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image9| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |image10| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |image11| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |image12| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
