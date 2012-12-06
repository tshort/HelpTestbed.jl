============================
Modelica.SIunits.Conversions
============================

`Modelica.SIunits <Modelica_SIunits.html#Modelica.SIunits>`_.Conversions
------------------------------------------------------------------------

**Conversion functions to/from non SI units and type definitions of non
SI units**

Information
~~~~~~~~~~~

::

This package provides conversion functions from the non SI Units defined
in package Modelica.SIunits.Conversions.NonSIunits to the corresponding
SI Units defined in package Modelica.SIunits and vice versa. It is
recommended to use these functions in the following way (note, that all
functions have one Real input and one Real output argument):

::

      import SI = Modelica.SIunits;
      import Modelica.SIunits.Conversions.*;
         ...
      parameter SI.Temperature     T   = from_degC(25);   // convert 25 degree Celsius to Kelvin
      parameter SI.Angle           phi = from_deg(180);   // convert 180 degree to radian
      parameter SI.AngularVelocity w   = from_rpm(3600);  // convert 3600 revolutions per minutes
                                                          // to radian per seconds

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| Name                                                                                                                                              | Description                                                |
+===================================================================================================================================================+============================================================+
| |image36| `NonSIunits <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits>`_                                    | Type definitions of non SI units                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image37| `to\_degC <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_degC>`_                                                    | Convert from Kelvin to degCelsius                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image38| `from\_degC <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_degC>`_                                                | Convert from degCelsius to Kelvin                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image39| `to\_degF <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_degF>`_                                                    | Convert from Kelvin to degFahrenheit                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image40| `from\_degF <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_degF>`_                                                | Convert from degFahrenheit to Kelvin                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image41| `to\_degRk <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_degRk>`_                                                  | Convert from Kelvin to degRankine                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image42| `from\_degRk <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_degRk>`_                                              | Convert from degRankine to Kelvin                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image43| `to\_deg <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_deg>`_                                                      | Convert from radian to degree                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image44| `from\_deg <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_deg>`_                                                  | Convert from degree to radian                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image45| `to\_rpm <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_rpm>`_                                                      | Convert from radian per second to revolutions per minute   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image46| `from\_rpm <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_rpm>`_                                                  | Convert from revolutions per minute to radian per second   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image47| `to\_kmh <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_kmh>`_                                                      | Convert from metre per second to kilometre per hour        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image48| `from\_kmh <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_kmh>`_                                                  | Convert from kilometre per hour to metre per second        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image49| `to\_day <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_day>`_                                                      | Convert from second to day                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image50| `from\_day <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_day>`_                                                  | Convert from day to second                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image51| `to\_hour <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_hour>`_                                                    | Convert from second to hour                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image52| `from\_hour <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_hour>`_                                                | Convert from hour to second                                |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image53| `to\_minute <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_minute>`_                                                | Convert from second to minute                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image54| `from\_minute <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_minute>`_                                            | Convert from minute to second                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image55| `to\_litre <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_litre>`_                                                  | Convert from cubic metre to litre                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image56| `from\_litre <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_litre>`_                                              | Convert from litre to cubic metre                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image57| `from\_Ah <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_Ah>`_                                                    | Convert from Ampere hours to Coulomb                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image58| `to\_Ah <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_Ah>`_                                                        | Convert from Coulomb to Ampere hours                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image59| `from\_Wh <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_Wh>`_                                                    | Convert from Watt hour to Joule                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image60| `to\_Wh <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_Wh>`_                                                        | Convert from Joule to Watt hour                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image61| `to\_kWh <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_kWh>`_                                                      | Convert from Joule to kilo Watt hour                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image62| `from\_kWh <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_kWh>`_                                                  | Convert from kilo Watt hour to Joule                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image63| `to\_bar <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_bar>`_                                                      | Convert from Pascal to bar                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image64| `from\_bar <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_bar>`_                                                  | Convert from bar to Pascal                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image65| `to\_gps <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_gps>`_                                                      | Convert from kilogram per second to gram per second        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image66| `from\_gps <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_gps>`_                                                  | Convert from gram per second to kilogram per second        |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image67| `ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_                                       | Base icon for conversion functions                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image68| `from\_Hz <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_Hz>`_                                                    | Convert from Hz to rad/s                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image69| `to\_Hz <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_Hz>`_                                                        | Convert from rad/s to Hz                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image70| `to\_cm2 <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.to_cm2>`_                                                      | Convert from square metre to square centrimetre            |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+
| |image71| `from\_cm2 <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.from_cm2>`_                                                  | Convert from square centrimetre to square metre            |
+---------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------+

--------------

|image72| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_degC
-------------------------------------------------------------------------------------------------------------------

**Convert from Kelvin to degCelsius**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+--------------------+
| Type                                                                  | Name     | Default   | Description        |
+=======================================================================+==========+===========+====================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Kelvin   |           | Kelvin value [K]   |
+-----------------------------------------------------------------------+----------+-----------+--------------------+

Outputs
~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------+
| Type                                                                                                                           | Name      | Description            |
+================================================================================================================================+===========+========================+
| `Temperature\_degC <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degC>`_   | Celsius   | Celsius value [degC]   |
+--------------------------------------------------------------------------------------------------------------------------------+-----------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_degC "Convert from Kelvin to degCelsius"
      extends ConversionIcon;
      input Temperature Kelvin "Kelvin value";
      output NonSIunits.Temperature_degC Celsius "Celsius value";
    algorithm 
      Celsius := Kelvin + Modelica.Constants.T_zero;
    end to_degC;

--------------

|image73| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_degC
---------------------------------------------------------------------------------------------------------------------

**Convert from degCelsius to Kelvin**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------+
| Type                                                                                                                           | Name      | Default   | Description            |
+================================================================================================================================+===========+===========+========================+
| `Temperature\_degC <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degC>`_   | Celsius   |           | Celsius value [degC]   |
+--------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+----------+--------------------+
| Type                                                                  | Name     | Description        |
+=======================================================================+==========+====================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Kelvin   | Kelvin value [K]   |
+-----------------------------------------------------------------------+----------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_degC "Convert from degCelsius to Kelvin"
      extends ConversionIcon;
      input NonSIunits.Temperature_degC Celsius "Celsius value";
      output Temperature Kelvin "Kelvin value";
    algorithm 
      Kelvin := Celsius - Modelica.Constants.T_zero;
    end from_degC;

--------------

|image74| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_degF
-------------------------------------------------------------------------------------------------------------------

**Convert from Kelvin to degFahrenheit**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+--------------------+
| Type                                                                  | Name     | Default   | Description        |
+=======================================================================+==========+===========+====================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Kelvin   |           | Kelvin value [K]   |
+-----------------------------------------------------------------------+----------+-----------+--------------------+

Outputs
~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+--------------+---------------------------+
| Type                                                                                                                           | Name         | Description               |
+================================================================================================================================+==============+===========================+
| `Temperature\_degF <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degF>`_   | Fahrenheit   | Fahrenheit value [degF]   |
+--------------------------------------------------------------------------------------------------------------------------------+--------------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_degF "Convert from Kelvin to degFahrenheit"
      extends ConversionIcon;
      input Temperature Kelvin "Kelvin value";
      output NonSIunits.Temperature_degF Fahrenheit "Fahrenheit value";
    algorithm 
      Fahrenheit := (Kelvin + Modelica.Constants.T_zero)*(9/5) + 32;
    end to_degF;

--------------

|image75| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_degF
---------------------------------------------------------------------------------------------------------------------

**Convert from degFahrenheit to Kelvin**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+--------------+-----------+---------------------------+
| Type                                                                                                                           | Name         | Default   | Description               |
+================================================================================================================================+==============+===========+===========================+
| `Temperature\_degF <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degF>`_   | Fahrenheit   |           | Fahrenheit value [degF]   |
+--------------------------------------------------------------------------------------------------------------------------------+--------------+-----------+---------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+----------+--------------------+
| Type                                                                  | Name     | Description        |
+=======================================================================+==========+====================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Kelvin   | Kelvin value [K]   |
+-----------------------------------------------------------------------+----------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_degF "Convert from degFahrenheit to Kelvin"
      extends ConversionIcon;
      input NonSIunits.Temperature_degF Fahrenheit "Fahrenheit value";
      output Temperature Kelvin "Kelvin value";
    algorithm 
      Kelvin := (Fahrenheit - 32)*(5/9) - Modelica.Constants.T_zero;
    end from_degF;

--------------

|image76| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_degRk
--------------------------------------------------------------------------------------------------------------------

**Convert from Kelvin to degRankine**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------+----------+-----------+--------------------+
| Type                                                                  | Name     | Default   | Description        |
+=======================================================================+==========+===========+====================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Kelvin   |           | Kelvin value [K]   |
+-----------------------------------------------------------------------+----------+-----------+--------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------+
| Type                                                                                                                             | Name      | Description             |
+==================================================================================================================================+===========+=========================+
| `Temperature\_degRk <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk>`_   | Rankine   | Rankine value [degRk]   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_degRk "Convert from Kelvin to degRankine"
      extends ConversionIcon;
      input Temperature Kelvin "Kelvin value";
      output NonSIunits.Temperature_degRk Rankine "Rankine value";
    algorithm 
      Rankine := (9/5)*Kelvin;
    end to_degRk;

--------------

|image77| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_degRk
----------------------------------------------------------------------------------------------------------------------

**Convert from degRankine to Kelvin**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+
| Type                                                                                                                             | Name      | Default   | Description             |
+==================================================================================================================================+===========+===========+=========================+
| `Temperature\_degRk <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk>`_   | Rankine   |           | Rankine value [degRk]   |
+----------------------------------------------------------------------------------------------------------------------------------+-----------+-----------+-------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------+----------+--------------------+
| Type                                                                  | Name     | Description        |
+=======================================================================+==========+====================+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | Kelvin   | Kelvin value [K]   |
+-----------------------------------------------------------------------+----------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_degRk "Convert from degRankine to Kelvin"
      extends ConversionIcon;
      input NonSIunits.Temperature_degRk Rankine "Rankine value";
      output Temperature Kelvin "Kelvin value";
    algorithm 
      Kelvin := (5/9)*Rankine;
    end from_degRk;

--------------

|image78| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_deg
------------------------------------------------------------------------------------------------------------------

**Convert from radian to degree**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-----------------------------------------------------------+----------+-----------+----------------------+
| Type                                                      | Name     | Default   | Description          |
+===========================================================+==========+===========+======================+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | radian   |           | radian value [rad]   |
+-----------------------------------------------------------+----------+-----------+----------------------+

Outputs
~~~~~~~

+------------------------------------------------------------------------------------------------------------------+----------+----------------------+
| Type                                                                                                             | Name     | Description          |
+==================================================================================================================+==========+======================+
| `Angle\_deg <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Angle_deg>`_   | degree   | degree value [deg]   |
+------------------------------------------------------------------------------------------------------------------+----------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_deg "Convert from radian to degree"
      extends ConversionIcon;
      input Angle radian "radian value";
      output NonSIunits.Angle_deg degree "degree value";
    algorithm 
      degree := (180.0/Modelica.Constants.pi)*radian;
    end to_deg;

--------------

|image79| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_deg
--------------------------------------------------------------------------------------------------------------------

**Convert from degree to radian**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------+
| Type                                                                                                             | Name     | Default   | Description          |
+==================================================================================================================+==========+===========+======================+
| `Angle\_deg <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Angle_deg>`_   | degree   |           | degree value [deg]   |
+------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------+----------+----------------------+
| Type                                                      | Name     | Description          |
+===========================================================+==========+======================+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_   | radian   | radian value [rad]   |
+-----------------------------------------------------------+----------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_deg "Convert from degree to radian"
      extends ConversionIcon;
      input NonSIunits.Angle_deg degree "degree value";
      output Angle radian "radian value";
    algorithm 
      radian := (Modelica.Constants.pi/180.0)*degree;
    end from_deg;

--------------

|image80| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_rpm
------------------------------------------------------------------------------------------------------------------

**Convert from radian per second to revolutions per minute**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                                          | Name   | Default   | Description                       |
+===============================================================================+========+===========+===================================+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | rs     |           | radian per second value [rad/s]   |
+-------------------------------------------------------------------------------+--------+-----------+-----------------------------------+

Outputs
~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                                                                                 | Name   | Description                            |
+======================================================================================================================================+========+========================================+
| `AngularVelocity\_rpm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm>`_   | rpm    | revolutions per minute value [1/min]   |
+--------------------------------------------------------------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_rpm 
      "Convert from radian per second to revolutions per minute"
      extends ConversionIcon;
      input AngularVelocity rs "radian per second value";
      output NonSIunits.AngularVelocity_rpm rpm "revolutions per minute value";
    algorithm 
      rpm := (30/Modelica.Constants.pi)*rs;
    end to_rpm;

--------------

|image81| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_rpm
--------------------------------------------------------------------------------------------------------------------

**Convert from revolutions per minute to radian per second**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------------------+
| Type                                                                                                                                 | Name   | Default   | Description                            |
+======================================================================================================================================+========+===========+========================================+
| `AngularVelocity\_rpm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm>`_   | rpm    |           | revolutions per minute value [1/min]   |
+--------------------------------------------------------------------------------------------------------------------------------------+--------+-----------+----------------------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                          | Name   | Description                       |
+===============================================================================+========+===================================+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | rs     | radian per second value [rad/s]   |
+-------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_rpm 
      "Convert from revolutions per minute to radian per second"
      extends ConversionIcon;
      input NonSIunits.AngularVelocity_rpm rpm "revolutions per minute value";
      output AngularVelocity rs "radian per second value";
    algorithm 
      rs := (Modelica.Constants.pi/30)*rpm;
    end from_rpm;

--------------

|image82| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_kmh
------------------------------------------------------------------------------------------------------------------

**Convert from metre per second to kilometre per hour**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+--------------------------------+
| Type                                                            | Name   | Default   | Description                    |
+=================================================================+========+===========+================================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | ms     |           | metre per second value [m/s]   |
+-----------------------------------------------------------------+--------+-----------+--------------------------------+

Outputs
~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                                                   | Name   | Description                       |
+========================================================================================================================+========+===================================+
| `Velocity\_kmh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Velocity_kmh>`_   | kmh    | kilometre per hour value [km/h]   |
+------------------------------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_kmh "Convert from metre per second to kilometre per hour"
      extends ConversionIcon;
      input Velocity ms "metre per second value";
      output NonSIunits.Velocity_kmh kmh "kilometre per hour value";
    algorithm 
      kmh := 3.6*ms;
    end to_kmh;

--------------

|image83| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_kmh
--------------------------------------------------------------------------------------------------------------------

**Convert from kilometre per hour to metre per second**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------+
| Type                                                                                                                   | Name   | Default   | Description                       |
+========================================================================================================================+========+===========+===================================+
| `Velocity\_kmh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Velocity_kmh>`_   | kmh    |           | kilometre per hour value [km/h]   |
+------------------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+--------------------------------+
| Type                                                            | Name   | Description                    |
+=================================================================+========+================================+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_   | ms     | metre per second value [m/s]   |
+-----------------------------------------------------------------+--------+--------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_kmh 
      "Convert from kilometre per hour to metre per second"
      extends ConversionIcon;
      input NonSIunits.Velocity_kmh kmh "kilometre per hour value";
      output Velocity ms "metre per second value";
    algorithm 
      ms := kmh/3.6;
    end from_kmh;

--------------

|image84| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_day
------------------------------------------------------------------------------------------------------------------

**Convert from second to day**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+---------------------------------------------------------+--------+-----------+--------------------+
| Type                                                    | Name   | Default   | Description        |
+=========================================================+========+===========+====================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | s      |           | second value [s]   |
+---------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------+--------+-----------------+
| Type                                                                                                           | Name   | Description     |
+================================================================================================================+========+=================+
| `Time\_day <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_day>`_   | day    | day value [d]   |
+----------------------------------------------------------------------------------------------------------------+--------+-----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_day "Convert from second to day"
      extends ConversionIcon;
      input Time s "second value";
      output NonSIunits.Time_day day "day value";
    algorithm 
      day := s/86400;
    end to_day;

--------------

|image85| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_day
--------------------------------------------------------------------------------------------------------------------

**Convert from day to second**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+
| Type                                                                                                           | Name   | Default   | Description     |
+================================================================================================================+========+===========+=================+
| `Time\_day <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_day>`_   | day    |           | day value [d]   |
+----------------------------------------------------------------------------------------------------------------+--------+-----------+-----------------+

Outputs
~~~~~~~

+---------------------------------------------------------+--------+--------------------+
| Type                                                    | Name   | Description        |
+=========================================================+========+====================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | s      | second value [s]   |
+---------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_day "Convert from day to second"
      extends ConversionIcon;
      input NonSIunits.Time_day day "day value";
      output Time s "second value";
    algorithm 
      s := 86400*day;
    end from_day;

--------------

|image86| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_hour
-------------------------------------------------------------------------------------------------------------------

**Convert from second to hour**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+---------------------------------------------------------+--------+-----------+--------------------+
| Type                                                    | Name   | Default   | Description        |
+=========================================================+========+===========+====================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | s      |           | second value [s]   |
+---------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+------------------------------------------------------------------------------------------------------------------+--------+------------------+
| Type                                                                                                             | Name   | Description      |
+==================================================================================================================+========+==================+
| `Time\_hour <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_hour>`_   | hour   | hour value [h]   |
+------------------------------------------------------------------------------------------------------------------+--------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_hour "Convert from second to hour"
      extends ConversionIcon;
      input Time s "second value";
      output NonSIunits.Time_hour hour "hour value";
    algorithm 
      hour := s/3600;
    end to_hour;

--------------

|image87| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_hour
---------------------------------------------------------------------------------------------------------------------

**Convert from hour to second**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------+
| Type                                                                                                             | Name   | Default   | Description      |
+==================================================================================================================+========+===========+==================+
| `Time\_hour <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_hour>`_   | hour   |           | hour value [h]   |
+------------------------------------------------------------------------------------------------------------------+--------+-----------+------------------+

Outputs
~~~~~~~

+---------------------------------------------------------+--------+--------------------+
| Type                                                    | Name   | Description        |
+=========================================================+========+====================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | s      | second value [s]   |
+---------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_hour "Convert from hour to second"
      extends ConversionIcon;
      input NonSIunits.Time_hour hour "hour value";
      output Time s "second value";
    algorithm 
      s := 3600*hour;
    end from_hour;

--------------

|image88| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_minute
---------------------------------------------------------------------------------------------------------------------

**Convert from second to minute**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+---------------------------------------------------------+--------+-----------+--------------------+
| Type                                                    | Name   | Default   | Description        |
+=========================================================+========+===========+====================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | s      |           | second value [s]   |
+---------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------+----------------------+
| Type                                                                                                                 | Name     | Description          |
+======================================================================================================================+==========+======================+
| `Time\_minute <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_minute>`_   | minute   | minute value [min]   |
+----------------------------------------------------------------------------------------------------------------------+----------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_minute "Convert from second to minute"
      extends ConversionIcon;
      input Time s "second value";
      output NonSIunits.Time_minute minute "minute value";
    algorithm 
      minute := s/60;
    end to_minute;

--------------

|image89| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_minute
-----------------------------------------------------------------------------------------------------------------------

**Convert from minute to second**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------+
| Type                                                                                                                 | Name     | Default   | Description          |
+======================================================================================================================+==========+===========+======================+
| `Time\_minute <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_minute>`_   | minute   |           | minute value [min]   |
+----------------------------------------------------------------------------------------------------------------------+----------+-----------+----------------------+

Outputs
~~~~~~~

+---------------------------------------------------------+--------+--------------------+
| Type                                                    | Name   | Description        |
+=========================================================+========+====================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | s      | second value [s]   |
+---------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_minute "Convert from minute to second"
      extends ConversionIcon;
      input NonSIunits.Time_minute minute "minute value";
      output Time s "second value";
    algorithm 
      s := 60*minute;
    end from_minute;

--------------

|image90| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_litre
--------------------------------------------------------------------------------------------------------------------

**Convert from cubic metre to litre**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-------------------------------------------------------------+--------+-----------+--------------------------+
| Type                                                        | Name   | Default   | Description              |
+=============================================================+========+===========+==========================+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_   | m3     |           | cubic metre value [m3]   |
+-------------------------------------------------------------+--------+-----------+--------------------------+

Outputs
~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------+-------------------+
| Type                                                                                                                   | Name    | Description       |
+========================================================================================================================+=========+===================+
| `Volume\_litre <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Volume_litre>`_   | litre   | litre value [l]   |
+------------------------------------------------------------------------------------------------------------------------+---------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_litre "Convert from cubic metre to litre"
      extends ConversionIcon;
      input Volume m3 "cubic metre value";
      output NonSIunits.Volume_litre litre "litre value";
    algorithm 
      litre := 1000*m3;
    end to_litre;

--------------

|image91| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_litre
----------------------------------------------------------------------------------------------------------------------

**Convert from litre to cubic metre**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------+
| Type                                                                                                                   | Name    | Default   | Description       |
+========================================================================================================================+=========+===========+===================+
| `Volume\_litre <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Volume_litre>`_   | litre   |           | litre value [l]   |
+------------------------------------------------------------------------------------------------------------------------+---------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------+--------+--------------------------+
| Type                                                        | Name   | Description              |
+=============================================================+========+==========================+
| `Volume <Modelica_SIunits.html#Modelica.SIunits.Volume>`_   | m3     | cubic metre value [m3]   |
+-------------------------------------------------------------+--------+--------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_litre "Convert from litre to cubic metre"
      extends ConversionIcon;
      input NonSIunits.Volume_litre litre "litre value";
      output Volume m3 "cubic metre value";
    algorithm 
      m3 := litre/1000;
    end from_litre;

--------------

|image92| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_Ah
-------------------------------------------------------------------------------------------------------------------

**Convert from Ampere hours to Coulomb**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------+
| Type                                                                                                                             | Name         | Default   | Description          |
+==================================================================================================================================+==============+===========+======================+
| `ElectricCharge\_Ah <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah>`_   | AmpereHour   |           | Ampere hours [A.h]   |
+----------------------------------------------------------------------------------------------------------------------------------+--------------+-----------+----------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------------------+-----------+---------------+
| Type                                                                        | Name      | Description   |
+=============================================================================+===========+===============+
| `ElectricCharge <Modelica_SIunits.html#Modelica.SIunits.ElectricCharge>`_   | Coulomb   | Coulomb [C]   |
+-----------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_Ah "Convert from Ampere hours to Coulomb"
      extends ConversionIcon;
      input Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah
            AmpereHour "Ampere hours";
      output Modelica.SIunits.ElectricCharge Coulomb "Coulomb";
    algorithm 
      Coulomb := AmpereHour * 3600;

    end from_Ah;

--------------

|image93| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_Ah
-----------------------------------------------------------------------------------------------------------------

**Convert from Coulomb to Ampere hours**

Information
~~~~~~~~~~~

Extends from
`Modelica.SIunits.Conversions.ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-----------------------------------------------------------------------------+-----------+-----------+---------------+
| Type                                                                        | Name      | Default   | Description   |
+=============================================================================+===========+===========+===============+
| `ElectricCharge <Modelica_SIunits.html#Modelica.SIunits.ElectricCharge>`_   | Coulomb   |           | Coulomb [C]   |
+-----------------------------------------------------------------------------+-----------+-----------+---------------+

Outputs
~~~~~~~

+----------------------------------------------------------------------------------------------------------------------------------+--------------+----------------------+
| Type                                                                                                                             | Name         | Description          |
+==================================================================================================================================+==============+======================+
| `ElectricCharge\_Ah <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah>`_   | AmpereHour   | Ampere hours [A.h]   |
+----------------------------------------------------------------------------------------------------------------------------------+--------------+----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_Ah "Convert from Coulomb to Ampere hours"
      extends Modelica.SIunits.Conversions.ConversionIcon;
      input Modelica.SIunits.ElectricCharge Coulomb "Coulomb";
      output Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah
                                          AmpereHour "Ampere hours";
    algorithm 
      AmpereHour := Coulomb/3600;

    end to_Ah;

--------------

|image94| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_Wh
-------------------------------------------------------------------------------------------------------------------

**Convert from Watt hour to Joule**

Information
~~~~~~~~~~~

Extends from
`Modelica.SIunits.Conversions.ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------+
| Type                                                                                                             | Name       | Default   | Description       |
+==================================================================================================================+============+===========+===================+
| `Energy\_Wh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Energy_Wh>`_   | WattHour   |           | Watt hour [W.h]   |
+------------------------------------------------------------------------------------------------------------------+------------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------+---------+---------------+
| Type                                                        | Name    | Description   |
+=============================================================+=========+===============+
| `Energy <Modelica_SIunits.html#Modelica.SIunits.Energy>`_   | Joule   | Joule [J]     |
+-------------------------------------------------------------+---------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_Wh "Convert from Watt hour to Joule"
      extends Modelica.SIunits.Conversions.ConversionIcon;
      input NonSIunits.Energy_Wh WattHour "Watt hour";
      output Modelica.SIunits.Energy Joule "Joule";
    algorithm 
      Joule := WattHour * 3600;

    end from_Wh;

--------------

|image95| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_Wh
-----------------------------------------------------------------------------------------------------------------

**Convert from Joule to Watt hour**

Information
~~~~~~~~~~~

Extends from
`Modelica.SIunits.Conversions.ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-------------------------------------------------------------+---------+-----------+---------------+
| Type                                                        | Name    | Default   | Description   |
+=============================================================+=========+===========+===============+
| `Energy <Modelica_SIunits.html#Modelica.SIunits.Energy>`_   | Joule   |           | Joule [J]     |
+-------------------------------------------------------------+---------+-----------+---------------+

Outputs
~~~~~~~

+------------------------------------------------------------------------------------------------------------------+------------+-------------------+
| Type                                                                                                             | Name       | Description       |
+==================================================================================================================+============+===================+
| `Energy\_Wh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Energy_Wh>`_   | WattHour   | Watt hour [W.h]   |
+------------------------------------------------------------------------------------------------------------------+------------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_Wh "Convert from Joule to Watt hour"
      extends Modelica.SIunits.Conversions.ConversionIcon;
      input Modelica.SIunits.Energy Joule "Joule";
      output NonSIunits.Energy_Wh WattHour "Watt hour";
    algorithm 
      WattHour := Joule/3600;

    end to_Wh;

--------------

|image96| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_kWh
------------------------------------------------------------------------------------------------------------------

**Convert from Joule to kilo Watt hour**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                        | Name   | Default   | Description       |
+=============================================================+========+===========+===================+
| `Energy <Modelica_SIunits.html#Modelica.SIunits.Energy>`_   | J      |           | Joule value [J]   |
+-------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+--------------------+
| Type                                                                                                               | Name   | Description        |
+====================================================================================================================+========+====================+
| `Energy\_kWh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Energy_kWh>`_   | kWh    | kWh value [kW.h]   |
+--------------------------------------------------------------------------------------------------------------------+--------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_kWh "Convert from Joule to kilo Watt hour"
      extends ConversionIcon;
      input Energy J "Joule value";
      output NonSIunits.Energy_kWh kWh "kWh value";
    algorithm 
      kWh := J/3.6e6;
    end to_kWh;

--------------

|image97| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_kWh
--------------------------------------------------------------------------------------------------------------------

**Convert from kilo Watt hour to Joule**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------+
| Type                                                                                                               | Name   | Default   | Description        |
+====================================================================================================================+========+===========+====================+
| `Energy\_kWh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Energy_kWh>`_   | kWh    |           | kWh value [kW.h]   |
+--------------------------------------------------------------------------------------------------------------------+--------+-----------+--------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------+--------+-------------------+
| Type                                                        | Name   | Description       |
+=============================================================+========+===================+
| `Energy <Modelica_SIunits.html#Modelica.SIunits.Energy>`_   | J      | Joule value [J]   |
+-------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_kWh "Convert from kilo Watt hour to Joule"
      extends ConversionIcon;
      input NonSIunits.Energy_kWh kWh "kWh value";
      output Energy J "Joule value";
    algorithm 
      J := 3.6e6*kWh;
    end from_kWh;

--------------

|image98| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_bar
------------------------------------------------------------------------------------------------------------------

**Convert from Pascal to bar**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-----------------------------------------------------------------+--------+-----------+---------------------+
| Type                                                            | Name   | Default   | Description         |
+=================================================================+========+===========+=====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | Pa     |           | Pascal value [Pa]   |
+-----------------------------------------------------------------+--------+-----------+---------------------+

Outputs
~~~~~~~

+------------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                   | Name   | Description       |
+========================================================================================================================+========+===================+
| `Pressure\_bar <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Pressure_bar>`_   | bar    | bar value [bar]   |
+------------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_bar "Convert from Pascal to bar"
      extends ConversionIcon;
      input Pressure Pa "Pascal value";
      output NonSIunits.Pressure_bar bar "bar value";
    algorithm 
      bar := Pa/1e5;
    end to_bar;

--------------

|image99| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_bar
--------------------------------------------------------------------------------------------------------------------

**Convert from bar to Pascal**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                   | Name   | Default   | Description       |
+========================================================================================================================+========+===========+===================+
| `Pressure\_bar <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Pressure_bar>`_   | bar    |           | bar value [bar]   |
+------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-----------------------------------------------------------------+--------+---------------------+
| Type                                                            | Name   | Description         |
+=================================================================+========+=====================+
| `Pressure <Modelica_SIunits.html#Modelica.SIunits.Pressure>`_   | Pa     | Pascal value [Pa]   |
+-----------------------------------------------------------------+--------+---------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_bar "Convert from bar to Pascal"
      extends ConversionIcon;
      input NonSIunits.Pressure_bar bar "bar value";
      output Pressure Pa "Pascal value";
    algorithm 
      Pa := 1e5*bar;
    end from_bar;

--------------

|image100| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_gps
-------------------------------------------------------------------------------------------------------------------

**Convert from kilogram per second to gram per second**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------+--------+-----------+---------------------+
| Type                                                                    | Name   | Default   | Description         |
+=========================================================================+========+===========+=====================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | kgps   |           | kg/s value [kg/s]   |
+-------------------------------------------------------------------------+--------+-----------+---------------------+

Outputs
~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+--------+-------------------+
| Type                                                                                                                           | Name   | Description       |
+================================================================================================================================+========+===================+
| `MassFlowRate\_gps <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.MassFlowRate_gps>`_   | gps    | g/s value [g/s]   |
+--------------------------------------------------------------------------------------------------------------------------------+--------+-------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_gps "Convert from kilogram per second to gram per second"
      extends ConversionIcon;
      input MassFlowRate kgps "kg/s value";
      output NonSIunits.MassFlowRate_gps gps "g/s value";
    algorithm 
      gps := 1000*kgps;
    end to_gps;

--------------

|image101| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_gps
---------------------------------------------------------------------------------------------------------------------

**Convert from gram per second to kilogram per second**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+
| Type                                                                                                                           | Name   | Default   | Description       |
+================================================================================================================================+========+===========+===================+
| `MassFlowRate\_gps <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.MassFlowRate_gps>`_   | gps    |           | g/s value [g/s]   |
+--------------------------------------------------------------------------------------------------------------------------------+--------+-----------+-------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------+--------+---------------------+
| Type                                                                    | Name   | Description         |
+=========================================================================+========+=====================+
| `MassFlowRate <Modelica_SIunits.html#Modelica.SIunits.MassFlowRate>`_   | kgps   | kg/s value [kg/s]   |
+-------------------------------------------------------------------------+--------+---------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_gps 
      "Convert from gram per second to kilogram per second"
      extends ConversionIcon;
      input NonSIunits.MassFlowRate_gps gps "g/s value";
      output MassFlowRate kgps "kg/s value";
    algorithm 
      kgps := gps/1000;
    end from_gps;

--------------

|image102| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.ConversionIcon
--------------------------------------------------------------------------------------------------------------------------

**Base icon for conversion functions**

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial function ConversionIcon "Base icon for conversion functions"

    end ConversionIcon;

--------------

|image103| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_Hz
--------------------------------------------------------------------------------------------------------------------

**Convert from Hz to rad/s**

Information
~~~~~~~~~~~

Extends from
`SIunits.Conversions.ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-------------------------------------------------------------------+--------+-----------+------------------+
| Type                                                              | Name   | Default   | Description      |
+===================================================================+========+===========+==================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      |           | frequency [Hz]   |
+-------------------------------------------------------------------+--------+-----------+------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------------------+--------+----------------------------+
| Type                                                                          | Name   | Description                |
+===============================================================================+========+============================+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w      | angular velocity [rad/s]   |
+-------------------------------------------------------------------------------+--------+----------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_Hz "Convert from Hz to rad/s"
      extends SIunits.Conversions.ConversionIcon;
      input SIunits.Frequency f "frequency";
      output SIunits.AngularVelocity w "angular velocity";

    algorithm 
      w := 2*Modelica.Constants.pi*f;
    end from_Hz;

--------------

|image104| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_Hz
------------------------------------------------------------------------------------------------------------------

**Convert from rad/s to Hz**

Information
~~~~~~~~~~~

Extends from
`SIunits.Conversions.ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+-------------------------------------------------------------------------------+--------+-----------+----------------------------+
| Type                                                                          | Name   | Default   | Description                |
+===============================================================================+========+===========+============================+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_   | w      |           | angular velocity [rad/s]   |
+-------------------------------------------------------------------------------+--------+-----------+----------------------------+

Outputs
~~~~~~~

+-------------------------------------------------------------------+--------+------------------+
| Type                                                              | Name   | Description      |
+===================================================================+========+==================+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | f      | frequency [Hz]   |
+-------------------------------------------------------------------+--------+------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_Hz "Convert from rad/s to Hz"
      extends SIunits.Conversions.ConversionIcon;
      input SIunits.AngularVelocity w "angular velocity";
      output SIunits.Frequency f "frequency";
    algorithm 
      f := w/(2*Modelica.Constants.pi);
    end to_Hz;

--------------

|image105| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.to\_cm2
-------------------------------------------------------------------------------------------------------------------

**Convert from square metre to square centrimetre**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+---------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                    | Name   | Default   | Description               |
+=========================================================+========+===========+===========================+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_   | m2     |           | square metre value [m2]   |
+---------------------------------------------------------+--------+-----------+---------------------------+

Outputs
~~~~~~~

+--------------------------------------------------------------------------------------------------------------+--------+---------------------------------+
| Type                                                                                                         | Name   | Description                     |
+==============================================================================================================+========+=================================+
| `Area\_cm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Area_cm>`_   | cm2    | square centimetre value [cm2]   |
+--------------------------------------------------------------------------------------------------------------+--------+---------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function to_cm2 "Convert from square metre to square centrimetre"
      extends ConversionIcon;
      input Area m2 "square metre value";
      output NonSIunits.Area_cm cm2 "square centimetre value";
    algorithm 
      cm2 := 0.0001*m2;
    end to_cm2;

--------------

|image106| `Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.from\_cm2
---------------------------------------------------------------------------------------------------------------------

**Convert from square centrimetre to square metre**

Information
~~~~~~~~~~~

Extends from
`ConversionIcon <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon>`_
(Base icon for conversion functions).

Inputs
~~~~~~

+--------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                                                                         | Name   | Default   | Description                     |
+==============================================================================================================+========+===========+=================================+
| `Area\_cm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Area_cm>`_   | cm2    |           | square centimetre value [cm2]   |
+--------------------------------------------------------------------------------------------------------------+--------+-----------+---------------------------------+

Outputs
~~~~~~~

+---------------------------------------------------------+--------+---------------------------+
| Type                                                    | Name   | Description               |
+=========================================================+========+===========================+
| `Area <Modelica_SIunits.html#Modelica.SIunits.Area>`_   | m2     | square metre value [m2]   |
+---------------------------------------------------------+--------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function from_cm2 "Convert from square centrimetre to square metre"
      extends ConversionIcon;
      input NonSIunits.Area_cm cm2 "square centimetre value";
      output Area m2 "square metre value";
    algorithm 
      m2 :=10000*cm2;
    end from_cm2;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:50
2010.

.. |Modelica.SIunits.Conversions.NonSIunits| image:: Modelica.SIunits.Conversions.NonSIunitsS.png
.. |Modelica.SIunits.Conversions.to\_degC| image:: Modelica.SIunits.Conversions.to_degCS.png
.. |Modelica.SIunits.Conversions.from\_degC| image:: Modelica.SIunits.Conversions.from_degCS.png
.. |Modelica.SIunits.Conversions.to\_degF| image:: Modelica.SIunits.Conversions.to_degFS.png
.. |Modelica.SIunits.Conversions.from\_degF| image:: Modelica.SIunits.Conversions.from_degFS.png
.. |Modelica.SIunits.Conversions.to\_degRk| image:: Modelica.SIunits.Conversions.to_degRkS.png
.. |Modelica.SIunits.Conversions.from\_degRk| image:: Modelica.SIunits.Conversions.from_degRkS.png
.. |Modelica.SIunits.Conversions.to\_deg| image:: Modelica.SIunits.Conversions.to_degS.png
.. |Modelica.SIunits.Conversions.from\_deg| image:: Modelica.SIunits.Conversions.to_degS.png
.. |Modelica.SIunits.Conversions.to\_rpm| image:: Modelica.SIunits.Conversions.to_degS.png
.. |Modelica.SIunits.Conversions.from\_rpm| image:: Modelica.SIunits.Conversions.to_degS.png
.. |Modelica.SIunits.Conversions.to\_kmh| image:: Modelica.SIunits.Conversions.to_degS.png
.. |Modelica.SIunits.Conversions.from\_kmh| image:: Modelica.SIunits.Conversions.to_degS.png
.. |Modelica.SIunits.Conversions.to\_day| image:: Modelica.SIunits.Conversions.to_dayS.png
.. |Modelica.SIunits.Conversions.from\_day| image:: Modelica.SIunits.Conversions.from_dayS.png
.. |Modelica.SIunits.Conversions.to\_hour| image:: Modelica.SIunits.Conversions.to_hourS.png
.. |Modelica.SIunits.Conversions.from\_hour| image:: Modelica.SIunits.Conversions.from_hourS.png
.. |Modelica.SIunits.Conversions.to\_minute| image:: Modelica.SIunits.Conversions.to_minuteS.png
.. |Modelica.SIunits.Conversions.from\_minute| image:: Modelica.SIunits.Conversions.from_minuteS.png
.. |Modelica.SIunits.Conversions.to\_litre| image:: Modelica.SIunits.Conversions.to_litreS.png
.. |Modelica.SIunits.Conversions.from\_litre| image:: Modelica.SIunits.Conversions.to_litreS.png
.. |Modelica.SIunits.Conversions.from\_Ah| image:: Modelica.SIunits.Conversions.from_AhS.png
.. |Modelica.SIunits.Conversions.to\_Ah| image:: Modelica.SIunits.Conversions.to_AhS.png
.. |Modelica.SIunits.Conversions.from\_Wh| image:: Modelica.SIunits.Conversions.from_WhS.png
.. |Modelica.SIunits.Conversions.to\_Wh| image:: Modelica.SIunits.Conversions.to_WhS.png
.. |Modelica.SIunits.Conversions.to\_kWh| image:: Modelica.SIunits.Conversions.to_kWhS.png
.. |Modelica.SIunits.Conversions.from\_kWh| image:: Modelica.SIunits.Conversions.from_kWhS.png
.. |Modelica.SIunits.Conversions.to\_bar| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.from\_bar| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.to\_gps| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.from\_gps| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.ConversionIcon| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.from\_Hz| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.to\_Hz| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.to\_cm2| image:: Modelica.SIunits.Conversions.to_barS.png
.. |Modelica.SIunits.Conversions.from\_cm2| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image36| image:: Modelica.SIunits.Conversions.NonSIunitsS.png
.. |image37| image:: Modelica.SIunits.Conversions.to_degCS.png
.. |image38| image:: Modelica.SIunits.Conversions.from_degCS.png
.. |image39| image:: Modelica.SIunits.Conversions.to_degFS.png
.. |image40| image:: Modelica.SIunits.Conversions.from_degFS.png
.. |image41| image:: Modelica.SIunits.Conversions.to_degRkS.png
.. |image42| image:: Modelica.SIunits.Conversions.from_degRkS.png
.. |image43| image:: Modelica.SIunits.Conversions.to_degS.png
.. |image44| image:: Modelica.SIunits.Conversions.to_degS.png
.. |image45| image:: Modelica.SIunits.Conversions.to_degS.png
.. |image46| image:: Modelica.SIunits.Conversions.to_degS.png
.. |image47| image:: Modelica.SIunits.Conversions.to_degS.png
.. |image48| image:: Modelica.SIunits.Conversions.to_degS.png
.. |image49| image:: Modelica.SIunits.Conversions.to_dayS.png
.. |image50| image:: Modelica.SIunits.Conversions.from_dayS.png
.. |image51| image:: Modelica.SIunits.Conversions.to_hourS.png
.. |image52| image:: Modelica.SIunits.Conversions.from_hourS.png
.. |image53| image:: Modelica.SIunits.Conversions.to_minuteS.png
.. |image54| image:: Modelica.SIunits.Conversions.from_minuteS.png
.. |image55| image:: Modelica.SIunits.Conversions.to_litreS.png
.. |image56| image:: Modelica.SIunits.Conversions.to_litreS.png
.. |image57| image:: Modelica.SIunits.Conversions.from_AhS.png
.. |image58| image:: Modelica.SIunits.Conversions.to_AhS.png
.. |image59| image:: Modelica.SIunits.Conversions.from_WhS.png
.. |image60| image:: Modelica.SIunits.Conversions.to_WhS.png
.. |image61| image:: Modelica.SIunits.Conversions.to_kWhS.png
.. |image62| image:: Modelica.SIunits.Conversions.from_kWhS.png
.. |image63| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image64| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image65| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image66| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image67| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image68| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image69| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image70| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image71| image:: Modelica.SIunits.Conversions.to_barS.png
.. |image72| image:: Modelica.SIunits.Conversions.to_degCI.png
.. |image73| image:: Modelica.SIunits.Conversions.from_degCI.png
.. |image74| image:: Modelica.SIunits.Conversions.to_degFI.png
.. |image75| image:: Modelica.SIunits.Conversions.from_degFI.png
.. |image76| image:: Modelica.SIunits.Conversions.to_degRkI.png
.. |image77| image:: Modelica.SIunits.Conversions.from_degRkI.png
.. |image78| image:: Modelica.SIunits.Conversions.to_degI.png
.. |image79| image:: Modelica.SIunits.Conversions.from_degI.png
.. |image80| image:: Modelica.SIunits.Conversions.to_rpmI.png
.. |image81| image:: Modelica.SIunits.Conversions.from_rpmI.png
.. |image82| image:: Modelica.SIunits.Conversions.to_kmhI.png
.. |image83| image:: Modelica.SIunits.Conversions.from_kmhI.png
.. |image84| image:: Modelica.SIunits.Conversions.to_dayI.png
.. |image85| image:: Modelica.SIunits.Conversions.from_dayI.png
.. |image86| image:: Modelica.SIunits.Conversions.to_hourI.png
.. |image87| image:: Modelica.SIunits.Conversions.from_hourI.png
.. |image88| image:: Modelica.SIunits.Conversions.to_minuteI.png
.. |image89| image:: Modelica.SIunits.Conversions.from_minuteI.png
.. |image90| image:: Modelica.SIunits.Conversions.to_litreI.png
.. |image91| image:: Modelica.SIunits.Conversions.from_litreI.png
.. |image92| image:: Modelica.SIunits.Conversions.from_AhI.png
.. |image93| image:: Modelica.SIunits.Conversions.to_AhI.png
.. |image94| image:: Modelica.SIunits.Conversions.from_WhI.png
.. |image95| image:: Modelica.SIunits.Conversions.to_WhI.png
.. |image96| image:: Modelica.SIunits.Conversions.to_kWhI.png
.. |image97| image:: Modelica.SIunits.Conversions.from_kWhI.png
.. |image98| image:: Modelica.SIunits.Conversions.to_barI.png
.. |image99| image:: Modelica.SIunits.Conversions.from_barI.png
.. |image100| image:: Modelica.SIunits.Conversions.to_gpsI.png
.. |image101| image:: Modelica.SIunits.Conversions.from_gpsI.png
.. |image102| image:: Modelica.SIunits.Conversions.ConversionIconI.png
.. |image103| image:: Modelica.SIunits.Conversions.from_HzI.png
.. |image104| image:: Modelica.SIunits.Conversions.to_HzI.png
.. |image105| image:: Modelica.SIunits.Conversions.to_cm2I.png
.. |image106| image:: Modelica.SIunits.Conversions.from_cm2I.png
