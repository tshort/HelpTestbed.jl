======================================
Modelica.Media.IdealGases.MixtureGases
======================================

`Modelica.Media.IdealGases <Modelica_Media_IdealGases.html#Modelica.Media.IdealGases>`_.MixtureGases
----------------------------------------------------------------------------------------------------

**Medium models consisting of mixtures of ideal gases**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                   | Description                                                                    |
+========================================================================================================================================================================================================================================================================+================================================================================+
| |image6| `CombustionAir <Modelica_Media_IdealGases_MixtureGases_CombustionAir.html#Modelica.Media.IdealGases.MixtureGases.CombustionAir>`_                                                                                                                             | Air as mixture of N2 and O2                                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| |image7| `AirSteam <Modelica_Media_IdealGases_MixtureGases_AirSteam.html#Modelica.Media.IdealGases.MixtureGases.AirSteam>`_                                                                                                                                            | air and steam mixture (no condensation!, pseudo-mixture)                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| |image8| `FlueGasLambdaOnePlus <Modelica_Media_IdealGases_MixtureGases_FlueGasLambdaOnePlus.html#Modelica.Media.IdealGases.MixtureGases.FlueGasLambdaOnePlus>`_                                                                                                        | simple flue gas for over0stochiometric O2-fuel ratios                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| |image9| `FlueGasSixComponents <Modelica_Media_IdealGases_MixtureGases_FlueGasSixComponents.html#Modelica.Media.IdealGases.MixtureGases.FlueGasSixComponents>`_                                                                                                        | simplest flue gas for over-and understochiometric combustion of hydrocarbons   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| |image10| `SimpleNaturalGas <Modelica_Media_IdealGases_MixtureGases_SimpleNaturalGas.html#Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas>`_                                                                                                                   | simple natural gas mix with 6 components                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+
| |image11| `SimpleNaturalGasFixedComposition <Modelica_Media_IdealGases_MixtureGases_SimpleNaturalGasFixedComposition.html#Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGasFixedComposition>`_                                                                   | Same as SimpleNaturalGas but with fixed composition                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      package simpleMoistAir = AirSteam(reference_X={0.03,0.97}) 
      "moist air without condensation";

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:34
2010.

.. |Modelica.Media.IdealGases.MixtureGases.CombustionAir| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.MixtureGases.AirSteam| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.MixtureGases.FlueGasLambdaOnePlus| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.MixtureGases.FlueGasSixComponents| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGasFixedComposition| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image6| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image7| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image8| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image9| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image10| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
.. |image11| image:: Modelica.Media.IdealGases.SingleGases.ArS.png
