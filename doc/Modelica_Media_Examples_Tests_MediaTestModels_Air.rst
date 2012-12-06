=================================================
Modelica.Media.Examples.Tests.MediaTestModels.Air
=================================================

`Modelica.Media.Examples.Tests.MediaTestModels <Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels>`_.Air
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Test models of library Modelica.Media.Air**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| Name                                                                                                                                                                                                 | Description                          |
+======================================================================================================================================================================================================+======================================+
| |image3| `SimpleAir <Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAir>`_                                                           | Test Modelica.Media.Air.SimpleAir    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image4| `DryAirNasa <Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air.DryAirNasa>`_                                                         | Test Modelica.Media.Air.DryAirNasa   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+
| |image5| `MoistAir <Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air.MoistAir>`_                                                             | Test Modelica.Media.Air.MoistAir     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------------------------+

--------------

|image6| `Modelica.Media.Examples.Tests.MediaTestModels.Air <Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air>`_.SimpleAir
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Air.SimpleAir**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAir

   Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAir

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

    model SimpleAir "Test Modelica.Media.Air.SimpleAir"
      extends Modelica.Icons.Example;
        extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Air.SimpleAir);
    end SimpleAir;

--------------

|image7| `Modelica.Media.Examples.Tests.MediaTestModels.Air <Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air>`_.DryAirNasa
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Air.DryAirNasa**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Air.DryAirNasa

   Modelica.Media.Examples.Tests.MediaTestModels.Air.DryAirNasa

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

    model DryAirNasa "Test Modelica.Media.Air.DryAirNasa"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Air.DryAirNasa);
    end DryAirNasa;

--------------

|image8| `Modelica.Media.Examples.Tests.MediaTestModels.Air <Modelica_Media_Examples_Tests_MediaTestModels_Air.html#Modelica.Media.Examples.Tests.MediaTestModels.Air>`_.MoistAir
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Air.MoistAir**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Air.MoistAir

   Modelica.Media.Examples.Tests.MediaTestModels.Air.MoistAir

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

    model MoistAir "Test Modelica.Media.Air.MoistAir"
        extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium = Modelica.Media.Air.MoistAir);
    end MoistAir;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:27
2010.

.. |Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAir| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.Air.DryAirNasa| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.Air.MoistAir| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image3| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image4| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image5| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image6| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirI.png
.. |image7| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirI.png
.. |image8| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirI.png
