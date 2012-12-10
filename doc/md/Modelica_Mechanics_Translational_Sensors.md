% Modelica.Mechanics.Translational.Sensors
% 
% 

[Modelica.Mechanics.Translational](Modelica_Mechanics_Translational.html#Modelica.Mechanics.Translational).Sensors
==================================================================================================================

**Sensors for 1-dim. translational mechanical quantities**

Information
-----------

::

This package contains ideal sensor components that provide the connector
variables as signals for further processing with the Modelica.Blocks
library.

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                             Description
  ------------------------------------------------ -----------------------
  ![image8](Modelica.Mechanics.Translational.Senso Ideal sensor to measure
  rs.PositionSensorS.png)                          the absolute position
  [PositionSensor](Modelica_Mechanics_Translationa 
  l_Sensors.html#Modelica.Mechanics.Translational. 
  Sensors.PositionSensor)                          

  ![image9](Modelica.Mechanics.Translational.Senso Ideal sensor to measure
  rs.SpeedSensorS.png)                             the absolute velocity
  [SpeedSensor](Modelica_Mechanics_Translational_S 
  ensors.html#Modelica.Mechanics.Translational.Sen 
  sors.SpeedSensor)                                

  ![image10](Modelica.Mechanics.Translational.Sens Ideal sensor to measure
  ors.AccSensorS.png)                              the absolute
  [AccSensor](Modelica_Mechanics_Translational_Sen acceleration
  sors.html#Modelica.Mechanics.Translational.Senso 
  rs.AccSensor)                                    

  ![image11](Modelica.Mechanics.Translational.Sens Ideal sensor to measure
  ors.RelPositionSensorS.png)                      the relative position
  [RelPositionSensor](Modelica_Mechanics_Translati 
  onal_Sensors.html#Modelica.Mechanics.Translation 
  al.Sensors.RelPositionSensor)                    

  ![image12](Modelica.Mechanics.Translational.Sens Ideal sensor to measure
  ors.RelSpeedSensorS.png)                         the relative speed
  [RelSpeedSensor](Modelica_Mechanics_Translationa 
  l_Sensors.html#Modelica.Mechanics.Translational. 
  Sensors.RelSpeedSensor)                          

  ![image13](Modelica.Mechanics.Translational.Sens Ideal sensor to measure
  ors.RelAccSensorS.png)                           the relative
  [RelAccSensor](Modelica_Mechanics_Translational_ acceleration
  Sensors.html#Modelica.Mechanics.Translational.Se 
  nsors.RelAccSensor)                              

  ![image14](Modelica.Mechanics.Translational.Sens Ideal sensor to measure
  ors.ForceSensorS.png)                            the force between two
  [ForceSensor](Modelica_Mechanics_Translational_S flanges
  ensors.html#Modelica.Mechanics.Translational.Sen 
  sors.ForceSensor)                                

  ![image15](Modelica.Mechanics.Translational.Sens Ideal sensor to measure
  ors.PowerSensorS.png)                            the power between two
  [PowerSensor](Modelica_Mechanics_Translational_S flanges (=
  ensors.html#Modelica.Mechanics.Translational.Sen flange\_a.f\*der(flange
  sors.PowerSensor)                                \_a.s))
  ------------------------------------------------------------------------

* * * * *

![image16](Modelica.Mechanics.Translational.Sensors.PositionSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).PositionSensor
==========================================================================================================================================================================================================================

**Ideal sensor to measure the absolute position**

Information
-----------

::

Measures the *absolute position s* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialAbsoluteSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor)
(Device to measure a single absolute flange variable).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Nam Description
                                          e   
  --------------------------------------- --- -----------------------------
  [Flange\_a](Modelica_Mechanics_Translat fla Flange to be measured (flange
  ional_Interfaces.html#Modelica.Mechanic nge axis directed in to cut
  s.Translational.Interfaces.Flange_a)        plane, e. g. from left to
                                              right)

  output                                  s   Absolute position of flange
  [RealOutput](Modelica_Blocks_Interfaces     
  .html#Modelica.Blocks.Interfaces.RealOu     
  tput)                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PositionSensor "Ideal sensor to measure the absolute position"
      extends Translational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput s "Absolute position of flange";

    equation 
      s = flange.s;
    end PositionSensor;

* * * * *

![image17](Modelica.Mechanics.Translational.Sensors.SpeedSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).SpeedSensor
====================================================================================================================================================================================================================

**Ideal sensor to measure the absolute velocity**

Information
-----------

::

Measures the *absolute velocity v* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialAbsoluteSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor)
(Device to measure a single absolute flange variable).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Nam Description
                                          e   
  --------------------------------------- --- -----------------------------
  [Flange\_a](Modelica_Mechanics_Translat fla Flange to be measured (flange
  ional_Interfaces.html#Modelica.Mechanic nge axis directed in to cut
  s.Translational.Interfaces.Flange_a)        plane, e. g. from left to
                                              right)

  output                                  v   Absolute velocity of flange
  [RealOutput](Modelica_Blocks_Interfaces     as output signal
  .html#Modelica.Blocks.Interfaces.RealOu     
  tput)                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SpeedSensor "Ideal sensor to measure the absolute velocity"
      extends Translational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput v 
        "Absolute velocity of flange as output signal";

    equation 
      v = der(flange.s);
    end SpeedSensor;

* * * * *

![image18](Modelica.Mechanics.Translational.Sensors.AccSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).AccSensor
================================================================================================================================================================================================================

**Ideal sensor to measure the absolute acceleration**

Information
-----------

::

Measures the *absolute acceleration a* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialAbsoluteSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialAbsoluteSensor)
(Device to measure a single absolute flange variable).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                    Nam Description
                                          e   
  --------------------------------------- --- -----------------------------
  [Flange\_a](Modelica_Mechanics_Translat fla Flange to be measured (flange
  ional_Interfaces.html#Modelica.Mechanic nge axis directed in to cut
  s.Translational.Interfaces.Flange_a)        plane, e. g. from left to
                                              right)

  output                                  a   Absolute acceleration of
  [RealOutput](Modelica_Blocks_Interfaces     flange as output signal
  .html#Modelica.Blocks.Interfaces.RealOu     
  tput)                                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model AccSensor "Ideal sensor to measure the absolute acceleration"
      extends Translational.Interfaces.PartialAbsoluteSensor;
      SI.Velocity v "Absolute velocity of flange";
      Modelica.Blocks.Interfaces.RealOutput a 
        "Absolute acceleration of flange as output signal";

    equation 
      v = der(flange.s);
      a = der(v);
    end AccSensor;

* * * * *

![image19](Modelica.Mechanics.Translational.Sensors.RelPositionSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).RelPositionSensor
================================================================================================================================================================================================================================

**Ideal sensor to measure the relative position**

Information
-----------

::

Measures the *relative position s* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor)
(Device to measure a single relative variable between two flanges).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Transla flan (left) driving flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed in to
  ics.Translational.Interfaces.Flange_a) a    cut plane, e. g. from left
                                              to right)

  [Flange\_b](Modelica_Mechanics_Transla flan (right) driven flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed out of
  ics.Translational.Interfaces.Flange_b) b    cut plane)

  output                                 s\_r Distance between two flanges
  [RealOutput](Modelica_Blocks_Interface el   (= flange\_b.s -
  s.html#Modelica.Blocks.Interfaces.Real      flange\_a.s)
  Output)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelPositionSensor 
      "Ideal sensor to measure the relative position"
      extends Translational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput s_rel 
        "Distance between two flanges (= flange_b.s - flange_a.s)";

    equation 
      s_rel = flange_b.s - flange_a.s;
      0 = flange_a.f;
    end RelPositionSensor;

* * * * *

![image20](Modelica.Mechanics.Translational.Sensors.RelSpeedSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).RelSpeedSensor
==========================================================================================================================================================================================================================

**Ideal sensor to measure the relative speed**

Information
-----------

::

Measures the *relative speed v* of a flange in an ideal way and provides
the result as output signals (to be further processed with blocks of the
Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor)
(Device to measure a single relative variable between two flanges).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Transla flan (left) driving flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed in to
  ics.Translational.Interfaces.Flange_a) a    cut plane, e. g. from left
                                              to right)

  [Flange\_b](Modelica_Mechanics_Transla flan (right) driven flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed out of
  ics.Translational.Interfaces.Flange_b) b    cut plane)

  output                                 v\_r Relative velocity between
  [RealOutput](Modelica_Blocks_Interface el   two flanges (=
  s.html#Modelica.Blocks.Interfaces.Real      der(flange\_b.s) -
  Output)                                     der(flange\_a.s))
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelSpeedSensor "Ideal sensor to measure the relative speed"
      extends Translational.Interfaces.PartialRelativeSensor;
      SI.Position s_rel 
        "Distance between the two flanges (flange_b.s - flange_a.s)";
      Modelica.Blocks.Interfaces.RealOutput v_rel 
        "Relative velocity between two flanges (= der(flange_b.s) - der(flange_a.s))";

    equation 
      s_rel = flange_b.s - flange_a.s;
      v_rel = der(s_rel);
      0 = flange_a.f;
    end RelSpeedSensor;

* * * * *

![image21](Modelica.Mechanics.Translational.Sensors.RelAccSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).RelAccSensor
======================================================================================================================================================================================================================

**Ideal sensor to measure the relative acceleration**

Information
-----------

::

Measures the *relative acceleration a* of a flange in an ideal way and
provides the result as output signals (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor)
(Device to measure a single relative variable between two flanges).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Transla flan (left) driving flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed in to
  ics.Translational.Interfaces.Flange_a) a    cut plane, e. g. from left
                                              to right)

  [Flange\_b](Modelica_Mechanics_Transla flan (right) driven flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed out of
  ics.Translational.Interfaces.Flange_b) b    cut plane)

  output                                 a\_r Relative acceleration
  [RealOutput](Modelica_Blocks_Interface el   between two flanges (=
  s.html#Modelica.Blocks.Interfaces.Real      der(v\_rel))
  Output)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelAccSensor 
      "Ideal sensor to measure the relative acceleration"
      extends Translational.Interfaces.PartialRelativeSensor;
      SI.Position s_rel 
        "Distance between the two flanges (flange_b.s - flange_a.s)";
      SI.Velocity v_rel 
        "Relative velocity between the two flanges (der(flange_b.s) - der(flange_a.s))";
      Modelica.Blocks.Interfaces.RealOutput a_rel 
        "Relative acceleration between two flanges (= der(v_rel))";

    equation 
      s_rel = flange_b.s - flange_a.s;
      v_rel = der(s_rel);
      a_rel = der(v_rel);
      0 = flange_a.f;
    end RelAccSensor;

* * * * *

![image22](Modelica.Mechanics.Translational.Sensors.ForceSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).ForceSensor
====================================================================================================================================================================================================================

**Ideal sensor to measure the force between two flanges**

Information
-----------

::

Measures the *cut-force between two flanges* in an ideal way and
provides the result as output signal (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor)
(Device to measure a single relative variable between two flanges).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Transla flan (left) driving flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed in to
  ics.Translational.Interfaces.Flange_a) a    cut plane, e. g. from left
                                              to right)

  [Flange\_b](Modelica_Mechanics_Transla flan (right) driven flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed out of
  ics.Translational.Interfaces.Flange_b) b    cut plane)

  output                                 f    Force in flange\_a and
  [RealOutput](Modelica_Blocks_Interface      flange\_b (f = flange\_a.f =
  s.html#Modelica.Blocks.Interfaces.Real      -flange\_b.f)
  Output)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ForceSensor 
      "Ideal sensor to measure the force between two flanges"
      extends Translational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput f 
        "Force in flange_a and flange_b (f = flange_a.f = -flange_b.f)";
    equation 
      flange_a.s = flange_b.s;
      flange_a.f = f;
    end ForceSensor;

* * * * *

![image23](Modelica.Mechanics.Translational.Sensors.PowerSensorI.png) [Modelica.Mechanics.Translational.Sensors](Modelica_Mechanics_Translational_Sensors.html#Modelica.Mechanics.Translational.Sensors).PowerSensor
====================================================================================================================================================================================================================

**Ideal sensor to measure the power between two flanges (=
flange\_a.f\*der(flange\_a.s))**

Information
-----------

::

Measures the **power between two flanges** in an ideal way and provides
the result as output signal **power** (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Translational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Translational_Interfaces.html#Modelica.Mechanics.Translational.Interfaces.PartialRelativeSensor)
(Device to measure a single relative variable between two flanges).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Transla flan (left) driving flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed in to
  ics.Translational.Interfaces.Flange_a) a    cut plane, e. g. from left
                                              to right)

  [Flange\_b](Modelica_Mechanics_Transla flan (right) driven flange
  tional_Interfaces.html#Modelica.Mechan ge\_ (flange axis directed out of
  ics.Translational.Interfaces.Flange_b) b    cut plane)

  output                                 powe Power in flange flange\_a
  [RealOutput](Modelica_Blocks_Interface r    
  s.html#Modelica.Blocks.Interfaces.Real      
  Output)                                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PowerSensor 
      "Ideal sensor to measure the power between two flanges (= flange_a.f*der(flange_a.s))"
      extends Translational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput power "Power in flange flange_a";
    equation 
      flange_a.s = flange_b.s;
      power = flange_a.f*der(flange_a.s);
    end PowerSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:51 2010.
