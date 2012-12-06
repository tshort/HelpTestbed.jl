=========================================================
Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid
=========================================================

`Modelica.Media.Examples.Tests.MediaTestModels <Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels>`_.LinearFluid
---------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test models of library Modelica.Media.Incompressible**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| Name                                                                                                                                                                                                                                        | Description                                               |
+=============================================================================================================================================================================================================================================+===========================================================+
| |image2| `LinearColdWater <Modelica_Media_Examples_Tests_MediaTestModels_LinearFluid.html#Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWater>`_                                                                      | Test Modelica.Media.Incompressible.Examples.Glycol47      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image3| `LinearWater\_pT <Modelica_Media_Examples_Tests_MediaTestModels_LinearFluid.html#Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearWater_pT>`_                                                                       | Test Modelica.Media.Incompressible.Examples.Essotherm65   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+

--------------

|image4| `Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid <Modelica_Media_Examples_Tests_MediaTestModels_LinearFluid.html#Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid>`_.LinearColdWater
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Incompressible.Examples.Glycol47**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWater

   Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWater

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

    model LinearColdWater 
      "Test Modelica.Media.Incompressible.Examples.Glycol47"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.CompressibleLiquids.LinearColdWater);
    end LinearColdWater;

--------------

|image5| `Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid <Modelica_Media_Examples_Tests_MediaTestModels_LinearFluid.html#Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid>`_.LinearWater\_pT
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Incompressible.Examples.Essotherm65**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearWater\_pT

   Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearWater\_pT

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

    model LinearWater_pT 
      "Test Modelica.Media.Incompressible.Examples.Essotherm65"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.CompressibleLiquids.LinearWater_pT_Ambient);
    end LinearWater_pT;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:28
2010.

.. |Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWater| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearWater\_pT| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image2| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image3| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image4| image:: Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWaterI.png
.. |image5| image:: Modelica.Media.Examples.Tests.MediaTestModels.LinearFluid.LinearColdWaterI.png
