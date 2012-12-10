% Modelica.Electrical.QuasiStationary.SinglePhase.Ideal
% 
% 

[Modelica.Electrical.QuasiStationary.SinglePhase](Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase).Ideal
=============================================================================================================================================================

**Ideal components for AC singlephase models**

Information
-----------

::

This package hosts ideal models for quasi stationary single phase
circuits. Quasi stationary theory for single phase circuits can be found
in the
[references](Modelica_Electrical_QuasiStationary_UsersGuide.html#Modelica.Electrical.QuasiStationary.UsersGuide.References).

### See also

[MultiPhase.Ideal](Modelica_Electrical_QuasiStationary_MultiPhase_Ideal.html#Modelica.Electrical.QuasiStationary.MultiPhase.Ideal)

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                             Descrip
                                                                   tion
  ---------------------------------------------------------------- -------
  ![image6](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal. Idle
  IdleS.png)                                                       branch
  [Idle](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.htm 
  l#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle)    

  ![image7](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal. Short
  ShortS.png)                                                      cut
  [Short](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.ht branch
  ml#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short)  

  ![image8](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal. Ideal
  IdealCommutingSwitchS.png)                                       commuti
  [IdealCommutingSwitch](Modelica_Electrical_QuasiStationary_Singl ng
  ePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhas switch
  e.Ideal.IdealCommutingSwitch)                                    

  ![image9](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal. Ideal
  IdealIntermediateSwitchS.png)                                    interme
  [IdealIntermediateSwitch](Modelica_Electrical_QuasiStationary_Si diate
  nglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SingleP switch
  hase.Ideal.IdealIntermediateSwitch)                              

  ![image10](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal Ideal
  .IdealOpeningSwitchS.png)                                        electri
  [IdealOpeningSwitch](Modelica_Electrical_QuasiStationary_SingleP cal
  hase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase. opener
  Ideal.IdealOpeningSwitch)                                        

  ![image11](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal Ideal
  .IdealClosingSwitchS.png)                                        electri
  [IdealClosingSwitch](Modelica_Electrical_QuasiStationary_SingleP cal
  hase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase. closer
  Ideal.IdealClosingSwitch)                                        
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdleI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Ideal](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal).Idle
==========================================================================================================================================================================================================================================================

**Idle branch**

Information
-----------

::

This model is a simple idle branch considering the complex current *i* =
0.

### See also

[Short](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Short)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
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

    model Idle "Idle branch"
      extends Interfaces.OnePort;
    equation 
      i = Complex(0);
    end Idle;

* * * * *

![image13](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.ShortI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Ideal](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal).Short
============================================================================================================================================================================================================================================================

**Short cut branch**

Information
-----------

::

This model is a simple short cut branch considering the complex voltage
*v* = 0.

### See also

[Idle](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.Idle)

::

Extends from
[Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
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

    model Short "Short cut branch"
      extends Interfaces.OnePort;
    equation 
      v = Complex(0);
    end Short;

* * * * *

![image14](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealCommutingSwitchI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Ideal](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal).IdealCommutingSwitch
==========================================================================================================================================================================================================================================================================================

**Ideal commuting switch**

Information
-----------

::

The commuting switch has a positive pin p and two negative pins n1 and
n2. The switching behaviour is controlled by the inpug signal control.
If control is true, the pin p is connected with the negative pin n2.
Otherwise, the pin p is connected to the negative pin n1.

In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible. **Please
note:** In case of useHeatPort=true the temperature dependence of the
electrical behavior is **not** modelled. The parameters are not
temperature dependent.

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  [Resistance](Modelica_SIunits.htm Ron     1.E-5 Closed switch resistance
  l#Modelica.SIunits.Resistance)                  [Ohm]

  [Conductance](Modelica_SIunits.ht Goff    1.E-5 Opened switch conductance
  ml#Modelica.SIunits.Conductance)                [S]

  Boolean                           useHeat false =true, if HeatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       293.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Name Description
  -------------------------------------------------- ---- -----------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interf heat 
  aces.html#Modelica.Thermal.HeatTransfer.Interfaces Port 
  .HeatPort_a)                                            

  [PositivePin](Modelica_Electrical_QuasiStationary_ p    
  SinglePhase_Interfaces.html#Modelica.Electrical.Qu      
  asiStationary.SinglePhase.Interfaces.PositivePin)       

  [NegativePin](Modelica_Electrical_QuasiStationary_ n2   
  SinglePhase_Interfaces.html#Modelica.Electrical.Qu      
  asiStationary.SinglePhase.Interfaces.NegativePin)       

  [NegativePin](Modelica_Electrical_QuasiStationary_ n1   
  SinglePhase_Interfaces.html#Modelica.Electrical.Qu      
  asiStationary.SinglePhase.Interfaces.NegativePin)       

  input                                              cont true =\> p--n2
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mod rol  connected, false
  elica.Blocks.Interfaces.BooleanInput)                   =\> p--n1
                                                          connected
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealCommutingSwitch "Ideal commuting switch"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin p;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n2;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n1;
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p--n2 connected, false => p--n1 connected";
    protected 
      Complex s1(re(final unit="1"), im(final unit="1"));
      Complex s2(re(final unit="1"), im(final unit="1")) "Auxiliary variables";
      constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                           Complex(1,0);
      constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                           Complex(1,0);
    equation 
      Connections.branch(p.reference, n1.reference);
      p.reference.gamma = n1.reference.gamma;
      Connections.branch(p.reference, n2.reference);
      p.reference.gamma = n2.reference.gamma;
      p.i + n2.i + n1.i = Complex(0,0);
      p.v - n1.v = (s1*unitCurrent)*(if (control) then 1 else Ron);
      n1.i = -(s1*unitVoltage)*(if (control) then Goff else 1);
      p.v - n2.v = (s2*unitCurrent)*(if (control) then Ron else 1);
      n2.i = -(s2*unitVoltage)*(if (control) then 1 else Goff);
      LossPower = real(p.v*conj(p.i)) + real(n1.v*conj(n1.i)) + real(n2.v*conj(n2.i));
    end IdealCommutingSwitch;

* * * * *

![image15](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealIntermediateSwitchI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Ideal](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal).IdealIntermediateSwitch
================================================================================================================================================================================================================================================================================================

**Ideal intermediate switch**

Information
-----------

::

The intermediate switch has four switching contact pins p1, p2, n1, and
n2. The switching behaviour is controlled by the input signal control.
If control is true, the pin p1 is connected to pin n2, and the pin p2 is
connected to the pin n2. Otherwise, the pin p1 is connected to n1, and
p2 is connected to n2.

In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron.

The limiting case is also allowed, i.e., the resistance Ron of the
closed switch could be exactly zero and the conductance Goff of the open
switch could be also exactly zero. Note, there are circuits, where a
description with zero Ron or zero Goff is not possible. **Please note:**
In case of useHeatPort=true the temperature dependence of the electrical
behavior is **not** modelled. The parameters are not temperature
dependent.

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  [Resistance](Modelica_SIunits.htm Ron     1.E-5 Closed switch resistance
  l#Modelica.SIunits.Resistance)                  [Ohm]

  [Conductance](Modelica_SIunits.ht Goff    1.E-5 Opened switch conductance
  ml#Modelica.SIunits.Conductance)                [S]

  Boolean                           useHeat false =true, if HeatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       293.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                           Nam Description
                                                 e   
  ---------------------------------------------- --- ---------------------
  [HeatPort\_a](Modelica_Thermal_HeatTransfer_In hea 
  terfaces.html#Modelica.Thermal.HeatTransfer.In tPo 
  terfaces.HeatPort_a)                           rt  

  [PositivePin](Modelica_Electrical_QuasiStation p1  
  ary_SinglePhase_Interfaces.html#Modelica.Elect     
  rical.QuasiStationary.SinglePhase.Interfaces.P     
  ositivePin)                                        

  [PositivePin](Modelica_Electrical_QuasiStation p2  
  ary_SinglePhase_Interfaces.html#Modelica.Elect     
  rical.QuasiStationary.SinglePhase.Interfaces.P     
  ositivePin)                                        

  [NegativePin](Modelica_Electrical_QuasiStation n1  
  ary_SinglePhase_Interfaces.html#Modelica.Elect     
  rical.QuasiStationary.SinglePhase.Interfaces.N     
  egativePin)                                        

  [NegativePin](Modelica_Electrical_QuasiStation n2  
  ary_SinglePhase_Interfaces.html#Modelica.Elect     
  rical.QuasiStationary.SinglePhase.Interfaces.N     
  egativePin)                                        

  input                                          con true =\> p1--n2,
  [BooleanInput](Modelica_Blocks_Interfaces.html tro p2--n1 connected,
  #Modelica.Blocks.Interfaces.BooleanInput)      l   otherwise p1--n1,
                                                     p2--n2 connected
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealIntermediateSwitch "Ideal intermediate switch"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
      parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin p1;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin p2;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n1;
      Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin n2;
      Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p1--n2, p2--n1 connected, otherwise p1--n1, p2--n2  connected";
    protected 
      Complex s1(re(final unit="1"), im(final unit="1"));
      Complex s2(re(final unit="1"), im(final unit="1"));
      Complex s3(re(final unit="1"), im(final unit="1"));
      Complex s4(re(final unit="1"), im(final unit="1")) "Auxiliary variables";
      constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                           Complex(1,0);
      constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                           Complex(1,0);
    equation 
      Connections.branch(p1.reference, n1.reference);
      p1.reference.gamma = n1.reference.gamma;
      Connections.branch(p2.reference, n2.reference);
      p2.reference.gamma = n2.reference.gamma;
      Connections.branch(n1.reference, n2.reference);
      n1.reference.gamma = n2.reference.gamma;

      p1.v - n1.v = (s1*unitCurrent)*(if (control) then 1 else Ron);
      p2.v - n2.v = (s2*unitCurrent)*(if (control) then 1 else Ron);
      p1.v - n2.v = (s3*unitCurrent)*(if (control) then Ron else 1);
      p2.v - n1.v = (s4*unitCurrent)*(if (control) then Ron else 1);

      p1.i = if control then s1*unitVoltage*Goff + s3*unitCurrent else s1*unitCurrent + s3*unitVoltage*Goff;
      p2.i = if control then s2*unitVoltage*Goff + s4*unitCurrent else s2*unitCurrent + s4*unitVoltage*Goff;
      n1.i = if control then -s1*unitVoltage*Goff - s4*unitCurrent else -s1*unitCurrent - s4*unitVoltage*Goff;
      n2.i = if control then -s2*unitVoltage*Goff - s3*unitCurrent else -s2*unitCurrent - s3*unitVoltage*Goff;

      LossPower = real(p1.v*conj(p1.i)) + real(p2.v*conj(p2.i)) + real(n1.v*conj(n1.i)) + real(n2.v*conj(n2.i));
    end IdealIntermediateSwitch;

* * * * *

![image16](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealOpeningSwitchI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Ideal](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal).IdealOpeningSwitch
======================================================================================================================================================================================================================================================================================

**Ideal electrical opener**

Information
-----------

::

The ideal opening switch has a positive pin p and a negative pin n. The
switching behaviour is controlled by the input signal control. If
control is true, pin p is not connected with negative pin n. Otherwise,
pin p is connected with negative pin n.

In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible. **Please
note:** In case of useHeatPort=true the temperature dependence of the
electrical behavior is **not** modelled. The parameters are not
temperature dependent.

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through),
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  [Resistance](Modelica_SIunits.htm Ron     1.E-5 Closed switch resistance
  l#Modelica.SIunits.Resistance)                  [Ohm]

  [Conductance](Modelica_SIunits.ht Goff    1.E-5 Opened switch conductance
  ml#Modelica.SIunits.Conductance)                [S]

  Boolean                           useHeat false =true, if HeatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       293.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  [PositivePin](Modelica_Electrical_QuasiStationary_S pin\ Positive pin
  inglePhase_Interfaces.html#Modelica.Electrical.Quas _p   
  iStationary.SinglePhase.Interfaces.PositivePin)          

  [NegativePin](Modelica_Electrical_QuasiStationary_S pin\ Negative pin
  inglePhase_Interfaces.html#Modelica.Electrical.Quas _n   
  iStationary.SinglePhase.Interfaces.NegativePin)          

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfa heat 
  ces.html#Modelica.Thermal.HeatTransfer.Interfaces.H Port 
  eatPort_a)                                               

  input                                               cont true =\> switch
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mode rol  open, false =\>
  lica.Blocks.Interfaces.BooleanInput)                     p--n connected
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealOpeningSwitch "Ideal electrical opener"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
     extends Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort;
     parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
     parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
     extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
     Modelica.Blocks.Interfaces.BooleanInput control 
        "true => switch open, false => p--n connected";
    protected 
     Complex s(re(final unit="1"), im(final unit="1")) "Auxiliary variable";
     constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                          Complex(1,0);
     constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                          Complex(1,0);
    equation 
     v = (s*unitCurrent)*(if control then 1 else Ron);
     i = (s*unitVoltage)*(if control then Goff else 1);

     LossPower = real(v*conj(i));
    end IdealOpeningSwitch;

* * * * *

![image17](Modelica.Electrical.QuasiStationary.SinglePhase.Ideal.IdealClosingSwitchI.png) [Modelica.Electrical.QuasiStationary.SinglePhase.Ideal](Modelica_Electrical_QuasiStationary_SinglePhase_Ideal.html#Modelica.Electrical.QuasiStationary.SinglePhase.Ideal).IdealClosingSwitch
======================================================================================================================================================================================================================================================================================

**Ideal electrical closer**

Information
-----------

::

The ideal closing switch has a positive pin p and a negative pin n. The
switching behaviour is controlled by input signal control. If control is
true, pin p is connected with negative pin n. Otherwise, pin p is not
connected with negative pin n.

In order to prevent singularities during switching, the opened switch
has a (very low) conductance Goff and the closed switch has a (very low)
resistance Ron. The limiting case is also allowed, i.e., the resistance
Ron of the closed switch could be exactly zero and the conductance Goff
of the open switch could be also exactly zero. Note, there are circuits,
where a description with zero Ron or zero Goff is not possible. **Please
note:** In case of useHeatPort=true the temperature dependence of the
electrical behavior is **not** modelled. The parameters are not
temperature dependent.

**Use with care:** This switch is only intended to be used for
structural changes, not for fast switching sequences, due to the
quasistationary formulation.

::

Extends from
[Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort](Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort)
(Two pins, current through),
[Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort)
(Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network).

Parameters
----------

  -------------------------------------------------------------------------
  Type                              Name    Defau Description
                                            lt    
  --------------------------------- ------- ----- -------------------------
  [Resistance](Modelica_SIunits.htm Ron     1.E-5 Closed switch resistance
  l#Modelica.SIunits.Resistance)                  [Ohm]

  [Conductance](Modelica_SIunits.ht Goff    1.E-5 Opened switch conductance
  ml#Modelica.SIunits.Conductance)                [S]

  Boolean                           useHeat false =true, if HeatPort is
                                    Port          enabled

  [Temperature](Modelica_SIunits.ht T       293.1 Fixed device temperature
  ml#Modelica.SIunits.Temperature)          5     if useHeatPort = false
                                                  [K]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  [PositivePin](Modelica_Electrical_QuasiStationary_S pin\ Positive pin
  inglePhase_Interfaces.html#Modelica.Electrical.Quas _p   
  iStationary.SinglePhase.Interfaces.PositivePin)          

  [NegativePin](Modelica_Electrical_QuasiStationary_S pin\ Negative pin
  inglePhase_Interfaces.html#Modelica.Electrical.Quas _n   
  iStationary.SinglePhase.Interfaces.NegativePin)          

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfa heat 
  ces.html#Modelica.Thermal.HeatTransfer.Interfaces.H Port 
  eatPort_a)                                               

  input                                               cont true =\> p--n
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mode rol  connected, false
  lica.Blocks.Interfaces.BooleanInput)                     =\> switch open
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model IdealClosingSwitch "Ideal electrical closer"
      import Modelica.ComplexMath.real;
      import Modelica.ComplexMath.conj;
      extends Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort;
        parameter Modelica.SIunits.Resistance Ron(final min=0)=1.E-5 
        "Closed switch resistance";
        parameter Modelica.SIunits.Conductance Goff(final min=0)=1.E-5 
        "Opened switch conductance";
      extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T=293.15);
        Modelica.Blocks.Interfaces.BooleanInput control 
        "true => p--n connected, false => switch open";
    protected 
        Complex s(re(final unit="1"), im(final unit="1")) "Auxiliary variable";
        constant Modelica.SIunits.ComplexVoltage  unitVoltage=
                                                             Complex(1,0);
        constant Modelica.SIunits.ComplexCurrent  unitCurrent=
                                                             Complex(1,0);
    equation 
        v = (s*unitCurrent)*(if control then Ron else 1);
        i = (s*unitVoltage)*(if control then 1 else Goff);

        LossPower = real(v*conj(i));
    end IdealClosingSwitch;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:24 2010.
