====================================
Modelica.Thermal.FluidHeatFlow.Media
====================================

`Modelica.Thermal.FluidHeatFlow <Modelica_Thermal_FluidHeatFlow.html#Modelica.Thermal.FluidHeatFlow>`_.Media
------------------------------------------------------------------------------------------------------------

**Medium properties**

Information
~~~~~~~~~~~

::

This package contains definitions of medium properties.

**Main Authors:**
    `Anton Haumer <http://www.haumer.at/>`_
     Technical Consulting & Electrical Engineering
     A-3423 St.Andrae-Woerdern, Austria
     email: `a.haumer@haumer.at <mailto:a.haumer@haumer.at>`_

    Dr. Christian Kral
     `Austrian Institute of Technology, AIT <http://www.ait.ac.at/>`_
     Giefinggasse 2
     A-1210 Vienna, Austria

Copyright © 1998-2010, Modelica Association, Anton Haumer and Austrian
Institute of Technology, AIT.

*This Modelica package is free software and the use is completely at
your own risk; it can be redistributed and/or modified under the terms
of the Modelica License 2. For license conditions (including the
disclaimer of warranty) see
`Modelica.UsersGuide.ModelicaLicense2 <Modelica_UsersGuide.html#Modelica.UsersGuide.ModelicaLicense2>`_
or visit
`http://www.modelica.org/licenses/ModelicaLicense2 <http://www.modelica.org/licenses/ModelicaLicense2>`_.*

::

Extends from
`Modelica.Icons.MaterialPropertiesPackage <Modelica_Icons_MaterialPropertiesPackage.html#Modelica.Icons.MaterialPropertiesPackage>`_
(Icon for package containing property classes).

Package Content
~~~~~~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| Name                                                                                                                                                            | Description                            |
+=================================================================================================================================================================+========================================+
| |image4| `Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_                                                      | Record containing media properties     |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image5| `Air\_30degC <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Air_30degC>`_                                             | Medium: properties of air at 30 degC   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image6| `Air\_70degC <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Air_70degC>`_                                             | Medium: properties of air at 70 degC   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+
| |image7| `Water <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Water>`_                                                        | Medium: properties of water            |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------+

--------------

|image8| `Modelica.Thermal.FluidHeatFlow.Media <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media>`_.Medium
----------------------------------------------------------------------------------------------------------------------------------------

**Record containing media properties**

Information
~~~~~~~~~~~

::

Record containing (constant) medium properties.

::

Extends from
`Modelica.Icons.Record <Modelica_Icons.html#Modelica.Icons.Record>`_
(Icon for records).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| Type                                                                                    | Name    | Default   | Description                                              |
+=========================================================================================+=========+===========+==========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                             | rho     | 1         | Density [kg/m3]                                          |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp      | 1         | Specific heat capacity at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv      | 1         | Specific heat capacity at constant volume [J/(kg.K)]     |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_     | lamda   | 1         | Thermal conductivity [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `KinematicViscosity <Modelica_SIunits.html#Modelica.SIunits.KinematicViscosity>`_       | nue     | 1         | Kinematic viscosity [m2/s]                               |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Medium "Record containing media properties"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Density rho = 1 "Density";
      parameter Modelica.SIunits.SpecificHeatCapacity cp = 1 
        "Specific heat capacity at constant pressure";
      parameter Modelica.SIunits.SpecificHeatCapacity cv = 1 
        "Specific heat capacity at constant volume";
      parameter Modelica.SIunits.ThermalConductivity lamda = 1 
        "Thermal conductivity";
      parameter Modelica.SIunits.KinematicViscosity nue = 1 "Kinematic viscosity";
    end Medium;

--------------

|image9| `Modelica.Thermal.FluidHeatFlow.Media <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media>`_.Air\_30degC
---------------------------------------------------------------------------------------------------------------------------------------------

**Medium: properties of air at 30 degC**

Information
~~~~~~~~~~~

::

Medium: properties of air at 30 degC

::

Extends from
`Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_
(Record containing media properties).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| Type                                                                                    | Name    | Default   | Description                                              |
+=========================================================================================+=========+===========+==========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                             | rho     | 1.149     | Density [kg/m3]                                          |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp      | 1007      | Specific heat capacity at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv      | 720       | Specific heat capacity at constant volume [J/(kg.K)]     |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_     | lamda   | 0.0264    | Thermal conductivity [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `KinematicViscosity <Modelica_SIunits.html#Modelica.SIunits.KinematicViscosity>`_       | nue     | 16.3E-6   | Kinematic viscosity [m2/s]                               |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Air_30degC "Medium: properties of air at 30 degC"
    extends Medium(
      rho=1.149,
      cp=1007,
      cv= 720,
      lamda=0.0264,
      nue=16.3E-6);
    end Air_30degC;

--------------

|image10| `Modelica.Thermal.FluidHeatFlow.Media <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media>`_.Air\_70degC
----------------------------------------------------------------------------------------------------------------------------------------------

**Medium: properties of air at 70 degC**

Information
~~~~~~~~~~~

::

Medium: properties of air at 70 degC

::

Extends from
`Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_
(Record containing media properties).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| Type                                                                                    | Name    | Default   | Description                                              |
+=========================================================================================+=========+===========+==========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                             | rho     | 1.015     | Density [kg/m3]                                          |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp      | 1010      | Specific heat capacity at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv      | 723       | Specific heat capacity at constant volume [J/(kg.K)]     |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_     | lamda   | 0.0293    | Thermal conductivity [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `KinematicViscosity <Modelica_SIunits.html#Modelica.SIunits.KinematicViscosity>`_       | nue     | 20.3E-6   | Kinematic viscosity [m2/s]                               |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Air_70degC "Medium: properties of air at 70 degC"
    extends Medium(
      rho=1.015,
      cp=1010,
      cv= 723,
      lamda=0.0293,
      nue=20.3E-6);
    end Air_70degC;

--------------

|image11| `Modelica.Thermal.FluidHeatFlow.Media <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media>`_.Water
----------------------------------------------------------------------------------------------------------------------------------------

**Medium: properties of water**

Information
~~~~~~~~~~~

::

Medium: properties of water

::

Extends from
`Medium <Modelica_Thermal_FluidHeatFlow_Media.html#Modelica.Thermal.FluidHeatFlow.Media.Medium>`_
(Record containing media properties).

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| Type                                                                                    | Name    | Default   | Description                                              |
+=========================================================================================+=========+===========+==========================================================+
| `Density <Modelica_SIunits.html#Modelica.SIunits.Density>`_                             | rho     | 995.6     | Density [kg/m3]                                          |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cp      | 4177      | Specific heat capacity at constant pressure [J/(kg.K)]   |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `SpecificHeatCapacity <Modelica_SIunits.html#Modelica.SIunits.SpecificHeatCapacity>`_   | cv      | 4177      | Specific heat capacity at constant volume [J/(kg.K)]     |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `ThermalConductivity <Modelica_SIunits.html#Modelica.SIunits.ThermalConductivity>`_     | lamda   | 0.615     | Thermal conductivity [W/(m.K)]                           |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+
| `KinematicViscosity <Modelica_SIunits.html#Modelica.SIunits.KinematicViscosity>`_       | nue     | 0.8E-6    | Kinematic viscosity [m2/s]                               |
+-----------------------------------------------------------------------------------------+---------+-----------+----------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    record Water "Medium: properties of water"
    extends Medium(
      rho=995.6,
      cp=4177,
      cv=4177,
      lamda=0.615,
      nue=0.8E-6);
    end Water;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:43
2010.

.. |Modelica.Thermal.FluidHeatFlow.Media.Medium| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |Modelica.Thermal.FluidHeatFlow.Media.Air\_30degC| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |Modelica.Thermal.FluidHeatFlow.Media.Air\_70degC| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |Modelica.Thermal.FluidHeatFlow.Media.Water| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |image4| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |image5| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |image6| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |image7| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumS.png
.. |image8| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumI.png
.. |image9| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumI.png
.. |image10| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumI.png
.. |image11| image:: Modelica.Thermal.FluidHeatFlow.Media.MediumI.png
