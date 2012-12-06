===================================================================================
Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger
===================================================================================

|Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer>`_.HeatExchanger
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| Name                                                                                                                                                                                                                                                                                                               | Description   |
+====================================================================================================================================================================================================================================================================================================================+===============+
| |image3| `kc\_flatTube <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_flatTube>`_                                                                                                |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+
| |image4| `kc\_roundTube <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc_roundTube>`_                                                                                              |               |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------+

--------------

|image5| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger>`_.kc\_flatTube
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with flat tubes and
several fin geometries.

Fuctions **kc\_flatTube** and **kc\_flatTube\_KC**
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There are basically three differences:

-  The function **kc\_flatTube** is using **kc\_flatTube\_KC** but
   offers additional output variables like e.g. Reynolds number or
   Nusselt number and failure status (an output of **1** means that the
   function is not valid for the inputs).
-  Generally the function **kc\_flatTube\_KC** is numerically best used
   for the calculation of the mean convective heat transfer coefficient
   **kc** at known mass flow rate.
-  You can perform an inverse calculation from **kc\_flatTube\_KC**,
   where an unknown mass flow rate is calculated out of a given mean
   convective heat transfer coefficient **kc**

Restriction
^^^^^^^^^^^

-  According to the kind of fin geometry the calculation is valid in a
   range of **Re** from 100 to 5000.
-  medium = air

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/heatExchanger/pic_flatTube.png
   :align: center
   :alt: pic\_flatTube

   pic\_flatTube
Calculation
^^^^^^^^^^^

The mean convective heat transfer coefficient **kc** for heat exchanger
is calculated through the corresponding Coulburn factor **j**:

::

        j = f(geometry, Re)

with the resulting mean convective heat transfer coefficient **kc**

::

        kc =  j * Re_L_p * Pr^(1/3) * lambda / L_p (Louver fin)

or

::

        kc =  j * Re_D_h * Pr^(1/3) * lambda / D_h (Rectangular offset strip fin)

with

+-----------------------------------+-----------------------------------------------------------+
| **D\_h**                          | as hydraulic diameter [m],                                |
+-----------------------------------+-----------------------------------------------------------+
| **kc**                            | as mean convective heat transfer coefficient [W/(m2K)],   |
+-----------------------------------+-----------------------------------------------------------+
| **lambda**                        | as heat conductivity of fluid [W/(mK)],                   |
+-----------------------------------+-----------------------------------------------------------+
| **L\_p**                          | as louver pitch [m],                                      |
+-----------------------------------+-----------------------------------------------------------+
| **Nu\_D\_h = kc\*D\_h/lambda**    | as mean Nusselt number based on hydraulic diameter [-],   |
+-----------------------------------+-----------------------------------------------------------+
| **Nu\_L\_p = kc\*L\_p/lambda**    | as mean Nusselt number based on louver pitch [-],         |
+-----------------------------------+-----------------------------------------------------------+
| **Pr = eta\*cp/lambda**           | as Prandtl number [-],                                    |
+-----------------------------------+-----------------------------------------------------------+
| **Re\_D\_h = rho\*v\*D\_h/eta**   | as Reynolds number based on hydraulic diameter [-],       |
+-----------------------------------+-----------------------------------------------------------+
| **Re\_L\_p = rho\*v\*L\_p/eta**   | as Reynolds number based on louver pitch [-],             |
+-----------------------------------+-----------------------------------------------------------+

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** is shown below for different fin geometries
at similar dimensions.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/heatExchanger/fig_flatTube_kc.png
   :align: center
   :alt: fig\_flatTube\_kc

   fig\_flatTube\_kc
References
^^^^^^^^^^

Y.-J. CHANG and C.-C. WANG:
    **A generalized heat transfer correlation for louver fin geometry**.
    In International Journal of Heat and Mass Transfer, volume 40, No.
    3, pages 533-544, 1997.
Y.-J. CHANG and C.-C. WANG:
    **Air Side Performance of Brazed Aluminium Heat Exchangers**. In
    Journal of Enhanced Heat Transfer, volume 3, No. 1, pages 15-28,
    1996.
R.-M. Manglik, A.-E. Bergles:
    **Heat Transfer and Pressure Drop Correlations for the Rectangular
    Offset Strip Fin Compact Heat Exchanger**. In Experimental Thermal
    and Fluid Science, volume 10, pages 171-180, 1995.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

|image6| `Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger <Modelica_Fluid_Dissipation_Utilities_SharedDocumentation_HeatTransfer_HeatExchanger.html#Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger>`_.kc\_roundTube
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

::

Calculation of the mean convective heat transfer coefficient **kc** for
the air-side heat transfer of heat exchangers with round tubes and
several fin geometries.

Fuctions **kc\_roundTube** and **kc\_roundTube\_KC**
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

There are basically three differences:

-  The function **kc\_roundTube** is using **kc\_roundTube\_KC** but
   offers additional output variables like e.g. Reynolds number or
   Nusselt number and failure status (an output of **1** means that the
   function is not valid for the inputs).
-  Generally the function **kc\_roundTube\_KC** is numerically best used
   for the calculation of the mean convective heat transfer coefficient
   **kc** at known mass flow rate.
-  You can perform an inverse calculation from **kc\_roundTube\_KC**,
   where an unknown mass flow rate is calculated out of a given mean
   convective heat transfer coefficient **kc**

Restriction
^^^^^^^^^^^

-  According to the kind of fin geometry the calculation is valid in a
   range of **Re** from 300 to 8000.
-  medium = air

Geometry
^^^^^^^^

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/heatExchanger/pic_roundTube.png
   :align: center
   :alt: pic\_roundTube

   pic\_roundTube
Calculation
^^^^^^^^^^^

The mean convective heat transfer coefficient **kc** for heat exchanger
is calculated through the corresponding Coulburn factor **j**:

::

        j = f(geometry, Re)

with the resulting mean convective heat transfer coefficient **kc**

::

        kc =  j * Re * Pr^(1/3) * lambda / D_c

with

+-----------------------------+-----------------------------------------------------------+
| **D\_c**                    | as fin collar diameter [m],                               |
+-----------------------------+-----------------------------------------------------------+
| **kc**                      | as mean convective heat transfer coefficient [W/(m2K)],   |
+-----------------------------+-----------------------------------------------------------+
| **lambda**                  | as heat conductivity of fluid [W/(mK)],                   |
+-----------------------------+-----------------------------------------------------------+
| **Nu = kc\*D\_c/lambda**    | as mean Nusselt number [-],                               |
+-----------------------------+-----------------------------------------------------------+
| **Pr = eta\*cp/lambda**     | as Prandtl number [-],                                    |
+-----------------------------+-----------------------------------------------------------+
| **Re = rho\*v\*D\_c/eta**   | as Reynolds number [-],                                   |
+-----------------------------+-----------------------------------------------------------+

Verification
^^^^^^^^^^^^

The mean Nusselt number **Nu** representing the mean convective heat
transfer coefficient **kc** is shown below for different fin geometries
at similar dimensions.

.. figure:: ../Resources/Images/Fluid/Dissipation/heatTransfer/heatExchanger/fig_roundTube_kc.png
   :align: center
   :alt: fig\_roundTube\_kc

   fig\_roundTube\_kc
References
^^^^^^^^^^

C.-C. Wang, C.-T. Chang:
    **Heat and mass transfer for plate fin-and-tube heat exchangers,
    with and without hydrophilic coating**. In International Journal of
    Heat and Mass Transfer, volume 41, pages 3109-3120, 1998.
C.-C. Wang, C.-J. Lee, C.-T. Chang, S.-P. Lina:
    **Heat transfer and friction correlation for compact louvered
    fin-and-tube heat exchangers**. In International Journal of Heat and
    Mass Transfer, volume 42, pages 1945-1956, 1999.
C.-C. Wang, W.-H. Tao, C.-J. Chang:
    **An investigation of the airside performance of the slit
    fin-and-tube heat exchangers**. In International Journal of
    Refrigeration, volume 22, pages 595-603, 1999.
C.-C. Wang, W.-L. Fu, C.-T. Chang:
    **Heat Transfer and Friction Characteristics of Typical Wavy
    Fin-and-Tube Heat Exchangers**. In Experimental Thermal and Fluid
    Science, volume 14, pages 174-186, 1997.

::

Extends from
`Modelica.Icons.Information <Modelica_Icons.html#Modelica.Icons.Information>`_
(Icon for general information packages).

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:23
2010.

.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc\_flatTube| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransfer.HeatExchanger.kc\_roundTube| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image3| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image4| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentation.HeatTransferS.png
.. |image5| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
.. |image6| image:: Modelica.Fluid.Dissipation.Utilities.SharedDocumentationI.png
