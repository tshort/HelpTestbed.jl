% Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces
% 
% 

[Modelica.Electrical.QuasiStationary.MultiPhase](Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase).Interfaces
===============================================================================================================================================================

**Interfaces for AC multiphase models**

Information
-----------

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                           Descripti
                                                                 on
  -------------------------------------------------------------- ---------
  ![image8](Modelica.Electrical.QuasiStationary.MultiPhase.Inter Basic
  faces.PlugS.png)                                               multiphas
  [Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfac e
  es.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfa plug
  ces.Plug)                                                      

  ![image9](Modelica.Electrical.QuasiStationary.MultiPhase.Inter Positive
  faces.PositivePlugS.png)                                       multiphas
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase_ e
  Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase connector
  .Interfaces.PositivePlug)                                      

  ![image10](Modelica.Electrical.QuasiStationary.MultiPhase.Inte Negative
  rfaces.NegativePlugS.png)                                      multiphas
  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase_ e
  Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase connector
  .Interfaces.NegativePlug)                                      

  ![image11](Modelica.Electrical.QuasiStationary.MultiPhase.Inte Two plugs
  rfaces.TwoPlugS.png)                                           with
  [TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Inter pin-adapt
  faces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Inte er
  rfaces.TwoPlug)                                                

  ![image12](Modelica.Electrical.QuasiStationary.MultiPhase.Inte 
  rfaces.TwoPlugS.png)                                           
  [OnePort](Modelica_Electrical_QuasiStationary_MultiPhase_Inter 
  faces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Inte 
  rfaces.OnePort)                                                

  ![image13](Modelica.Electrical.QuasiStationary.MultiPhase.Inte Partial
  rfaces.AbsoluteSensorS.png)                                    potential
  [AbsoluteSensor](Modelica_Electrical_QuasiStationary_MultiPhas sensor
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha 
  se.Interfaces.AbsoluteSensor)                                  

  ![image14](Modelica.Electrical.QuasiStationary.MultiPhase.Inte Partial
  rfaces.RelativeSensorS.png)                                    voltage /
  [RelativeSensor](Modelica_Electrical_QuasiStationary_MultiPhas current
  e_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha sensor
  se.Interfaces.RelativeSensor)                                  

  ![image15](Modelica.Electrical.QuasiStationary.MultiPhase.Inte Partial
  rfaces.SourceS.png)                                            voltage /
  [Source](Modelica_Electrical_QuasiStationary_MultiPhase_Interf current
  aces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Inter source
  faces.Source)                                                  
  ------------------------------------------------------------------------

* * * * *

[Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).Plug
==========================================================================================================================================================================================

**Basic multiphase plug**

Information
-----------

::

This multiphase plug contains a vector of *m* [single phase
pins](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin).
The
[positive](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug)
and [negative
plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug)
are derived from this base connector.

### See also

[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin),
[PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin),
[NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin),
[PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug),
[NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Contents
--------

  ------------------------------------------------------------------------
  Type                                                       Name Descript
                                                                  ion
  ---------------------------------------------------------- ---- --------
  Integer                                                    m    number
                                                                  of
                                                                  phases

  [Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Inte pin[ 
  rfaces.html#Modelica.Electrical.QuasiStationary.SinglePhas m]   
  e.Interfaces.Pin)                                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector Plug "Basic multiphase plug"
      parameter Integer m=3 "number of phases";
      QuasiStationary.SinglePhase.Interfaces.Pin pin[m];
    end Plug;

* * * * *

![image16](Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlugI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).PositivePlug
==========================================================================================================================================================================================================================================================================================

**Positive multiphase connector**

Information
-----------

::

The positive plug is based on
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug).
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of each
quasi stationary voltage and current. The symbol is also designed such
way to look different than the [negative
plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug).

### See also

[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin),
[PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin),
[NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin),
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug),
[NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug)

::

Extends from
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug)
(Basic multiphase plug).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Contents
--------

  ------------------------------------------------------------------------
  Type                                                      Name  Descript
                                                                  ion
  --------------------------------------------------------- ----- --------
  Integer                                                   m     number
                                                                  of
                                                                  phases

  [Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Int pin[m 
  erfaces.html#Modelica.Electrical.QuasiStationary.SinglePh ]     
  ase.Interfaces.Pin)                                             

  [Reference](Modelica_Electrical_QuasiStationary_Types.htm refer 
  l#Modelica.Electrical.QuasiStationary.Types.Reference)    ence  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector PositivePlug "Positive multiphase connector"
      extends Plug;
      QuasiStationary.Types.Reference reference;
    end PositivePlug;

* * * * *

![image17](Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlugI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).NegativePlug
==========================================================================================================================================================================================================================================================================================

**Negative multiphase connector**

Information
-----------

::

The negative plug is based on
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug).
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of each
quasi stationary voltage and current. The symbol is also designed such
way to look different than the [positive
plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug).

### See also

[Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin),
[PositivePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin),
[NegativePin](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin),
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug),
[PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug),

::

Extends from
[Plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug)
(Basic multiphase plug).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Contents
--------

  ------------------------------------------------------------------------
  Type                                                      Name  Descript
                                                                  ion
  --------------------------------------------------------- ----- --------
  Integer                                                   m     number
                                                                  of
                                                                  phases

  [Pin](Modelica_Electrical_QuasiStationary_SinglePhase_Int pin[m 
  erfaces.html#Modelica.Electrical.QuasiStationary.SinglePh ]     
  ase.Interfaces.Pin)                                             

  [Reference](Modelica_Electrical_QuasiStationary_Types.htm refer 
  l#Modelica.Electrical.QuasiStationary.Types.Reference)    ence  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    connector NegativePlug "Negative multiphase connector"
      extends Plug;
      QuasiStationary.Types.Reference reference;
    end NegativePlug;

* * * * *

![image18](Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).TwoPlug
================================================================================================================================================================================================================================================================================

**Two plugs with pin-adapter**

Information
-----------

::

This partial model uses a
[positive](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug)
and [negative
plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug)
and defines the complex voltage differences as well as the complex
currents (into the positive plug). A
[positive](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p)
and a [negative
adapter](Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n)
are used to give easy acces to the single pins of both plugs.
Additionally, the angular velocity of the quasi stationary system is
explicitely defined as variable. This model is mainly intended to be
used with graphical representation of user models.

### See also

[PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug),
[NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug),

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model TwoPlug "Two plugs with pin-adapter"
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.ComplexVoltage  v[
                                        m];
      Modelica.SIunits.ComplexCurrent  i[
                                        m];
      Modelica.SIunits.AngularVelocity omega = der(plug_p.reference.gamma);
      PositivePlug plug_p(final m=m);
      NegativePlug plug_n(final m=m);
      Basic.PlugToPins_p plugToPins_p(final m=m);
      Basic.PlugToPins_n plugToPins_n(final m=m);
    equation 
      v = plug_p.pin.v - plug_n.pin.v;
      i = plug_p.pin.i;
      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_n.plug_n, plug_n);
    end TwoPlug;

* * * * *

![image19](Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).OnePort
================================================================================================================================================================================================================================================================================

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model OnePort
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.ComplexVoltage  v[
                                        m];
      Modelica.SIunits.ComplexCurrent  i[
                                        m];
      Modelica.SIunits.AngularVelocity omega = der(plug_p.reference.gamma);
      PositivePlug plug_p(final m=m);
      NegativePlug plug_n(final m=m);
    equation 
      Connections.branch(plug_p.reference, plug_n.reference);
      plug_p.reference.gamma = plug_n.reference.gamma;
      v = plug_p.pin.v - plug_n.pin.v;
      i = plug_p.pin.i;
      plug_p.pin.i + plug_n.pin.i = fill(Complex(0),m);
    end OnePort;

* * * * *

![image20](Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).AbsoluteSensor
==============================================================================================================================================================================================================================================================================================

**Partial potential sensor**

Information
-----------

::

The absolute sensor partial model relies on the a [positive
plug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug)
to measure the complex potential. Additionally this model contains a
proper icon and a definition of the angular velocity.

### See also

[RelativeSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor),
[SinglePhase.Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor),
[SinglePhase.Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor)

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model AbsoluteSensor "Partial potential sensor"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer m(min=1) = 3 "number of phases";
      Modelica.SIunits.AngularVelocity omega = der(plug_p.reference.gamma);
      PositivePlug plug_p(final m=m);
    end AbsoluteSensor;

* * * * *

![image21](Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensorI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).RelativeSensor
==============================================================================================================================================================================================================================================================================================

**Partial voltage / current sensor**

Information
-----------

::

The relative sensor partial model relies on the
[TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
to measure the complex voltages, currents or power. Additionally this
model contains a proper icon and a definition of the angular velocity.

### See also

[AbsoluteSensor](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor),
[SinglePhase.Interfaces.AbsoluteSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor),
[SinglePhase.Interfaces.RelativeSensor](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor)

::

Extends from
[Modelica.Icons.RotationalSensor](Modelica_Icons.html#Modelica.Icons.RotationalSensor)
(Icon representing a round measurement device),
[TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        

  output                                                        y[m] 
  [ComplexOutput](Modelica_ComplexBlocks_Interfaces.html#Modeli      
  ca.ComplexBlocks.Interfaces.ComplexOutput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model RelativeSensor "Partial voltage / current sensor"
      extends Modelica.Icons.RotationalSensor;
      extends TwoPlug;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y[m];
    end RelativeSensor;

* * * * *

![image22](Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.SourceI.png) [Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces).Source
==============================================================================================================================================================================================================================================================================

**Partial voltage / current source**

Information
-----------

::

The source partial model relies on the
[TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
and contains a proper icon.

### See also

[VoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource),
[VariableVoltageSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource),
[CurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource),
[VariableCurrentSource](Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource),
[SinglePhase.Interfaces.Source](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source).

::

Extends from
[TwoPlug](Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug)
(Two plugs with pin-adapter).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                          Name Descri
                                                                     ption
  ------------------------------------------------------------- ---- ------
  [PositivePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_p  
  se.Interfaces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_QuasiStationary_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPha \_n  
  se.Interfaces.NegativePlug)                                        
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial model Source "Partial voltage / current source"
      extends TwoPlug;
      constant Modelica.SIunits.Angle pi=Modelica.Constants.pi;
    end Source;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:44 2010.
