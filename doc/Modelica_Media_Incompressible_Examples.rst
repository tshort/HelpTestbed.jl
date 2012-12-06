======================================
Modelica.Media.Incompressible.Examples
======================================

`Modelica.Media.Incompressible <Modelica_Media_Incompressible.html#Modelica.Media.Incompressible>`_.Examples
------------------------------------------------------------------------------------------------------------

**Examples for incompressible media**

Information
~~~~~~~~~~~

::

This package provides a few examples of how to construct medium models
for incompressible fluids. The package contains:

-  **Glycol47**, a model of 47% glycol water mixture, based on tables of
   density and heat capacity as functions of temperature.
-  **Essotherm650**, a medium model for thermal oil, also based on
   tables.

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| Name                                                                                                                                                                                   | Description                                    |
+========================================================================================================================================================================================+================================================+
| |image3| `Glycol47 <Modelica_Media_Incompressible_Examples_Glycol47.html#Modelica.Media.Incompressible.Examples.Glycol47>`_                                                            | 1,2-Propylene glycol, 47% mixture with water   |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image4| `Essotherm650 <Modelica_Media_Incompressible_Examples_Essotherm650.html#Modelica.Media.Incompressible.Examples.Essotherm650>`_                                                | Essotherm thermal oil                          |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+
| |image5| `TestGlycol <Modelica_Media_Incompressible_Examples.html#Modelica.Media.Incompressible.Examples.TestGlycol>`_                                                                 | Test Glycol47 Medium model                     |
+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------+

--------------

|image6| `Modelica.Media.Incompressible.Examples <Modelica_Media_Incompressible_Examples.html#Modelica.Media.Incompressible.Examples>`_.TestGlycol
--------------------------------------------------------------------------------------------------------------------------------------------------

**Test Glycol47 Medium model**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TestGlycol "Test Glycol47 Medium model"
      extends Modelica.Icons.Example;
      package Medium = Glycol47 "Medium model (Glycol47)";
      Medium.BaseProperties medium;

      Medium.DynamicViscosity eta=Medium.dynamicViscosity(medium.state);
      Medium.ThermalConductivity lambda=Medium.thermalConductivity(medium.state);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium.state);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium.state);
    protected 
      constant Modelica.SIunits.Time timeUnit = 1;
      constant Modelica.SIunits.Temperature Ta = 1;
    equation 
      medium.p = 1e5;
      medium.T = Medium.T_min + time/timeUnit*Ta;
    end TestGlycol;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:34
2010.

.. |Modelica.Media.Incompressible.Examples.Glycol47| image:: Modelica.Media.Incompressible.TableBasedS.png
.. |Modelica.Media.Incompressible.Examples.Essotherm650| image:: Modelica.Media.Incompressible.TableBasedS.png
.. |Modelica.Media.Incompressible.Examples.TestGlycol| image:: Modelica.Media.Incompressible.Examples.TestGlycolS.png
.. |image3| image:: Modelica.Media.Incompressible.TableBasedS.png
.. |image4| image:: Modelica.Media.Incompressible.TableBasedS.png
.. |image5| image:: Modelica.Media.Incompressible.Examples.TestGlycolS.png
.. |image6| image:: Modelica.Media.Incompressible.Examples.TestGlycolI.png
