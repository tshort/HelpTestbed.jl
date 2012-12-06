============================================================
Modelica.Media.Examples.Tests.MediaTestModels.Incompressible
============================================================

`Modelica.Media.Examples.Tests.MediaTestModels <Modelica_Media_Examples_Tests_MediaTestModels.html#Modelica.Media.Examples.Tests.MediaTestModels>`_.Incompressible
------------------------------------------------------------------------------------------------------------------------------------------------------------------

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
| |image2| `Glycol47 <Modelica_Media_Examples_Tests_MediaTestModels_Incompressible.html#Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Glycol47>`_                                                                              | Test Modelica.Media.Incompressible.Examples.Glycol47      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+
| |image3| `Essotherm650 <Modelica_Media_Examples_Tests_MediaTestModels_Incompressible.html#Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Essotherm650>`_                                                                      | Test Modelica.Media.Incompressible.Examples.Essotherm65   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------+

--------------

|image4| `Modelica.Media.Examples.Tests.MediaTestModels.Incompressible <Modelica_Media_Examples_Tests_MediaTestModels_Incompressible.html#Modelica.Media.Examples.Tests.MediaTestModels.Incompressible>`_.Glycol47
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Incompressible.Examples.Glycol47**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Glycol47

   Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Glycol47

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

    model Glycol47 "Test Modelica.Media.Incompressible.Examples.Glycol47"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Incompressible.Examples.Glycol47(final 
              singleState =                                                   true,
              final enthalpyOfT =                                                              true));
    end Glycol47;

--------------

|image5| `Modelica.Media.Examples.Tests.MediaTestModels.Incompressible <Modelica_Media_Examples_Tests_MediaTestModels_Incompressible.html#Modelica.Media.Examples.Tests.MediaTestModels.Incompressible>`_.Essotherm650
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Modelica.Media.Incompressible.Examples.Essotherm65**

.. figure:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirD.png
   :align: center
   :alt: Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Essotherm650

   Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Essotherm650

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

    model Essotherm650 
      "Test Modelica.Media.Incompressible.Examples.Essotherm65"
      extends Modelica.Icons.Example;
      extends Modelica.Media.Examples.Tests.Components.PartialTestModel(
         redeclare package Medium =
            Modelica.Media.Incompressible.Examples.Essotherm650);
    end Essotherm650;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:27
2010.

.. |Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Glycol47| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Essotherm650| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image2| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image3| image:: Modelica.Media.Examples.Tests.MediaTestModels.Air.SimpleAirS.png
.. |image4| image:: Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Glycol47I.png
.. |image5| image:: Modelica.Media.Examples.Tests.MediaTestModels.Incompressible.Glycol47I.png
