% Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces
% 
% 

[Modelica.Electrical.QuasiStationary.SinglePhase](Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase).Interfaces
==================================================================================================================================================================

**Interfaces for AC singlephase models**

Information
-----------

::

This package contains connector specifications and partial models for
more complex components.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                           Descripti
                                                                 on
  -------------------------------------------------------------- ---------
  ![image8](Modelica.Electrical.QuasiStationary.SinglePhase.Inte Basic
  rfaces.PinS.png)                                               connector
  [Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfac 
  es.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interf 
  aces.Pin)                                                      

  ![image9](Modelica.Electrical.QuasiStationary.SinglePhase.Inte Positive
  rfaces.PositivePinS.png)                                       connector
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_ 
  Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhas 
  e.Interfaces.PositivePin)                                      

  ![image10](Modelica.Electrical.QuasiStationary.SinglePhase.Int Negative
  erfaces.NegativePinS.png)                                      Connector
  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_ 
  Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhas 
  e.Interfaces.NegativePin)                                      

  ![image11](Modelica.Electrical.QuasiStationary.SinglePhase.Int Two pins
  erfaces.TwoPinS.png)                                           
  [TwoPin](Modelica_Electrical_QuasiStationary_SinglePhase_Inter 
  faces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Int 
  erfaces.TwoPin)                                                

  ![image12](Modelica.Electrical.QuasiStationary.SinglePhase.Int Two pins,
  erfaces.TwoPinS.png)                                           current
  [OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Inte through
  rfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.In 
  terfaces.OnePort)                                              

  ![image13](Modelica.Electrical.QuasiStationary.SinglePhase.Int Partial
  erfaces.AbsoluteSensorS.png)                                   potential
  [AbsoluteSensor](Modelica_Electrical_QuasiStationary_SinglePha sensor
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.SingleP 
  hase.Interfaces.AbsoluteSensor)                                

  ![image14](Modelica.Electrical.QuasiStationary.SinglePhase.Int Partial
  erfaces.RelativeSensorS.png)                                   voltage /
  [RelativeSensor](Modelica_Electrical_QuasiStationary_SinglePha current
  se_Interfaces.html#Modelica.Electrical.QuasiStationary.SingleP sensor
  hase.Interfaces.RelativeSensor)                                

  ![image15](Modelica.Electrical.QuasiStationary.SinglePhase.Int Partial
  erfaces.SourceS.png)                                           voltage /
  [Source](Modelica_Electrical_QuasiStationary_SinglePhase_Inter current
  faces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Int source
  erfaces.Source)                                                
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).Pin
============================================================================================================================================================================================

**Basic connector**

Information
-----------

::

The potential of this connector is the complex voltage and the flow
variable is the complex current. The
[positive](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin)
and [negative
pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin)
are derived from this base connector.

### See also

[PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin),
[NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin),
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug),
[PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug),
[NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug)

::

Contents
--------

  ------------------------------------------------------------------------
  Type                                         Name Description
  -------------------------------------------- ---- ----------------------
  [ComplexVoltage](Modelica_SIunits.html#Model v    Complex potential at
  ica.SIunits.ComplexVoltage)                       the node

  flow                                         i    Complex current
  [ComplexCurrent](Modelica_SIunits.html#Model      flowing into the pin
  ica.SIunits.ComplexCurrent)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Pin "Basic connector"
      Modelica.SIunits.ComplexVoltage  v "Complex potential at the node";
      flow Modelica.SIunits.ComplexCurrent  i 
        "Complex current flowing into the pin";
    end Pin;

* * * * *

![image16](Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePinI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).PositivePin
============================================================================================================================================================================================================================================================================================

**Positive connector**

Information
-----------

::

The positive pin is based on
[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin).
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of the
quasi stationary voltage and current. The symbol is also designed such
way to look different than the [negative
pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin).

### See also

[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin),
[NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin),
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug),
[PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug),
[NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug)

::

Extends from
[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin)
(Basic connector).

Contents
--------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [ComplexVoltage](Modelica_SIunits.html#Modelica.S v     Complex potential
  Iunits.ComplexVoltage)                                  at the node

  flow                                              i     Complex current
  [ComplexCurrent](Modelica_SIunits.html#Modelica.S       flowing into the
  Iunits.ComplexCurrent)                                  pin

  [Reference](Modelica_Electrical_QuasiStationary_T refer Reference
  ypes.html#Modelica.Electrical.QuasiStationary.Typ ence  
  es.Reference)                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector PositivePin "Positive connector"
      extends Pin;
      QuasiStationary.Types.Reference reference "Reference";
    end PositivePin;

* * * * *

![image17](Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePinI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).NegativePin
============================================================================================================================================================================================================================================================================================

**Negative Connector**

Information
-----------

::

The negative pin is based on
[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin).
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of the
quasi stationary voltage and current. The symbol is also designed such
way to look different than the [positive
pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin).

### See also

[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin),
[PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin),
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug),
[PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug),
[NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug)

::

Extends from
[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin)
(Basic connector).

Contents
--------

  -------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- -----------------
  [ComplexVoltage](Modelica_SIunits.html#Modelica.S v     Complex potential
  Iunits.ComplexVoltage)                                  at the node

  flow                                              i     Complex current
  [ComplexCurrent](Modelica_SIunits.html#Modelica.S       flowing into the
  Iunits.ComplexCurrent)                                  pin

  [Reference](Modelica_Electrical_QuasiStationary_T refer Reference
  ypes.html#Modelica.Electrical.QuasiStationary.Typ ence  
  es.Reference)                                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    connector NegativePin "Negative Connector"
      extends Pin;
      QuasiStationary.Types.Reference reference "Reference";
    end NegativePin;

* * * * *

![image18](Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).TwoPin
==================================================================================================================================================================================================================================================================================

**Two pins**

Information
-----------

::

This partial model uses a
[positive](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin)
and [negative
pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin)
and defines the complex voltage difference as well as the complex
current (into the positive pin). Additionally, the angular velocity of
the quasi stationary system is explicitely defined as variable. This
model is mainly intended to be used with graphical representation of
user models.

### See also

[PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin),
[NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin),
[OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model TwoPin "Two pins"
      Modelica.SIunits.ComplexVoltage  v;
      Modelica.SIunits.ComplexCurrent  i;
      Modelica.SIunits.AngularVelocity omega = der(pin_p.reference.gamma);
      PositivePin pin_p "Positive pin";
      NegativePin pin_n "Negative pin";
    equation 
      Connections.branch(pin_p.reference, pin_n.reference);
      pin_p.reference.gamma = pin_n.reference.gamma;
      i = pin_p.i;
      v = pin_p.v - pin_n.v;
    end TwoPin;

* * * * *

![image19](Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).OnePort
===================================================================================================================================================================================================================================================================================

**Two pins, current through**

Information
-----------

::

This partial model is based on
[TwoPin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin)
and additionally considers the complex current balance of the
[positive](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin)
and the [negative
pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin).
This model is intended to be used with textual representation of user
models.

### See also

[PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin),
[NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin),
[TwoPin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin)

::

Extends from
[TwoPin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin)
(Two pins).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model OnePort "Two pins, current through"
      extends TwoPin;
    equation 
      pin_p.i + pin_n.i = Complex(0);
    end OnePort;

* * * * *

![image20](Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).AbsoluteSensor
==================================================================================================================================================================================================================================================================================================

**Partial potential sensor**

Information
-----------

::

The absolute sensor partial model provides a single [positive
pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin)
to measure the complex voltage. Additionally this model contains a
proper icon and a definition of the angular velocity.

### See also

[RelativeSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor),
[PotentialSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor),
[MultiPhase.Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor),
[MultiPhase.Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor)

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                           Nam Descri
                                                                 e   ption
  -------------------------------------------------------------- --- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_ pin Pin
  Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhas     
  e.Interfaces.PositivePin)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model AbsoluteSensor "Partial potential sensor"
      extends Modelica.Icons.RotationalSensor;
      Modelica.SIunits.AngularVelocity omega = der(pin.reference.gamma);
      PositivePin pin "Pin";
    equation 
      pin.i = Complex(0);
    end AbsoluteSensor;

* * * * *

![image21](Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensorI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).RelativeSensor
==================================================================================================================================================================================================================================================================================================

**Partial voltage / current sensor**

Information
-----------

::

The relative sensor partial model relies on the
[OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
to measure the complex voltage, current or power. Additionally this
model contains a proper icon and a definition of the angular velocity.

### See also

[AbsoluteSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor),
[VoltageSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor),
[CurrentSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor),
[PowerSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor),
[MultiPhase.Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor),
[MultiPhase.Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor)

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device),
[OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin

  output                                                        y    
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modeli      
  ca.ComplexBlocks.Interfaces.ComplexOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model RelativeSensor "Partial voltage / current sensor"
      extends Modelica.Icons.RotationalSensor;
      extends OnePort;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y;
    end RelativeSensor;

* * * * *

![image22](Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.SourceI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces).Source
==================================================================================================================================================================================================================================================================================

**Partial voltage / current source**

Information
-----------

::

The source partial model relies on the
[OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
and contains a proper icon.

### See also

[VoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource),
[VariableVoltageSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource),
[MultiPhase.Interfaces.Source](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source).

::

Extends from
[OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Positi
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _p   ve
  ase.Interfaces.PositivePin)                                        pin

  [NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase pin\ Negati
  _Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePh _n   ve
  ase.Interfaces.NegativePin)                                        pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model Source "Partial voltage / current source"
      extends OnePort;
    equation 
      Connections.root(pin_p.reference);
    end Source;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:24 2010.
