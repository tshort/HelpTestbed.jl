% Modelica.Electrical.Machines.Losses.InductionMachines
% 
% 

[Modelica.Electrical.Machines.Losses](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses).InductionMachines
=====================================================================================================================================

**Loss models for induction machines**

Information
-----------

::

This package contains loss models used for induction machine models.

::

Extends from
[Modelica.Icons.VariantsPackage](Modelica_Icons_VariantsPackage.html#Modelica.Icons.VariantsPackage)
(Icon for package containing variants).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image3](Modelica.Electrical.Machines.Losses.Induction Model
  Machines.BrushS.png)                                    considering
  [Brush](Modelica_Electrical_Machines_Losses_InductionMa voltage drop of
  chines.html#Modelica.Electrical.Machines.Losses.Inducti carbon brushes
  onMachines.Brush)                                       

  ![image4](Modelica.Electrical.Machines.Losses.Induction Model of stray
  Machines.StrayLoadS.png)                                load losses
  [StrayLoad](Modelica_Electrical_Machines_Losses_Inducti dependent on
  onMachines.html#Modelica.Electrical.Machines.Losses.Ind current and
  uctionMachines.StrayLoad)                               speed

  ![image5](Modelica.Electrical.Machines.Losses.Induction Model of core
  Machines.CoreS.png)                                     losses
  [Core](Modelica_Electrical_Machines_Losses_InductionMac 
  hines.html#Modelica.Electrical.Machines.Losses.Inductio 
  nMachines.Core)                                         
  ------------------------------------------------------------------------

* * * * *

![image6](Modelica.Electrical.Machines.Losses.InductionMachines.BrushI.png) [Modelica.Electrical.Machines.Losses.InductionMachines](Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines).Brush
===========================================================================================================================================================================================================================================================

**Model considering voltage drop of carbon brushes**

Information
-----------

::

Model of voltage drop and losses of carbon brushes. This threephase
model uses three [DC
Brush](Modelica_Electrical_Machines_Losses_DCMachines.html#Modelica.Electrical.Machines.Losses.DCMachines.Brush)
loss models.

::

Extends from
[Modelica.Electrical.MultiPhase.Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                             Name     Defa Descriptio
                                                            ult  n
  ------------------------------------------------ -------- ---- ----------
  Integer                                          m        3    Number of
                                                                 phases

  [BrushParameters](Modelica_Electrical_Machines_L brushPar      Brush loss
  osses.html#Modelica.Electrical.Machines.Losses.B ameters       parameters
  rushParameters)                                                
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name  Description
  ----------------------------------------------------- ----- ------------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfa plug\ 
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Po _p    
  sitivePlug)                                                 

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfa plug\ 
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Ne _n    
  gativePlug)                                                 

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interface heatP Heat port of
  s.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatP ort   the resistor
  ort_a)                                                      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Brush "Model considering voltage drop of carbon brushes"
      extends Modelica.Electrical.MultiPhase.Interfaces.TwoPlug(final m=3);
      parameter Machines.Losses.BrushParameters brushParameters 
        "Brush loss parameters";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port of the resistor";
      DCMachines.Brush brush[3](each final brushParameters=brushParameters);
    equation 
      connect(plug_p.pin, brush.p);
      connect(brush.n, plug_n.pin);
      for j in 1:m loop
        connect(brush[j].heatPort, heatPort);
      end for;
    end Brush;

* * * * *

![image7](Modelica.Electrical.Machines.Losses.InductionMachines.StrayLoadI.png) [Modelica.Electrical.Machines.Losses.InductionMachines](Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines).StrayLoad
===================================================================================================================================================================================================================================================================

**Model of stray load losses dependent on current and speed**

Information
-----------

::

Stray load losses are modeled similar to standards EN 60034-2 and IEEE
512, i.e., they are dependent on square of current, but without scaling
them to zero at no-load current.

For an estimation of dependency on varying angular velocity see:
  ~ W.  Lang, Über die Bemessung verlustarmer Asynchronmotoren mit

Käfigläufer für Pulsumrichterspeisung, Doctoral Thesis, Technical
University of Vienna, 1984.

The stray load losses are modeled such way that they do not cause a
voltage drop in the electric circuit. Instead, the dissipated losses are
considered through an equivalent braking torque at the shaft.

The stray load loss torque is

    tau = PRef/wRef * (i/IRef)^2 * (w/wRef)^power_w

where `i` is the current of the machine and `w` is the actual angular
velocity. The dependency of the stray load torque on the angular
velocity is modeled by the exponent `power_w`.

### See also

[StrayLoad
parameters](Modelica_Electrical_Machines_Losses.html#Modelica.Electrical.Machines.Losses.StrayLoadParameters)

If it is desired to neglect stray load losses, set
`strayLoadParameters.PRef = 0` (this is the default).

::

Extends from
[Modelica.Electrical.MultiPhase.Interfaces.OnePort](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.OnePort)
(Component with two electrical plugs and currents from plug\_p to
plug\_n),
[Machines.Interfaces.FlangeSupport](Modelica_Electrical_Machines_Interfaces.html#Modelica.Electrical.Machines.Interfaces.FlangeSupport)
(Shaft and support).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                            Name     Defa Description
                                                           ult  
  ----------------------------------------------- -------- ---- -----------
  Integer                                         m        3    Number of
                                                                phases

  [StrayLoadParameters](Modelica_Electrical_Machi strayLoa      Stray load
  nes_Losses.html#Modelica.Electrical.Machines.Lo dParamet      loss
  sses.StrayLoadParameters)                       ers           parameters
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Name  Description
  -------------------------------------------------- ----- ----------------
  [PositivePlug](Modelica_Electrical_MultiPhase_Inte plug\ 
  rfaces.html#Modelica.Electrical.MultiPhase.Interfa _p    
  ces.PositivePlug)                                        

  [NegativePlug](Modelica_Electrical_MultiPhase_Inte plug\ 
  rfaces.html#Modelica.Electrical.MultiPhase.Interfa _n    
  ces.NegativePlug)                                        

  [Flange\_a](Modelica_Mechanics_Rotational_Interfac flang Shaft end
  es.html#Modelica.Mechanics.Rotational.Interfaces.F e     
  lange_a)                                                 

  [Flange\_a](Modelica_Mechanics_Rotational_Interfac suppo Housing and
  es.html#Modelica.Mechanics.Rotational.Interfaces.F rt    support
  lange_a)                                                 

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Interf heatP Heat port for
  aces.html#Modelica.Thermal.HeatTransfer.Interfaces ort   modeling the
  .HeatPort_a)                                             heat flow
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model StrayLoad 
      "Model of stray load losses dependent on current and speed"
      extends Modelica.Electrical.MultiPhase.Interfaces.OnePort(final m=3);
      extends Machines.Interfaces.FlangeSupport;
      parameter Machines.Losses.StrayLoadParameters strayLoadParameters 
        "Stray load loss parameters";
      Modelica.SIunits.Current iRMS=Machines.SpacePhasors.Functions.quasiRMS(i);
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort 
        "Heat port for modeling the heat flow";
    equation 
      v = zeros(m);
      if (strayLoadParameters.PRef<=0) then
        tau = 0;
      else
        tau = -strayLoadParameters.tauRef*(iRMS/strayLoadParameters.IRef)^2*
               smooth(1,if w >= 0 then +(+w/strayLoadParameters.wRef)^strayLoadParameters.power_w else 
                                       -(-w/strayLoadParameters.wRef)^strayLoadParameters.power_w);
      end if;
      heatPort.Q_flow = tau*w;
    end StrayLoad;

* * * * *

![image8](Modelica.Electrical.Machines.Losses.InductionMachines.CoreI.png) [Modelica.Electrical.Machines.Losses.InductionMachines](Modelica_Electrical_Machines_Losses_InductionMachines.html#Modelica.Electrical.Machines.Losses.InductionMachines).Core
=========================================================================================================================================================================================================================================================

**Model of core losses**

Information
-----------

::

Core losses can be separated into **eddy current** and **hysteresis**
losses. The total core losses can thus be expressed as

    P = PRef * (ratioHysteresis * (wRef / w) + 1 - ratioHysteresis) * (V / VRef)^2

where `w` is the actual angular remagnetization velocity and `V` is the
actual voltage. The term `ratioHysteresis` is the ratio of the
hysteresis losses with respect to the total core losses for the
reference voltage and frequency.

In the current implemenation hysteresis losses are **not considered**
since complex numbers are not provided in Modelica. Therefore,
implicitly `ratioHysteresis = 0` is set. For the voltage and frequency
range with respect to Fig. 1, the dependency of total core losses on the
parameter `ratioHysteresis` is depicted in Fig. 2. The current
implementation has thus the drawback over a model that considers
`ratioHysteresis > 0`:

-   underestimation of the losses in the constant field region (`w` <
    `wRef`)
-   overestimation of the losses in the field weakening region (`w` \>
    `wRef`)

  -----------------------------------------------
  ![image10](../Resources/Images/Electrical/Machi
  nes/corelossesVw.png)

  **Fig. 1:**Voltage versus angular velocity
  -----------------------------------------------

  ------------------------------------------------------------------------
  ![image12](../Resources/Images/Electrical/Machines/corelossesPcw.png)

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

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name    Defa Description
                                                      ult  
  ------------------------------------------- ------- ---- ----------------
  [CoreParameters](Modelica_Electrical_Machin corePar      
  es_Losses.html#Modelica.Electrical.Machines ameters      
  .Losses.CoreParameters)                                  

  Losses                                                   

  [AngularVelocity](Modelica_SIunits.html#Mod w            Remagnetization
  elica.SIunits.AngularVelocity)                           angular velocity
                                                           [rad/s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name   Description
  ------------------------------------------------ ------ ----------------
  [SpacePhasor](Modelica_Electrical_Machines_Inter spaceP 
  faces.html#Modelica.Electrical.Machines.Interfac hasor  
  es.SpacePhasor)                                         

  [HeatPort\_a](Modelica_Thermal_HeatTransfer_Inte heatPo Heat port for
  rfaces.html#Modelica.Thermal.HeatTransfer.Interf rt     modeling the
  aces.HeatPort_a)                                        heat flow
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Core "Model of core losses"
      parameter Machines.Losses.CoreParameters coreParameters(final m=3);
      Machines.Interfaces.SpacePhasor spacePhasor;
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
        spacePhasor.i_ = zeros(2);
      else
        Gc = coreParameters.GcRef;
        //  * (coreParameters.wRef/wsLimit*coreParameters.ratioHysteresis + 1 - coreParameters.ratioHysteresis);
        spacePhasor.i_ = Gc*spacePhasor.v_;
      end if;
      heatPort.Q_flow = -3/2*(+spacePhasor.v_[1]*spacePhasor.i_[1]+spacePhasor.v_[2]*spacePhasor.i_[2]);
    end Core;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:04 2010.
