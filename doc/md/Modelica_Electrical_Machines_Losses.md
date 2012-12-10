% Modelica.Electrical.Machines.Losses
% 
% 

[Modelica.Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines).Losses
=====================================================================================================

**Loss models for electric machines**

Information
-----------

::

This package contains loss models and their parameter records used for
machine models.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  -------------------------------------------------------------------------
  Name                                                     Description
  -------------------------------------------------------- ----------------
  ![image7](Modelica.Electrical.Machines.Losses.FrictionPa Parameter record
  rametersS.png)                                           for friction
  [FrictionParameters](Modelica_Electrical_Machines_Losses losses
  .html#Modelica.Electrical.Machines.Losses.FrictionParame 
  ters)                                                    

  ![image8](Modelica.Electrical.Machines.Losses.FrictionPa Parameter record
  rametersS.png)                                           for brush losses
  [BrushParameters](Modelica_Electrical_Machines_Losses.ht 
  ml#Modelica.Electrical.Machines.Losses.BrushParameters)  

  ![image9](Modelica.Electrical.Machines.Losses.FrictionPa Parameter record
  rametersS.png)                                           for stray load
  [StrayLoadParameters](Modelica_Electrical_Machines_Losse losses
  s.html#Modelica.Electrical.Machines.Losses.StrayLoadPara 
  meters)                                                  

  ![image10](Modelica.Electrical.Machines.Losses.FrictionP Parameter record
  arametersS.png)                                          for core losses
  [CoreParameters](Modelica_Electrical_Machines_Losses.htm 
  l#Modelica.Electrical.Machines.Losses.CoreParameters)    

  ![image11](Modelica.Electrical.Machines.Losses.FrictionS Model of angular
  .png)                                                    velocity
  [Friction](Modelica_Electrical_Machines_Losses.html#Mode dependent
  lica.Electrical.Machines.Losses.Friction)                friction losses

  ![image12](Modelica.Electrical.Machines.Losses.Induction Loss models for
  MachinesS.png)                                           induction
  [InductionMachines](Modelica_Electrical_Machines_Losses_ machines
  InductionMachines.html#Modelica.Electrical.Machines.Loss 
  es.InductionMachines)                                    

  ![image13](Modelica.Electrical.Machines.Losses.Induction Loss models for
  MachinesS.png)                                           DC machines
  [DCMachines](Modelica_Electrical_Machines_Losses_DCMachi 
  nes.html#Modelica.Electrical.Machines.Losses.DCMachines) 
  -------------------------------------------------------------------------

* * * * *

![image14](Modelica.Electrical.Machines.Losses.FrictionParametersI.png) [Modelica.Electrical.Machines.Losses](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses).FrictionParameters
==============================================================================================================================================================================================================

**Parameter record for friction losses**

Information
-----------

::

Parameter record for
[Friction](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.Friction)
losses.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name  Defau Description
                                           lt    
  ---------------------------------- ----- ----- --------------------------
  [Power](Modelica_SIunits.html#Mode PRef        Reference friction losses
  lica.SIunits.Power)                            at wRef [W]

  [AngularVelocity](Modelica_SIunits wRef        Reference angular velocity
  .html#Modelica.SIunits.AngularVelo             that the PRef refer to
  city)                                          [rad/s]

  Real                               power 2     Exponent of friction
                                     \_w         torque w.r.t. angular
                                                 velocity
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record FrictionParameters "Parameter record for friction losses"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Power PRef(min=0, start=0) 
        "Reference friction losses at wRef";
      parameter Modelica.SIunits.AngularVelocity wRef(displayUnit="1/min", min=Modelica.Constants.small) 
        "Reference angular velocity that the PRef refer to";
      parameter Real power_w(min=Modelica.Constants.small) = 2 
        "Exponent of friction torque w.r.t. angular velocity";
      final parameter Modelica.SIunits.Torque tauRef = if (PRef<=0) then 0 else PRef / wRef 
        "Reference friction torque at reference angular velocity";
      final parameter Real linear = 0.001 
        "Linear angular velocity range with respect to reference angular velocity";
      final parameter Modelica.SIunits.AngularVelocity wLinear = linear*wRef 
        "Linear angular velocity range";
      final parameter Modelica.SIunits.Torque tauLinear = if (PRef<=0) then 0 else tauRef*(wLinear/wRef)^power_w 
        "Torque corresponding with linear angular velocity range";
    end FrictionParameters;

* * * * *

![image15](Modelica.Electrical.Machines.Losses.FrictionParametersI.png) [Modelica.Electrical.Machines.Losses](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses).BrushParameters
===========================================================================================================================================================================================================

**Parameter record for brush losses**

Information
-----------

::

Parameter record for [threephase
Brush](Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.Brush)
and [DC
Brush](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Brush)
losses.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                         Name  Defau Description
                                     lt    
  ---------------------------- ----- ----- --------------------------------
  [Voltage](Modelica_SIunits.h V           Total voltage drop of brushes
  tml#Modelica.SIunits.Voltage             for currents \> ILinear [V]
  )                                        

  [Current](Modelica_SIunits.h ILine       Current indicating linear
  tml#Modelica.SIunits.Current ar          voltage region of brush voltage
  )                                        drop [A]
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record BrushParameters "Parameter record for brush losses"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Voltage V(start=0) 
        "Total voltage drop of brushes for currents > ILinear";
      parameter Modelica.SIunits.Current ILinear(start=0.01) 
        "Current indicating linear voltage region of brush voltage drop";
    end BrushParameters;

* * * * *

![image16](Modelica.Electrical.Machines.Losses.FrictionParametersI.png) [Modelica.Electrical.Machines.Losses](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses).StrayLoadParameters
===============================================================================================================================================================================================================

**Parameter record for stray load losses**

Information
-----------

::

Parameter record for
[threephase](Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoad)
and
[DC](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.StrayLoad)
stray load losses.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name  Defau Description
                                           lt    
  ---------------------------------- ----- ----- ---------------------------
  [Power](Modelica_SIunits.html#Mode PRef        Reference stray load losses
  lica.SIunits.Power)                            at IRef and wRef [W]

  [Current](Modelica_SIunits.html#Mo IRef        Reference RMS current that
  delica.SIunits.Current)                        PRef refers to [A]

  [AngularVelocity](Modelica_SIunits wRef        Reference angular velocity
  .html#Modelica.SIunits.AngularVelo             that PRef refers to [rad/s]
  city)                                          

  Real                               power 1     Exponent of stray load loss
                                     \_w         torque w.r.t. angular
                                                 velocity
  --------------------------------------------------------------------------

Modelica definition
-------------------

    record StrayLoadParameters "Parameter record for stray load  losses"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Power PRef(min=0, start=0) 
        "Reference stray load losses at IRef and wRef";
      parameter Modelica.SIunits.Current IRef(min=Modelica.Constants.small) 
        "Reference RMS current that PRef refers to";
      parameter Modelica.SIunits.AngularVelocity wRef(displayUnit="1/min", min=Modelica.Constants.small) 
        "Reference angular velocity that PRef refers to";
      parameter Real power_w(min=Modelica.Constants.small) = 1 
        "Exponent of stray load loss torque w.r.t. angular velocity";
      final parameter Modelica.SIunits.Torque tauRef = if (PRef<=0) then 0 else PRef / wRef 
        "Reference friction torque at reference angular velocity and reference current";
    end StrayLoadParameters;

* * * * *

![image17](Modelica.Electrical.Machines.Losses.FrictionParametersI.png) [Modelica.Electrical.Machines.Losses](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses).CoreParameters
==========================================================================================================================================================================================================

**Parameter record for core losses**

Information
-----------

::

Parameter record for [core losses of induction
machines](Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines.Core)
and [core losses of DC
machines](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Core).

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Nam Defa Description
                                  e   ult  
  ------------------------------- --- ---- -------------------------------
  Integer                         m        Number of phases (1 for DC, 3
                                           for induction machines)

  [Power](Modelica_SIunits.html#M PRe      Reference core losses at
  odelica.SIunits.Power)          f        reference inner voltage VRef
                                           [W]

  [Voltage](Modelica_SIunits.html VRe      Reference inner RMS voltage
  #Modelica.SIunits.Voltage)      f        that reference core losses PRef
                                           refer to [V]

  [AngularVelocity](Modelica_SIun wRe      Reference angular velocity that
  its.html#Modelica.SIunits.Angul f        reference core losses PRef
  arVelocity)                              refer to [rad/s]
  ------------------------------------------------------------------------

Modelica definition
-------------------

    record CoreParameters "Parameter record for core losses"
      extends Modelica.Icons.Record;
      parameter Integer m "Number of phases (1 for DC, 3 for induction machines)";
      parameter Modelica.SIunits.Power PRef(min=0, start=0) 
        "Reference core losses at reference inner voltage VRef";
      parameter Modelica.SIunits.Voltage VRef(min=Modelica.Constants.small) 
        "Reference inner RMS voltage that reference core losses PRef refer to";
      parameter Modelica.SIunits.AngularVelocity wRef(min=Modelica.Constants.small) 
        "Reference angular velocity that reference core losses PRef refer to";
      // In the current implementation ratioHysterisis = 0 since hysteresis losses are not implemented yet
      final parameter Real ratioHysteresis(min=0, max=1, start=0.775) = 0 
        "Ratio of hysteresis losses with respect to the total core losses at VRef and fRef";
      final parameter Modelica.SIunits.Conductance GcRef =  if (PRef<=0) then 0 else PRef / VRef^2 / m 
        "Reference conductance at reference frequency and voltage";
      final parameter Modelica.SIunits.AngularVelocity wMin=1e-6*wRef;
    end CoreParameters;

* * * * *

![image18](Modelica.Electrical.Machines.Losses.FrictionI.png) [Modelica.Electrical.Machines.Losses](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses).Friction
==========================================================================================================================================================================================

**Model of angular velocity dependent friction losses**

Information
-----------

::

The friction losses are considered by the equations

    tau / tauRef = (+w / wRef) ^ power_w    for w > +wLinear

> -   tau / tauRef = (-w / wRef) \^ power\_w for w < -wLinear

with

    tauRef * wRef = PRef

being the friction torque at the referenc angular velocity `wRef`. The
exponent `power_w` is approximately 1.5 for axial ventilation and
approximately 2.0 for radial ventilation.

For stability reasons the friction torque `tau` is approximated by a
linear curve

    tau / tauLinear = w / wLinear

with

    tauLinear = tauRef*(wLinear/wRef) ^ power_w

in the range `-wLinear ≤ w ≤ wLinear` with `wLinear = 0.001 * wRef`. The
relationship of torque and angular velocity is depicted in Fig. 1

  ------------------------------------------------------------------------
  ![image20](../Resources/Images/Electrical/Machines/frictiontorque.png)

  **Fig. 1:**Friction loss torque versus angular velocity for
  `power_w = 2`
  ------------------------------------------------------------------------

### See also

[FrictionParameters](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.FrictionParameters)

If it is desired to neglect friction losses, set
`frictionParameters.PRef = 0` (this is the default).

::

Extends from
[Machines.Interfaces.FlangeSupport](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.FlangeSupport)
(Shaft and support).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                            Name     Defa Description
                                                           ult  
  ----------------------------------------------- -------- ---- -----------
  [FrictionParameters](Modelica_Electrical_Machin friction      Friction
  es_Losses.html#Modelica.Electrical.Machines.Los Paramete      loss
  ses.FrictionParameters)                         rs            parameters
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                Name  Description
  --------------------------------------------------- ----- --------------
  [Flange\_a](Modelica_Mechanics_Rotational_Interface flang Shaft end
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla e     
  nge_a)                                                    

  [Flange\_a](Modelica_Mechanics_Rotational_Interface suppo Housing and
  s.html#Modelica.Mechanics.Rotational.Interfaces.Fla rt    support
  nge_a)                                                    

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interfa heatP Heat port to
  ces.html#Modelica.Thermal.HeatTransfer.Interfaces.H ort   model heat
  eatPort_a)                                                flow
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Friction "Model of angular velocity dependent friction losses"
      extends Machines.Interfaces.FlangeSupport;
      parameter FrictionParameters frictionParameters "Friction loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port to model heat flow";
    equation 
      if (frictionParameters.PRef<=0) then
        tau = 0;
      else
        tau = -smooth(1,if w >= +frictionParameters.wLinear then 
                          +frictionParameters.tauRef*(+w/frictionParameters.wRef)^frictionParameters.power_w else 
                        if w <= -frictionParameters.wLinear then 
                          -frictionParameters.tauRef*(-w/frictionParameters.wRef)^frictionParameters.power_w else 
                          frictionParameters.tauLinear*(w/frictionParameters.wLinear));
      end if;
      heatPort.Q_flow = tau*w;
    end Friction;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:03 2010.
