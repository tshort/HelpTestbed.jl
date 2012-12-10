% Modelica.Mechanics.Rotational.Sensors
% 
% 

[Modelica.Mechanics.Rotational](Modelica_Mechanics_Rotational.html#Modelica.Mechanics.Rotational).Sensors
=========================================================================================================

**Sensors to measure variables in 1D rotational mechanical components**

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
  Name                                           Description
  ---------------------------------------------- -------------------------
  ![image8](Modelica.Mechanics.Rotational.Sensor Ideal sensor to measure
  s.AngleSensorS.png)                            the absolute flange angle
  [AngleSensor](Modelica_Mechanics_Rotational_Se 
  nsors.html#Modelica.Mechanics.Rotational.Senso 
  rs.AngleSensor)                                

  ![image9](Modelica.Mechanics.Rotational.Sensor Ideal sensor to measure
  s.SpeedSensorS.png)                            the absolute flange
  [SpeedSensor](Modelica_Mechanics_Rotational_Se angular velocity
  nsors.html#Modelica.Mechanics.Rotational.Senso 
  rs.SpeedSensor)                                

  ![image10](Modelica.Mechanics.Rotational.Senso Ideal sensor to measure
  rs.AccSensorS.png)                             the absolute flange
  [AccSensor](Modelica_Mechanics_Rotational_Sens angular acceleration
  ors.html#Modelica.Mechanics.Rotational.Sensors 
  .AccSensor)                                    

  ![image11](Modelica.Mechanics.Rotational.Senso Ideal sensor to measure
  rs.RelAngleSensorS.png)                        the relative angle
  [RelAngleSensor](Modelica_Mechanics_Rotational between two flanges
  _Sensors.html#Modelica.Mechanics.Rotational.Se 
  nsors.RelAngleSensor)                          

  ![image12](Modelica.Mechanics.Rotational.Senso Ideal sensor to measure
  rs.RelAngleSensorS.png)                        the relative angular
  [RelSpeedSensor](Modelica_Mechanics_Rotational velocity between two
  _Sensors.html#Modelica.Mechanics.Rotational.Se flanges
  nsors.RelSpeedSensor)                          

  ![image13](Modelica.Mechanics.Rotational.Senso Ideal sensor to measure
  rs.RelAngleSensorS.png)                        the relative angular
  [RelAccSensor](Modelica_Mechanics_Rotational_S acceleration between two
  ensors.html#Modelica.Mechanics.Rotational.Sens flanges
  ors.RelAccSensor)                              

  ![image14](Modelica.Mechanics.Rotational.Senso Ideal sensor to measure
  rs.TorqueSensorS.png)                          the torque between two
  [TorqueSensor](Modelica_Mechanics_Rotational_S flanges (= flange\_a.tau)
  ensors.html#Modelica.Mechanics.Rotational.Sens 
  ors.TorqueSensor)                              

  ![image15](Modelica.Mechanics.Rotational.Senso Ideal sensor to measure
  rs.TorqueSensorS.png)                          the power between two
  [PowerSensor](Modelica_Mechanics_Rotational_Se flanges (=
  nsors.html#Modelica.Mechanics.Rotational.Senso flange\_a.tau\*der(flange
  rs.PowerSensor)                                \_a.phi))
  ------------------------------------------------------------------------

* * * * *

![image16](Modelica.Mechanics.Rotational.Sensors.AngleSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).AngleSensor
========================================================================================================================================================================================================

**Ideal sensor to measure the absolute flange angle**

Information
-----------

::

Measures the **absolute angle phi** of a flange in an ideal way and
provides the result as output signal **phi** (to be further processed
with blocks of the Modelica.Blocks library).

::

Extends from
[Rotational.Interfaces.PartialAbsoluteSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialAbsoluteSensor)
(Partial model to measure a single absolute flange variable).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- -------------------------
  [Flange\_a](Modelica_Mechanics_Rotational_ flan Flange of shaft from
  Interfaces.html#Modelica.Mechanics.Rotatio ge   which sensor information
  nal.Interfaces.Flange_a)                        shall be measured

  output                                     phi  Absolute angle of flange
  [RealOutput](Modelica_Blocks_Interfaces.ht      
  ml#Modelica.Blocks.Interfaces.RealOutput)       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model AngleSensor "Ideal sensor to measure the absolute flange angle"

      extends Rotational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput phi "Absolute angle of flange";
    equation 
      phi = flange.phi;
    end AngleSensor;

* * * * *

![image17](Modelica.Mechanics.Rotational.Sensors.SpeedSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).SpeedSensor
========================================================================================================================================================================================================

**Ideal sensor to measure the absolute flange angular velocity**

Information
-----------

::

Measures the **absolute angular velocity w** of a flange in an ideal way
and provides the result as output signal **w** (to be further processed
with blocks of the Modelica.Blocks library).

::

Extends from
[Rotational.Interfaces.PartialAbsoluteSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialAbsoluteSensor)
(Partial model to measure a single absolute flange variable).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- -------------------------
  [Flange\_a](Modelica_Mechanics_Rotational_ flan Flange of shaft from
  Interfaces.html#Modelica.Mechanics.Rotatio ge   which sensor information
  nal.Interfaces.Flange_a)                        shall be measured

  output                                     w    Absolute angular velocity
  [RealOutput](Modelica_Blocks_Interfaces.ht      of flange
  ml#Modelica.Blocks.Interfaces.RealOutput)       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SpeedSensor 
      "Ideal sensor to measure the absolute flange angular velocity"

      extends Rotational.Interfaces.PartialAbsoluteSensor;
      Modelica.Blocks.Interfaces.RealOutput w "Absolute angular velocity of flange";

    equation 
      w = der(flange.phi);
    end SpeedSensor;

* * * * *

![image18](Modelica.Mechanics.Rotational.Sensors.AccSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).AccSensor
====================================================================================================================================================================================================

**Ideal sensor to measure the absolute flange angular acceleration**

Information
-----------

::

Measures the **absolute angular acceleration a** of a flange in an ideal
way and provides the result as output signal **a** (to be further
processed with blocks of the Modelica.Blocks library).

::

Extends from
[Rotational.Interfaces.PartialAbsoluteSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialAbsoluteSensor)
(Partial model to measure a single absolute flange variable).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                       Name Description
  ------------------------------------------ ---- -------------------------
  [Flange\_a](Modelica_Mechanics_Rotational_ flan Flange of shaft from
  Interfaces.html#Modelica.Mechanics.Rotatio ge   which sensor information
  nal.Interfaces.Flange_a)                        shall be measured

  output                                     a    Absolute angular
  [RealOutput](Modelica_Blocks_Interfaces.ht      acceleration of flange
  ml#Modelica.Blocks.Interfaces.RealOutput)       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model AccSensor 
      "Ideal sensor to measure the absolute flange angular acceleration"

      extends Rotational.Interfaces.PartialAbsoluteSensor;
      SI.AngularVelocity w "Absolute angular velocity of flange";
      Modelica.Blocks.Interfaces.RealOutput a 
        "Absolute angular acceleration of flange";

    equation 
      w = der(flange.phi);
      a = der(w);
    end AccSensor;

* * * * *

![image19](Modelica.Mechanics.Rotational.Sensors.RelAngleSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).RelAngleSensor
==============================================================================================================================================================================================================

**Ideal sensor to measure the relative angle between two flanges**

Information
-----------

::

Measures the **relative angle phi\_rel** between two flanges in an ideal
way and provides the result as output signal **phi\_rel** (to be further
processed with blocks of the Modelica.Blocks library).

::

Extends from
[Rotational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor)
(Partial model to measure a single relative variable between two
flanges).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                     Name Description
  ---------------------------------------- ---- --------------------------
  [Flange\_a](Modelica_Mechanics_Rotationa flan Left flange of shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_a)             a    

  [Flange\_b](Modelica_Mechanics_Rotationa flan Right flange of shaft
  l_Interfaces.html#Modelica.Mechanics.Rot ge\_ 
  ational.Interfaces.Flange_b)             b    

  output                                   phi\ Relative angle between two
  [RealOutput](Modelica_Blocks_Interfaces. _rel flanges (= flange\_b.phi -
  html#Modelica.Blocks.Interfaces.RealOutp      flange\_a.phi)
  ut)                                           
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RelAngleSensor 
      "Ideal sensor to measure the relative angle between two flanges"

      extends Rotational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput phi_rel 
        "Relative angle between two flanges (= flange_b.phi - flange_a.phi)";

    equation 
      phi_rel = flange_b.phi - flange_a.phi;
      0 = flange_a.tau;
    end RelAngleSensor;

* * * * *

![image20](Modelica.Mechanics.Rotational.Sensors.RelSpeedSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).RelSpeedSensor
==============================================================================================================================================================================================================

**Ideal sensor to measure the relative angular velocity between two
flanges**

Information
-----------

::

Measures the **relative angular velocity w\_rel** between two flanges in
an ideal way and provides the result as output signal **w\_rel** (to be
further processed with blocks of the Modelica.Blocks library).

::

Extends from
[Rotational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor)
(Partial model to measure a single relative variable between two
flanges).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                  Name Description
  ------------------------------------- ---- ------------------------------
  [Flange\_a](Modelica_Mechanics_Rotati flan Left flange of shaft
  onal_Interfaces.html#Modelica.Mechani ge\_ 
  cs.Rotational.Interfaces.Flange_a)    a    

  [Flange\_b](Modelica_Mechanics_Rotati flan Right flange of shaft
  onal_Interfaces.html#Modelica.Mechani ge\_ 
  cs.Rotational.Interfaces.Flange_b)    b    

  output                                w\_r Relative angular velocity
  [RealOutput](Modelica_Blocks_Interfac el   between two flanges (=
  es.html#Modelica.Blocks.Interfaces.Re      der(flange\_b.phi) -
  alOutput)                                  der(flange\_a.phi))
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model RelSpeedSensor 
      "Ideal sensor to measure the relative angular velocity between two flanges"

      extends Rotational.Interfaces.PartialRelativeSensor;

      SI.Angle phi_rel 
        "Relative angle between two flanges (flange_b.phi - flange_a.phi)";
      Modelica.Blocks.Interfaces.RealOutput w_rel 
        "Relative angular velocity between two flanges (= der(flange_b.phi) - der(flange_a.phi))";


    equation 
      phi_rel = flange_b.phi - flange_a.phi;
      w_rel = der(phi_rel);
      0 = flange_a.tau;
    end RelSpeedSensor;

* * * * *

![image21](Modelica.Mechanics.Rotational.Sensors.RelAccSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).RelAccSensor
==========================================================================================================================================================================================================

**Ideal sensor to measure the relative angular acceleration between two
flanges**

Information
-----------

::

Measures the **relative angular acceleration a\_rel** between two
flanges in an ideal way and provides the result as output signal
**a\_rel** (to be further processed with blocks of the Modelica.Blocks
library).

::

Extends from
[Rotational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor)
(Partial model to measure a single relative variable between two
flanges).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name  Description
  --------------------------------------------- ----- ---------------------
  [Flange\_a](Modelica_Mechanics_Rotational_Int flang Left flange of shaft
  erfaces.html#Modelica.Mechanics.Rotational.In e\_a  
  terfaces.Flange_a)                                  

  [Flange\_b](Modelica_Mechanics_Rotational_Int flang Right flange of shaft
  erfaces.html#Modelica.Mechanics.Rotational.In e\_b  
  terfaces.Flange_b)                                  

  output                                        a\_re Relative angular
  [RealOutput](Modelica_Blocks_Interfaces.html# l     acceleration between
  Modelica.Blocks.Interfaces.RealOutput)              two flanges
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model RelAccSensor 
      "Ideal sensor to measure the relative angular acceleration between two flanges"

      extends Rotational.Interfaces.PartialRelativeSensor;

      SI.Angle phi_rel 
        "Relative angle between two flanges (flange_b.phi - flange_a.phi)";
      SI.AngularVelocity w_rel "Relative angular velocity between two flanges";
      Modelica.Blocks.Interfaces.RealOutput a_rel 
        "Relative angular acceleration between two flanges";

    equation 
      phi_rel = flange_b.phi - flange_a.phi;
      w_rel = der(phi_rel);
      a_rel = der(w_rel);
      0 = flange_a.tau;
    end RelAccSensor;

* * * * *

![image22](Modelica.Mechanics.Rotational.Sensors.TorqueSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).TorqueSensor
==========================================================================================================================================================================================================

**Ideal sensor to measure the torque between two flanges (=
flange\_a.tau)**

Information
-----------

::

Measures the **cut-torque between two flanges** in an ideal way and
provides the result as output signal **tau** (to be further processed
with blocks of the Modelica.Blocks library).

::

Extends from
[Rotational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor)
(Partial model to measure a single relative variable between two
flanges).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                   Name Description
  -------------------------------------- ---- ----------------------------
  [Flange\_a](Modelica_Mechanics_Rotatio flan Left flange of shaft
  nal_Interfaces.html#Modelica.Mechanics ge\_ 
  .Rotational.Interfaces.Flange_a)       a    

  [Flange\_b](Modelica_Mechanics_Rotatio flan Right flange of shaft
  nal_Interfaces.html#Modelica.Mechanics ge\_ 
  .Rotational.Interfaces.Flange_b)       b    

  output                                 tau  Torque in flange flange\_a
  [RealOutput](Modelica_Blocks_Interface      and flange\_b (tau =
  s.html#Modelica.Blocks.Interfaces.Real      flange\_a.tau =
  Output)                                     -flange\_b.tau)
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model TorqueSensor 
      "Ideal sensor to measure the torque between two flanges (= flange_a.tau)"

      extends Rotational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput tau 
        "Torque in flange flange_a and flange_b (tau = flange_a.tau = -flange_b.tau)";

    equation 
      flange_a.phi = flange_b.phi;
      flange_a.tau = tau;
    end TorqueSensor;

* * * * *

![image23](Modelica.Mechanics.Rotational.Sensors.PowerSensorI.png) [Modelica.Mechanics.Rotational.Sensors](Modelica_Mechanics_Rotational_Sensors.html#Modelica.Mechanics.Rotational.Sensors).PowerSensor
========================================================================================================================================================================================================

**Ideal sensor to measure the power between two flanges (=
flange\_a.tau\*der(flange\_a.phi))**

Information
-----------

::

Measures the **power between two flanges** in an ideal way and provides
the result as output signal **power** (to be further processed with
blocks of the Modelica.Blocks library).

::

Extends from
[Rotational.Interfaces.PartialRelativeSensor](Modelica_Mechanics_Rotational_Interfaces.html#Modelica.Mechanics.Rotational.Interfaces.PartialRelativeSensor)
(Partial model to measure a single relative variable between two
flanges).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ -------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interfaces flange Left flange
  .html#Modelica.Mechanics.Rotational.Interfaces.Flang \_a    of shaft
  e_a)                                                        

  [Flange\_b](Modelica_Mechanics_Rotational_Interfaces flange Right flange
  .html#Modelica.Mechanics.Rotational.Interfaces.Flang \_b    of shaft
  e_b)                                                        

  output                                               power  Power in
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelic        flange
  a.Blocks.Interfaces.RealOutput)                             flange\_a
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PowerSensor 
      "Ideal sensor to measure the power between two flanges (= flange_a.tau*der(flange_a.phi))"

      extends Rotational.Interfaces.PartialRelativeSensor;
      Modelica.Blocks.Interfaces.RealOutput power "Power in flange flange_a";

    equation 
      flange_a.phi = flange_b.phi;
      power = flange_a.tau*der(flange_a.phi);
    end PowerSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:30:46 2010.
