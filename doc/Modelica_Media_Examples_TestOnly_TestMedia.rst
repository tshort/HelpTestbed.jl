==========================================
Modelica.Media.Examples.TestOnly.TestMedia
==========================================

`Modelica.Media.Examples.TestOnly <Modelica_Media_Examples_TestOnly.html#Modelica.Media.Examples.TestOnly>`_.TestMedia
----------------------------------------------------------------------------------------------------------------------

**Test interfaces of media**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+
| Name                                                                                                                                                                                        | Description                      |
+=============================================================================================================================================================================================+==================================+
| |image1| `TemplateMedium <Modelica_Media_Examples_TestOnly_TestMedia.html#Modelica.Media.Examples.TestOnly.TestMedia.TemplateMedium>`_                                                      | Test Interfaces.TemplateMedium   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------+

--------------

|image2| `Modelica.Media.Examples.TestOnly.TestMedia <Modelica_Media_Examples_TestOnly_TestMedia.html#Modelica.Media.Examples.TestOnly.TestMedia>`_.TemplateMedium
------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Test Interfaces.TemplateMedium**

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Icons.Example <Modelica_Icons.html#Modelica.Icons.Example>`_
(Icon for runnable examples).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TemplateMedium "Test Interfaces.TemplateMedium"
      extends Modelica.Icons.Example;
      package Medium = Interfaces.TemplateMedium "Medium model";
      Medium.ThermodynamicState medium;

      Medium.DynamicViscosity eta=Medium.dynamicViscosity(medium);
      Medium.ThermalConductivity lambda=Medium.thermalConductivity(medium);
      Medium.SpecificEntropy s=Medium.specificEntropy(medium);
      Medium.SpecificHeatCapacity cp=Medium.specificHeatCapacityCp(medium);
      Medium.SpecificHeatCapacity cv=Medium.specificHeatCapacityCv(medium);
      Medium.IsentropicExponent gamma=Medium.isentropicExponent(medium);
      Medium.VelocityOfSound a=Medium.velocityOfSound(medium);
    equation 
      medium.p = 1.0e5;
      medium.T = 300 + time/1000;
    end TemplateMedium;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:26
2010.

.. |Modelica.Media.Examples.TestOnly.TestMedia.TemplateMedium| image:: Modelica.Media.Examples.TestOnly.IdealGasN2MixS.png
.. |image1| image:: Modelica.Media.Examples.TestOnly.IdealGasN2MixS.png
.. |image2| image:: Modelica.Media.Examples.TestOnly.TestMedia.TemplateMediumI.png
