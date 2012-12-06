% Modelica.SIunits.Conversions.NonSIunits:
  [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).NonSIunits
% 
% 

**Type definitions of non SI units**

Information
===========

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
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
===============

  ------------------------------------------------------------------------
  Name                                      Description
  ----------------------------------------- ------------------------------
  [Temperature\_degC](Modelica_SIunits_Conv Absolute temperature in degree
  ersions_NonSIunits.html#Modelica.SIunits. Celsius (for relative
  Conversions.NonSIunits.Temperature_degC)  temperature use
                                            SIunits.TemperatureDifference)

  [Temperature\_degF](Modelica_SIunits_Conv Absolute temperature in degree
  ersions_NonSIunits.html#Modelica.SIunits. Fahrenheit (for relative
  Conversions.NonSIunits.Temperature_degF)  temperature use
                                            SIunits.TemperatureDifference)

  [Temperature\_degRk](Modelica_SIunits_Con Absolute temperature in degree
  versions_NonSIunits.html#Modelica.SIunits Rankine (for relative
  .Conversions.NonSIunits.Temperature_degRk temperature use
  )                                         SIunits.TemperatureDifference)

  [Angle\_deg](Modelica_SIunits_Conversions Angle in degree
  _NonSIunits.html#Modelica.SIunits.Convers 
  ions.NonSIunits.Angle_deg)                

  [AngularVelocity\_rpm](Modelica_SIunits_C Angular velocity in
  onversions_NonSIunits.html#Modelica.SIuni revolutions per minute. Alias
  ts.Conversions.NonSIunits.AngularVelocity unit names that are outside of
  _rpm)                                     the SI system: rpm, r/min,
                                            rev/min

  [Velocity\_kmh](Modelica_SIunits_Conversi Velocity in kilometers per
  ons_NonSIunits.html#Modelica.SIunits.Conv hour
  ersions.NonSIunits.Velocity_kmh)          

  [Time\_day](Modelica_SIunits_Conversions_ Time in days
  NonSIunits.html#Modelica.SIunits.Conversi 
  ons.NonSIunits.Time_day)                  

  [Time\_hour](Modelica_SIunits_Conversions Time in hours
  _NonSIunits.html#Modelica.SIunits.Convers 
  ions.NonSIunits.Time_hour)                

  [Time\_minute](Modelica_SIunits_Conversio Time in minutes
  ns_NonSIunits.html#Modelica.SIunits.Conve 
  rsions.NonSIunits.Time_minute)            

  [Volume\_litre](Modelica_SIunits_Conversi Volume in litres
  ons_NonSIunits.html#Modelica.SIunits.Conv 
  ersions.NonSIunits.Volume_litre)          

  [ElectricCharge\_Ah](Modelica_SIunits_Con Electric charge in Ampere
  versions_NonSIunits.html#Modelica.SIunits hours
  .Conversions.NonSIunits.ElectricCharge_Ah 
  )                                         

  [Energy\_Wh](Modelica_SIunits_Conversions Energy in Watt hours
  _NonSIunits.html#Modelica.SIunits.Convers 
  ions.NonSIunits.Energy_Wh)                

  [Energy\_kWh](Modelica_SIunits_Conversion Energy in kilo watt hours
  s_NonSIunits.html#Modelica.SIunits.Conver 
  sions.NonSIunits.Energy_kWh)              

  [Pressure\_bar](Modelica_SIunits_Conversi Absolute pressure in bar
  ons_NonSIunits.html#Modelica.SIunits.Conv 
  ersions.NonSIunits.Pressure_bar)          

  [MassFlowRate\_gps](Modelica_SIunits_Conv Mass flow rate in gramm per
  ersions_NonSIunits.html#Modelica.SIunits. second
  Conversions.NonSIunits.MassFlowRate_gps)  

  [FirstOrderTemperaturCoefficient](Modelic First Order Temperatur
  a_SIunits_Conversions_NonSIunits.html#Mod Coefficient
  elica.SIunits.Conversions.NonSIunits.Firs 
  tOrderTemperaturCoefficient)              

  [SecondOrderTemperaturCoefficient](Modeli Second Order Temperatur
  ca_SIunits_Conversions_NonSIunits.html#Mo Coefficient
  delica.SIunits.Conversions.NonSIunits.Sec 
  ondOrderTemperaturCoefficient)            

  [Area\_cm](Modelica_SIunits_Conversions_N Area in cm
  onSIunits.html#Modelica.SIunits.Conversio 
  ns.NonSIunits.Area_cm)                    

  [PerArea\_cm](Modelica_SIunits_Conversion Per Area in cm
  s_NonSIunits.html#Modelica.SIunits.Conver 
  sions.NonSIunits.PerArea_cm)              

  [Area\_cmPerVoltageSecond](Modelica_SIuni Area in cm per voltage second
  ts_Conversions_NonSIunits.html#Modelica.S 
  Iunits.Conversions.NonSIunits.Area_cmPerV 
  oltageSecond)                             
  ------------------------------------------------------------------------

Types and constants
===================

    type Temperature_degC = Real (final quantity="ThermodynamicTemperature",
          final unit="degC") 
    "Absolute temperature in degree Celsius (for relative temperature use SIunits.TemperatureDifference)";

    type Temperature_degF = Real (final quantity="ThermodynamicTemperature",
          final unit="degF") 
    "Absolute temperature in degree Fahrenheit (for relative temperature use SIunits.TemperatureDifference)";

    type Temperature_degRk = Real (final quantity="ThermodynamicTemperature",
          final unit="degRk") 
    "Absolute temperature in degree Rankine (for relative temperature use SIunits.TemperatureDifference)";

    type Angle_deg = Real (final quantity="Angle", final unit="deg") 
    "Angle in degree";

    type AngularVelocity_rpm = Real (final quantity="AngularVelocity", final unit=
               "1/min") 
    "Angular velocity in revolutions per minute. Alias unit names that are outside of the SI system: rpm, r/min, rev/min";

    type Velocity_kmh = Real (final quantity="Velocity", final unit="km/h") 
    "Velocity in kilometers per hour";

    type Time_day = Real (final quantity="Time", final unit="d") "Time in days";

    type Time_hour = Real (final quantity="Time", final unit="h") "Time in hours";

    type Time_minute = Real (final quantity="Time", final unit="min") 
    "Time in minutes";

    type Volume_litre = Real (final quantity="Volume", final unit="l") 
    "Volume in litres";

    type ElectricCharge_Ah =
      Real (final quantity="ElectricCharge", final unit="A.h") 
    "Electric charge in Ampere hours";

    type Energy_Wh =
         Real (final quantity="Energy", final unit="W.h") "Energy in Watt hours";

    type Energy_kWh = Real (final quantity="Energy", final unit="kW.h") 
    "Energy in kilo watt hours";

    type Pressure_bar = Real (final quantity="Pressure", final unit="bar") 
    "Absolute pressure in bar";

    type MassFlowRate_gps = Real (final quantity="MassFlowRate", final unit=
            "g/s") "Mass flow rate in gramm per second";

    type FirstOrderTemperaturCoefficient =
                            Real (final quantity="FirstOrderTemperatureCoefficient",
          final unit="Ohm/degC") "First Order Temperatur Coefficient";

    type SecondOrderTemperaturCoefficient =
                            Real (final quantity="SecondOrderTemperatureCoefficient",
          final unit="Ohm/degC2") "Second Order Temperatur Coefficient";

    type Area_cm =   Real (final quantity="Area", final unit="cm2") "Area in cm";

    type PerArea_cm =Real (final quantity="PerArea", final unit="1/cm2") 
    "Per Area in cm";

    type Area_cmPerVoltageSecond =
                     Real (final quantity="AreaPerVoltageSecond", final unit="cm2/(V.s)") 
    "Area in cm per voltage second";

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:51 2010.
