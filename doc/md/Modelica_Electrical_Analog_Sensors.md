% Modelica.Electrical.Analog.Sensors
% 
% 

[Modelica.Electrical.Analog](Modelica_Electrical_Analog.html#Modelica.Electrical.Analog).Sensors
================================================================================================

**Potential, voltage, current, and power sensors**

Information
-----------

::

This package contains potential, voltage, and current sensors. The
sensors can be used to convert voltages or currents into real signal
values o be connected to components of the Blocks package. The sensors
are designed in such a way that they do not influence the electrical
behavior.

::

Extends from
[Modelica.Icons.SensorsPackage](Modelica_Icons_SensorsPackage.html#Modelica.Icons.SensorsPackage)
(Icon for packages containing sensors).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image4](Modelica.Electrical.Analog.Sensors.PotentialS Sensor to
  ensorS.png)                                             measure the
  [PotentialSensor](Modelica_Electrical_Analog_Sensors.ht potential
  ml#Modelica.Electrical.Analog.Sensors.PotentialSensor)  

  ![image5](Modelica.Electrical.Analog.Sensors.VoltageSen Sensor to
  sorS.png)                                               measure the
  [VoltageSensor](Modelica_Electrical_Analog_Sensors.html voltage between
  #Modelica.Electrical.Analog.Sensors.VoltageSensor)      two pins

  ![image6](Modelica.Electrical.Analog.Sensors.CurrentSen Sensor to
  sorS.png)                                               measure the
  [CurrentSensor](Modelica_Electrical_Analog_Sensors.html current in a
  #Modelica.Electrical.Analog.Sensors.CurrentSensor)      branch

  ![image7](Modelica.Electrical.Analog.Sensors.PowerSenso Sensor to
  rS.png)                                                 measure the
  [PowerSensor](Modelica_Electrical_Analog_Sensors.html#M power
  odelica.Electrical.Analog.Sensors.PowerSensor)          
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Electrical.Analog.Sensors.PotentialSensorI.png) [Modelica.Electrical.Analog.Sensors](Modelica_Electrical_Analog_Sensors.html#Modelica.Electrical.Analog.Sensors).PotentialSensor
===================================================================================================================================================================================================

**Sensor to measure the potential**

Information
-----------

::

The potential sensor converts the voltage of a node (with respect to the
ground node) into a real valued signal. It does not influence the
current sum at the node which voltage is measured, therefore, the
electrical behavior is not influenced by the sensor.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Nam Description
                                                   e   
  ------------------------------------------------ --- --------------------
  [PositivePin](Modelica_Electrical_Analog_Interfa p   pin to be measured
  ces.html#Modelica.Electrical.Analog.Interfaces.P     
  ositivePin)                                          

  output                                           phi Absolute voltage
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod     potential as output
  elica.Blocks.Interfaces.RealOutput)                  signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PotentialSensor "Sensor to measure the potential"
      extends Modelica.Icons.RotationalSensor;

      Interfaces.PositivePin p "pin to be measured";
      Modelica.Blocks.Interfaces.RealOutput phi 
        "Absolute voltage potential as output signal";
    equation 
      p.i = 0;
      phi = p.v;
    end PotentialSensor;

* * * * *

![image9](Modelica.Electrical.Analog.Sensors.VoltageSensorI.png) [Modelica.Electrical.Analog.Sensors](Modelica_Electrical_Analog_Sensors.html#Modelica.Electrical.Analog.Sensors).VoltageSensor
===============================================================================================================================================================================================

**Sensor to measure the voltage between two pins**

Information
-----------

::

The voltage sensor converts the voltage between the two connectors into
a real valued signal. It does not influence the current sum at the nodes
in between the voltage is measured, therefore, the electrical behavior
is not influenced by the sensor.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                         Nam Description
                                               e   
  -------------------------------------------- --- ------------------------
  [PositivePin](Modelica_Electrical_Analog_Int p   positive pin
  erfaces.html#Modelica.Electrical.Analog.Inte     
  rfaces.PositivePin)                              

  [NegativePin](Modelica_Electrical_Analog_Int n   negative pin
  erfaces.html#Modelica.Electrical.Analog.Inte     
  rfaces.NegativePin)                              

  output                                       v   Voltage between pin p
  [RealOutput](Modelica_Blocks_Interfaces.html     and n (= p.v - n.v) as
  #Modelica.Blocks.Interfaces.RealOutput)          output signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model VoltageSensor "Sensor to measure the voltage between two pins"
      extends Modelica.Icons.RotationalSensor;

      Interfaces.PositivePin p "positive pin";
      Interfaces.NegativePin n "negative pin";
      Modelica.Blocks.Interfaces.RealOutput v 
        "Voltage between pin p and n (= p.v - n.v) as output signal";

    equation 
      p.i = 0;
      n.i = 0;
      v = p.v - n.v;
    end VoltageSensor;

* * * * *

![image10](Modelica.Electrical.Analog.Sensors.CurrentSensorI.png) [Modelica.Electrical.Analog.Sensors](Modelica_Electrical_Analog_Sensors.html#Modelica.Electrical.Analog.Sensors).CurrentSensor
================================================================================================================================================================================================

**Sensor to measure the current in a branch**

Information
-----------

::

The current sensor converts the current flowing between the two
connectors into a real valued signal. The two connectors are in the
sensor connected like a short cut. The sensor has to be placed within an
electrical connection in series. It does not influence the current sum
at the connected nodes. Therefore, the electrical behavior is not
influenced by the sensor.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                           Nam Description
                                                 e   
  ---------------------------------------------- --- ----------------------
  [PositivePin](Modelica_Electrical_Analog_Inter p   positive pin
  faces.html#Modelica.Electrical.Analog.Interfac     
  es.PositivePin)                                    

  [NegativePin](Modelica_Electrical_Analog_Inter n   negative pin
  faces.html#Modelica.Electrical.Analog.Interfac     
  es.NegativePin)                                    

  output                                         i   current in the branch
  [RealOutput](Modelica_Blocks_Interfaces.html#M     from p to n as output
  odelica.Blocks.Interfaces.RealOutput)              signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentSensor "Sensor to measure the current in a branch"
      extends Modelica.Icons.RotationalSensor;

      Interfaces.PositivePin p "positive pin";
      Interfaces.NegativePin n "negative pin";
      Modelica.Blocks.Interfaces.RealOutput i 
        "current in the branch from p to n as output signal";

    equation 
      p.v = n.v;
      p.i = i;
      n.i = -i;
    end CurrentSensor;

* * * * *

![image11](Modelica.Electrical.Analog.Sensors.PowerSensorI.png) [Modelica.Electrical.Analog.Sensors](Modelica_Electrical_Analog_Sensors.html#Modelica.Electrical.Analog.Sensors).PowerSensor
============================================================================================================================================================================================

**Sensor to measure the power**

Information
-----------

::

This power sensor measures instantaneous electrical power of a
singlephase system and has a separated voltage and current path. The
pins of the voltage path are pv and nv, the pins of the current path are
pc and nc. The internal resistance of the current path is zero, the
internal resistance of the voltage path is infinite.

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- --------------
  [PositivePin](Modelica_Electrical_Analog_Interfaces. pc   Positive pin,
  html#Modelica.Electrical.Analog.Interfaces.PositiveP      current path
  in)                                                       

  [NegativePin](Modelica_Electrical_Analog_Interfaces. nc   Negative pin,
  html#Modelica.Electrical.Analog.Interfaces.NegativeP      current path
  in)                                                       

  [PositivePin](Modelica_Electrical_Analog_Interfaces. pv   Positive pin,
  html#Modelica.Electrical.Analog.Interfaces.PositiveP      voltage path
  in)                                                       

  [NegativePin](Modelica_Electrical_Analog_Interfaces. nv   Negative pin,
  html#Modelica.Electrical.Analog.Interfaces.NegativeP      voltage path
  in)                                                       

  output                                               powe 
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelic r    
  a.Blocks.Interfaces.RealOutput)                           
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model PowerSensor "Sensor to measure the power"

      Modelica.Electrical.Analog.Interfaces.PositivePin pc 
        "Positive pin, current path";
      Modelica.Electrical.Analog.Interfaces.NegativePin nc 
        "Negative pin, current path";
      Modelica.Electrical.Analog.Interfaces.PositivePin pv 
        "Positive pin, voltage path";
      Modelica.Electrical.Analog.Interfaces.NegativePin nv 
        "Negative pin, voltage path";
      Modelica.Blocks.Interfaces.RealOutput power;
      Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor;
      Modelica.Electrical.Analog.Sensors.CurrentSensor currentSensor;
      Modelica.Blocks.Math.Product product;

    equation 
      connect(pv, voltageSensor.p);
      connect(voltageSensor.n, nv);
      connect(pc, currentSensor.p);
      connect(currentSensor.n, nc);
      connect(currentSensor.i, product.u2);
      connect(voltageSensor.v, product.u1);
      connect(product.y, power);
    end PowerSensor;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:11 2010.
