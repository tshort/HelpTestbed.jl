=====================================
Modelica.Thermal.HeatTransfer.Rankine
=====================================

`Modelica.Thermal.HeatTransfer <Modelica_Thermal_HeatTransfer.html#Modelica.Thermal.HeatTransfer>`_.Rankine
-----------------------------------------------------------------------------------------------------------

**Components with Rankine input and/or output**

Information
~~~~~~~~~~~

::

The components of this package are provided for the convenience of
people working mostly with Rankine units, since all models in package
HeatTransfer are based on Kelvin units.

Note, that in package SIunits.Conversions, functions are provided to
convert between the units Kelvin, degree Celsius, degree Fahrenheit and
degree Rankine. These functions allow, e.g., a direct conversion of
units at all places where Kelvin is required as parameter. Example:

::

        import SIunits.Conversions.*;
        Modelica.Thermal.HeatTransfer.HeatCapacitor C(T0 = from_degRk(500));

::

Extends from
`Modelica.Icons.VariantsPackage <Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage>`_
(Icon for package containing variants).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| Name                                                                                                                                                                                              | Description                                             |
+===================================================================================================================================================================================================+=========================================================+
| |image5| `ToKelvin <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine.ToKelvin>`_                                                                                  | Conversion block from degRankine to Kelvin              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image6| `FromKelvin <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine.FromKelvin>`_                                                                              | Conversion from Kelvin to degRankine                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image7| `FixedTemperature <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine.FixedTemperature>`_                                                                  | Fixed temperature boundary condition in degRankine      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image8| `PrescribedTemperature <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperature>`_                                                        | Variable temperature boundary condition in degRankine   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+
| |image9| `TemperatureSensor <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensor>`_                                                                | Absolute temperature sensor in degRankine               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------------------------------------------+

--------------

|image10| `Modelica.Thermal.HeatTransfer.Rankine <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine>`_.ToKelvin
----------------------------------------------------------------------------------------------------------------------------------------------

**Conversion block from degRankine to Kelvin**

.. figure:: Modelica.Thermal.HeatTransfer.Rankine.ToKelvinD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Rankine.ToKelvin

   Modelica.Thermal.HeatTransfer.Rankine.ToKelvin

Information
~~~~~~~~~~~

::

This component converts all input signals from degree Rankine to Kelvin
and provides them as output signals.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 1         | Number of inputs (= number of outputs)   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                           | Name      | Description   |
+================================================================================================+===========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | Rankine   |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | Kelvin    |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ToKelvin "Conversion block from degRankine to Kelvin"
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      Modelica.Blocks.Interfaces.RealInput Rankine;
      Modelica.Blocks.Interfaces.RealOutput Kelvin;
    equation 
      Kelvin = from_degRk(Rankine);
    end ToKelvin;

--------------

|image11| `Modelica.Thermal.HeatTransfer.Rankine <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine>`_.FromKelvin
------------------------------------------------------------------------------------------------------------------------------------------------

**Conversion from Kelvin to degRankine**

.. figure:: Modelica.Thermal.HeatTransfer.Rankine.FromKelvinD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Rankine.FromKelvin

   Modelica.Thermal.HeatTransfer.Rankine.FromKelvin

Information
~~~~~~~~~~~

::

This component converts all input signals from Kelvin to Rankine and
provides them as output signals.

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+------------------------------------------+
| Type      | Name   | Default   | Description                              |
+===========+========+===========+==========================================+
| Integer   | n      | 1         | Number of inputs (= number of outputs)   |
+-----------+--------+-----------+------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                           | Name      | Description   |
+================================================================================================+===========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | Kelvin    |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | Rankine   |               |
+------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FromKelvin "Conversion from Kelvin to degRankine"
      parameter Integer n=1 "Number of inputs (= number of outputs)";
      Modelica.Blocks.Interfaces.RealInput Kelvin;
      Modelica.Blocks.Interfaces.RealOutput Rankine;
    equation 
      Rankine = to_degRk(Kelvin);
    end FromKelvin;

--------------

|image12| `Modelica.Thermal.HeatTransfer.Rankine <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine>`_.FixedTemperature
------------------------------------------------------------------------------------------------------------------------------------------------------

**Fixed temperature boundary condition in degRankine**

.. figure:: Modelica.Thermal.HeatTransfer.Rankine.FixedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Rankine.FixedTemperature

   Modelica.Thermal.HeatTransfer.Rankine.FixedTemperature

Information
~~~~~~~~~~~

::

This model defines a fixed temperature T at its port in degree Rankine,
[degRk], i.e., it defines a fixed temperature as a boundary condition.

::

Parameters
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+
| Type                                                                                                                             | Name   | Default   | Description                             |
+==================================================================================================================================+========+===========+=========================================+
| `Temperature\_degRk <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk>`_   | T      |           | Fixed Temperature at the port [degRk]   |
+----------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model FixedTemperature 
      "Fixed temperature boundary condition in degRankine"

      parameter Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk T 
        "Fixed Temperature at the port";
      Interfaces.HeatPort_b port;
    equation 
      port.T = from_degRk(T);
    end FixedTemperature;

--------------

|image13| `Modelica.Thermal.HeatTransfer.Rankine <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine>`_.PrescribedTemperature
-----------------------------------------------------------------------------------------------------------------------------------------------------------

**Variable temperature boundary condition in degRankine**

.. figure:: Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperatureD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperature

   Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperature

Information
~~~~~~~~~~~

::

This model represents a variable temperature boundary condition The
temperature value in degree Rankine, [degRk] is given by the input
signal to the model. The effect is that an instance of this model acts
as an infinite reservoir able to absorb or generate as much energy as
required to keep the temperature at the specified value.

::

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| `HeatPort\_b <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                            | T      |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PrescribedTemperature 
      "Variable temperature boundary condition in degRankine"

      Interfaces.HeatPort_b port;
      Modelica.Blocks.Interfaces.RealInput T;
    equation 
      port.T = from_degRk(T);
    end PrescribedTemperature;

--------------

|image14| `Modelica.Thermal.HeatTransfer.Rankine <Modelica_Thermal_HeatTransfer_Rankine.html#Modelica.Thermal.HeatTransfer.Rankine>`_.TemperatureSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------

**Absolute temperature sensor in degRankine**

.. figure:: Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensorD.png
   :align: center
   :alt: Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensor

   Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensor

Information
~~~~~~~~~~~

::

This is an ideal absolute temperature sensor which returns the
temperature of the connected port in Rankine as an output signal. The
sensor itself has no thermal interaction with whatever it is connected
to. Furthermore, no thermocouple-like lags are associated with this
sensor model.

::

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                 | Name   | Description   |
+======================================================================================================================+========+===============+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                         | T      |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | port   |               |
+----------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model TemperatureSensor "Absolute temperature sensor in degRankine"

      Modelica.Blocks.Interfaces.RealOutput T;
      Interfaces.HeatPort_a port;
    equation 
      T = to_degRk(port.T);
      port.Q_flow = 0;
    end TemperatureSensor;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:47
2010.

.. |Modelica.Thermal.HeatTransfer.Rankine.ToKelvin| image:: Modelica.Thermal.HeatTransfer.Rankine.ToKelvinS.png
.. |Modelica.Thermal.HeatTransfer.Rankine.FromKelvin| image:: Modelica.Thermal.HeatTransfer.Rankine.FromKelvinS.png
.. |Modelica.Thermal.HeatTransfer.Rankine.FixedTemperature| image:: Modelica.Thermal.HeatTransfer.Rankine.FixedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperature| image:: Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperatureS.png
.. |Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensor| image:: Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensorS.png
.. |image5| image:: Modelica.Thermal.HeatTransfer.Rankine.ToKelvinS.png
.. |image6| image:: Modelica.Thermal.HeatTransfer.Rankine.FromKelvinS.png
.. |image7| image:: Modelica.Thermal.HeatTransfer.Rankine.FixedTemperatureS.png
.. |image8| image:: Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperatureS.png
.. |image9| image:: Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensorS.png
.. |image10| image:: Modelica.Thermal.HeatTransfer.Rankine.ToKelvinI.png
.. |image11| image:: Modelica.Thermal.HeatTransfer.Rankine.FromKelvinI.png
.. |image12| image:: Modelica.Thermal.HeatTransfer.Rankine.FixedTemperatureI.png
.. |image13| image:: Modelica.Thermal.HeatTransfer.Rankine.PrescribedTemperatureI.png
.. |image14| image:: Modelica.Thermal.HeatTransfer.Rankine.TemperatureSensorI.png
