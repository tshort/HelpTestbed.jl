====================================
Modelica.Blocks.Math.UnitConversions
====================================

`Modelica.Blocks.Math <Modelica_Blocks_Math.html#Modelica.Blocks.Math>`_.UnitConversions
----------------------------------------------------------------------------------------

**Conversion blocks to convert between SI and non-SI unit signals**

Information
~~~~~~~~~~~

::

This package consists of blocks that convert an input signal with a
specific unit to an output signal in another unit (e.g., conversion of
an angle signal from "deg" to "rad"). Block "ConvertAllUnits" converts
between a set of units that can be selected in a pull-down menu of the
parameter menu. All other blocks convert exactly between two different
units.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| Name                                                                                                                                                               | Description                                                |
+====================================================================================================================================================================+============================================================+
| |image26| `To\_degC <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_degC>`_                                                     | Convert from Kelvin to degCelsius                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image27| `From\_degC <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_degC>`_                                                 | Convert from degCelsius to Kelvin                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image28| `To\_degF <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_degF>`_                                                     | Convert from Kelvin to degFahrenheit                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image29| `From\_degF <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_degF>`_                                                 | Convert from degFahrenheit to Kelvin                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image30| `To\_degRk <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_degRk>`_                                                   | Convert from Kelvin to degRankine                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image31| `From\_degRk <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_degRk>`_                                               | Convert from degRankine to Kelvin                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image32| `To\_deg <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_deg>`_                                                       | Convert from radian to degree                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image33| `From\_deg <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_deg>`_                                                   | Convert from degree to radian                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image34| `To\_rpm <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_rpm>`_                                                       | Convert from radian per second to revolutions per minute   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image35| `From\_rpm <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_rpm>`_                                                   | Convert from revolutions per minute to radian per second   |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image36| `To\_kmh <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_kmh>`_                                                       | Convert from metre per second to kilometre per hour        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image37| `From\_kmh <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_kmh>`_                                                   | Convert from kilometre per hour to metre per second        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image38| `To\_day <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_day>`_                                                       | Convert from second to day                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image39| `From\_day <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_day>`_                                                   | Convert from day to second                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image40| `To\_hour <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_hour>`_                                                     | Convert from second to hour                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image41| `From\_hour <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_hour>`_                                                 | Convert from hour to second                                |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image42| `To\_minute <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_minute>`_                                                 | Convert from second to minute                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image43| `From\_minute <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_minute>`_                                             | Convert from minute to second                              |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image44| `To\_litre <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_litre>`_                                                   | Convert from cubic metre to litre                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image45| `From\_litre <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_litre>`_                                               | Convert from litre to cubic metre                          |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image46| `To\_kWh <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_kWh>`_                                                       | Convert from Joule to kilo Watt hour                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image47| `From\_kWh <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_kWh>`_                                                   | Convert from kilo Watt hour to Joule                       |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image48| `To\_bar <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_bar>`_                                                       | Convert from Pascal to bar                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image49| `From\_bar <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_bar>`_                                                   | Convert from bar to Pascal                                 |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image50| `To\_gps <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.To_gps>`_                                                       | Convert from kilogram per second to gram per second        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image51| `From\_gps <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions.From_gps>`_                                                   | Convert from gram per second to kilogram per second        |
+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+

--------------

|image52| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_degC
-------------------------------------------------------------------------------------------------------------------------------------------

**Convert from Kelvin to degCelsius**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_degC

   Modelica.Blocks.Math.UnitConversions.To\_degC

Information
~~~~~~~~~~~

::

This block converts the input signal from Kelvin to degCelsius and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_degC "Convert from Kelvin to degCelsius"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="K"), y(
            unit="degC"));

    equation 
      y = SI.Conversions.to_degC(u);
    end To_degC;

--------------

|image53| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_degC
---------------------------------------------------------------------------------------------------------------------------------------------

**Convert from degCelsius to Kelvin**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_degC

   Modelica.Blocks.Math.UnitConversions.From\_degC

Information
~~~~~~~~~~~

::

This block converts the input signal from degCelsius to Kelvin and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_degC "Convert from degCelsius to Kelvin"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="degC"),
          y(unit="K"));
    equation 
      y = SI.Conversions.from_degC(u);
    end From_degC;

--------------

|image54| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_degF
-------------------------------------------------------------------------------------------------------------------------------------------

**Convert from Kelvin to degFahrenheit**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_degF

   Modelica.Blocks.Math.UnitConversions.To\_degF

Information
~~~~~~~~~~~

::

This block converts the input signal from Kelvin to degFahrenheit and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_degF "Convert from Kelvin to degFahrenheit"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="K"), y(
            unit="degF"));
    equation 
      y = SI.Conversions.to_degF(u);
    end To_degF;

--------------

|image55| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_degF
---------------------------------------------------------------------------------------------------------------------------------------------

**Convert from degFahrenheit to Kelvin**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_degF

   Modelica.Blocks.Math.UnitConversions.From\_degF

Information
~~~~~~~~~~~

::

This block converts the input signal from degFahrenheit to Kelvin and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_degF "Convert from degFahrenheit to Kelvin"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="degF"),
          y(unit="K"));
    equation 
      y = SI.Conversions.from_degF(u);
    end From_degF;

--------------

|image56| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_degRk
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from Kelvin to degRankine**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_degRk

   Modelica.Blocks.Math.UnitConversions.To\_degRk

Information
~~~~~~~~~~~

::

This block converts the input signal from Kelvin to degRankine and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_degRk "Convert from Kelvin to degRankine"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="K"), y(
            unit="degRk"));
    equation 
      y = SI.Conversions.to_degRk(u);
    end To_degRk;

--------------

|image57| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_degRk
----------------------------------------------------------------------------------------------------------------------------------------------

**Convert from degRankine to Kelvin**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_degRk

   Modelica.Blocks.Math.UnitConversions.From\_degRk

Information
~~~~~~~~~~~

::

This block converts the input signal from degRankine to Kelvin and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_degRk "Convert from degRankine to Kelvin"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="degRk"),
          y(unit="K"));
    equation 
      y = SI.Conversions.from_degRk(u);
    end From_degRk;

--------------

|image58| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_deg
------------------------------------------------------------------------------------------------------------------------------------------

**Convert from radian to degree**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_deg

   Modelica.Blocks.Math.UnitConversions.To\_deg

Information
~~~~~~~~~~~

::

This block converts the input signal from radian to degree and returns
the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_deg "Convert from radian to degree"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="rad"),
          y(unit="deg"));
    equation 
      y = SI.Conversions.to_deg(u);
    end To_deg;

--------------

|image59| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_deg
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from degree to radian**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_deg

   Modelica.Blocks.Math.UnitConversions.From\_deg

Information
~~~~~~~~~~~

::

This block converts the input signal from degree to radian and returns
the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_deg "Convert from degree to radian"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="deg"),
          y(unit="rad"));
    equation 
      y = SI.Conversions.from_deg(u);
    end From_deg;

--------------

|image60| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_rpm
------------------------------------------------------------------------------------------------------------------------------------------

**Convert from radian per second to revolutions per minute**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_rpm

   Modelica.Blocks.Math.UnitConversions.To\_rpm

Information
~~~~~~~~~~~

::

This block converts the input signal from radian per second to
revolutions per minute and returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_rpm 
      "Convert from radian per second to revolutions per minute"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="rad/s"),
          y(unit="1/min"));
    equation 
      y = SI.Conversions.to_rpm(u);
    end To_rpm;

--------------

|image61| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_rpm
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from revolutions per minute to radian per second**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_rpm

   Modelica.Blocks.Math.UnitConversions.From\_rpm

Information
~~~~~~~~~~~

::

This block converts the input signal from revolutions per minute to
radian per second and returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_rpm 
      "Convert from revolutions per minute to radian per second"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit=
              "1/min"), y(unit="rad/s"));
    equation 
      y = SI.Conversions.from_rpm(u);
    end From_rpm;

--------------

|image62| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_kmh
------------------------------------------------------------------------------------------------------------------------------------------

**Convert from metre per second to kilometre per hour**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_kmh

   Modelica.Blocks.Math.UnitConversions.To\_kmh

Information
~~~~~~~~~~~

::

This block converts the input signal from metre per second to kilometre
per hour and returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_kmh "Convert from metre per second to kilometre per hour"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="m/s"),
          y(unit="km/h"));
    equation 
      y = SI.Conversions.to_kmh(u);
    end To_kmh;

--------------

|image63| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_kmh
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from kilometre per hour to metre per second**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_kmh

   Modelica.Blocks.Math.UnitConversions.From\_kmh

Information
~~~~~~~~~~~

::

This block converts the input signal from kilometre per hour to metre
per second and returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_kmh "Convert from kilometre per hour to metre per second"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="km/h"),
          y(unit="m/s"));
    equation 
      y = SI.Conversions.from_kmh(u);
    end From_kmh;

--------------

|image64| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_day
------------------------------------------------------------------------------------------------------------------------------------------

**Convert from second to day**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_day

   Modelica.Blocks.Math.UnitConversions.To\_day

Information
~~~~~~~~~~~

::

This block converts the input signal from second to day and returns the
result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_day "Convert from second to day"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="s"), y(
            unit="d"));
    equation 
      y = SI.Conversions.to_day(u);
    end To_day;

--------------

|image65| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_day
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from day to second**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_day

   Modelica.Blocks.Math.UnitConversions.From\_day

Information
~~~~~~~~~~~

::

This block converts the input signal from day to second and returns the
result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_day "Convert from day to second"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="d"), y(
            unit="s"));
    equation 
      y = SI.Conversions.from_day(u);
    end From_day;

--------------

|image66| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_hour
-------------------------------------------------------------------------------------------------------------------------------------------

**Convert from second to hour**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_hour

   Modelica.Blocks.Math.UnitConversions.To\_hour

Information
~~~~~~~~~~~

::

This block converts the input signal from second to hour and returns the
result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_hour "Convert from second to hour"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="s"), y(
            unit="h"));
    equation 
      y = SI.Conversions.to_hour(u);
    end To_hour;

--------------

|image67| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_hour
---------------------------------------------------------------------------------------------------------------------------------------------

**Convert from hour to second**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_hour

   Modelica.Blocks.Math.UnitConversions.From\_hour

Information
~~~~~~~~~~~

::

This block converts the input signal from hour to second and returns the
result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_hour "Convert from hour to second"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="h"), y(
            unit="s"));
    equation 
      y = SI.Conversions.from_hour(u);
    end From_hour;

--------------

|image68| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_minute
---------------------------------------------------------------------------------------------------------------------------------------------

**Convert from second to minute**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_minute

   Modelica.Blocks.Math.UnitConversions.To\_minute

Information
~~~~~~~~~~~

::

This block converts the input signal from second to minute and returns
the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_minute "Convert from second to minute"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="s"), y(
            unit="min"));
    equation 
      y = SI.Conversions.to_minute(u);
    end To_minute;

--------------

|image69| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_minute
-----------------------------------------------------------------------------------------------------------------------------------------------

**Convert from minute to second**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_minute

   Modelica.Blocks.Math.UnitConversions.From\_minute

Information
~~~~~~~~~~~

::

This block converts the input signal from minute to second and returns
the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_minute "Convert from minute to second"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="min"),
          y(unit="s"));
    equation 
      y = SI.Conversions.from_minute(u);
    end From_minute;

--------------

|image70| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_litre
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from cubic metre to litre**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_litre

   Modelica.Blocks.Math.UnitConversions.To\_litre

Information
~~~~~~~~~~~

::

This block converts the input signal from metre to litre and returns the
result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_litre "Convert from cubic metre to litre"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="m3"), y(
            unit="l"));
    equation 
      y = SI.Conversions.to_litre(u);
    end To_litre;

--------------

|image71| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_litre
----------------------------------------------------------------------------------------------------------------------------------------------

**Convert from litre to cubic metre**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_litre

   Modelica.Blocks.Math.UnitConversions.From\_litre

Information
~~~~~~~~~~~

::

This block converts the input signal from litre to cubic metre and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_litre "Convert from litre to cubic metre"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="l"), y(
            unit="m3"));
    equation 
      y = SI.Conversions.from_litre(u);
    end From_litre;

--------------

|image72| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_kWh
------------------------------------------------------------------------------------------------------------------------------------------

**Convert from Joule to kilo Watt hour**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_kWh

   Modelica.Blocks.Math.UnitConversions.To\_kWh

Information
~~~~~~~~~~~

::

This block converts the input signal from Joule to kilo Watt hour and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_kWh "Convert from Joule to kilo Watt hour"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="J"), y(
            unit="kW.h"));
    equation 
      y = SI.Conversions.to_kWh(u);
    end To_kWh;

--------------

|image73| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_kWh
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from kilo Watt hour to Joule**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_kWh

   Modelica.Blocks.Math.UnitConversions.From\_kWh

Information
~~~~~~~~~~~

::

This block converts the input signal from kilo Watt hour to Joule and
returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_kWh "Convert from kilo Watt hour to Joule"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="kW.h"),
          y(unit="J"));
    equation 
      y = SI.Conversions.from_kWh(u);
    end From_kWh;

--------------

|image74| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_bar
------------------------------------------------------------------------------------------------------------------------------------------

**Convert from Pascal to bar**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_bar

   Modelica.Blocks.Math.UnitConversions.To\_bar

Information
~~~~~~~~~~~

::

This block converts the input signal from Pascal to bar and returns the
result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_bar "Convert from Pascal to bar"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="Pa"), y(
            unit="bar"));
    equation 
      y = SI.Conversions.to_bar(u);
    end To_bar;

--------------

|image75| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_bar
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from bar to Pascal**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_bar

   Modelica.Blocks.Math.UnitConversions.From\_bar

Information
~~~~~~~~~~~

::

This block converts the input signal from bar to Pascal and returns the
result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_bar "Convert from bar to Pascal"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="bar"),
          y(unit="Pa"));
    equation 
      y = SI.Conversions.from_bar(u);
    end From_bar;

--------------

|image76| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.To\_gps
------------------------------------------------------------------------------------------------------------------------------------------

**Convert from kilogram per second to gram per second**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.To\_gps

   Modelica.Blocks.Math.UnitConversions.To\_gps

Information
~~~~~~~~~~~

::

This block converts the input signal from kilogram per second to gram
per seconds and returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block To_gps "Convert from kilogram per second to gram per second"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="kg/s"),
          y(unit="g/s"));
    equation 
      y = SI.Conversions.to_gps(u);
    end To_gps;

--------------

|image77| `Modelica.Blocks.Math.UnitConversions <Modelica_Blocks_Math_UnitConversions.html#Modelica.Blocks.Math.UnitConversions>`_.From\_gps
--------------------------------------------------------------------------------------------------------------------------------------------

**Convert from gram per second to kilogram per second**

.. figure:: Modelica.Blocks.Math.UnitConversions.To_degCD.png
   :align: center
   :alt: Modelica.Blocks.Math.UnitConversions.From\_gps

   Modelica.Blocks.Math.UnitConversions.From\_gps

Information
~~~~~~~~~~~

::

This block converts the input signal from gram per second to kilogram
per second and returns the result as output signal.

::

Extends from
`Modelica.Blocks.Interfaces.PartialConversionBlock <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialConversionBlock>`_
(Partial block defining the interface for conversion blocks).

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block From_gps "Convert from gram per second to kilogram per second"
      extends Modelica.Blocks.Interfaces.PartialConversionBlock(u(unit="g/s"),
          y(unit="kg/s"));
    equation 
      y = SI.Conversions.from_gps(u);
    end From_gps;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:39
2010.

.. |Modelica.Blocks.Math.UnitConversions.To\_degC| image:: Modelica.Blocks.Math.UnitConversions.To_degCS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_degC| image:: Modelica.Blocks.Math.UnitConversions.From_degCS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_degF| image:: Modelica.Blocks.Math.UnitConversions.To_degFS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_degF| image:: Modelica.Blocks.Math.UnitConversions.From_degFS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_degRk| image:: Modelica.Blocks.Math.UnitConversions.To_degRkS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_degRk| image:: Modelica.Blocks.Math.UnitConversions.From_degRkS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_deg| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_deg| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_rpm| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_rpm| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_kmh| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_kmh| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_day| image:: Modelica.Blocks.Math.UnitConversions.To_dayS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_day| image:: Modelica.Blocks.Math.UnitConversions.From_dayS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_hour| image:: Modelica.Blocks.Math.UnitConversions.To_hourS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_hour| image:: Modelica.Blocks.Math.UnitConversions.From_hourS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_minute| image:: Modelica.Blocks.Math.UnitConversions.To_minuteS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_minute| image:: Modelica.Blocks.Math.UnitConversions.From_minuteS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_litre| image:: Modelica.Blocks.Math.UnitConversions.To_litreS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_litre| image:: Modelica.Blocks.Math.UnitConversions.To_litreS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_kWh| image:: Modelica.Blocks.Math.UnitConversions.To_kWhS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_kWh| image:: Modelica.Blocks.Math.UnitConversions.From_kWhS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_bar| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_bar| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |Modelica.Blocks.Math.UnitConversions.To\_gps| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |Modelica.Blocks.Math.UnitConversions.From\_gps| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |image26| image:: Modelica.Blocks.Math.UnitConversions.To_degCS.png
.. |image27| image:: Modelica.Blocks.Math.UnitConversions.From_degCS.png
.. |image28| image:: Modelica.Blocks.Math.UnitConversions.To_degFS.png
.. |image29| image:: Modelica.Blocks.Math.UnitConversions.From_degFS.png
.. |image30| image:: Modelica.Blocks.Math.UnitConversions.To_degRkS.png
.. |image31| image:: Modelica.Blocks.Math.UnitConversions.From_degRkS.png
.. |image32| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |image33| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |image34| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |image35| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |image36| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |image37| image:: Modelica.Blocks.Math.UnitConversions.To_degS.png
.. |image38| image:: Modelica.Blocks.Math.UnitConversions.To_dayS.png
.. |image39| image:: Modelica.Blocks.Math.UnitConversions.From_dayS.png
.. |image40| image:: Modelica.Blocks.Math.UnitConversions.To_hourS.png
.. |image41| image:: Modelica.Blocks.Math.UnitConversions.From_hourS.png
.. |image42| image:: Modelica.Blocks.Math.UnitConversions.To_minuteS.png
.. |image43| image:: Modelica.Blocks.Math.UnitConversions.From_minuteS.png
.. |image44| image:: Modelica.Blocks.Math.UnitConversions.To_litreS.png
.. |image45| image:: Modelica.Blocks.Math.UnitConversions.To_litreS.png
.. |image46| image:: Modelica.Blocks.Math.UnitConversions.To_kWhS.png
.. |image47| image:: Modelica.Blocks.Math.UnitConversions.From_kWhS.png
.. |image48| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |image49| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |image50| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |image51| image:: Modelica.Blocks.Math.UnitConversions.To_barS.png
.. |image52| image:: Modelica.Blocks.Math.UnitConversions.To_degCI.png
.. |image53| image:: Modelica.Blocks.Math.UnitConversions.From_degCI.png
.. |image54| image:: Modelica.Blocks.Math.UnitConversions.To_degFI.png
.. |image55| image:: Modelica.Blocks.Math.UnitConversions.From_degFI.png
.. |image56| image:: Modelica.Blocks.Math.UnitConversions.To_degRkI.png
.. |image57| image:: Modelica.Blocks.Math.UnitConversions.From_degRkI.png
.. |image58| image:: Modelica.Blocks.Math.UnitConversions.To_degI.png
.. |image59| image:: Modelica.Blocks.Math.UnitConversions.To_degI.png
.. |image60| image:: Modelica.Blocks.Math.UnitConversions.To_rpmI.png
.. |image61| image:: Modelica.Blocks.Math.UnitConversions.From_rpmI.png
.. |image62| image:: Modelica.Blocks.Math.UnitConversions.To_kmhI.png
.. |image63| image:: Modelica.Blocks.Math.UnitConversions.From_kmhI.png
.. |image64| image:: Modelica.Blocks.Math.UnitConversions.To_dayI.png
.. |image65| image:: Modelica.Blocks.Math.UnitConversions.From_dayI.png
.. |image66| image:: Modelica.Blocks.Math.UnitConversions.To_hourI.png
.. |image67| image:: Modelica.Blocks.Math.UnitConversions.From_hourI.png
.. |image68| image:: Modelica.Blocks.Math.UnitConversions.To_minuteI.png
.. |image69| image:: Modelica.Blocks.Math.UnitConversions.From_minuteI.png
.. |image70| image:: Modelica.Blocks.Math.UnitConversions.To_litreI.png
.. |image71| image:: Modelica.Blocks.Math.UnitConversions.From_litreI.png
.. |image72| image:: Modelica.Blocks.Math.UnitConversions.To_kWhI.png
.. |image73| image:: Modelica.Blocks.Math.UnitConversions.From_kWhI.png
.. |image74| image:: Modelica.Blocks.Math.UnitConversions.To_barI.png
.. |image75| image:: Modelica.Blocks.Math.UnitConversions.To_barI.png
.. |image76| image:: Modelica.Blocks.Math.UnitConversions.To_gpsI.png
.. |image77| image:: Modelica.Blocks.Math.UnitConversions.From_gpsI.png
