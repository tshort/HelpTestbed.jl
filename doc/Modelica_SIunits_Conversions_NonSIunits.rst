=======================================
Modelica.SIunits.Conversions.NonSIunits
=======================================

`Modelica.SIunits.Conversions <Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions>`_.NonSIunits
-----------------------------------------------------------------------------------------------------------

**Type definitions of non SI units**

Information
~~~~~~~~~~~

::

This package provides predefined types, such as **Angle\_deg** (angle in
degree), **AngularVelocity\_rpm** (angular velocity in revolutions per
minute) or **Temperature\_degF** (temperature in degree Fahrenheit),
which are in common use but are not part of the international standard
on units according to ISO 31-1992 "General principles concerning
quantities, units and symbols" and ISO 1000-1992 "SI units and
recommendations for the use of their multiples and of certain other
units".

If possible, the types in this package should not be used. Use instead
types of package Modelica.SIunits. For more information on units, see
also the book of Francois Cardarelli **Scientific Unit Conversion - A
Practical Guide to Metrication** (Springer 1997).

Some units, such as **Temperature\_degC/Temp\_C** are both defined in
Modelica.SIunits and in Modelica.Conversions.NonSIunits. The reason is
that these definitions have been placed erroneously in Modelica.SIunits
although they are not SIunits. For backward compatibility, these type
definitions are still kept in Modelica.SIunits.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                          | Description                                                                                                           |
+===============================================================================================================================================================+=======================================================================================================================+
| `Temperature\_degC <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degC>`_                                  | Absolute temperature in degree Celsius (for relative temperature use SIunits.TemperatureDifference)                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Temperature\_degF <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degF>`_                                  | Absolute temperature in degree Fahrenheit (for relative temperature use SIunits.TemperatureDifference)                |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Temperature\_degRk <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Temperature_degRk>`_                                | Absolute temperature in degree Rankine (for relative temperature use SIunits.TemperatureDifference)                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Angle\_deg <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Angle_deg>`_                                                | Angle in degree                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `AngularVelocity\_rpm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.AngularVelocity_rpm>`_                            | Angular velocity in revolutions per minute. Alias unit names that are outside of the SI system: rpm, r/min, rev/min   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Velocity\_kmh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Velocity_kmh>`_                                          | Velocity in kilometers per hour                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Time\_day <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_day>`_                                                  | Time in days                                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Time\_hour <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_hour>`_                                                | Time in hours                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Time\_minute <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Time_minute>`_                                            | Time in minutes                                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Volume\_litre <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Volume_litre>`_                                          | Volume in litres                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `ElectricCharge\_Ah <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah>`_                                | Electric charge in Ampere hours                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Energy\_Wh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Energy_Wh>`_                                                | Energy in Watt hours                                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Energy\_kWh <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Energy_kWh>`_                                              | Energy in kilo watt hours                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Pressure\_bar <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Pressure_bar>`_                                          | Absolute pressure in bar                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `MassFlowRate\_gps <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.MassFlowRate_gps>`_                                  | Mass flow rate in gramm per second                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `FirstOrderTemperaturCoefficient <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.FirstOrderTemperaturCoefficient>`_     | First Order Temperatur Coefficient                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `SecondOrderTemperaturCoefficient <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.SecondOrderTemperaturCoefficient>`_   | Second Order Temperatur Coefficient                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Area\_cm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Area_cm>`_                                                    | Area in cm                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `PerArea\_cm <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.PerArea_cm>`_                                              | Per Area in cm                                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+
| `Area\_cmPerVoltageSecond <Modelica_SIunits_Conversions_NonSIunits.html#Modelica.SIunits.Conversions.NonSIunits.Area_cmPerVoltageSecond>`_                    | Area in cm per voltage second                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------------------------------------------------------------------------+

Types and constants
~~~~~~~~~~~~~~~~~~~

::

      type Temperature_degC = Real (final quantity="ThermodynamicTemperature",
            final unit="degC") 
      "Absolute temperature in degree Celsius (for relative temperature use SIunits.TemperatureDifference)";

::

      type Temperature_degF = Real (final quantity="ThermodynamicTemperature",
            final unit="degF") 
      "Absolute temperature in degree Fahrenheit (for relative temperature use SIunits.TemperatureDifference)";

::

      type Temperature_degRk = Real (final quantity="ThermodynamicTemperature",
            final unit="degRk") 
      "Absolute temperature in degree Rankine (for relative temperature use SIunits.TemperatureDifference)";

::

      type Angle_deg = Real (final quantity="Angle", final unit="deg") 
      "Angle in degree";

::

      type AngularVelocity_rpm = Real (final quantity="AngularVelocity", final unit=
                 "1/min") 
      "Angular velocity in revolutions per minute. Alias unit names that are outside of the SI system: rpm, r/min, rev/min";

::

      type Velocity_kmh = Real (final quantity="Velocity", final unit="km/h") 
      "Velocity in kilometers per hour";

::

      type Time_day = Real (final quantity="Time", final unit="d") "Time in days";

::

      type Time_hour = Real (final quantity="Time", final unit="h") "Time in hours";

::

      type Time_minute = Real (final quantity="Time", final unit="min") 
      "Time in minutes";

::

      type Volume_litre = Real (final quantity="Volume", final unit="l") 
      "Volume in litres";

::

      type ElectricCharge_Ah =
        Real (final quantity="ElectricCharge", final unit="A.h") 
      "Electric charge in Ampere hours";

::

      type Energy_Wh =
           Real (final quantity="Energy", final unit="W.h") "Energy in Watt hours";

::

      type Energy_kWh = Real (final quantity="Energy", final unit="kW.h") 
      "Energy in kilo watt hours";

::

      type Pressure_bar = Real (final quantity="Pressure", final unit="bar") 
      "Absolute pressure in bar";

::

      type MassFlowRate_gps = Real (final quantity="MassFlowRate", final unit=
              "g/s") "Mass flow rate in gramm per second";

::

      type FirstOrderTemperaturCoefficient =
                              Real (final quantity="FirstOrderTemperatureCoefficient",
            final unit="Ohm/degC") "First Order Temperatur Coefficient";

::

      type SecondOrderTemperaturCoefficient =
                              Real (final quantity="SecondOrderTemperatureCoefficient",
            final unit="Ohm/degC2") "Second Order Temperatur Coefficient";

::

      type Area_cm =   Real (final quantity="Area", final unit="cm2") "Area in cm";

::

      type PerArea_cm =Real (final quantity="PerArea", final unit="1/cm2") 
      "Per Area in cm";

::

      type Area_cmPerVoltageSecond =
                       Real (final quantity="AreaPerVoltageSecond", final unit="cm2/(V.s)") 
      "Area in cm per voltage second";

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:31:51
2010.
