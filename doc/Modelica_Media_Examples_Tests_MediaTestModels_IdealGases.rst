========================================================
Modelica.Media.Examples.Tests.MediaTestModels.IdealGases
========================================================

`Modelica.Media.Examples.Tests.MediaTestModels <Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels>`_.IdealGases
--------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test models of library Modelica.Media.IdealGases**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.ExamplesPackage <Modelica_Icons_ExamplesPackage.html#Modelica.Icons.ExamplesPackage>`_
(Icon for packages containing runnable examples).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                                                                        | Description                                                                |
+=============================================================================================================================================================================================================================================================================================+============================================================================+
| |image4| `Air <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Air>`_                                                                                                                                                | Test single gas Modelica.Media.IdealGases.SingleGases.Air                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image5| `Nitrogen <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Nitrogen>`_                                                                                                                                      | Test single gas Modelica.Media.IdealGases.SingleGases.N2                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image6| `SimpleNaturalGas <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGas>`_                                                                                                                      | Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+
| |image7| `SimpleNaturalGasFixedComposition <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGasFixedComposition>`_                                                                                      | Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------+

--------------

|image8| `Modelica.Media.Examples.Tests.MediaTestModels.IdealGases <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases>`_.Air
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test single gas Modelica.Media.IdealGases.SingleGases.Air**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Air

   Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Air

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

    model Air "Test single gas Modelica.Media.IdealGases.SingleGases.Air"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Air.DryAirNasa);
    end Air;

--------------

|image9| `Modelica.Media.Examples.Tests.MediaTestModels.IdealGases <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases>`_.Nitrogen
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test single gas Modelica.Media.IdealGases.SingleGases.N2**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Nitrogen

   Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Nitrogen

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

    model Nitrogen 
      "Test single gas Modelica.Media.IdealGases.SingleGases.N2"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.IdealGases.SingleGases.N2);
    end Nitrogen;

--------------

|image10| `Modelica.Media.Examples.Tests.MediaTestModels.IdealGases <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases>`_.SimpleNaturalGas
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test mixture gas
Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGas

   Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGas

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

    model SimpleNaturalGas 
      "Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas);
    end SimpleNaturalGas;

--------------

|image11| `Modelica.Media.Examples.Tests.MediaTestModels.IdealGases <Modelica_Media_Examples_Tests_MediaTestModels_IdealGases.html#Modelica.Media.Examples.Tests.MediaTestModels.IdealGases>`_.SimpleNaturalGasFixedComposition
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test mixture gas
Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGasFixedComposition

   Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGasFixedComposition

Information
~~~~~~~~~~~

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

    model SimpleNaturalGasFixedComposition 
      "Test mixture gas Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGas"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.IdealGases.MixtureGases.SimpleNaturalGasFixedComposition);
    end SimpleNaturalGasFixedComposition;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:27
2010.

.. |Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Air| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.Nitrogen| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGas| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.SimpleNaturalGasFixedComposition| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image4| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image5| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image6| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image7| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image8| image:: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png
.. |image9| image:: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png
.. |image10| image:: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png
.. |image11| image:: Modelica.Media.Examples.Tests.MediaTestModels.IdealGases.AirI.png
