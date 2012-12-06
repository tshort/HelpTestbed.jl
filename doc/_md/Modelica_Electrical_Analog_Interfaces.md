% Modelica.Electrical.Analog.Interfaces
% 
% 

[Modelica.Electrical.Analog](Modelica_Electrical_Analog.html#Modelica.Electrical.Analog).Interfaces
===================================================================================================

**Connectors and partial models for Analog electrical components**

Information
-----------

::

This package contains connectors and interfaces (partial models) for
analog electrical components. The partial models contain typical
combinations of pins, and internal variables which are often used.
Furthermode, the thermal heat port is in this package which can be
included by inheritance.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image11](Modelica.Electrical.Analog.Interfa Pin of an electrical
  ces.PinS.png)                                 component
  [Pin](Modelica_Electrical_Analog_Interfaces.h 
  tml#Modelica.Electrical.Analog.Interfaces.Pin 
  )                                             

  ![image12](Modelica.Electrical.Analog.Interfa Positive pin of an
  ces.PinS.png)                                 electric component
  [PositivePin](Modelica_Electrical_Analog_Inte 
  rfaces.html#Modelica.Electrical.Analog.Interf 
  aces.PositivePin)                             

  ![image13](Modelica.Electrical.Analog.Interfa Negative pin of an
  ces.NegativePinS.png)                         electric component
  [NegativePin](Modelica_Electrical_Analog_Inte 
  rfaces.html#Modelica.Electrical.Analog.Interf 
  aces.NegativePin)                             

  ![image14](Modelica.Electrical.Analog.Interfa Component with two
  ces.TwoPinS.png)                              electrical pins
  [TwoPin](Modelica_Electrical_Analog_Interface 
  s.html#Modelica.Electrical.Analog.Interfaces. 
  TwoPin)                                       

  ![image15](Modelica.Electrical.Analog.Interfa Component with two
  ces.TwoPinS.png)                              electrical pins p and n
  [OnePort](Modelica_Electrical_Analog_Interfac and current i from p to n
  es.html#Modelica.Electrical.Analog.Interfaces 
  .OnePort)                                     

  ![image16](Modelica.Electrical.Analog.Interfa Component with two
  ces.TwoPortS.png)                             electrical ports,
  [TwoPort](Modelica_Electrical_Analog_Interfac including current
  es.html#Modelica.Electrical.Analog.Interfaces 
  .TwoPort)                                     

  ![image17](Modelica.Electrical.Analog.Interfa Partial model to include a
  ces.ConditionalHeatPortS.png)                 conditional HeatPort in
  [ConditionalHeatPort](Modelica_Electrical_Ana order to describe the
  log_Interfaces.html#Modelica.Electrical.Analo power loss via a thermal
  g.Interfaces.ConditionalHeatPort)             network

  ![image18](Modelica.Electrical.Analog.Interfa Base class to measure the
  ces.AbsoluteSensorS.png)                      absolute value of a pin
  [AbsoluteSensor](Modelica_Electrical_Analog_I variable
  nterfaces.html#Modelica.Electrical.Analog.Int 
  erfaces.AbsoluteSensor)                       

  ![image19](Modelica.Electrical.Analog.Interfa Base class to measure a
  ces.RelativeSensorS.png)                      relative variable between
  [RelativeSensor](Modelica_Electrical_Analog_I two pins
  nterfaces.html#Modelica.Electrical.Analog.Int 
  erfaces.RelativeSensor)                       

  ![image20](Modelica.Electrical.Analog.Interfa Interface for voltage
  ces.VoltageSourceS.png)                       sources
  [VoltageSource](Modelica_Electrical_Analog_In 
  terfaces.html#Modelica.Electrical.Analog.Inte 
  rfaces.VoltageSource)                         

  ![image21](Modelica.Electrical.Analog.Interfa Interface for current
  ces.CurrentSourceS.png)                       sources
  [CurrentSource](Modelica_Electrical_Analog_In 
  terfaces.html#Modelica.Electrical.Analog.Inte 
  rfaces.CurrentSource)                         
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.Electrical.Analog.Interfaces.PinI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).Pin
========================================================================================================================================================================================

**Pin of an electrical component**

Information
-----------

::

Pin is the basic electric connector. It includes the voltage which
consists between the pin and the ground node. The ground node is the
node of (any) ground device (Modelica.Electrical.Basic.Ground).
Furthermore, the pin includes the current, which is considered to be
**positive** if it is flowing at the pin**into the device**.

::

Contents
--------

  -------------------------------------------------------------------------
  Type                                        Name  Description
  ------------------------------------------- ----- -----------------------
  [Voltage](Modelica_SIunits.html#Modelica.SI v     Potential at the pin
  units.Voltage)                                    [V]

  flow                                        i     Current flowing into
  [Current](Modelica_SIunits.html#Modelica.SI       the pin [A]
  units.Current)                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector Pin "Pin of an electrical component"
      Modelica.SIunits.Voltage v "Potential at the pin";
      flow Modelica.SIunits.Current i "Current flowing into the pin";
    end Pin;

* * * * *

![image23](Modelica.Electrical.Analog.Interfaces.PinI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).PositivePin
================================================================================================================================================================================================

**Positive pin of an electric component**

Information
-----------

::

Connectors PositivePin and NegativePin are nearly identical. The only
difference is that the icons are different in order to identify more
easily the pins of a component. Usually, connector PositivePin is used
for the positive and connector NegativePin for the negative pin of an
electrical component.

::

Contents
--------

  -------------------------------------------------------------------------
  Type                                        Name  Description
  ------------------------------------------- ----- -----------------------
  [Voltage](Modelica_SIunits.html#Modelica.SI v     Potential at the pin
  units.Voltage)                                    [V]

  flow                                        i     Current flowing into
  [Current](Modelica_SIunits.html#Modelica.SI       the pin [A]
  units.Current)                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector PositivePin "Positive pin of an electric component"
      Modelica.SIunits.Voltage v "Potential at the pin";
      flow Modelica.SIunits.Current i "Current flowing into the pin";
    end PositivePin;

* * * * *

![image24](Modelica.Electrical.Analog.Interfaces.NegativePinI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).NegativePin
========================================================================================================================================================================================================

**Negative pin of an electric component**

Information
-----------

::

Connectors PositivePin and NegativePin are nearly identical. The only
difference is that the icons are different in order to identify more
easily the pins of a component. Usually, connector PositivePin is used
for the positive and connector NegativePin for the negative pin of an
electrical component.

::

Contents
--------

  -------------------------------------------------------------------------
  Type                                        Name  Description
  ------------------------------------------- ----- -----------------------
  [Voltage](Modelica_SIunits.html#Modelica.SI v     Potential at the pin
  units.Voltage)                                    [V]

  flow                                        i     Current flowing into
  [Current](Modelica_SIunits.html#Modelica.SI       the pin [A]
  units.Current)                                    
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector NegativePin "Negative pin of an electric component"
      Modelica.SIunits.Voltage v "Potential at the pin";
      flow Modelica.SIunits.Current i "Current flowing into the pin";
    end NegativePin;

* * * * *

![image25](Modelica.Electrical.Analog.Interfaces.TwoPinI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).TwoPin
==============================================================================================================================================================================================

**Component with two electrical pins**

Information
-----------

::

TwoPin is a partial model with two pins and one internal variable for
the voltage over the two pins. Internal currents are not defined. It is
intended to be used in cases where the model which inherits TwoPin is
composed by combining other components graphically, not by equations.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                     Nam Description
                                           e   
  ---------------------------------------- --- ----------------------------
  [PositivePin](Modelica_Electrical_Analog p   Positive pin Positive pin
  _Interfaces.html#Modelica.Electrical.Ana     (potential p.v \> n.v for
  log.Interfaces.PositivePin)                  positive voltage drop v)

  [NegativePin](Modelica_Electrical_Analog n   Negative pin
  _Interfaces.html#Modelica.Electrical.Ana     
  log.Interfaces.NegativePin)                  
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model TwoPin "Component with two electrical pins"
      SI.Voltage v "Voltage drop between the two pins (= p.v - n.v)";
      PositivePin p 
        "Positive pin Positive pin (potential p.v > n.v for positive voltage drop v)";
      NegativePin n "Negative pin";
    equation 
      v = p.v - n.v;
    end TwoPin;

* * * * *

![image26](Modelica.Electrical.Analog.Interfaces.TwoPinI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).OnePort
===============================================================================================================================================================================================

**Component with two electrical pins p and n and current i from p to n**

Information
-----------

::

Superclass of elements which have **two** electrical pins: the positive
pin connector *p*, and the negative pin connector *n*. It is assumed
that the current flowing into pin p is identical to the current flowing
out of pin n. This current is provided explicitly as current i.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Nam Description
                                              e   
  ------------------------------------------- --- -------------------------
  [PositivePin](Modelica_Electrical_Analog_In p   Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In     p.v \> n.v for positive
  terfaces.PositivePin)                           voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n   Negative pin
  terfaces.html#Modelica.Electrical.Analog.In     
  terfaces.NegativePin)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model OnePort 
      "Component with two electrical pins p and n and current i from p to n"

      SI.Voltage v "Voltage drop between the two pins (= p.v - n.v)";
      SI.Current i "Current flowing from pin p to pin n";
      PositivePin p 
        "Positive pin (potential p.v > n.v for positive voltage drop v)";
      NegativePin n "Negative pin";
    equation 
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
    end OnePort;

* * * * *

![image27](Modelica.Electrical.Analog.Interfaces.TwoPortI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).TwoPort
================================================================================================================================================================================================

**Component with two electrical ports, including current**

Information
-----------

::

TwoPort is a partial model that consists of two ports. Like OnePort each
port has two pins. It is assumed that the current flowing into the
positive pin is identical to the current flowing out of pin n. This
currents of each port are provided explicitly as currents i1 and i2, the
voltages respectively as v1 and v2.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                   Nam Description
                                         e   
  -------------------------------------- --- ------------------------------
  [PositivePin](Modelica_Electrical_Anal p1  Positive pin of the left port
  og_Interfaces.html#Modelica.Electrical     (potential p1.v \> n1.v for
  .Analog.Interfaces.PositivePin)            positive voltage drop v1)

  [NegativePin](Modelica_Electrical_Anal n1  Negative pin of the left port
  og_Interfaces.html#Modelica.Electrical     
  .Analog.Interfaces.NegativePin)            

  [PositivePin](Modelica_Electrical_Anal p2  Positive pin of the right port
  og_Interfaces.html#Modelica.Electrical     (potential p2.v \> n2.v for
  .Analog.Interfaces.PositivePin)            positive voltage drop v2)

  [NegativePin](Modelica_Electrical_Anal n2  Negative pin of the right port
  og_Interfaces.html#Modelica.Electrical     
  .Analog.Interfaces.NegativePin)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model TwoPort 
      "Component with two electrical ports, including current"
      SI.Voltage v1 "Voltage drop over the left port";
      SI.Voltage v2 "Voltage drop over the right port";
      SI.Current i1 "Current flowing from pos. to neg. pin of the left port";
      SI.Current i2 "Current flowing from pos. to neg. pin of the right port";
      PositivePin p1 
        "Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)";
      NegativePin n1 "Negative pin of the left port";
      PositivePin p2 
        "Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)";
      NegativePin n2 "Negative pin of the right port";
    equation 
      v1 = p1.v - n1.v;
      v2 = p2.v - n2.v;
      0 = p1.i + n1.i;
      0 = p2.i + n2.i;
      i1 = p1.i;
      i2 = p2.i;
    end TwoPort;

* * * * *

![image28](Modelica.Electrical.Analog.Interfaces.ConditionalHeatPortI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).ConditionalHeatPort
========================================================================================================================================================================================================================

**Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network**

Information
-----------

::

This partial model provides a conditional heating port for the
connection to a thermal network.

-   If **useHeatPort** is set to **false** (default), no heat port is
    available, and the thermal loss power flows internally to the
    ground. In this case, the parameter **T** specifies the fixed device
    temperature (the default for T = 20^o^C).
-   If **useHeatPort** is set to **true**, a heat port is available.

If this model is used, the loss power has to be provided by an equation
in the model which inherits from ConditionalHeatingPort model
(**lossPower = ...**). As device temperature **T\_heatPort** can be used
to describe the influence of the device temperature on the model
behaviour.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  Boolean                           useHeat false =true, if HeatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       293.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                      Name   Descrip
                                                                   tion
  --------------------------------------------------------- ------ -------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfaces.ht heatPo 
  ml#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a)   rt     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model ConditionalHeatPort 
      "Partial model to include a conditional HeatPort in order to describe the power loss via a thermal network"

      parameter Boolean useHeatPort = false "=true, if HeatPort is enabled";
      parameter Modelica.SIunits.Temperature T=293.15 
        "Fixed device temperature if useHeatPort = false";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(T(start=T)=T_heatPort, Q_flow=-LossPower) if useHeatPort;
      Modelica.SIunits.Power LossPower "Loss power leaving component via HeatPort";
      Modelica.SIunits.Temperature T_heatPort "Temperature of HeatPort";
    equation 
      if not useHeatPort then
         T_heatPort = T;
      end if;

    end ConditionalHeatPort;

* * * * *

![image29](Modelica.Electrical.Analog.Interfaces.AbsoluteSensorI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).AbsoluteSensor
==============================================================================================================================================================================================================

**Base class to measure the absolute value of a pin variable**

Information
-----------

::

The AbsoluteSensor is a partial model for converting values that can be
calculated from one pin connector into a real valued signal. The special
calculation has to be described in the model which inherits the
AbsoluteSensor. It is often used in sensor devices. To be a true sensor
the modeller has to take care that the sensor model does not influence
the electrical behavior to be measured.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Nam Description
                                                    e   
  ------------------------------------------------- --- ------------------
  [PositivePin](Modelica_Electrical_Analog_Interfac p   Pin to be measured
  es.html#Modelica.Electrical.Analog.Interfaces.Pos     
  itivePin)                                             

  output                                            y   Measured quantity
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode     as Real output
  lica.Blocks.Interfaces.RealOutput)                    signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model AbsoluteSensor 
      "Base class to measure the absolute value of a pin variable"
      extends Modelica.Icons.RotationalSensor;

      Interfaces.PositivePin p "Pin to be measured";
      Modelica.Blocks.Interfaces.RealOutput y 
        "Measured quantity as Real output signal";

    end AbsoluteSensor;

* * * * *

![image30](Modelica.Electrical.Analog.Interfaces.RelativeSensorI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).RelativeSensor
==============================================================================================================================================================================================================

**Base class to measure a relative variable between two pins**

Information
-----------

::

The RelaticeSensor is a partial model for converting values that can be
calculated from two pin connectors into a real valued signal. The
special calculation has to be described in the model which inherits the
RelativeSensor. It is often used in sensor devices. To be a true sensor
the modeller has to take care that the sensor model does not influence
the electrical behavior to be measured.

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                              Nam Description
                                                    e   
  ------------------------------------------------- --- ------------------
  [PositivePin](Modelica_Electrical_Analog_Interfac p   Positive pin
  es.html#Modelica.Electrical.Analog.Interfaces.Pos     
  itivePin)                                             

  [NegativePin](Modelica_Electrical_Analog_Interfac n   Negative pin
  es.html#Modelica.Electrical.Analog.Interfaces.Neg     
  ativePin)                                             

  output                                            y   Measured quantity
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode     as Real output
  lica.Blocks.Interfaces.RealOutput)                    signal
  ------------------------------------------------------------------------

Modelica definition
-------------------

    partial model RelativeSensor 
      "Base class to measure a relative variable between two pins"
      extends Modelica.Icons.RotationalSensor;

      Interfaces.PositivePin p "Positive pin";
      Interfaces.NegativePin n "Negative pin";
      Modelica.Blocks.Interfaces.RealOutput y 
        "Measured quantity as Real output signal";
    end RelativeSensor;

* * * * *

![image31](Modelica.Electrical.Analog.Interfaces.VoltageSourceI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).VoltageSource
============================================================================================================================================================================================================

**Interface for voltage sources**

Information
-----------

::

The VoltageSource partial model prepares voltage sources by providing
the pins, and the offset and startTime parameters, which are the same at
all voltage sources. The source behavior is taken from Modelica.Blocks
signal sources by inheritance and usage of the replacable possibilities.

::

Extends from
[OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name    Default         Descripti
                                                                  on
  --------------------------------------- ------- --------------- ---------
  [Voltage](Modelica_SIunits.html#Modelic offset  0               Voltage
  a.SIunits.Voltage)                                              offset
                                                                  [V]

  [Time](Modelica_SIunits.html#Modelica.S startTi 0               Time
  Iunits.Time)                            me                      offset
                                                                  [s]

  [SignalSource](Modelica_Blocks_Interfac signalS redeclare       
  es.html#Modelica.Blocks.Interfaces.Sign ource   Modelica.Blocks 
  alSource)                                       .In...          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Nam Description
                                              e   
  ------------------------------------------- --- -------------------------
  [PositivePin](Modelica_Electrical_Analog_In p   Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In     p.v \> n.v for positive
  terfaces.PositivePin)                           voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n   Negative pin
  terfaces.html#Modelica.Electrical.Analog.In     
  terfaces.NegativePin)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model VoltageSource "Interface for voltage sources"
      extends OnePort;

      parameter SI.Voltage offset=0 "Voltage offset";
      parameter SI.Time startTime=0 "Time offset";
      replaceable Modelica.Blocks.Interfaces.SignalSource signalSource(
          final offset = offset, final startTime=startTime);
    equation 
      v = signalSource.y;
    end VoltageSource;

* * * * *

![image32](Modelica.Electrical.Analog.Interfaces.CurrentSourceI.png) [Modelica.Electrical.Analog.Interfaces](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces).CurrentSource
============================================================================================================================================================================================================

**Interface for current sources**

Information
-----------

::

The CurrentSource partial model prepares current sources by providing
the pins, and the offset and startTime parameters, which are the same at
all current sources. The source behavior is taken from Modelica.Blocks
signal sources by inheritance and usage of the replacable possibilities.

::

Extends from
[OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name    Default         Descripti
                                                                  on
  --------------------------------------- ------- --------------- ---------
  [Current](Modelica_SIunits.html#Modelic offset  0               Current
  a.SIunits.Current)                                              offset
                                                                  [A]

  [Time](Modelica_SIunits.html#Modelica.S startTi 0               Time
  Iunits.Time)                            me                      offset
                                                                  [s]

  [SignalSource](Modelica_Blocks_Interfac signalS redeclare       
  es.html#Modelica.Blocks.Interfaces.Sign ource   Modelica.Blocks 
  alSource)                                       .In...          
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Nam Description
                                              e   
  ------------------------------------------- --- -------------------------
  [PositivePin](Modelica_Electrical_Analog_In p   Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In     p.v \> n.v for positive
  terfaces.PositivePin)                           voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n   Negative pin
  terfaces.html#Modelica.Electrical.Analog.In     
  terfaces.NegativePin)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model CurrentSource "Interface for current sources"
      extends OnePort;
      parameter SI.Current offset=0 "Current offset";
      parameter SI.Time startTime=0 "Time offset";
      replaceable Modelica.Blocks.Interfaces.SignalSource signalSource(
          final offset = offset, final startTime=startTime);
    equation 
      i = signalSource.y;
    end CurrentSource;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:09 2010.
