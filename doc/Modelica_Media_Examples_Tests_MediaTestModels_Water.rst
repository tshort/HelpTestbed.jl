===================================================
Modelica.Media.Examples.Tests.MediaTestModels.Water
===================================================

`Modelica.Media.Examples.Tests.MediaTestModels <Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels>`_.Water
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Test models of library Modelica.Media.Water**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| Name                                                                                                                                                                                                                                                          | Description                                             |
+===============================================================================================================================================================================================================================================================+=========================================================+
| |image5| `ConstantPropertyLiquidWater <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWater>`_                                                                            | Test Modelica.Media.Water.ConstantPropertyLiquidWater   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image6| `IdealSteam <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water.IdealSteam>`_                                                                                                              | Test Modelica.Media.Water.IdealSteam                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image7| `WaterIF97OnePhase\_ph <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97OnePhase_ph>`_                                                                                         | Test Modelica.Media.Water.WaterIF97OnePhase\_ph         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image8| `WaterIF97\_pT <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97_pT>`_                                                                                                         | Test Modelica.Media.Water.WaterIF97\_pT                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image9| `WaterIF97\_ph <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97_ph>`_                                                                                                         | Test Modelica.Media.Water.WaterIF97\_ph                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+

--------------

|image10| `Modelica.Media.Examples.Tests.MediaTestModels.Water <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water>`_.ConstantPropertyLiquidWater
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Water.ConstantPropertyLiquidWater**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWater

   Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWater

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples),
`Modelica.Media.Examples.Tests.Components.PartialTestModel <Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.PartialTestModel>`_
(Basic test model to test a medium).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Type                                                                            | Name                                                                                                      | Default             | Description                                 |
+=================================================================================+===========================================================================================================+=====================+=============================================+
| replaceable package Medium                                                      | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model        |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | p\_start                                                                                                  | Medium.p\_default   | Initial value of pressure [Pa]              |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_start                                                                                                  | Medium.T\_default   | Initial value of temperature [K]            |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_start                                                                                                  | Medium.h\_default   | Initial value of specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Real                                                                            | X\_start[Medium.nX]                                                                                       | Medium.X\_default   | Initial value of mass fractions             |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------+----------------+---------------+
| Type                         | Name           | Description   |
+==============================+================+===============+
| replaceable package Medium   | Medium model   |
+------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ConstantPropertyLiquidWater 
      "Test Modelica.Media.Water.ConstantPropertyLiquidWater"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Water.ConstantPropertyLiquidWater);
    end ConstantPropertyLiquidWater;

--------------

|image11| `Modelica.Media.Examples.Tests.MediaTestModels.Water <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water>`_.IdealSteam
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Water.IdealSteam**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Water.IdealSteam

   Modelica.Media.Examples.Tests.MediaTestModels.Water.IdealSteam

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples),
`Modelica.Media.Examples.Tests.Components.PartialTestModel <Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.PartialTestModel>`_
(Basic test model to test a medium).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Type                                                                            | Name                                                                                                      | Default             | Description                                 |
+=================================================================================+===========================================================================================================+=====================+=============================================+
| replaceable package Medium                                                      | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model        |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | p\_start                                                                                                  | Medium.p\_default   | Initial value of pressure [Pa]              |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_start                                                                                                  | Medium.T\_default   | Initial value of temperature [K]            |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_start                                                                                                  | Medium.h\_default   | Initial value of specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Real                                                                            | X\_start[Medium.nX]                                                                                       | Medium.X\_default   | Initial value of mass fractions             |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------+----------------+---------------+
| Type                         | Name           | Description   |
+==============================+================+===============+
| replaceable package Medium   | Medium model   |
+------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model IdealSteam "Test Modelica.Media.Water.IdealSteam"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Water.IdealSteam);
    end IdealSteam;

--------------

|image12| `Modelica.Media.Examples.Tests.MediaTestModels.Water <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water>`_.WaterIF97OnePhase\_ph
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Water.WaterIF97OnePhase\_ph**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97OnePhase\_ph

   Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97OnePhase\_ph

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples),
`Modelica.Media.Examples.Tests.Components.PartialTestModel <Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.PartialTestModel>`_
(Basic test model to test a medium).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Type                                                                            | Name                                                                                                      | Default             | Description                                 |
+=================================================================================+===========================================================================================================+=====================+=============================================+
| replaceable package Medium                                                      | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model        |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | p\_start                                                                                                  | Medium.p\_default   | Initial value of pressure [Pa]              |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_start                                                                                                  | Medium.T\_default   | Initial value of temperature [K]            |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_start                                                                                                  | Medium.h\_default   | Initial value of specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Real                                                                            | X\_start[Medium.nX]                                                                                       | Medium.X\_default   | Initial value of mass fractions             |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------+----------------+---------------+
| Type                         | Name           | Description   |
+==============================+================+===============+
| replaceable package Medium   | Medium model   |
+------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WaterIF97OnePhase_ph 
      "Test Modelica.Media.Water.WaterIF97OnePhase_ph"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Water.WaterIF97OnePhase_ph,
        fixedMassFlowRate(use_T_ambient=false, h_ambient=363755),
        ambient(use_T_ambient=false, h_ambient=112570));
    end WaterIF97OnePhase_ph;

--------------

|image13| `Modelica.Media.Examples.Tests.MediaTestModels.Water <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water>`_.WaterIF97\_pT
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Water.WaterIF97\_pT**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97\_pT

   Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97\_pT

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples),
`Modelica.Media.Examples.Tests.Components.PartialTestModel <Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.PartialTestModel>`_
(Basic test model to test a medium).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Type                                                                            | Name                                                                                                      | Default             | Description                                 |
+=================================================================================+===========================================================================================================+=====================+=============================================+
| replaceable package Medium                                                      | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model        |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | p\_start                                                                                                  | Medium.p\_default   | Initial value of pressure [Pa]              |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_start                                                                                                  | Medium.T\_default   | Initial value of temperature [K]            |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_start                                                                                                  | Medium.h\_default   | Initial value of specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Real                                                                            | X\_start[Medium.nX]                                                                                       | Medium.X\_default   | Initial value of mass fractions             |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------+----------------+---------------+
| Type                         | Name           | Description   |
+==============================+================+===============+
| replaceable package Medium   | Medium model   |
+------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WaterIF97_pT "Test Modelica.Media.Water.WaterIF97_pT"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Water.WaterIF97_pT);
    end WaterIF97_pT;

--------------

|image14| `Modelica.Media.Examples.Tests.MediaTestModels.Water <Modelica_Media_Examples_Tests_MediaTestModels_Water.html#Modelica.Media.Examples.Tests.MediaTestModels.Water>`_.WaterIF97\_ph
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Water.WaterIF97\_ph**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97\_ph

   Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97\_ph

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples),
`Modelica.Media.Examples.Tests.Components.PartialTestModel <Modelica_Media_Examples_Tests_Components.html#Modelica.Media.Examples.Tests.Components.PartialTestModel>`_
(Basic test model to test a medium).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Type                                                                            | Name                                                                                                      | Default             | Description                                 |
+=================================================================================+===========================================================================================================+=====================+=============================================+
| replaceable package Medium                                                      | `PartialMedium <Modelica_Media_Interfaces_PartialMedium.html#Modelica.Media.Interfaces.PartialMedium>`_   | Medium model        |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `AbsolutePressure <Modelica_SIunits.html#Modelica.SIunits.AbsolutePressure>`_   | p\_start                                                                                                  | Medium.p\_default   | Initial value of pressure [Pa]              |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_             | T\_start                                                                                                  | Medium.T\_default   | Initial value of temperature [K]            |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| `SpecificEnthalpy <Modelica_SIunits.html#Modelica.SIunits.SpecificEnthalpy>`_   | h\_start                                                                                                  | Medium.h\_default   | Initial value of specific enthalpy [J/kg]   |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+
| Real                                                                            | X\_start[Medium.nX]                                                                                       | Medium.X\_default   | Initial value of mass fractions             |
+---------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------+---------------------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------+----------------+---------------+
| Type                         | Name           | Description   |
+==============================+================+===============+
| replaceable package Medium   | Medium model   |
+------------------------------+----------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model WaterIF97_ph "Test Modelica.Media.Water.WaterIF97_ph"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Water.WaterIF97_ph,
        ambient(use_T_ambient=false, h_ambient=112570),
        fixedMassFlowRate(use_T_ambient=false, h_ambient=363755));
    end WaterIF97_ph;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:28
2010.

.. |Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWater| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.Water.IdealSteam| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97OnePhase\_ph| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97\_pT| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.Water.WaterIF97\_ph| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image5| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image6| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image7| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image8| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image9| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image10| image:: Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png
.. |image11| image:: Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png
.. |image12| image:: Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png
.. |image13| image:: Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png
.. |image14| image:: Modelica.Media.Examples.Tests.MediaTestModels.Water.ConstantPropertyLiquidWaterI.png
