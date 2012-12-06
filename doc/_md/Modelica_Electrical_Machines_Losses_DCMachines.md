% Modelica.Electrical.Machines.Losses.DCMachines
% 
% 

[Modelica.Electrical.Machines.Losses](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses).DCMachines
==============================================================================================================================

**Loss models for DC machines**

Information
-----------

::

This package contains loss models used for DC machine models.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image4](Modelica.Electrical.Machines.Losses.DCMachine Model
  s.BrushS.png)                                           considering
  [Brush](Modelica_Electrical_Machines_Losses_DCMachines. voltage drop of
  html#Modelica.Electrical.Machines.Losses.DCMachines.Bru carbon brushes
  sh)                                                     

  ![image5](Modelica.Electrical.Machines.Losses.DCMachine Voltage drop of
  s.brushVoltageDropS.png)                                carbon brushes
  [brushVoltageDrop](Modelica_Electrical_Machines_Losses_ 
  DCMachines.html#Modelica.Electrical.Machines.Losses.DCM 
  achines.brushVoltageDrop)                               

  ![image6](Modelica.Electrical.Machines.Losses.DCMachine Model of stray
  s.StrayLoadS.png)                                       load losses
  [StrayLoad](Modelica_Electrical_Machines_Losses_DCMachi dependent on
  nes.html#Modelica.Electrical.Machines.Losses.DCMachines current and
  .StrayLoad)                                             speed

  ![image7](Modelica.Electrical.Machines.Losses.DCMachine Model of core
  s.CoreS.png)                                            losses
  [Core](Modelica_Electrical_Machines_Losses_DCMachines.h 
  tml#Modelica.Electrical.Machines.Losses.DCMachines.Core 
  )                                                       
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Electrical.Machines.Losses.DCMachines.BrushI.png) [Modelica.Electrical.Machines.Losses.DCMachines](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines).Brush
===============================================================================================================================================================================================================================

**Model considering voltage drop of carbon brushes**

Information
-----------

::

Model of voltage drop and losses of carbon brushes. For currents between
`-ILinear` and `ILinear` the voltage drop shows a linear behavior as
depicted in Fig. 1. For positive currents greater or equal than
`ILinear` the voltage drop equals `V`. For negative currents less or
equal than `-ILinear` the voltage drop equals `-V`.

  -------------------------------------------------------
  ![image10](../Resources/Images/Electrical/Machines/brus
  h.png)

  **Fig. 1:**Model of voltage drop of carbon brushes
  -------------------------------------------------------

### Note:

The voltage drop `v` is the total voltage drop of all series connected
brushes.

### See also

[BrushParameters](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.BrushParameters)

If it is desired to neglect brush losses, set `brushParameters.V = 0`
(this is the default).

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name     Defa Descriptio
                                                            ult  n
  ------------------------------------------------ -------- ---- ----------
  [BrushParameters](Modelica_Electrical_Machines_L brushPar      Brush loss
  osses.html#Modelica.Electrical.Machines.Losses.B ameters       parameters
  rushParameters)                                                
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name Description
  ------------------------------------------- ---- ------------------------
  [PositivePin](Modelica_Electrical_Analog_In p    Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In      p.v \> n.v for positive
  terfaces.PositivePin)                            voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n    Negative pin
  terfaces.html#Modelica.Electrical.Analog.In      
  terfaces.NegativePin)                            

  [HeatPort\_a](Modelica_Thermal_HeatTransfer heat Heat port of the
  _Interfaces.html#Modelica.Thermal.HeatTrans Port resistor
  fer.Interfaces.HeatPort_a)                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Brush "Model considering voltage drop of carbon brushes"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Machines.Losses.BrushParameters brushParameters 
        "Brush loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port of the resistor";
    equation 
      if (brushParameters.V<=0) then
        v = 0;
      else
        v = smooth(1, if (i>+brushParameters.ILinear) then +brushParameters.V else 
                      if (i<-brushParameters.ILinear) then -brushParameters.V else 
                      brushParameters.V*i/brushParameters.ILinear);
      end if;
      heatPort.Q_flow = -v*i;
    end Brush;

* * * * *

![image11](Modelica.Electrical.Machines.Losses.DCMachines.brushVoltageDropI.png) [Modelica.Electrical.Machines.Losses.DCMachines](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines).brushVoltageDrop
======================================================================================================================================================================================================================================================

**Voltage drop of carbon brushes**

Information
-----------

::

Calculates the voltage drop of carbon brushes, according to
[Brush](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Brush)
losses, e.g., used for initial equations.

::

Extends from
[Modelica.Icons.Function](Modelica_Icons.html#Modelica.Icons.Function)
(Icon for functions).

Inputs
------

  -------------------------------------------------------------------------
  Type                                             Name     Defa Descriptio
                                                            ult  n
  ------------------------------------------------ -------- ---- ----------
  [BrushParameters](Modelica_Electrical_Machines_L brushPar      Brush loss
  osses.html#Modelica.Electrical.Machines.Losses.B ameters       parameters
  rushParameters)                                                

  [Current](Modelica_SIunits.html#Modelica.SIunits i             Actual
  .Current)                                                      current
                                                                 [A]
  -------------------------------------------------------------------------

Outputs
-------

  -------------------------------------------------------------------------
  Type                                              Name   Description
  ------------------------------------------------- ------ ----------------
  [Voltage](Modelica_SIunits.html#Modelica.SIunits. v      Voltage drop [V]
  Voltage)                                                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    function brushVoltageDrop "Voltage drop of carbon brushes"
      extends Modelica.Icons.Function;
      input Machines.Losses.BrushParameters
        brushParameters "Brush loss parameters";
      input Modelica.SIunits.Current i "Actual current";
      output Modelica.SIunits.Voltage v "Voltage drop";
    algorithm 
      if (brushParameters.V<=0) then
        v := 0;
      else
        v :=if (i > +brushParameters.ILinear) then +brushParameters.V else 
            if (i < -brushParameters.ILinear) then -brushParameters.V else 
                     brushParameters.V*i/brushParameters.ILinear;
      end if;
    end brushVoltageDrop;

* * * * *

![image12](Modelica.Electrical.Machines.Losses.DCMachines.StrayLoadI.png) [Modelica.Electrical.Machines.Losses.DCMachines](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines).StrayLoad
========================================================================================================================================================================================================================================

**Model of stray load losses dependent on current and speed**

Information
-----------

::

The stray load loss torque is

    tau = PRef/wRef * (i/IRef)^2 * (w/wRef)^power_w

where `i` is the current of the machine and `w` is the actual angular
velocity. The dependency of the stray load torque on the angular
velocity is modeled by the exponent `power_w`.

The stray load losses are modeled such way that they do not cause a
voltage drop in the electric circuit. Instead, the dissipated losses are
considered through an equivalent braking torque at the shaft.

### See also

[StrayLoad
parameters](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters)

If it is desired to neglect stray load losses, set
`strayLoadParameters.PRef = 0` (this is the default).

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n),
[Machines.Interfaces.FlangeSupport](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.FlangeSupport)
(Shaft and support).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                            Name     Defa Description
                                                           ult  
  ----------------------------------------------- -------- ---- -----------
  [StrayLoadParameters](Modelica_Electrical_Machi strayLoa      Stray load
  nes_Losses.html#Modelica.Electrical.Machines.Lo dParamet      loss
  sses.StrayLoadParameters)                       ers           parameters
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name Description
  ------------------------------------------- ---- ------------------------
  [PositivePin](Modelica_Electrical_Analog_In p    Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In      p.v \> n.v for positive
  terfaces.PositivePin)                            voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n    Negative pin
  terfaces.html#Modelica.Electrical.Analog.In      
  terfaces.NegativePin)                            

  [Flange\_a](Modelica_Mechanics_Rotational_I flan Shaft end
  nterfaces.html#Modelica.Mechanics.Rotationa ge   
  l.Interfaces.Flange_a)                           

  [Flange\_a](Modelica_Mechanics_Rotational_I supp Housing and support
  nterfaces.html#Modelica.Mechanics.Rotationa ort  
  l.Interfaces.Flange_a)                           

  [HeatPort\_a](Modelica_Thermal_HeatTransfer heat Heat port for modeling
  _Interfaces.html#Modelica.Thermal.HeatTrans Port the heat flow
  fer.Interfaces.HeatPort_a)                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model StrayLoad 
      "Model of stray load losses dependent on current and speed"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      extends Machines.Interfaces.FlangeSupport;
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters 
        "Stray load loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port for modeling the heat flow";
    equation 
      v = 0;
      if (strayLoadParameters.PRef<=0) then
        tau = 0;
      else
        tau = -strayLoadParameters.tauRef*(i/strayLoadParameters.IRef)^2*
               smooth(1,if w >= 0 then +(+w/strayLoadParameters.wRef)^strayLoadParameters.power_w else 
                                       -(-w/strayLoadParameters.wRef)^strayLoadParameters.power_w);
      end if;
      heatPort.Q_flow = tau*w;
    end StrayLoad;

* * * * *

![image13](Modelica.Electrical.Machines.Losses.DCMachines.CoreI.png) [Modelica.Electrical.Machines.Losses.DCMachines](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines).Core
==============================================================================================================================================================================================================================

**Model of core losses**

Information
-----------

::

Core losses can be separated into *eddy current* and *hysteresis*
losses. The total core losses can thus be expressed as

    p = PRef * (ratioHysteresis * (wRef / w) + 1 - ratioHysteresis) * (v / VRef)^2

where `w` is the actual angular velocity and `v` is the actual voltage.
The term `ratioHysteresis` is the ratio of the hysteresis losses with
respect to the total core losses for reference inner voltage and
reference angular velocity.

For the voltage and angular velocity range with respect to Fig. 1, the
dependency of total core losses on the parameter `ratioHysteresis` is
depicted in Fig. 2.

  -----------------------------------------------
  ![image15](../Resources/Images/Electrical/Machi
  nes/corelossesVw.png)

  **Fig. 1:**Voltage versus angular velocity
  -----------------------------------------------

  ------------------------------------------------------------------------
  ![image17](../Resources/Images/Electrical/Machines/corelossesPcw.png)

  **Fig. 2:**Core losses versus angular velocity with parameter
  `ratioHysteresis`
  ------------------------------------------------------------------------

### Note

In the current implementation it is assumed that `ratioHysteresis = 0`.
This parameter cannot be changed due to compatibility reasons.

### See also

[Core loss
parameters](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.CoreParameters)

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name    Defa Description
                                                      ult  
  ------------------------------------------- ------- ---- ----------------
  [CoreParameters](Modelica_Electrical_Machin corePar      Armature core
  es_Losses.html#Modelica.Electrical.Machines ameters      losses
  .Losses.CoreParameters)                                  

  Losses                                                   

  [AngularVelocity](Modelica_SIunits.html#Mod w            Remagnetization
  elica.SIunits.AngularVelocity)                           angular velocity
                                                           [rad/s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                        Name Description
  ------------------------------------------- ---- ------------------------
  [PositivePin](Modelica_Electrical_Analog_In p    Positive pin (potential
  terfaces.html#Modelica.Electrical.Analog.In      p.v \> n.v for positive
  terfaces.PositivePin)                            voltage drop v)

  [NegativePin](Modelica_Electrical_Analog_In n    Negative pin
  terfaces.html#Modelica.Electrical.Analog.In      
  terfaces.NegativePin)                            

  [HeatPort\_a](Modelica_Thermal_HeatTransfer heat Heat port for modeling
  _Interfaces.html#Modelica.Thermal.HeatTrans Port the heat flow
  fer.Interfaces.HeatPort_a)                       
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Core "Model of core losses"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Machines.Losses.CoreParameters coreParameters(final m=1) 
        "Armature core losses";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port for modeling the heat flow";
      input Modelica.SIunits.AngularVelocity w "Remagnetization angular velocity";
      Modelica.SIunits.Conductance Gc "Variable core loss conductance";
    protected 
      Modelica.SIunits.AngularVelocity wLimit = noEvent(max(noEvent(abs(w)),coreParameters.wMin)) 
        "Limited angular velocity";
    equation 
      if (coreParameters.PRef<=0) then
        Gc = 0;
        i = 0;
      else
        Gc = coreParameters.GcRef;
        // * (coreParameters.wRef/wLimit*coreParameters.ratioHysteresis + 1 - coreParameters.ratioHysteresis);
        i = Gc*v;
      end if;
      heatPort.Q_flow = -v*i;
    end Core;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:04 2010.
