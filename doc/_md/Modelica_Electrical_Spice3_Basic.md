% Modelica.Electrical.Spice3.Basic
% 
% 

[Modelica.Electrical.Spice3](Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3).Basic
==============================================================================================

**Basic electronical components**

Information
-----------

::

This Package contains the basic components of the SPICE3 models. The
first letter of the

name of the component shows the SPICE name, e.g., **R**\_Resistor: **R**
is the SPICE-name of the component

resistor which is used in SPICE-Netlists.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image8](Modelica.Electrical.Spice3.Basic.GroundS.png) Ground node
  [Ground](Modelica_Electrical_Spice3_Basic.html#Modelica 
  .Electrical.Spice3.Basic.Ground)                        

  ![image9](Modelica.Electrical.Spice3.Basic.R_ResistorS. Ideal linear
  png)                                                    electrical
  [R\_Resistor](Modelica_Electrical_Spice3_Basic.html#Mod resistor
  elica.Electrical.Spice3.Basic.R_Resistor)               

  ![image10](Modelica.Electrical.Spice3.Basic.C_Capacitor Ideal linear
  S.png)                                                  electrical
  [C\_Capacitor](Modelica_Electrical_Spice3_Basic.html#Mo capacitor
  delica.Electrical.Spice3.Basic.C_Capacitor)             

  ![image11](Modelica.Electrical.Spice3.Basic.L_InductorS Ideal linear
  .png)                                                   electrical
  [L\_Inductor](Modelica_Electrical_Spice3_Basic.html#Mod inductor
  elica.Electrical.Spice3.Basic.L_Inductor)               

  ![image12](Modelica.Electrical.Spice3.Basic.E_VCVS.png) Linear
  [E\_VCV](Modelica_Electrical_Spice3_Basic.html#Modelica voltage-controll
  .Electrical.Spice3.Basic.E_VCV)                         ed
                                                          voltage source

  ![image13](Modelica.Electrical.Spice3.Basic.G_VCCS.png) Linear
  [G\_VCC](Modelica_Electrical_Spice3_Basic.html#Modelica voltage-controll
  .Electrical.Spice3.Basic.G_VCC)                         ed
                                                          current source

  ![image14](Modelica.Electrical.Spice3.Basic.H_CCVS.png) Linear
  [H\_CCV](Modelica_Electrical_Spice3_Basic.html#Modelica current-controll
  .Electrical.Spice3.Basic.H_CCV)                         ed
                                                          voltage source

  ![image15](Modelica.Electrical.Spice3.Basic.F_CCCS.png) Linear
  [F\_CCC](Modelica_Electrical_Spice3_Basic.html#Modelica current-controll
  .Electrical.Spice3.Basic.F_CCC)                         ed
                                                          current source
  ------------------------------------------------------------------------

* * * * *

![image16](Modelica.Electrical.Spice3.Basic.GroundI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).Ground
==========================================================================================================================================================================

**Ground node**

Information
-----------

::

Ground of an electrical circuit. The potential at the ground node is
zero. Every electrical circuit has to contain at least one ground
object.

SPICE does not have an element for the ground node (mass). In SPICE
netlists the ground is specified by the node number 0. This Modelica
SPICE library demands to describe the ground node by this gound element.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  [Pin](Modelica_Electrical_Analog_Interfaces.html#Modelica p     Ground
  .Electrical.Analog.Interfaces.Pin)                              pin
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Ground "Ground node"

      Modelica.Electrical.Analog.Interfaces.Pin p "Ground pin";
    equation 
      p.v = 0;
    end Ground;

* * * * *

![image17](Modelica.Electrical.Spice3.Basic.R_ResistorI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).R\_Resistor
===================================================================================================================================================================================

**Ideal linear electrical resistor**

Information
-----------

::

The linear resistor connects the branch voltage *v* with the branch
current *i* by *i\*R = v*. The Resistance *R* is allowed to be positive,
zero, or negative.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                          Name  Default Description
  --------------------------------------------- ----- ------- -------------
  [Resistance](Modelica_SIunits.html#Modelica.S R             Resistance
  Iunits.Resistance)                                          [Ohm]
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

    model R_Resistor "Ideal linear electrical resistor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Resistance R(start=1000) "Resistance";
    equation 
      R*i = v;
    end R_Resistor;

* * * * *

![image18](Modelica.Electrical.Spice3.Basic.C_CapacitorI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).C\_Capacitor
=====================================================================================================================================================================================

**Ideal linear electrical capacitor**

Information
-----------

::

The linear capacitor connects the branch voltage *v* with the branch
current *i* by *i = C \* dv/dt*. The Capacitance *C* is allowed to be
positive, zero, or negative.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  --------------------------------------------------------------------------
  Type                              Name Defau Description
                                         lt    
  --------------------------------- ---- ----- -----------------------------
  [Capacitance](Modelica_SIunits.ht C          Capacitance [F]
  ml#Modelica.SIunits.Capacitance)             

  [Voltage](Modelica_SIunits.html#M IC   0     Initial value [V]
  odelica.SIunits.Voltage)                     

  Boolean                           UIC  false Use initial conditions: true,
                                               if initial condition is used
  --------------------------------------------------------------------------

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

    model C_Capacitor "Ideal linear electrical capacitor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Capacitance C(start=0) "Capacitance";
      parameter SI.Voltage IC=0 "Initial value";
      parameter Boolean UIC=false 
        "Use initial conditions: true, if initial condition is used";
    protected 
      SI.Voltage vinternal(start=IC, fixed=UIC);
    equation 
        vinternal = p.v - n.v;
        i = C*der(vinternal);
    end C_Capacitor;

* * * * *

![image19](Modelica.Electrical.Spice3.Basic.L_InductorI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).L\_Inductor
===================================================================================================================================================================================

**Ideal linear electrical inductor**

Information
-----------

::

The linear inductor connects the branch voltage *v* with the branch
current *i* by *v = L \* di/dt*. The inductance *L* is allowed to be
positive, zero, or negative.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name Defau Description
                                        lt    
  -------------------------------- ---- ----- -----------------------------
  [Inductance](Modelica_SIunits.ht L          Inductance [H]
  ml#Modelica.SIunits.Inductance)             

  [Current](Modelica_SIunits.html# IC   0     Initial value [A]
  Modelica.SIunits.Current)                   

  Boolean                          UIC  false Use initial conditions: true,
                                              if initial condition is used
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

    model L_Inductor "Ideal linear electrical inductor"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Inductance L(start=0) "Inductance";
      parameter SI.Current IC=0 "Initial value";
      parameter Boolean UIC=false 
        "Use initial conditions: true, if initial condition is used";
      SI.Current iinternal(start=IC, fixed=UIC);
    equation 
      iinternal = p.i;
      L*der(iinternal) = v;
    end L_Inductor;

* * * * *

![image20](Modelica.Electrical.Spice3.Basic.E_VCVI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).E\_VCV
=========================================================================================================================================================================

**Linear voltage-controlled voltage source**

Information
-----------

::

The linear voltage-controlled voltage source is a TwoPort. The right
port voltage at pin p2 (=p2.v) is controlled by the left port voltage at
pin p1 (=p1.v) via

    p2.v = p1.v * gain.

The left port current is zero. Any voltage gain can be chosen.

The corresponding SPICE description

    Ename N+ N- NC+ NC- VALUE

is translated to Modelica:

    Ename -> Spice3.Basic.E_VCV Ename
    (Ename is the name of the Modelica instance)
    N+ -> p2.v
    N- -> n2.v
    NC+ -> p1.v
    NC- -> n1.v
    VALUE -> gain

::

Extends from
[Interfaces.TwoPortControlledSources](Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources)
(Component with two electrical ports, including current).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ -----------------
  Real      gain                   Voltage gain

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- ------------------
  [PositivePin](Modelica_Electrical_Analog_Interface p1  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlling
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n1  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlling
  ivePin)                                                port

  [PositivePin](Modelica_Electrical_Analog_Interface p2  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlled
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n2  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlled
  ivePin)                                                port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model E_VCV "Linear voltage-controlled voltage source"
      extends Interfaces.TwoPortControlledSources;
      parameter Real gain(start=0) "Voltage gain";
    equation 
      v2 = v1*gain;
      i1 = 0;
    end E_VCV;

* * * * *

![image21](Modelica.Electrical.Spice3.Basic.G_VCCI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).G\_VCC
=========================================================================================================================================================================

**Linear voltage-controlled current source**

Information
-----------

::

The linear voltage-controlled current source is a TwoPort. The right
port current at pin p2 (=p2.i) is controlled by the left port voltage at
pin p1 (p1.v) via

    p2.i = p1.v * transConductance.

The left port current is zero. Any transConductance can be chosen.

The corresponding SPICE description

    Gname N+ N- NC+ NC- VALUE

is translated to Modelica:

::

> Gname -\> Spice3.Basic.G\_VCC Gname (Gname is the name of the Modelica
> instance) N+ -\> p2.i N- -\> n2.i NC+ -\> p1 .v NC- -\> n1.v VALUE -\>
> transConductance

::

Extends from
[Interfaces.TwoPortControlledSources](Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources)
(Component with two electrical ports, including current).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                    Name        Defaul Description
                                                      t      
  --------------------------------------- ----------- ------ -------------
  [Conductance](Modelica_SIunits.html#Mod transConduc        Transconducta
  elica.SIunits.Conductance)              tance              nce
                                                             [S]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- ------------------
  [PositivePin](Modelica_Electrical_Analog_Interface p1  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlling
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n1  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlling
  ivePin)                                                port

  [PositivePin](Modelica_Electrical_Analog_Interface p2  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlled
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n2  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlled
  ivePin)                                                port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model G_VCC "Linear voltage-controlled current source"
      extends Interfaces.TwoPortControlledSources;
      parameter SI.Conductance transConductance(start=0) "Transconductance";
    equation 
      i2 = v1*transConductance;
      i1 = 0;
    end G_VCC;

* * * * *

![image22](Modelica.Electrical.Spice3.Basic.H_CCVI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).H\_CCV
=========================================================================================================================================================================

**Linear current-controlled voltage source**

Information
-----------

::

The linear current-controlled voltage source is a TwoPort. The "right"
port voltage at pin 2 (=p2.v) is controlled by the "left" port current
at pin p1(=p1.i) via

    p2.v = p1.i * transResistance.

The controlling port voltage is zero. Any transResistance can be chosen.

The corresponding SPICE description

    Hname N+ N- VNAM VALUE

is translated to Modelica:

    Hname -> Spice3.Basic.H_CCV Hname
    (Hname is the name of the Modelica instance)
    N+ -> p2.v
    N- -> n2.v  

The voltage source VNAM has the two nodes NV+ and NV-:

    VNAM VN+ VN- VALUE_V

The current through VNAM hast to be led through the CCV.

Therefore VNAM has to be disconnected and an additional

node NV\_AD has to be added.

    NV_AD -> p1.i
    NV- -> n1.i

On this way the current, that flows through the voltage source VNAM,
flows through the CCV.

    VALUE -> transResistance 

::

Extends from
[Interfaces.TwoPortControlledSources](Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources)
(Component with two electrical ports, including current).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name        Defaul Description
                                                      t      
  --------------------------------------- ----------- ------ --------------
  [Resistance](Modelica_SIunits.html#Mode transResist        Transresistanc
  lica.SIunits.Resistance)                ance               e
                                                             [Ohm]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- ------------------
  [PositivePin](Modelica_Electrical_Analog_Interface p1  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlling
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n1  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlling
  ivePin)                                                port

  [PositivePin](Modelica_Electrical_Analog_Interface p2  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlled
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n2  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlled
  ivePin)                                                port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model H_CCV "Linear current-controlled voltage source"
      extends Interfaces.TwoPortControlledSources;

      parameter SI.Resistance transResistance(start=0) "Transresistance";
    equation 
      v2 = i1*transResistance;
      v1 = 0;
    end H_CCV;

* * * * *

![image23](Modelica.Electrical.Spice3.Basic.F_CCCI.png) [Modelica.Electrical.Spice3.Basic](Modelica_Electrical_Spice3_Basic.html#Modelica.Electrical.Spice3.Basic).F\_CCC
=========================================================================================================================================================================

**Linear current-controlled current source**

Information
-----------

::

The linear current-controlled current source is a TwoPort. The "right"
port current at pin 2 (=p2.i) is controlled by the "left" port current
at pin p1(=p1.i) via

    p2.i = p1.i * gain.

The controlling port voltage is zero. Any current gain can be chosen.

The corresponding SPICE description

    Fname N+ N- VNAM VALUE

is translated to Modelica:

    Fname -> Spice3.Basic.F_CCC Fname
    (Fname is the name of the Modelica instance)
    N+ -> p2.i
    N- -> n2.i  

The voltage source VNAM has the two nodes NV+ and NV-:

    VNAM NV+ NV- VALUE_V

The current through VNAM hast to be led through the CCC.

Therefore VNAM has to be disconnected and an additional

node NV\_AD has to be added.

    NV_AD -> p1.i
    NV- -> n1.i

On this way the current, that flows through the voltage source VNAM,
flows through the CCC.

    VALUE -> gain 

::

Extends from
[Interfaces.TwoPortControlledSources](Modelica_Electrical_Spice3_Interfaces.html#Modelica.Electrical.Spice3.Interfaces.TwoPortControlledSources)
(Component with two electrical ports, including current).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ -----------------
  Real      gain                   Current gain

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- ------------------
  [PositivePin](Modelica_Electrical_Analog_Interface p1  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlling
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n1  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlling
  ivePin)                                                port

  [PositivePin](Modelica_Electrical_Analog_Interface p2  Positive pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Posit     the controlled
  ivePin)                                                port

  [NegativePin](Modelica_Electrical_Analog_Interface n2  Negative pin of
  s.html#Modelica.Electrical.Analog.Interfaces.Negat     the controlled
  ivePin)                                                port
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model F_CCC "Linear current-controlled current source"
      extends Interfaces.TwoPortControlledSources;
      parameter Real gain(start=0) "Current gain";
    equation 
      i2 = i1*gain;
      v1 = 0;
    end F_CCC;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:46 2010.
