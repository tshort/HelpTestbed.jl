% Modelica.Electrical.Machines.Utilities
% 
% 

[Modelica.Electrical.Machines](Modelica_Electrical_Machines.html#Modelica.Electrical.Machines).Utilities
========================================================================================================

**Library with auxiliary models for testing**

Information
-----------

::

This package contains utility components for testing examples.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image8](Modelica.Electrical.Machines.Utilities.VfContro Voltage-Freque
  llerS.png)                                                ncy-Controller
  [VfController](Modelica_Electrical_Machines_Utilities.htm 
  l#Modelica.Electrical.Machines.Utilities.VfController)    

  ![image9](Modelica.Electrical.Machines.Utilities.CurrentC Current
  ontrollerS.png)                                           controller
  [CurrentController](Modelica_Electrical_Machines_Utilitie 
  s.html#Modelica.Electrical.Machines.Utilities.CurrentCont 
  roller)                                                   

  ![image10](Modelica.Electrical.Machines.Utilities.SwitchY Y-D-switch
  DS.png)                                                   
  [SwitchYD](Modelica_Electrical_Machines_Utilities.html#Mo 
  delica.Electrical.Machines.Utilities.SwitchYD)            

  ![image11](Modelica.Electrical.Machines.Utilities.Termina Terminal box
  lBoxS.png)                                                Y/D-connection
  [TerminalBox](Modelica_Electrical_Machines_Utilities.html 
  #Modelica.Electrical.Machines.Utilities.TerminalBox)      

  ![image12](Modelica.Electrical.Machines.Utilities.Switche Rheostat which
  dRheostatS.png)                                           is shortened
  [SwitchedRheostat](Modelica_Electrical_Machines_Utilities after a given
  .html#Modelica.Electrical.Machines.Utilities.SwitchedRheo time
  stat)                                                     

  ![image13](Modelica.Electrical.Machines.Utilities.RampedR Rheostat with
  heostatS.png)                                             linearly
  [RampedRheostat](Modelica_Electrical_Machines_Utilities.h decreasing
  tml#Modelica.Electrical.Machines.Utilities.RampedRheostat resistance
  )                                                         

  ![image14](Modelica.Electrical.Machines.Utilities.Transfo Calculates
  rmerDataS.png)                                            Impedances
  [TransformerData](Modelica_Electrical_Machines_Utilities. from nominal
  html#Modelica.Electrical.Machines.Utilities.TransformerDa values
  ta)                                                       

  ![image15](Modelica.Electrical.Machines.Utilities.Transfo Computes
  rmerDataS.png)                                            machine
  [SynchronousMachineData](Modelica_Electrical_Machines_Uti parameter from
  lities.html#Modelica.Electrical.Machines.Utilities.Synchr usual
  onousMachineData)                                         datasheet
  ------------------------------------------------------------------------

* * * * *

![image16](Modelica.Electrical.Machines.Utilities.VfControllerI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).VfController
==============================================================================================================================================================================================================

**Voltage-Frequency-Controller**

Information
-----------

::

Simple Voltage-Frequency-Controller.
  ~ Amplitude of voltage is linear dependent (VNominal/fNominal) on

frequency (input signal "u"), but limited by VNominal (nominal RMS
voltage per phase). m sine-waves with amplitudes as described above are
provided as output signal "y". The sine-waves are intended to feed a
m-phase SignalVoltage. Phase shifts between sine-waves may be choosen by
the user; default values are *(k-1)/m\*pi for k in 1:m*.

::

Extends from
[Modelica.Blocks.Interfaces.SIMO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SIMO)
(Single Input Multiple Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                  Name    Defaul Description
                                                t      
  ------------------------------------- ------- ------ --------------------
  Integer                               nout    m      Number of outputs

  Integer                               m       3      Number of phases

  [Voltage](Modelica_SIunits.html#Model VNomina        Nominal RMS voltage
  ica.SIunits.Voltage)                  l              per phase [V]

  [Frequency](Modelica_SIunits.html#Mod fNomina        Nominal frequency
  elica.SIunits.Frequency)              l              [Hz]

  [Angle](Modelica_SIunits.html#Modelic BasePha 0      Common phase shift
  a.SIunits.Angle)                      se             [rad]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  input                                           u     Connector of Real
  [RealInput](Modelica_Blocks_Interfaces.html#Mod       input signal
  elica.Blocks.Interfaces.RealInput)                    

  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block VfController "Voltage-Frequency-Controller"
      extends Modelica.Blocks.Interfaces.SIMO(final nout=m);
      constant Modelica.SIunits.Angle pi=Modelica.Constants.pi;
      parameter Integer m=3 "Number of phases";
      parameter Modelica.SIunits.Voltage VNominal "Nominal RMS voltage per phase";
      parameter Modelica.SIunits.Frequency fNominal "Nominal frequency";
      parameter Modelica.SIunits.Angle BasePhase=0 "Common phase shift";
      output Modelica.SIunits.Angle x(start=0, fixed=true) "Integrator state";
      output Modelica.SIunits.Voltage amplitude;
    equation 
    //amplitude = sqrt(2)*VNominal*min(abs(u)/fNominal, 1);
      amplitude = sqrt(2)*VNominal*(if abs(u)<fNominal then abs(u)/fNominal else 1);
      der(x) = 2*pi*u;
      y = {amplitude*sin(x + BasePhase - (k - 1)*2/m*pi) for k in 1:m};
    end VfController;

* * * * *

![image17](Modelica.Electrical.Machines.Utilities.CurrentControllerI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).CurrentController
========================================================================================================================================================================================================================

**Current controller**

Information
-----------

::

Simple Current-Controller.
  ~ The desired rms values of d- and q-component of the space phasor in

rotor fixed coordinate system are given by inputs "id\_rms" and
"iq\_rms". Using the given rotor position (input "phi"), the correct
threephase currents (output "i[3]")are calculated. They can be used to
feed a current source which in turn feeds an induction machine.

::

Extends from
[Modelica.Blocks.Interfaces.MO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MO)
(Multiple Output continuous control block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ --------------------------
  Integer      p                      Number of poles pairs
  Integer      nout      m            Number of outputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  

  input                                           id\_r 
  [RealInput](Modelica_Blocks_Interfaces.html#Mod ms    
  elica.Blocks.Interfaces.RealInput)                    

  input                                           iq\_r 
  [RealInput](Modelica_Blocks_Interfaces.html#Mod ms    
  elica.Blocks.Interfaces.RealInput)                    

  input                                           phi   
  [RealInput](Modelica_Blocks_Interfaces.html#Mod       
  elica.Blocks.Interfaces.RealInput)                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CurrentController "Current controller"
      constant Integer m=3 "Number of phases";
      parameter Integer p "Number of poles pairs";
      extends Modelica.Blocks.Interfaces.MO(final nout=m);
      Modelica.Blocks.Interfaces.RealInput id_rms;
      Modelica.Blocks.Interfaces.RealInput iq_rms;
      Modelica.Blocks.Interfaces.RealInput phi;
      Modelica.Blocks.Math.Gain toPeak_d(k=sqrt(2));
      Modelica.Blocks.Math.Gain toPeak_q(k=sqrt(2));
      Modelica.Blocks.Math.Gain toGamma(k=-p);
      Modelica.Electrical.Machines.SpacePhasors.Blocks.Rotator rotator;
      Modelica.Blocks.Sources.Constant i0(k=0);
      Modelica.Electrical.Machines.SpacePhasors.Blocks.FromSpacePhasor fromSpacePhasor;
    equation 
      connect(iq_rms, toPeak_q.u);
      connect(phi, toGamma.u);
      connect(rotator.angle, toGamma.y);
      connect(rotator.y, fromSpacePhasor.u);
      connect(toPeak_d.u, id_rms);
      connect(toPeak_d.y, rotator.u[1]);
      connect(toPeak_q.y, rotator.u[2]);
      connect(i0.y, fromSpacePhasor.zero);
      connect(fromSpacePhasor.y, y);
    end CurrentController;

* * * * *

![image18](Modelica.Electrical.Machines.Utilities.SwitchYDI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).SwitchYD
======================================================================================================================================================================================================

**Y-D-switch**

Information
-----------

::

Simple Star-Delta-switch.
  ~ If *control* is false, plug\_sp and plug\_sn are star connected and

plug\_sp connected to the supply plug.
  ~ If *control* is true, plug\_sp and plug\_sn are delta connected and

they are connected to the supply plug.

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ ------------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfa plugSu To grid
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Po pply   
  sitivePlug)                                                  

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfa plug\_ To positive
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Po sp     stator plug
  sitivePlug)                                                  

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfa plug\_ To negative
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Ne sn     stator plug
  gativePlug)                                                  

  input                                                 contro 
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modeli l[m]   
  ca.Blocks.Interfaces.BooleanInput)                           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SwitchYD "Y-D-switch"
      parameter Integer m=3 "Number of phases";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plugSupply(final m=m) 
        "To grid";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_sp(final m=m) 
        "To positive stator plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_sn(final m=m) 
        "To negative stator plug";
      Modelica.Electrical.MultiPhase.Basic.Star star(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Delta delta(final m=m);
      Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitch
        idealCommutingSwitch(                                                        final m=m);
      Modelica.Blocks.Interfaces.BooleanInput control[m];
    equation 
      connect(delta.plug_p, plugSupply);
      connect(delta.plug_p, plug_sp);
      connect(idealCommutingSwitch.plug_n2, delta.plug_n);
      connect(idealCommutingSwitch.plug_n1, star.plug_p);
      connect(idealCommutingSwitch.plug_p,plug_sn);
      connect(control, idealCommutingSwitch.control);
    end SwitchYD;

* * * * *

![image19](Modelica.Electrical.Machines.Utilities.TerminalBoxI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).TerminalBox
============================================================================================================================================================================================================

**Terminal box Y/D-connection**

Information
-----------

::

TerminalBox: at the bottom connected to both machine plugs, connect at
the top to the grid as usual, choosing Y-connection (StarDelta=Y) or
D-connection (StarDelta=D).

::

Parameters
----------

  Type        Name                   Default     Description
  ----------- ---------------------- ----------- -------------------------
  Integer     m                      3           Number of phases
  String      terminalConnection                 Choose Y=star/D=delta

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                  Name   Description
  ----------------------------------------------------- ------ ------------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfa plug\_ To positive
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Po sp     stator plug
  sitivePlug)                                                  

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfa plug\_ To negative
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Ne sn     stator plug
  gativePlug)                                                  

  [PositivePlug](Modelica_Electrical_MultiPhase_Interfa plugSu To grid
  ces.html#Modelica.Electrical.MultiPhase.Interfaces.Po pply   
  sitivePlug)                                                  

  [NegativePin](Modelica_Electrical_Analog_Interfaces.h starpo 
  tml#Modelica.Electrical.Analog.Interfaces.NegativePin int    
  )                                                            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model TerminalBox "Terminal box Y/D-connection"
      parameter Integer m=3 "Number of phases";
      parameter String terminalConnection(start="Y") "Choose Y=star/D=delta";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_sp(final m=m) 
        "To positive stator plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_sn(final m=m) 
        "To negative stator plug";
      Modelica.Electrical.MultiPhase.Basic.Star star(final m=m) if (terminalConnection<>"D");
      Modelica.Electrical.MultiPhase.Basic.Delta delta(final m=m) if (terminalConnection=="D");
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plugSupply(final m=m) 
        "To grid";
      Modelica.Electrical.Analog.Interfaces.NegativePin starpoint if (terminalConnection<>"D");
    equation 
      connect(plug_sn, star.plug_p);
      connect(plug_sn, delta.plug_n);
      connect(delta.plug_p,plug_sp);
      connect(plug_sp, plugSupply);
      connect(star.pin_n, starpoint);
    end TerminalBox;

* * * * *

![image20](Modelica.Electrical.Machines.Utilities.SwitchedRheostatI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).SwitchedRheostat
======================================================================================================================================================================================================================

**Rheostat which is shortened after a given time**

Information
-----------

::

Switched rheostat, used for starting asynchronous induction motors with
slipring rotor:

The external rotor resistance `RStart` is shortened at time `tStart`.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name  Defau Description
                                           lt    
  ---------------------------------- ----- ----- --------------------------
  Integer                            m     3     Number of phases

  [Resistance](Modelica_SIunits.html RStar       Starting resistance [Ohm]
  #Modelica.SIunits.Resistance)      t           

  [Time](Modelica_SIunits.html#Model tStar       Duration of switching on
  ica.SIunits.Time)                  t           the starting resistor [s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- -----------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfac plug\ To positive
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Posi _p    rotor plug
  tivePlug)                                                    

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfac plug\ To negative
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Nega _n    rotor plug
  tivePlug)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SwitchedRheostat 
      "Rheostat which is shortened after a given time"
      parameter Integer m= 3 "Number of phases";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m) 
        "To positive rotor plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m) 
        "To negative rotor plug";
      parameter Modelica.SIunits.Resistance RStart "Starting resistance";
      parameter Modelica.SIunits.Time tStart 
        "Duration of switching on the starting resistor";
      Modelica.Electrical.MultiPhase.Basic.Star star(final m=m);
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Electrical.MultiPhase.Ideal.IdealCommutingSwitch
        idealCommutingSwitch(final m=m);
      Modelica.Electrical.MultiPhase.Basic.Resistor rheostat(
        final m=m,
        final R=fill(RStart, m));
      Modelica.Electrical.MultiPhase.Basic.Star starRheostat(final m=m);
      Modelica.Blocks.Sources.BooleanStep booleanStep[m](
        final startTime=fill(tStart, m),
        final startValue=fill(false, m));
    equation 

      connect(plug_p, idealCommutingSwitch.plug_p);
      connect(idealCommutingSwitch.plug_n2, plug_n);
      connect(rheostat.plug_p, idealCommutingSwitch.plug_n1);
      connect(idealCommutingSwitch.plug_n2, star.plug_p);
      connect(rheostat.plug_n, starRheostat.plug_p);
      connect(starRheostat.pin_n, star.pin_n);
      connect(star.pin_n, ground.p);
      connect(booleanStep.y, idealCommutingSwitch.control);
    end SwitchedRheostat;

* * * * *

![image21](Modelica.Electrical.Machines.Utilities.RampedRheostatI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).RampedRheostat
==================================================================================================================================================================================================================

**Rheostat with linearly decreasing resistance**

Information
-----------

::

Ramped rheostat, used for starting asynchronous induction motors with
slipring rotor:

The external rotor resistance `RStart` is reduced to zero, starting at
time `tStart` with a linear ramp `tRamp`.

::

Parameters
----------

  --------------------------------------------------------------------------
  Type                                 Name  Defaul Description
                                             t      
  ------------------------------------ ----- ------ ------------------------
  Integer                              m     3      Number of phases

  [Resistance](Modelica_SIunits.html#M RStar        Starting resistance
  odelica.SIunits.Resistance)          t            [Ohm]

  [Time](Modelica_SIunits.html#Modelic tStar        Time instance of
  a.SIunits.Time)                      t            reducing the rheostat
                                                    [s]

  [Time](Modelica_SIunits.html#Modelic tRamp        Duration of ramp [s]
  a.SIunits.Time)                                   
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                   Name  Description
  ------------------------------------------------------ ----- -----------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfac plug\ To positive
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Posi _p    rotor plug
  tivePlug)                                                    

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfac plug\ To negative
  es.html#Modelica.Electrical.MultiPhase.Interfaces.Nega _n    rotor plug
  tivePlug)                                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model RampedRheostat "Rheostat with linearly decreasing resistance"
      parameter Integer m= 3 "Number of phases";
      Modelica.Electrical.MultiPhase.Interfaces.PositivePlug plug_p(final m=m) 
        "To positive rotor plug";
      Modelica.Electrical.MultiPhase.Interfaces.NegativePlug plug_n(final m=m) 
        "To negative rotor plug";
      parameter Modelica.SIunits.Resistance RStart "Starting resistance";
      parameter Modelica.SIunits.Time tStart 
        "Time instance of reducing the rheostat";
      parameter Modelica.SIunits.Time tRamp "Duration of ramp";
      Modelica.Electrical.MultiPhase.Basic.Star star(final m=m);
      Modelica.Electrical.Analog.Basic.Ground ground;
      Modelica.Electrical.MultiPhase.Basic.VariableResistor rheostat(final m=m);
      Modelica.Blocks.Sources.Ramp ramp[m](
        final height=fill(-RStart, m),
        final duration=fill(tRamp, m),
        final offset=fill(RStart, m),
        final startTime=fill(tStart, m));
    equation 
      connect(plug_p, rheostat.plug_p);
      connect(rheostat.plug_n, plug_n);
      connect(rheostat.R, ramp.y);
      connect(rheostat.plug_n, star.plug_p);
      connect(star.pin_n, ground.p);
    end RampedRheostat;

* * * * *

![image22](Modelica.Electrical.Machines.Utilities.TransformerDataI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).TransformerData
====================================================================================================================================================================================================================

**Calculates Impedances from nominal values**

Information
-----------

::

The parameters of the transformer models are calculated from parameters
normally given in a technical description.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name Default      Description
  -------------------------- ---- ------------ ----------------------------
  [Frequency](Modelica_SIuni f                 Nominal frequency [Hz]
  ts.html#Modelica.SIunits.F                   
  requency)                                    

  [Voltage](Modelica_SIunits V1                Primary nominal line-to-line
  .html#Modelica.SIunits.Vol                   voltage (RMS) [V]
  tage)                                        

  String                     C1                Choose primary connection

  [Voltage](Modelica_SIunits V2                Secondary open circuit
  .html#Modelica.SIunits.Vol                   line-to-line voltage (RMS) @
  tage)                                        primary nominal voltage [V]

  String                     C2                Choose secondary connection

  [ApparentPower](Modelica_S SNom              Nominal apparent power [VA]
  Iunits.html#Modelica.SIuni inal              
  ts.ApparentPower)                            

  Real                       v\_s              Impedance voltage drop pu
                             c                 

  [Power](Modelica_SIunits.h P\_s              Short-circuit (copper)
  tml#Modelica.SIunits.Power c                 losses [W]
  )                                            

  **Result**                                   

  Real                       n    V1/V2        Ratio primary voltage
                                               (line-to-line) / secondary
                                               voltage (line-to-line)

  [Resistance](Modelica_SIun R1   0.5\*P\_sc/( Warm primary resistance per
  its.html#Modelica.SIunits.      3\*I1ph\^2)  phase [Ohm]
  Resistance)                                  

  [Inductance](Modelica_SIun L1si sqrt(Z1ph\^2 Primary stray inductance per
  its.html#Modelica.SIunits. gma  -            phase [H]
  Inductance)                     R1\^2)/(2\*M 
                                  odel...      

  [Resistance](Modelica_SIun R2   0.5\*P\_sc/( Warm secondary resistance
  its.html#Modelica.SIunits.      3\*I2ph\^2)  per phase [Ohm]
  Resistance)                                  

  [Inductance](Modelica_SIun L2si sqrt(Z2ph\^2 Secondary stray inductance
  its.html#Modelica.SIunits. gma  -            per phase [H]
  Inductance)                     R2\^2)/(2\*M 
                                  odel...      
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record TransformerData "Calculates Impedances from nominal values"
      extends Modelica.Icons.Record;
      parameter Modelica.SIunits.Frequency f(start=50) "Nominal frequency";
      parameter Modelica.SIunits.Voltage V1(start=100) 
        "Primary nominal line-to-line voltage (RMS)";
      parameter String C1(start="Y") "Choose primary connection";
      parameter Modelica.SIunits.Voltage V2(start=100) 
        "Secondary open circuit line-to-line voltage (RMS) @ primary nominal voltage";
      parameter String C2(start="y") "Choose secondary connection";
      parameter Modelica.SIunits.ApparentPower SNominal(start=30E3) 
        "Nominal apparent power";
      parameter Real v_sc(final min=0, final max=1, start=0.05) 
        "Impedance voltage drop pu";
      parameter Modelica.SIunits.Power P_sc(start=300) 
        "Short-circuit (copper) losses";

      parameter Real n = V1/V2 
        "Ratio primary voltage (line-to-line) / secondary voltage (line-to-line)";
      final parameter Modelica.SIunits.Voltage V1ph = V1/(if C1=="D" then 1 else sqrt(3)) 
        "Primary phase voltage (RMS)";
      final parameter Modelica.SIunits.Current I1ph = SNominal/(3*V1ph) 
        "Primary phase current (RMS)";
      final parameter Modelica.SIunits.Voltage V2ph = V2/(if C2=="d" then 1 else sqrt(3)) 
        "Secondary phase voltage (RMS)";
      final parameter Modelica.SIunits.Current I2ph = SNominal/(3*V2ph) 
        "Secondary phase current (RMS)";
      final parameter Modelica.SIunits.Impedance Z1ph = 0.5*v_sc*V1ph/I1ph 
        "Primary impedance per phase";
      parameter Modelica.SIunits.Resistance R1= 0.5*P_sc/(3*I1ph^2) 
        "Warm primary resistance per phase";
      parameter Modelica.SIunits.Inductance L1sigma= sqrt(Z1ph^2-R1^2)/(2*Modelica.Constants.pi*f) 
        "Primary stray inductance per phase";
      final parameter Modelica.SIunits.Impedance Z2ph = 0.5*v_sc*V2ph/I2ph 
        "Secondary impedance per phase";
      parameter Modelica.SIunits.Resistance R2= 0.5*P_sc/(3*I2ph^2) 
        "Warm secondary resistance per phase";
      parameter Modelica.SIunits.Inductance L2sigma= sqrt(Z2ph^2-R2^2)/(2*Modelica.Constants.pi*f) 
        "Secondary stray inductance per phase";
    end TransformerData;

* * * * *

![image23](Modelica.Electrical.Machines.Utilities.TransformerDataI.png) [Modelica.Electrical.Machines.Utilities](Modelica_Electrical_Machines_Utilities.html#Modelica.Electrical.Machines.Utilities).SynchronousMachineData
===========================================================================================================================================================================================================================

**Computes machine parameter from usual datasheet**

Information
-----------

::

The parameters of the [synchronous machine model with electrical
excitation (and
damper)](Modelica_Electrical_Machines_BasicMachines_SynchronousInductionMachines.html#Modelica.Electrical.Machines.BasicMachines.SynchronousInductionMachines.SM_ElectricalExcited)
are calculated from parameters normally given in a technical
description, according to the standard EN 60034-4:2008 Appendix C.

::

Extends from
[Modelica.Icons.Record](Modelica_Icons.html#Modelica.Icons.Record) (Icon
for records).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name  Default   Description
  -------------------------------------- ----- --------- ------------------
  [ApparentPower](Modelica_SIunits.html# SNomi           Nominal apparent
  Modelica.SIunits.ApparentPower)        nal             power [VA]

  [Voltage](Modelica_SIunits.html#Modeli VsNom           Nominal stator
  ca.SIunits.Voltage)                    inal            voltage per phase
                                                         [V]

  [Frequency](Modelica_SIunits.html#Mode fsNom           Nominal stator
  lica.SIunits.Frequency)                inal            frequency [Hz]

  [Current](Modelica_SIunits.html#Modeli IeOpe           Open circuit
  ca.SIunits.Current)                    nCirc           excitation current
                                         uit             @ nominal voltage
                                                         and frequency [A]

  Real                                   x0              Stator stray
                                                         inductance per
                                                         phase
                                                         (approximately
                                                         zero impedance)
                                                         [pu]

  Real                                   xd              Synchronous
                                                         reactance per
                                                         phase, d-axis [pu]

  Real                                   xq              Synchronous
                                                         reactance per
                                                         phase, q-axis [pu]

  Real                                   xdTra           Transient
                                         nsien           reactance per
                                         t               phase, d-axis [pu]

  Real                                   xdSub           Subtransient
                                         trans           reactance per
                                         ient            phase, d-axis [pu]

  Real                                   xqSub           Subtransient
                                         trans           reactance per
                                         ient            phase, q-axis [pu]

  [Time](Modelica_SIunits.html#Modelica. Ta              Armature time
  SIunits.Time)                                          constant [s]

  [Time](Modelica_SIunits.html#Modelica. Td0Tr           Open circuit field
  SIunits.Time)                          ansie           time constant Td0'
                                         nt              [s]

  [Time](Modelica_SIunits.html#Modelica. Td0Su           Open circuit
  SIunits.Time)                          btran           subtransient time
                                         sient           constant Td0'',
                                                         d-axis [s]

  [Time](Modelica_SIunits.html#Modelica. Tq0Su           Open circuit
  SIunits.Time)                          btran           subtransient time
                                         sient           constant Tq0'',
                                                         q-axis [s]

  **Material**                                           

  [Temperature](Modelica_SIunits.html#Mo TsSpe           Specification
  delica.SIunits.Temperature)            cific           temperature of
                                         ation           stator resistance
                                                         [K]

  [Temperature](Modelica_SIunits.html#Mo TsRef           Reference
  delica.SIunits.Temperature)                            temperature of
                                                         stator resistance
                                                         [K]

  [LinearTemperatureCoefficient20](Model alpha           Temperature
  ica_Electrical_Machines_Thermal.html#M 20s             coefficient of
  odelica.Electrical.Machines.Thermal.Li                 stator resistance
  nearTemperatureCoefficient20)                          at 20 degC [1/K]

  [Temperature](Modelica_SIunits.html#Mo TrSpe           Specification
  delica.SIunits.Temperature)            cific           temperature of
                                         ation           (optional) damper
                                                         cage [K]

  [Temperature](Modelica_SIunits.html#Mo TrRef           Reference
  delica.SIunits.Temperature)                            temperature of
                                                         damper resistances
                                                         in d- and q-axis
                                                         [K]

  [LinearTemperatureCoefficient20](Model alpha           Temperature
  ica_Electrical_Machines_Thermal.html#M 20r             coefficient of
  odelica.Electrical.Machines.Thermal.Li                 damper resistances
  nearTemperatureCoefficient20)                          in d- and q-axis
                                                         [1/K]

  [Temperature](Modelica_SIunits.html#Mo TeSpe           Specification
  delica.SIunits.Temperature)            cific           excitation
                                         ation           temperature [K]

  [Temperature](Modelica_SIunits.html#Mo TeRef           Reference
  delica.SIunits.Temperature)                            temperture of
                                                         excitation
                                                         resistance [K]

  [LinearTemperatureCoefficient20](Model alpha           Temperature
  ica_Electrical_Machines_Thermal.html#M 20e             coefficient of
  odelica.Electrical.Machines.Thermal.Li                 excitation
  nearTemperatureCoefficient20)                          resistance [1/K]

  **Result**                                             

  [Resistance](Modelica_SIunits.html#Mod Rs    Machines. Stator resistance
  elica.SIunits.Resistance)                    Thermal.c per phase at TRef
                                               onvertRes [Ohm]
                                               i...      

  [Inductance](Modelica_SIunits.html#Mod Lssig x0\*ZRefe Stator stray
  elica.SIunits.Inductance)              ma    rence/ome inductance per
                                               ga        phase [H]

  [Inductance](Modelica_SIunits.html#Mod Lmd   xmd\*ZRef Main field
  elica.SIunits.Inductance)                    erence/om inductance in
                                               ega       d-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lmq   xmq\*ZRef Main field
  elica.SIunits.Inductance)                    erence/om inductance in
                                               ega       q-axis [H]

  [Inductance](Modelica_SIunits.html#Mod Lrsig (xrd -    Damper stray
  elica.SIunits.Inductance)              mad   xmd)\*ZRe inductance in
                                               ference/o d-axis [H]
                                               mega      

  [Inductance](Modelica_SIunits.html#Mod Lrsig (xrq -    Damper stray
  elica.SIunits.Inductance)              maq   xmq)\*ZRe inductance in
                                               ference/o q-axis [H]
                                               mega      

  [Resistance](Modelica_SIunits.html#Mod Rrd   Machines. Damper resistance
  elica.SIunits.Resistance)                    Thermal.c in d-axis at TRef
                                               onvertRes [Ohm]
                                               i...      

  [Resistance](Modelica_SIunits.html#Mod Rrq   Machines. Damper resistance
  elica.SIunits.Resistance)                    Thermal.c in q-axis at TRef
                                               onvertRes [Ohm]
                                               i...      

  [Resistance](Modelica_SIunits.html#Mod Re    3/2\*turn Excitation
  elica.SIunits.Resistance)                    sRatio\^2 resistance at TRef
                                               \*Machine [Ohm]
                                               s.Th...   

  Real                                   sigma 1 -       Stray fraction of
                                         e     xmd/xe    total excitation
                                                         inductance
  -------------------------------------------------------------------------

Modelica definition
-------------------

    record SynchronousMachineData 
      "Computes machine parameter from usual datasheet"
      extends Modelica.Icons.Record;
      import Modelica.Constants.pi;
      parameter Modelica.SIunits.ApparentPower SNominal(start=30E3) 
        "Nominal apparent power";
      parameter Modelica.SIunits.Voltage VsNominal(start=100) 
        "Nominal stator voltage per phase";
      final parameter Modelica.SIunits.Current IsNominal=SNominal/(3*VsNominal) 
        "Nominal stator current per phase";
      final parameter Modelica.SIunits.Impedance ZReference=VsNominal/IsNominal 
        "Reference impedance";
      parameter Modelica.SIunits.Frequency fsNominal(start=50) 
        "Nominal stator frequency";
      final parameter Modelica.SIunits.AngularVelocity omega=2*pi*fsNominal 
        "Nominal angular frequency";
      parameter Modelica.SIunits.Current IeOpenCircuit(start=10) 
        "Open circuit excitation current @ nominal voltage and frequency";
      final parameter Real turnsRatio = sqrt(2)*VsNominal/(omega*Lmd*IeOpenCircuit) 
        "Stator current / excitation current";
      parameter Real x0(start=0.1) 
        "Stator stray inductance per phase (approximately zero impedance) [pu]";
      parameter Real xd(start=1.6) "Synchronous reactance per phase, d-axis [pu]";
      parameter Real xq(start=1.6) "Synchronous reactance per phase, q-axis [pu]";
      parameter Real xdTransient(start=0.1375) 
        "Transient reactance per phase, d-axis [pu]";
      parameter Real xdSubtransient(start=0.121428571) 
        "Subtransient reactance per phase, d-axis [pu]";
      parameter Real xqSubtransient(start=0.148387097) 
        "Subtransient reactance per phase, q-axis [pu]";
      parameter Modelica.SIunits.Time Ta(start=0.014171268) 
        "Armature time constant";
      parameter Modelica.SIunits.Time Td0Transient(start=0.261177343) 
        "Open circuit field time constant Td0'";
      parameter Modelica.SIunits.Time Td0Subtransient(start=0.006963029) 
        "Open circuit subtransient time constant Td0'', d-axis";
      parameter Modelica.SIunits.Time Tq0Subtransient(start=0.123345081) 
        "Open circuit subtransient time constant Tq0'', q-axis";
      parameter Modelica.SIunits.Temperature TsSpecification(start=293.15) 
        "Specification temperature of stator resistance";
      parameter Modelica.SIunits.Temperature TsRef(start=293.15) 
        "Reference temperature of stator resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20s(start=0) 
        "Temperature coefficient of stator resistance at 20 degC";
      parameter Modelica.SIunits.Temperature TrSpecification(start=293.15) 
        "Specification temperature of (optional) damper cage";
      parameter Modelica.SIunits.Temperature TrRef(start=293.15) 
        "Reference temperature of damper resistances in d- and q-axis";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20r(start=0) 
        "Temperature coefficient of damper resistances in d- and q-axis";
      parameter Modelica.SIunits.Temperature TeSpecification(start=293.15) 
        "Specification excitation temperature";
      parameter Modelica.SIunits.Temperature TeRef(start=293.15) 
        "Reference temperture of excitation resistance";
      parameter Machines.Thermal.LinearTemperatureCoefficient20 alpha20e(start=0) 
        "Temperature coefficient of excitation resistance";
      final parameter Real xmd = xd - x0 
        "Main field reactance per phase, d-axis [pu]";
      final parameter Real xmq = xq - x0 
        "Main field reactance per phase, q-axis [pu]";
      final parameter Real xe =  xmd^2/(xd - xdTransient) 
        "Excitation reactance [pu]";
      final parameter Real xrd = xmd^2/(xdTransient - xdSubtransient)*(1 - (xmd/xe))^2 + xmd^2/xe 
        "Damper reactance per phase, d-axis [pu]";
      final parameter Real xrq = xmq^2/(xq - xqSubtransient) 
        "Damper reactance per phase, d-axis [pu]";
      final parameter Real rs = 2/(1/xdSubtransient + 1/xqSubtransient)/(omega*Ta) 
        "Stator resistance per phase at specifaction temperature [pu]";
      final parameter Real rrd = (xrd - xmd^2/xe)/(omega*Td0Subtransient) 
        "Damper resistance per phase at specification temperature, d-axis [pu]";
      final parameter Real rrq = xrq/(omega*Tq0Subtransient) 
        "Damper resistance per phase at specification temperature, q-axis [pu]";
      final parameter Real re =  xe/(omega*Td0Transient) 
        "Excitation resistance per phase at specification temperature [pu]";
      parameter Modelica.SIunits.Resistance Rs=
       Machines.Thermal.convertResistance(rs*ZReference,TsSpecification,alpha20s,TsRef) 
        "Stator resistance per phase at TRef";
      parameter Modelica.SIunits.Inductance Lssigma=x0*ZReference/omega 
        "Stator stray inductance per phase";
      parameter Modelica.SIunits.Inductance Lmd=xmd*ZReference/omega 
        "Main field inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lmq=xmq*ZReference/omega 
        "Main field inductance in q-axis";
      parameter Modelica.SIunits.Inductance Lrsigmad=(xrd - xmd)*ZReference/omega 
        "Damper stray inductance in d-axis";
      parameter Modelica.SIunits.Inductance Lrsigmaq=(xrq - xmq)*ZReference/omega 
        "Damper stray inductance in q-axis";
      parameter Modelica.SIunits.Resistance Rrd=
       Machines.Thermal.convertResistance(rrd*ZReference,TrSpecification,alpha20r,TrRef) 
        "Damper resistance in d-axis at TRef";
      parameter Modelica.SIunits.Resistance Rrq=
       Machines.Thermal.convertResistance(rrq*ZReference,TrSpecification,alpha20r,TrRef) 
        "Damper resistance in q-axis at TRef";
      parameter Modelica.SIunits.Resistance Re=3/2*turnsRatio^2*
       Machines.Thermal.convertResistance(re*ZReference,TeSpecification,alpha20e,TeRef) 
        "Excitation resistance at TRef";
      parameter Real sigmae=1 - xmd/xe 
        "Stray fraction of total excitation inductance";
    end SynchronousMachineData;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:16 2010.
