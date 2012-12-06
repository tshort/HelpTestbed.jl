% Modelica.SIunits.Conversions
% 
% 

[Modelica.SIunits](Modelica_SIunits.html#Modelica.SIunits).Conversions
======================================================================

**Conversion functions to/from non SI units and type definitions of non
SI units**

Information
-----------

::

This package provides conversion functions from the non SI Units defined
in package Modelica.SIunits.Conversions.NonSIunits to the corresponding
SI Units defined in package Modelica.SIunits and vice versa. It is
recommended to use these functions in the following way (note, that all
functions have one Real input and one Real output argument):

    import SI = Modelica.SIunits;
    import Modelica.SIunits.Conversions.*;
       ...
    parameter SI.Temperature     T   = from_degC(25);   // convert 25 degree Celsius to Kelvin
    parameter SI.Angle           phi = from_deg(180);   // convert 180 degree to radian
    parameter SI.AngularVelocity w   = from_rpm(3600);  // convert 3600 revolutions per minutes
                                                        // to radian per seconds

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                               Description
  -------------------------------------------------- ---------------------
  ![image36](Modelica.SIunits.Conversions.NonSIunits Type definitions of
  S.png)                                             non SI units
  [NonSIunits](Modelica_SIunits_Conversions_NonSIuni 
  ts.html#Modelica.SIunits.Conversions.NonSIunits)   

  ![image37](Modelica.SIunits.Conversions.to_degCS.p Convert from Kelvin
  ng)                                                to degCelsius
  [to\_degC](Modelica_SIunits_Conversions.html#Model 
  ica.SIunits.Conversions.to_degC)                   

  ![image38](Modelica.SIunits.Conversions.from_degCS Convert from
  .png)                                              degCelsius to Kelvin
  [from\_degC](Modelica_SIunits_Conversions.html#Mod 
  elica.SIunits.Conversions.from_degC)               

  ![image39](Modelica.SIunits.Conversions.to_degFS.p Convert from Kelvin
  ng)                                                to degFahrenheit
  [to\_degF](Modelica_SIunits_Conversions.html#Model 
  ica.SIunits.Conversions.to_degF)                   

  ![image40](Modelica.SIunits.Conversions.from_degFS Convert from
  .png)                                              degFahrenheit to
  [from\_degF](Modelica_SIunits_Conversions.html#Mod Kelvin
  elica.SIunits.Conversions.from_degF)               

  ![image41](Modelica.SIunits.Conversions.to_degRkS. Convert from Kelvin
  png)                                               to degRankine
  [to\_degRk](Modelica_SIunits_Conversions.html#Mode 
  lica.SIunits.Conversions.to_degRk)                 

  ![image42](Modelica.SIunits.Conversions.from_degRk Convert from
  S.png)                                             degRankine to Kelvin
  [from\_degRk](Modelica_SIunits_Conversions.html#Mo 
  delica.SIunits.Conversions.from_degRk)             

  ![image43](Modelica.SIunits.Conversions.to_degS.pn Convert from radian
  g)                                                 to degree
  [to\_deg](Modelica_SIunits_Conversions.html#Modeli 
  ca.SIunits.Conversions.to_deg)                     

  ![image44](Modelica.SIunits.Conversions.to_degS.pn Convert from degree
  g)                                                 to radian
  [from\_deg](Modelica_SIunits_Conversions.html#Mode 
  lica.SIunits.Conversions.from_deg)                 

  ![image45](Modelica.SIunits.Conversions.to_degS.pn Convert from radian
  g)                                                 per second to
  [to\_rpm](Modelica_SIunits_Conversions.html#Modeli revolutions per
  ca.SIunits.Conversions.to_rpm)                     minute

  ![image46](Modelica.SIunits.Conversions.to_degS.pn Convert from
  g)                                                 revolutions per
  [from\_rpm](Modelica_SIunits_Conversions.html#Mode minute to radian per
  lica.SIunits.Conversions.from_rpm)                 second

  ![image47](Modelica.SIunits.Conversions.to_degS.pn Convert from metre
  g)                                                 per second to
  [to\_kmh](Modelica_SIunits_Conversions.html#Modeli kilometre per hour
  ca.SIunits.Conversions.to_kmh)                     

  ![image48](Modelica.SIunits.Conversions.to_degS.pn Convert from
  g)                                                 kilometre per hour to
  [from\_kmh](Modelica_SIunits_Conversions.html#Mode metre per second
  lica.SIunits.Conversions.from_kmh)                 

  ![image49](Modelica.SIunits.Conversions.to_dayS.pn Convert from second
  g)                                                 to day
  [to\_day](Modelica_SIunits_Conversions.html#Modeli 
  ca.SIunits.Conversions.to_day)                     

  ![image50](Modelica.SIunits.Conversions.from_dayS. Convert from day to
  png)                                               second
  [from\_day](Modelica_SIunits_Conversions.html#Mode 
  lica.SIunits.Conversions.from_day)                 

  ![image51](Modelica.SIunits.Conversions.to_hourS.p Convert from second
  ng)                                                to hour
  [to\_hour](Modelica_SIunits_Conversions.html#Model 
  ica.SIunits.Conversions.to_hour)                   

  ![image52](Modelica.SIunits.Conversions.from_hourS Convert from hour to
  .png)                                              second
  [from\_hour](Modelica_SIunits_Conversions.html#Mod 
  elica.SIunits.Conversions.from_hour)               

  ![image53](Modelica.SIunits.Conversions.to_minuteS Convert from second
  .png)                                              to minute
  [to\_minute](Modelica_SIunits_Conversions.html#Mod 
  elica.SIunits.Conversions.to_minute)               

  ![image54](Modelica.SIunits.Conversions.from_minut Convert from minute
  eS.png)                                            to second
  [from\_minute](Modelica_SIunits_Conversions.html#M 
  odelica.SIunits.Conversions.from_minute)           

  ![image55](Modelica.SIunits.Conversions.to_litreS. Convert from cubic
  png)                                               metre to litre
  [to\_litre](Modelica_SIunits_Conversions.html#Mode 
  lica.SIunits.Conversions.to_litre)                 

  ![image56](Modelica.SIunits.Conversions.to_litreS. Convert from litre to
  png)                                               cubic metre
  [from\_litre](Modelica_SIunits_Conversions.html#Mo 
  delica.SIunits.Conversions.from_litre)             

  ![image57](Modelica.SIunits.Conversions.from_AhS.p Convert from Ampere
  ng)                                                hours to Coulomb
  [from\_Ah](Modelica_SIunits_Conversions.html#Model 
  ica.SIunits.Conversions.from_Ah)                   

  ![image58](Modelica.SIunits.Conversions.to_AhS.png Convert from Coulomb
  )                                                  to Ampere hours
  [to\_Ah](Modelica_SIunits_Conversions.html#Modelic 
  a.SIunits.Conversions.to_Ah)                       

  ![image59](Modelica.SIunits.Conversions.from_WhS.p Convert from Watt
  ng)                                                hour to Joule
  [from\_Wh](Modelica_SIunits_Conversions.html#Model 
  ica.SIunits.Conversions.from_Wh)                   

  ![image60](Modelica.SIunits.Conversions.to_WhS.png Convert from Joule to
  )                                                  Watt hour
  [to\_Wh](Modelica_SIunits_Conversions.html#Modelic 
  a.SIunits.Conversions.to_Wh)                       

  ![image61](Modelica.SIunits.Conversions.to_kWhS.pn Convert from Joule to
  g)                                                 kilo Watt hour
  [to\_kWh](Modelica_SIunits_Conversions.html#Modeli 
  ca.SIunits.Conversions.to_kWh)                     

  ![image62](Modelica.SIunits.Conversions.from_kWhS. Convert from kilo
  png)                                               Watt hour to Joule
  [from\_kWh](Modelica_SIunits_Conversions.html#Mode 
  lica.SIunits.Conversions.from_kWh)                 

  ![image63](Modelica.SIunits.Conversions.to_barS.pn Convert from Pascal
  g)                                                 to bar
  [to\_bar](Modelica_SIunits_Conversions.html#Modeli 
  ca.SIunits.Conversions.to_bar)                     

  ![image64](Modelica.SIunits.Conversions.to_barS.pn Convert from bar to
  g)                                                 Pascal
  [from\_bar](Modelica_SIunits_Conversions.html#Mode 
  lica.SIunits.Conversions.from_bar)                 

  ![image65](Modelica.SIunits.Conversions.to_barS.pn Convert from kilogram
  g)                                                 per second to gram
  [to\_gps](Modelica_SIunits_Conversions.html#Modeli per second
  ca.SIunits.Conversions.to_gps)                     

  ![image66](Modelica.SIunits.Conversions.to_barS.pn Convert from gram per
  g)                                                 second to kilogram
  [from\_gps](Modelica_SIunits_Conversions.html#Mode per second
  lica.SIunits.Conversions.from_gps)                 

  ![image67](Modelica.SIunits.Conversions.to_barS.pn Base icon for
  g)                                                 conversion functions
  [ConversionIcon](Modelica_SIunits_Conversions.html 
  #Modelica.SIunits.Conversions.ConversionIcon)      

  ![image68](Modelica.SIunits.Conversions.to_barS.pn Convert from Hz to
  g)                                                 rad/s
  [from\_Hz](Modelica_SIunits_Conversions.html#Model 
  ica.SIunits.Conversions.from_Hz)                   

  ![image69](Modelica.SIunits.Conversions.to_barS.pn Convert from rad/s to
  g)                                                 Hz
  [to\_Hz](Modelica_SIunits_Conversions.html#Modelic 
  a.SIunits.Conversions.to_Hz)                       

  ![image70](Modelica.SIunits.Conversions.to_barS.pn Convert from square
  g)                                                 metre to square
  [to\_cm2](Modelica_SIunits_Conversions.html#Modeli centrimetre
  ca.SIunits.Conversions.to_cm2)                     

  ![image71](Modelica.SIunits.Conversions.to_barS.pn Convert from square
  g)                                                 centrimetre to square
  [from\_cm2](Modelica_SIunits_Conversions.html#Mode metre
  lica.SIunits.Conversions.from_cm2)                 
  ------------------------------------------------------------------------

* * * * *

![image72](Modelica.SIunits.Conversions.to_degCI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_degC
=============================================================================================================================================================

**Convert from Kelvin to degCelsius**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name   Default Description
  -------------------------------------------- ------ ------- -------------
  [Temperature](Modelica_SIunits.html#Modelica Kelvin         Kelvin value
  .SIunits.Temperature)                                       [K]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Name  Descriptio
                                                                n
  ------------------------------------------------------- ----- ----------
  [Temperature\_degC](Modelica_SIunits_Conversions_NonSIu Celsi Celsius
  nits.html#Modelica.SIunits.Conversions.NonSIunits.Tempe us    value
  rature_degC)                                                  [degC]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_degC "Convert from Kelvin to degCelsius"
      extends ConversionIcon;
      input Temperature Kelvin "Kelvin value";
      output NonSIunits.Temperature_degC Celsius "Celsius value";
    algorithm 
      Celsius := Kelvin + Modelica.Constants.T_zero;
    end to_degC;

* * * * *

![image73](Modelica.SIunits.Conversions.from_degCI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_degC
=================================================================================================================================================================

**Convert from degCelsius to Kelvin**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name Defa Descriptio
                                                            ult  n
  ---------------------------------------------------- ---- ---- ----------
  [Temperature\_degC](Modelica_SIunits_Conversions_Non Cels      Celsius
  SIunits.html#Modelica.SIunits.Conversions.NonSIunits ius       value
  .Temperature_degC)                                             [degC]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                              Name    Description
  ------------------------------------------------- ------- --------------
  [Temperature](Modelica_SIunits.html#Modelica.SIun Kelvin  Kelvin value
  its.Temperature)                                          [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_degC "Convert from degCelsius to Kelvin"
      extends ConversionIcon;
      input NonSIunits.Temperature_degC Celsius "Celsius value";
      output Temperature Kelvin "Kelvin value";
    algorithm 
      Kelvin := Celsius - Modelica.Constants.T_zero;
    end from_degC;

* * * * *

![image74](Modelica.SIunits.Conversions.to_degFI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_degF
=============================================================================================================================================================

**Convert from Kelvin to degFahrenheit**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name   Default Description
  -------------------------------------------- ------ ------- -------------
  [Temperature](Modelica_SIunits.html#Modelica Kelvin         Kelvin value
  .SIunits.Temperature)                                       [K]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                   Name   Description
  ------------------------------------------------------ ------ -----------
  [Temperature\_degF](Modelica_SIunits_Conversions_NonSI Fahren Fahrenheit
  units.html#Modelica.SIunits.Conversions.NonSIunits.Tem heit   value
  perature_degF)                                                [degF]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_degF "Convert from Kelvin to degFahrenheit"
      extends ConversionIcon;
      input Temperature Kelvin "Kelvin value";
      output NonSIunits.Temperature_degF Fahrenheit "Fahrenheit value";
    algorithm 
      Fahrenheit := (Kelvin + Modelica.Constants.T_zero)*(9/5) + 32;
    end to_degF;

* * * * *

![image75](Modelica.SIunits.Conversions.from_degFI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_degF
=================================================================================================================================================================

**Convert from degFahrenheit to Kelvin**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                               Name  Defa Descriptio
                                                           ult  n
  -------------------------------------------------- ----- ---- ----------
  [Temperature\_degF](Modelica_SIunits_Conversions_N Fahre      Fahrenheit
  onSIunits.html#Modelica.SIunits.Conversions.NonSIu nheit      value
  nits.Temperature_degF)                                        [degF]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                              Name    Description
  ------------------------------------------------- ------- --------------
  [Temperature](Modelica_SIunits.html#Modelica.SIun Kelvin  Kelvin value
  its.Temperature)                                          [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_degF "Convert from degFahrenheit to Kelvin"
      extends ConversionIcon;
      input NonSIunits.Temperature_degF Fahrenheit "Fahrenheit value";
      output Temperature Kelvin "Kelvin value";
    algorithm 
      Kelvin := (Fahrenheit - 32)*(5/9) - Modelica.Constants.T_zero;
    end from_degF;

* * * * *

![image76](Modelica.SIunits.Conversions.to_degRkI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_degRk
===============================================================================================================================================================

**Convert from Kelvin to degRankine**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name   Default Description
  -------------------------------------------- ------ ------- -------------
  [Temperature](Modelica_SIunits.html#Modelica Kelvin         Kelvin value
  .SIunits.Temperature)                                       [K]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                    Name  Description
  ------------------------------------------------------- ----- -----------
  [Temperature\_degRk](Modelica_SIunits_Conversions_NonSI Ranki Rankine
  units.html#Modelica.SIunits.Conversions.NonSIunits.Temp ne    value
  erature_degRk)                                                [degRk]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_degRk "Convert from Kelvin to degRankine"
      extends ConversionIcon;
      input Temperature Kelvin "Kelvin value";
      output NonSIunits.Temperature_degRk Rankine "Rankine value";
    algorithm 
      Rankine := (9/5)*Kelvin;
    end to_degRk;

* * * * *

![image77](Modelica.SIunits.Conversions.from_degRkI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_degRk
===================================================================================================================================================================

**Convert from degRankine to Kelvin**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name Defa Descriptio
                                                            ult  n
  ---------------------------------------------------- ---- ---- ----------
  [Temperature\_degRk](Modelica_SIunits_Conversions_No Rank      Rankine
  nSIunits.html#Modelica.SIunits.Conversions.NonSIunit ine       value
  s.Temperature_degRk)                                           [degRk]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                              Name    Description
  ------------------------------------------------- ------- --------------
  [Temperature](Modelica_SIunits.html#Modelica.SIun Kelvin  Kelvin value
  its.Temperature)                                          [K]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_degRk "Convert from degRankine to Kelvin"
      extends ConversionIcon;
      input NonSIunits.Temperature_degRk Rankine "Rankine value";
      output Temperature Kelvin "Kelvin value";
    algorithm 
      Kelvin := (5/9)*Rankine;
    end from_degRk;

* * * * *

![image78](Modelica.SIunits.Conversions.to_degI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_deg
===========================================================================================================================================================

**Convert from radian to degree**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                     Name    Default  Description
  ---------------------------------------- ------- -------- ---------------
  [Angle](Modelica_SIunits.html#Modelica.S radian           radian value
  Iunits.Angle)                                             [rad]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                    Name  Description
  ------------------------------------------------------- ----- -----------
  [Angle\_deg](Modelica_SIunits_Conversions_NonSIunits.ht degre degree
  ml#Modelica.SIunits.Conversions.NonSIunits.Angle_deg)   e     value [deg]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_deg "Convert from radian to degree"
      extends ConversionIcon;
      input Angle radian "radian value";
      output NonSIunits.Angle_deg degree "degree value";
    algorithm 
      degree := (180.0/Modelica.Constants.pi)*radian;
    end to_deg;

* * * * *

![image79](Modelica.SIunits.Conversions.from_degI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_deg
===============================================================================================================================================================

**Convert from degree to radian**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Name Defau Descriptio
                                                           lt    n
  --------------------------------------------------- ---- ----- ----------
  [Angle\_deg](Modelica_SIunits_Conversions_NonSIunit degr       degree
  s.html#Modelica.SIunits.Conversions.NonSIunits.Angl ee         value
  e_deg)                                                         [deg]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Name     Description
  --------------------------------------------- -------- -----------------
  [Angle](Modelica_SIunits.html#Modelica.SIunit radian   radian value
  s.Angle)                                               [rad]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_deg "Convert from degree to radian"
      extends ConversionIcon;
      input NonSIunits.Angle_deg degree "degree value";
      output Angle radian "radian value";
    algorithm 
      radian := (Modelica.Constants.pi/180.0)*degree;
    end from_deg;

* * * * *

![image80](Modelica.SIunits.Conversions.to_rpmI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_rpm
===========================================================================================================================================================

**Convert from radian per second to revolutions per minute**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                       Name Defaul Description
                                                  t      
  ------------------------------------------ ---- ------ ------------------
  [AngularVelocity](Modelica_SIunits.html#Mo rs          radian per second
  delica.SIunits.AngularVelocity)                        value [rad/s]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ---------------
  [AngularVelocity\_rpm](Modelica_SIunits_Conversions_ rpm revolutions per
  NonSIunits.html#Modelica.SIunits.Conversions.NonSIun     minute value
  its.AngularVelocity_rpm)                                 [1/min]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_rpm 
      "Convert from radian per second to revolutions per minute"
      extends ConversionIcon;
      input AngularVelocity rs "radian per second value";
      output NonSIunits.AngularVelocity_rpm rpm "revolutions per minute value";
    algorithm 
      rpm := (30/Modelica.Constants.pi)*rs;
    end to_rpm;

* * * * *

![image81](Modelica.SIunits.Conversions.from_rpmI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_rpm
===============================================================================================================================================================

**Convert from revolutions per minute to radian per second**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                              Nam Defa Description
                                                    e   ult  
  ------------------------------------------------- --- ---- --------------
  [AngularVelocity\_rpm](Modelica_SIunits_Conversio rpm      revolutions
  ns_NonSIunits.html#Modelica.SIunits.Conversions.N          per minute
  onSIunits.AngularVelocity_rpm)                             value [1/min]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- --------------------
  [AngularVelocity](Modelica_SIunits.html#Modeli rs    radian per second
  ca.SIunits.AngularVelocity)                          value [rad/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_rpm 
      "Convert from revolutions per minute to radian per second"
      extends ConversionIcon;
      input NonSIunits.AngularVelocity_rpm rpm "revolutions per minute value";
      output AngularVelocity rs "radian per second value";
    algorithm 
      rs := (Modelica.Constants.pi/30)*rpm;
    end from_rpm;

* * * * *

![image82](Modelica.SIunits.Conversions.to_kmhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_kmh
===========================================================================================================================================================

**Convert from metre per second to kilometre per hour**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                    Name  Default Description
  --------------------------------------- ----- ------- -------------------
  [Velocity](Modelica_SIunits.html#Modeli ms            metre per second
  ca.SIunits.Velocity)                                  value [m/s]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ---------------
  [Velocity\_kmh](Modelica_SIunits_Conversions_NonSIun kmh kilometre per
  its.html#Modelica.SIunits.Conversions.NonSIunits.Vel     hour value
  ocity_kmh)                                               [km/h]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_kmh "Convert from metre per second to kilometre per hour"
      extends ConversionIcon;
      input Velocity ms "metre per second value";
      output NonSIunits.Velocity_kmh kmh "kilometre per hour value";
    algorithm 
      kmh := 3.6*ms;
    end to_kmh;

* * * * *

![image83](Modelica.SIunits.Conversions.from_kmhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_kmh
===============================================================================================================================================================

**Convert from kilometre per hour to metre per second**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                             Nam Defa Description
                                                   e   ult  
  ------------------------------------------------ --- ---- --------------
  [Velocity\_kmh](Modelica_SIunits_Conversions_Non kmh      kilometre per
  SIunits.html#Modelica.SIunits.Conversions.NonSIu          hour value
  nits.Velocity_kmh)                                        [km/h]
  ------------------------------------------------------------------------

Outputs
-------

  --------------------------------------------------------------------------
  Type                                         Name   Description
  -------------------------------------------- ------ ----------------------
  [Velocity](Modelica_SIunits.html#Modelica.SI ms     metre per second value
  units.Velocity)                                     [m/s]
  --------------------------------------------------------------------------

Modelica definition
-------------------

    function from_kmh 
      "Convert from kilometre per hour to metre per second"
      extends ConversionIcon;
      input NonSIunits.Velocity_kmh kmh "kilometre per hour value";
      output Velocity ms "metre per second value";
    algorithm 
      ms := kmh/3.6;
    end from_kmh;

* * * * *

![image84](Modelica.SIunits.Conversions.to_dayI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_day
===========================================================================================================================================================

**Convert from second to day**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name   Default  Description
  ----------------------------------------- ------ -------- ---------------
  [Time](Modelica_SIunits.html#Modelica.SIu s               second value
  nits.Time)                                                [s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                       Name Descripti
                                                                  on
  ---------------------------------------------------------- ---- ---------
  [Time\_day](Modelica_SIunits_Conversions_NonSIunits.html#M day  day value
  odelica.SIunits.Conversions.NonSIunits.Time_day)                [d]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_day "Convert from second to day"
      extends ConversionIcon;
      input Time s "second value";
      output NonSIunits.Time_day day "day value";
    algorithm 
      day := s/86400;
    end to_day;

* * * * *

![image85](Modelica.SIunits.Conversions.from_dayI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_day
===============================================================================================================================================================

**Convert from day to second**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Name Defau Descript
                                                             lt    ion
  ----------------------------------------------------- ---- ----- --------
  [Time\_day](Modelica_SIunits_Conversions_NonSIunits.h day        day
  tml#Modelica.SIunits.Conversions.NonSIunits.Time_day)            value
                                                                   [d]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                            Name    Description
  ----------------------------------------------- ------- -----------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.T s       second value [s]
  ime)                                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_day "Convert from day to second"
      extends ConversionIcon;
      input NonSIunits.Time_day day "day value";
      output Time s "second value";
    algorithm 
      s := 86400*day;
    end from_day;

* * * * *

![image86](Modelica.SIunits.Conversions.to_hourI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_hour
=============================================================================================================================================================

**Convert from second to hour**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name   Default  Description
  ----------------------------------------- ------ -------- ---------------
  [Time](Modelica_SIunits.html#Modelica.SIu s               second value
  nits.Time)                                                [s]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [Time\_hour](Modelica_SIunits_Conversions_NonSIunits.html hour hour
  #Modelica.SIunits.Conversions.NonSIunits.Time_hour)            value [h]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_hour "Convert from second to hour"
      extends ConversionIcon;
      input Time s "second value";
      output NonSIunits.Time_hour hour "hour value";
    algorithm 
      hour := s/3600;
    end to_hour;

* * * * *

![image87](Modelica.SIunits.Conversions.from_hourI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_hour
=================================================================================================================================================================

**Convert from hour to second**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Name Defau Descript
                                                             lt    ion
  ----------------------------------------------------- ---- ----- --------
  [Time\_hour](Modelica_SIunits_Conversions_NonSIunits. hour       hour
  html#Modelica.SIunits.Conversions.NonSIunits.Time_hou            value
  r)                                                               [h]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                            Name    Description
  ----------------------------------------------- ------- -----------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.T s       second value [s]
  ime)                                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_hour "Convert from hour to second"
      extends ConversionIcon;
      input NonSIunits.Time_hour hour "hour value";
      output Time s "second value";
    algorithm 
      s := 3600*hour;
    end from_hour;

* * * * *

![image88](Modelica.SIunits.Conversions.to_minuteI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_minute
=================================================================================================================================================================

**Convert from second to minute**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                      Name   Default  Description
  ----------------------------------------- ------ -------- ---------------
  [Time](Modelica_SIunits.html#Modelica.SIu s               second value
  nits.Time)                                                [s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                     Name  Descriptio
                                                                 n
  -------------------------------------------------------- ----- ----------
  [Time\_minute](Modelica_SIunits_Conversions_NonSIunits.h minut minute
  tml#Modelica.SIunits.Conversions.NonSIunits.Time_minute) e     value
                                                                 [min]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_minute "Convert from second to minute"
      extends ConversionIcon;
      input Time s "second value";
      output NonSIunits.Time_minute minute "minute value";
    algorithm 
      minute := s/60;
    end to_minute;

* * * * *

![image89](Modelica.SIunits.Conversions.from_minuteI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_minute
=====================================================================================================================================================================

**Convert from minute to second**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Name Defau Descriptio
                                                           lt    n
  --------------------------------------------------- ---- ----- ----------
  [Time\_minute](Modelica_SIunits_Conversions_NonSIun minu       minute
  its.html#Modelica.SIunits.Conversions.NonSIunits.Ti te         value
  me_minute)                                                     [min]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                            Name    Description
  ----------------------------------------------- ------- -----------------
  [Time](Modelica_SIunits.html#Modelica.SIunits.T s       second value [s]
  ime)                                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_minute "Convert from minute to second"
      extends ConversionIcon;
      input NonSIunits.Time_minute minute "minute value";
      output Time s "second value";
    algorithm 
      s := 60*minute;
    end from_minute;

* * * * *

![image90](Modelica.SIunits.Conversions.to_litreI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_litre
===============================================================================================================================================================

**Convert from cubic metre to litre**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                     Name  Default Description
  ---------------------------------------- ----- ------- -----------------
  [Volume](Modelica_SIunits.html#Modelica. m3            cubic metre value
  SIunits.Volume)                                        [m3]
  ------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                      Name Descripti
                                                                 on
  --------------------------------------------------------- ---- ---------
  [Volume\_litre](Modelica_SIunits_Conversions_NonSIunits.h litr litre
  tml#Modelica.SIunits.Conversions.NonSIunits.Volume_litre) e    value [l]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_litre "Convert from cubic metre to litre"
      extends ConversionIcon;
      input Volume m3 "cubic metre value";
      output NonSIunits.Volume_litre litre "litre value";
    algorithm 
      litre := 1000*m3;
    end to_litre;

* * * * *

![image91](Modelica.SIunits.Conversions.from_litreI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_litre
===================================================================================================================================================================

**Convert from litre to cubic metre**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Name Defau Descript
                                                             lt    ion
  ----------------------------------------------------- ---- ----- --------
  [Volume\_litre](Modelica_SIunits_Conversions_NonSIuni litr       litre
  ts.html#Modelica.SIunits.Conversions.NonSIunits.Volum e          value
  e_litre)                                                         [l]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                          Name   Description
  --------------------------------------------- ------ -------------------
  [Volume](Modelica_SIunits.html#Modelica.SIuni m3     cubic metre value
  ts.Volume)                                           [m3]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_litre "Convert from litre to cubic metre"
      extends ConversionIcon;
      input NonSIunits.Volume_litre litre "litre value";
      output Volume m3 "cubic metre value";
    algorithm 
      m3 := litre/1000;
    end from_litre;

* * * * *

![image92](Modelica.SIunits.Conversions.from_AhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_Ah
=============================================================================================================================================================

**Convert from Ampere hours to Coulomb**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name  Defa Descripti
                                                             ult  on
  ---------------------------------------------------- ----- ---- ---------
  [ElectricCharge\_Ah](Modelica_SIunits_Conversions_No Amper      Ampere
  nSIunits.html#Modelica.SIunits.Conversions.NonSIunit eHour      hours
  s.ElectricCharge_Ah)                                            [A.h]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                 Name     Descriptio
                                                                n
  ---------------------------------------------------- -------- ----------
  [ElectricCharge](Modelica_SIunits.html#Modelica.SIun Coulomb  Coulomb
  its.ElectricCharge)                                           [C]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_Ah "Convert from Ampere hours to Coulomb"
      extends ConversionIcon;
      input Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah
            AmpereHour "Ampere hours";
      output Modelica.SIunits.ElectricCharge Coulomb "Coulomb";
    algorithm 
      Coulomb := AmpereHour * 3600;

    end from_Ah;

* * * * *

![image93](Modelica.SIunits.Conversions.to_AhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_Ah
=========================================================================================================================================================

**Convert from Coulomb to Ampere hours**

Information
-----------

Extends from
[Modelica.SIunits.Conversions.ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                            Name    Default Descripti
                                                                  on
  ----------------------------------------------- ------- ------- ---------
  [ElectricCharge](Modelica_SIunits.html#Modelica Coulomb         Coulomb
  .SIunits.ElectricCharge)                                        [C]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Name   Descripti
                                                                 on
  ------------------------------------------------------- ------ ---------
  [ElectricCharge\_Ah](Modelica_SIunits_Conversions_NonSI Ampere Ampere
  units.html#Modelica.SIunits.Conversions.NonSIunits.Elec Hour   hours
  tricCharge_Ah)                                                 [A.h]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_Ah "Convert from Coulomb to Ampere hours"
      extends Modelica.SIunits.Conversions.ConversionIcon;
      input Modelica.SIunits.ElectricCharge Coulomb "Coulomb";
      output Modelica.SIunits.Conversions.NonSIunits.ElectricCharge_Ah
                                          AmpereHour "Ampere hours";
    algorithm 
      AmpereHour := Coulomb/3600;

    end to_Ah;

* * * * *

![image94](Modelica.SIunits.Conversions.from_WhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_Wh
=============================================================================================================================================================

**Convert from Watt hour to Joule**

Information
-----------

Extends from
[Modelica.SIunits.Conversions.ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                Name  Defau Descripti
                                                            lt    on
  --------------------------------------------------- ----- ----- ---------
  [Energy\_Wh](Modelica_SIunits_Conversions_NonSIunit WattH       Watt hour
  s.html#Modelica.SIunits.Conversions.NonSIunits.Ener our         [W.h]
  gy_Wh)                                                          
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name     Description
  -------------------------------------------------- -------- -------------
  [Energy](Modelica_SIunits.html#Modelica.SIunits.En Joule    Joule [J]
  ergy)                                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_Wh "Convert from Watt hour to Joule"
      extends Modelica.SIunits.Conversions.ConversionIcon;
      input NonSIunits.Energy_Wh WattHour "Watt hour";
      output Modelica.SIunits.Energy Joule "Joule";
    algorithm 
      Joule := WattHour * 3600;

    end from_Wh;

* * * * *

![image95](Modelica.SIunits.Conversions.to_WhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_Wh
=========================================================================================================================================================

**Convert from Joule to Watt hour**

Information
-----------

Extends from
[Modelica.SIunits.Conversions.ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name    Default  Description
  -------------------------------------------- ------- -------- -----------
  [Energy](Modelica_SIunits.html#Modelica.SIun Joule            Joule [J]
  its.Energy)                                                   
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                    Name   Descripti
                                                                 on
  ------------------------------------------------------- ------ ---------
  [Energy\_Wh](Modelica_SIunits_Conversions_NonSIunits.ht WattHo Watt hour
  ml#Modelica.SIunits.Conversions.NonSIunits.Energy_Wh)   ur     [W.h]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_Wh "Convert from Joule to Watt hour"
      extends Modelica.SIunits.Conversions.ConversionIcon;
      input Modelica.SIunits.Energy Joule "Joule";
      output NonSIunits.Energy_Wh WattHour "Watt hour";
    algorithm 
      WattHour := Joule/3600;

    end to_Wh;

* * * * *

![image96](Modelica.SIunits.Conversions.to_kWhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_kWh
===========================================================================================================================================================

**Convert from Joule to kilo Watt hour**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                        Name   Default  Description
  ------------------------------------------- ------ -------- -------------
  [Energy](Modelica_SIunits.html#Modelica.SIu J               Joule value
  nits.Energy)                                                [J]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                      Name Descriptio
                                                                 n
  --------------------------------------------------------- ---- ----------
  [Energy\_kWh](Modelica_SIunits_Conversions_NonSIunits.htm kWh  kWh value
  l#Modelica.SIunits.Conversions.NonSIunits.Energy_kWh)          [kW.h]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_kWh "Convert from Joule to kilo Watt hour"
      extends ConversionIcon;
      input Energy J "Joule value";
      output NonSIunits.Energy_kWh kWh "kWh value";
    algorithm 
      kWh := J/3.6e6;
    end to_kWh;

* * * * *

![image97](Modelica.SIunits.Conversions.from_kWhI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_kWh
===============================================================================================================================================================

**Convert from kilo Watt hour to Joule**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                 Name Defau Descripti
                                                            lt    on
  ---------------------------------------------------- ---- ----- ---------
  [Energy\_kWh](Modelica_SIunits_Conversions_NonSIunit kWh        kWh value
  s.html#Modelica.SIunits.Conversions.NonSIunits.Energ            [kW.h]
  y_kWh)                                                          
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name    Description
  ------------------------------------------------- ------- ---------------
  [Energy](Modelica_SIunits.html#Modelica.SIunits.E J       Joule value [J]
  nergy)                                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_kWh "Convert from kilo Watt hour to Joule"
      extends ConversionIcon;
      input NonSIunits.Energy_kWh kWh "kWh value";
      output Energy J "Joule value";
    algorithm 
      J := 3.6e6*kWh;
    end from_kWh;

* * * * *

![image98](Modelica.SIunits.Conversions.to_barI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_bar
===========================================================================================================================================================

**Convert from Pascal to bar**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  ------------------------------------------------------------------------
  Type                                        Name  Default Description
  ------------------------------------------- ----- ------- --------------
  [Pressure](Modelica_SIunits.html#Modelica.S Pa            Pascal value
  Iunits.Pressure)                                          [Pa]
  ------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                       Name Descripti
                                                                  on
  ---------------------------------------------------------- ---- ---------
  [Pressure\_bar](Modelica_SIunits_Conversions_NonSIunits.ht bar  bar value
  ml#Modelica.SIunits.Conversions.NonSIunits.Pressure_bar)        [bar]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_bar "Convert from Pascal to bar"
      extends ConversionIcon;
      input Pressure Pa "Pascal value";
      output NonSIunits.Pressure_bar bar "bar value";
    algorithm 
      bar := Pa/1e5;
    end to_bar;

* * * * *

![image99](Modelica.SIunits.Conversions.from_barI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_bar
===============================================================================================================================================================

**Convert from bar to Pascal**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                  Name Defau Descript
                                                             lt    ion
  ----------------------------------------------------- ---- ----- --------
  [Pressure\_bar](Modelica_SIunits_Conversions_NonSIuni bar        bar
  ts.html#Modelica.SIunits.Conversions.NonSIunits.Press            value
  ure_bar)                                                         [bar]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name   Description
  ------------------------------------------------ ------ ----------------
  [Pressure](Modelica_SIunits.html#Modelica.SIunit Pa     Pascal value
  s.Pressure)                                             [Pa]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_bar "Convert from bar to Pascal"
      extends ConversionIcon;
      input NonSIunits.Pressure_bar bar "bar value";
      output Pressure Pa "Pascal value";
    algorithm 
      Pa := 1e5*bar;
    end from_bar;

* * * * *

![image100](Modelica.SIunits.Conversions.to_gpsI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_gps
============================================================================================================================================================

**Convert from kilogram per second to gram per second**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- -------------
  [MassFlowRate](Modelica_SIunits.html#Modelica kgps          kg/s value
  .SIunits.MassFlowRate)                                      [kg/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                       Name Descripti
                                                                  on
  ---------------------------------------------------------- ---- ---------
  [MassFlowRate\_gps](Modelica_SIunits_Conversions_NonSIunit gps  g/s value
  s.html#Modelica.SIunits.Conversions.NonSIunits.MassFlowRat      [g/s]
  e_gps)                                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_gps "Convert from kilogram per second to gram per second"
      extends ConversionIcon;
      input MassFlowRate kgps "kg/s value";
      output NonSIunits.MassFlowRate_gps gps "g/s value";
    algorithm 
      gps := 1000*kgps;
    end to_gps;

* * * * *

![image101](Modelica.SIunits.Conversions.from_gpsI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_gps
================================================================================================================================================================

**Convert from gram per second to kilogram per second**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                                   Nam Defau Descript
                                                         e   lt    ion
  ------------------------------------------------------ --- ----- --------
  [MassFlowRate\_gps](Modelica_SIunits_Conversions_NonSI gps       g/s
  units.html#Modelica.SIunits.Conversions.NonSIunits.Mas           value
  sFlowRate_gps)                                                   [g/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                               Name   Description
  -------------------------------------------------- ------ ---------------
  [MassFlowRate](Modelica_SIunits.html#Modelica.SIun kgps   kg/s value
  its.MassFlowRate)                                         [kg/s]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function from_gps 
      "Convert from gram per second to kilogram per second"
      extends ConversionIcon;
      input NonSIunits.MassFlowRate_gps gps "g/s value";
      output MassFlowRate kgps "kg/s value";
    algorithm 
      kgps := gps/1000;
    end from_gps;

* * * * *

![image102](Modelica.SIunits.Conversions.ConversionIconI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).ConversionIcon
===========================================================================================================================================================================

**Base icon for conversion functions**

Modelica definition
-------------------

    partial function ConversionIcon "Base icon for conversion functions"

    end ConversionIcon;

* * * * *

![image103](Modelica.SIunits.Conversions.from_HzI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_Hz
==============================================================================================================================================================

**Convert from Hz to rad/s**

Information
-----------

Extends from
[SIunits.Conversions.ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                          Name   Default  Description
  --------------------------------------------- ------ -------- ------------
  [Frequency](Modelica_SIunits.html#Modelica.SI f               frequency
  units.Frequency)                                              [Hz]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                             Name  Description
  ------------------------------------------------ ----- -----------------
  [AngularVelocity](Modelica_SIunits.html#Modelica w     angular velocity
  .SIunits.AngularVelocity)                              [rad/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_Hz "Convert from Hz to rad/s"
      extends SIunits.Conversions.ConversionIcon;
      input SIunits.Frequency f "frequency";
      output SIunits.AngularVelocity w "angular velocity";

    algorithm 
      w := 2*Modelica.Constants.pi*f;
    end from_Hz;

* * * * *

![image104](Modelica.SIunits.Conversions.to_HzI.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_Hz
==========================================================================================================================================================

**Convert from rad/s to Hz**

Information
-----------

Extends from
[SIunits.Conversions.ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                         Name Defaul Description
                                                    t      
  -------------------------------------------- ---- ------ ----------------
  [AngularVelocity](Modelica_SIunits.html#Mode w           angular velocity
  lica.SIunits.AngularVelocity)                            [rad/s]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                                Name   Description
  --------------------------------------------------- ------ --------------
  [Frequency](Modelica_SIunits.html#Modelica.SIunits. f      frequency [Hz]
  Frequency)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function to_Hz "Convert from rad/s to Hz"
      extends SIunits.Conversions.ConversionIcon;
      input SIunits.AngularVelocity w "angular velocity";
      output SIunits.Frequency f "frequency";
    algorithm 
      f := w/(2*Modelica.Constants.pi);
    end to_Hz;

* * * * *

![image105](Modelica.SIunits.Conversions.to_cm2I.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).to\_cm2
============================================================================================================================================================

**Convert from square metre to square centrimetre**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  --------------------------------------------------------------------------
  Type                                    Name   Default  Description
  --------------------------------------- ------ -------- ------------------
  [Area](Modelica_SIunits.html#Modelica.S m2              square metre value
  Iunits.Area)                                            [m2]
  --------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ---------------
  [Area\_cm](Modelica_SIunits_Conversions_NonSIunits. cm2  square
  html#Modelica.SIunits.Conversions.NonSIunits.Area_c      centimetre
  m)                                                       value [cm2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function to_cm2 "Convert from square metre to square centrimetre"
      extends ConversionIcon;
      input Area m2 "square metre value";
      output NonSIunits.Area_cm cm2 "square centimetre value";
    algorithm 
      cm2 := 0.0001*m2;
    end to_cm2;

* * * * *

![image106](Modelica.SIunits.Conversions.from_cm2I.png) [Modelica.SIunits.Conversions](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions).from\_cm2
================================================================================================================================================================

**Convert from square centrimetre to square metre**

Information
-----------

Extends from
[ConversionIcon](Modelica_SIunits_Conversions.html#Modelica.SIunits.Conversions.ConversionIcon)
(Base icon for conversion functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Nam Defau Description
                                                   e   lt    
  ------------------------------------------------ --- ----- --------------
  [Area\_cm](Modelica_SIunits_Conversions_NonSIuni cm2       square
  ts.html#Modelica.SIunits.Conversions.NonSIunits.           centimetre
  Area_cm)                                                   value [cm2]
  -------------------------------------------------------------------------

Outputs
-------

  ------------------------------------------------------------------------
  Type                                        Name   Description
  ------------------------------------------- ------ ---------------------
  [Area](Modelica_SIunits.html#Modelica.SIuni m2     square metre value
  ts.Area)                                           [m2]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    function from_cm2 "Convert from square centrimetre to square metre"
      extends ConversionIcon;
      input NonSIunits.Area_cm cm2 "square centimetre value";
      output Area m2 "square metre value";
    algorithm 
      m2 :=10000*cm2;
    end from_cm2;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:31:50 2010.
