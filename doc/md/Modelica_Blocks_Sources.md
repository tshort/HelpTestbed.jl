% Modelica.Blocks.Sources
% 
% 

[Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).Sources
===============================================================

**Library of signal source blocks generating Real and Boolean signals**

Information
-----------

::

This package contains **source** components, i.e., blocks which have
only output signals. These blocks are used as signal generators for
Real, Integer and Boolean signals.

All Real source signals (with the exception of the Constant source) have
at least the following two parameters:

  ------------- ----------------------------------------------------------
  **offset**    Value which is added to the signal

  **startTime** Start time of signal. For time < startTime, the output y
                is set to offset.
  ------------- ----------------------------------------------------------

The **offset** parameter is especially useful in order to shift the
corresponding source, such that at initial time the system is
stationary. To determine the corresponding value of offset, usually
requires a trimming calculation.

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                 Description
  ------------------------------------ -----------------------------------
  ![image26](Modelica.Blocks.Sources.R Set output signal to a time varying
  ealExpressionS.png)                  Real expression
  [RealExpression](Modelica_Blocks_Sou 
  rces.html#Modelica.Blocks.Sources.Re 
  alExpression)                        

  ![image27](Modelica.Blocks.Sources.I Set output signal to a time varying
  ntegerExpressionS.png)               Integer expression
  [IntegerExpression](Modelica_Blocks_ 
  Sources.html#Modelica.Blocks.Sources 
  .IntegerExpression)                  

  ![image28](Modelica.Blocks.Sources.B Set output signal to a time varying
  ooleanExpressionS.png)               Boolean expression
  [BooleanExpression](Modelica_Blocks_ 
  Sources.html#Modelica.Blocks.Sources 
  .BooleanExpression)                  

  ![image29](Modelica.Blocks.Sources.C Generate actual time signal
  lockS.png)                           
  [Clock](Modelica_Blocks_Sources.html 
  #Modelica.Blocks.Sources.Clock)      

  ![image30](Modelica.Blocks.Sources.C Generate constant signal of type
  onstantS.png)                        Real
  [Constant](Modelica_Blocks_Sources.h 
  tml#Modelica.Blocks.Sources.Constant 
  )                                    

  ![image31](Modelica.Blocks.Sources.S Generate step signal of type Real
  tepS.png)                            
  [Step](Modelica_Blocks_Sources.html# 
  Modelica.Blocks.Sources.Step)        

  ![image32](Modelica.Blocks.Sources.R Generate ramp signal
  ampS.png)                            
  [Ramp](Modelica_Blocks_Sources.html# 
  Modelica.Blocks.Sources.Ramp)        

  ![image33](Modelica.Blocks.Sources.S Generate sine signal
  ineS.png)                            
  [Sine](Modelica_Blocks_Sources.html# 
  Modelica.Blocks.Sources.Sine)        

  ![image34](Modelica.Blocks.Sources.E Generate exponentially damped sine
  xpSineS.png)                         signal
  [ExpSine](Modelica_Blocks_Sources.ht 
  ml#Modelica.Blocks.Sources.ExpSine)  

  ![image35](Modelica.Blocks.Sources.E Generate a rising and falling
  xponentialsS.png)                    exponential signal
  [Exponentials](Modelica_Blocks_Sourc 
  es.html#Modelica.Blocks.Sources.Expo 
  nentials)                            

  ![image36](Modelica.Blocks.Sources.P Generate pulse signal of type Real
  ulseS.png)                           
  [Pulse](Modelica_Blocks_Sources.html 
  #Modelica.Blocks.Sources.Pulse)      

  ![image37](Modelica.Blocks.Sources.S Generate saw tooth signal
  awToothS.png)                        
  [SawTooth](Modelica_Blocks_Sources.h 
  tml#Modelica.Blocks.Sources.SawTooth 
  )                                    

  ![image38](Modelica.Blocks.Sources.T Generate trapezoidal signal of type
  rapezoidS.png)                       Real
  [Trapezoid](Modelica_Blocks_Sources. 
  html#Modelica.Blocks.Sources.Trapezo 
  id)                                  

  ![image39](Modelica.Blocks.Sources.K Move as fast as possible along a
  inematicPTPS.png)                    distance within given kinematic
  [KinematicPTP](Modelica_Blocks_Sourc constraints
  es.html#Modelica.Blocks.Sources.Kine 
  maticPTP)                            

  ![image40](Modelica.Blocks.Sources.K Move as fast as possible from start
  inematicPTP2S.png)                   to end position within given
  [KinematicPTP2](Modelica_Blocks_Sour kinematic constraints with output
  ces.html#Modelica.Blocks.Sources.Kin signals q, qd=der(q), qdd=der(qd)
  ematicPTP2)                          

  ![image41](Modelica.Blocks.Sources.T Generate a (possibly discontinuous)
  imeTableS.png)                       signal by linear interpolation in a
  [TimeTable](Modelica_Blocks_Sources. table
  html#Modelica.Blocks.Sources.TimeTab 
  le)                                  

  ![image42](Modelica.Blocks.Sources.C Table look-up with respect to time
  ombiTimeTableS.png)                  and linear/perodic extrapolation
  [CombiTimeTable](Modelica_Blocks_Sou methods (data from matrix/file)
  rces.html#Modelica.Blocks.Sources.Co 
  mbiTimeTable)                        

  ![image43](Modelica.Blocks.Sources.B Generate constant signal of type
  ooleanConstantS.png)                 Boolean
  [BooleanConstant](Modelica_Blocks_So 
  urces.html#Modelica.Blocks.Sources.B 
  ooleanConstant)                      

  ![image44](Modelica.Blocks.Sources.B Generate step signal of type
  ooleanStepS.png)                     Boolean
  [BooleanStep](Modelica_Blocks_Source 
  s.html#Modelica.Blocks.Sources.Boole 
  anStep)                              

  ![image45](Modelica.Blocks.Sources.B Generate pulse signal of type
  ooleanPulseS.png)                    Boolean
  [BooleanPulse](Modelica_Blocks_Sourc 
  es.html#Modelica.Blocks.Sources.Bool 
  eanPulse)                            

  ![image46](Modelica.Blocks.Sources.S Generate sample trigger signal
  ampleTriggerS.png)                   
  [SampleTrigger](Modelica_Blocks_Sour 
  ces.html#Modelica.Blocks.Sources.Sam 
  pleTrigger)                          

  ![image47](Modelica.Blocks.Sources.B Generate a Boolean output signal
  ooleanTableS.png)                    based on a vector of time instants
  [BooleanTable](Modelica_Blocks_Sourc 
  es.html#Modelica.Blocks.Sources.Bool 
  eanTable)                            

  ![image48](Modelica.Blocks.Sources.R Boolean signal source that mimis a
  adioButtonSourceS.png)               radio button
  [RadioButtonSource](Modelica_Blocks_ 
  Sources.html#Modelica.Blocks.Sources 
  .RadioButtonSource)                  

  ![image49](Modelica.Blocks.Sources.I Generate constant signal of type
  ntegerConstantS.png)                 Integer
  [IntegerConstant](Modelica_Blocks_So 
  urces.html#Modelica.Blocks.Sources.I 
  ntegerConstant)                      

  ![image50](Modelica.Blocks.Sources.I Generate step signal of type
  ntegerStepS.png)                     Integer
  [IntegerStep](Modelica_Blocks_Source 
  s.html#Modelica.Blocks.Sources.Integ 
  erStep)                              

  ![image51](Modelica.Blocks.Sources.I Generate an Integer output signal
  ntegerTableS.png)                    based on a table matrix with [time,
  [IntegerTable](Modelica_Blocks_Sourc yi] values
  es.html#Modelica.Blocks.Sources.Inte 
  gerTable)                            
  ------------------------------------------------------------------------

* * * * *

![image52](Modelica.Blocks.Sources.RealExpressionI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).RealExpression
======================================================================================================================================================

**Set output signal to a time varying Real expression**

Information
-----------

::

The (time varying) Real output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Real expressions in a block diagram. For example, in
the y-menu the definition "if time < 1 then 0 else 1" can be given in
order to define that the output signal is one, if time ≥ 1 and otherwise
it is zero. Note, that "time" is a built-in variable that is always
accessible and represents the "model time" and that Variable **y** is
both a variable and a connector.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                            Name Defaul Description
                                                       t      
  ----------------------------------------------- ---- ------ -------------
  Time varying output signal                                  

  [RealOutput](Modelica_Blocks_Interfaces.html#Mo y    0.0    Value of Real
  delica.Blocks.Interfaces.RealOutput)                        output
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  Time varying output signal                                 

  output                                                y    Value of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Modelica      output
  .Blocks.Interfaces.RealOutput)                             
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block RealExpression 
      "Set output signal to a time varying Real expression"

      Modelica.Blocks.Interfaces.RealOutput y=0.0 "Value of Real output";


    end RealExpression;

* * * * *

![image53](Modelica.Blocks.Sources.IntegerExpressionI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).IntegerExpression
============================================================================================================================================================

**Set output signal to a time varying Integer expression**

Information
-----------

::

The (time varying) Integer output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Integer expressions in a block diagram. For example,
in the y-menu the definition "if time < 1 then 0 else 1" can be given in
order to define that the output signal is one, if time ≥ 1 and otherwise
it is zero. Note, that "time" is a built-in variable that is always
accessible and represents the "model time" and that Variable **y** is
both a variable and a connector.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                            Name Defau Description
                                                       lt    
  ----------------------------------------------- ---- ----- -------------
  Time varying output signal                                 

  [IntegerOutput](Modelica_Blocks_Interfaces.html y    0     Value of
  #Modelica.Blocks.Interfaces.IntegerOutput)                 Integer
                                                             output
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- --------------
  Time varying output signal                                

  output                                               y    Value of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Mode      Integer output
  lica.Blocks.Interfaces.IntegerOutput)                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerExpression 
      "Set output signal to a time varying Integer expression"

      Modelica.Blocks.Interfaces.IntegerOutput y=0 "Value of Integer output";


    end IntegerExpression;

* * * * *

![image54](Modelica.Blocks.Sources.BooleanExpressionI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).BooleanExpression
============================================================================================================================================================

**Set output signal to a time varying Boolean expression**

Information
-----------

::

The (time varying) Boolean output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Boolean expressions in a block diagram. For example,
in the y-menu the definition "time \>= 1 and time <= 2" can be given in
order to define that the output signal is **true** in the time interval
1 ≤ time ≤ 2 and otherwise it is **false**. Note, that "time" is a
built-in variable that is always accessible and represents the "model
time" and that Variable **y** is both a variable and a connector.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                            Name Defau Description
                                                       lt    
  ----------------------------------------------- ---- ----- -------------
  Time varying output signal                                 

  [BooleanOutput](Modelica_Blocks_Interfaces.html y    false Value of
  #Modelica.Blocks.Interfaces.BooleanOutput)                 Boolean
                                                             output
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                 Name Description
  ---------------------------------------------------- ---- --------------
  Time varying output signal                                

  output                                               y    Value of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mode      Boolean output
  lica.Blocks.Interfaces.BooleanOutput)                     
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanExpression 
      "Set output signal to a time varying Boolean expression"

      Modelica.Blocks.Interfaces.BooleanOutput y=false "Value of Boolean output";


    end BooleanExpression;

* * * * *

![image55](Modelica.Blocks.Sources.ClockI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Clock
====================================================================================================================================

**Generate actual time signal**

Information
-----------

::

The Real output y is a clock signal:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name    Defaul Description
                                           t      
  -------------------------------- ------- ------ -------------------------
  [Time](Modelica_SIunits.html#Mod offset  0      Offset of output signal
  elica.SIunits.Time)                             [s]

  [Time](Modelica_SIunits.html#Mod startTi 0      Output = offset for time
  elica.SIunits.Time)              me             < startTime [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Clock "Generate actual time signal "
      parameter Modelica.SIunits.Time offset=0 "Offset of output signal";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Interfaces.SO;

    equation 
      y = offset + (if time < startTime then 0 else time - startTime);
    end Clock;

* * * * *

![image56](Modelica.Blocks.Sources.ConstantI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Constant
==========================================================================================================================================

**Generate constant signal of type Real**

Information
-----------

::

The Real output y is a constant signal:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  Type      Name      Default      Description
  --------- --------- ------------ --------------------------
  Real      k                      Constant output value

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Constant "Generate constant signal of type Real"
      parameter Real k(start=1) "Constant output value";
      extends Interfaces.SO;

    equation 
      y = k;
    end Constant;

* * * * *

![image57](Modelica.Blocks.Sources.StepI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Step
==================================================================================================================================

**Generate step signal of type Real**

Information
-----------

::

The Real output y is a step signal:

::

Extends from
[Interfaces.SignalSource](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SignalSource)
(Base class for continuous signal source).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name    Defaul Description
                                          t      
  ------------------------------- ------- ------ -------------------------
  Real                            height  1      Height of step

  Real                            offset  0      Offset of output signal y

  [Time](Modelica_SIunits.html#Mo startTi 0      Output y = offset for
  delica.SIunits.Time)            me             time < startTime [s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Step "Generate step signal of type Real"
      parameter Real height=1 "Height of step";
      extends Interfaces.SignalSource;

    equation 
      y = offset + (if time < startTime then 0 else height);
    end Step;

* * * * *

![image58](Modelica.Blocks.Sources.RampI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Ramp
==================================================================================================================================

**Generate ramp signal**

Information
-----------

::

The Real output y is a ramp signal:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name    Defaul Description
                                           t      
  -------------------------------- ------- ------ -------------------------
  Real                             height  1      Height of ramps

  [Time](Modelica_SIunits.html#Mod duratio        Durations of ramp [s]
  elica.SIunits.Time)              n              

  Real                             offset  0      Offset of output signal

  [Time](Modelica_SIunits.html#Mod startTi 0      Output = offset for time
  elica.SIunits.Time)              me             < startTime [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Ramp "Generate ramp signal"
      parameter Real height=1 "Height of ramps";
      parameter Modelica.SIunits.Time duration(min=Modelica.Constants.small, start = 2) 
        "Durations of ramp";
      parameter Real offset=0 "Offset of output signal";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Interfaces.SO;

    equation 
      y = offset + (if time < startTime then 0 else if time < (startTime +
        duration) then (time - startTime)*height/duration else height);
    end Ramp;

* * * * *

![image59](Modelica.Blocks.Sources.SineI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Sine
==================================================================================================================================

**Generate sine signal**

Information
-----------

::

The Real output y is a sine signal:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                Name    Defaul Description
                                              t      
  ----------------------------------- ------- ------ -----------------------
  Real                                amplitu 1      Amplitude of sine wave
                                      de             

  [Frequency](Modelica_SIunits.html#M freqHz         Frequency of sine wave
  odelica.SIunits.Frequency)                         [Hz]

  [Angle](Modelica_SIunits.html#Model phase   0      Phase of sine wave
  ica.SIunits.Angle)                                 [rad]

  Real                                offset  0      Offset of output signal

  [Time](Modelica_SIunits.html#Modeli startTi 0      Output = offset for
  ca.SIunits.Time)                    me             time < startTime [s]
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sine "Generate sine signal"
      parameter Real amplitude=1 "Amplitude of sine wave";
      parameter SIunits.Frequency freqHz(start=1) "Frequency of sine wave";
      parameter SIunits.Angle phase=0 "Phase of sine wave";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      constant Real pi=Modelica.Constants.pi;

    equation 
      y = offset + (if time < startTime then 0 else amplitude*
        Modelica.Math.sin(2*pi*freqHz*(time - startTime) + phase));
    end Sine;

* * * * *

![image60](Modelica.Blocks.Sources.ExpSineI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).ExpSine
========================================================================================================================================

**Generate exponentially damped sine signal**

Information
-----------

::

The Real output y is a sine signal with exponentially changing
amplitude:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  --------------------------------------------------------------------------
  Type                                Name    Defaul Description
                                              t      
  ----------------------------------- ------- ------ -----------------------
  Real                                amplitu 1      Amplitude of sine wave
                                      de             

  [Frequency](Modelica_SIunits.html#M freqHz         Frequency of sine wave
  odelica.SIunits.Frequency)                         [Hz]

  [Angle](Modelica_SIunits.html#Model phase   0      Phase of sine wave
  ica.SIunits.Angle)                                 [rad]

  [Damping](Modelica_SIunits.html#Mod damping        Damping coefficient of
  elica.SIunits.Damping)                             sine wave [s-1]

  Real                                offset  0      Offset of output signal

  [Time](Modelica_SIunits.html#Modeli startTi 0      Output = offset for
  ca.SIunits.Time)                    me             time < startTime [s]
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ExpSine "Generate exponentially damped sine signal"
      parameter Real amplitude=1 "Amplitude of sine wave";
      parameter SIunits.Frequency freqHz(start=2) "Frequency of sine wave";
      parameter SIunits.Angle phase=0 "Phase of sine wave";
      parameter SIunits.Damping damping(start=1) "Damping coefficient of sine wave";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      constant Real pi=Modelica.Constants.pi;

    equation 
      y = offset + (if time < startTime then 0 else amplitude*
        Modelica.Math.exp(-(time - startTime)*damping)*Modelica.Math.sin(2*pi*freqHz*(time - startTime) + phase));
    end ExpSine;

* * * * *

![image61](Modelica.Blocks.Sources.ExponentialsI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Exponentials
==================================================================================================================================================

**Generate a rising and falling exponential signal**

Information
-----------

::

The Real output y is a rising exponential followed by a falling
exponential signal:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  --------------------------------------------------------------------------
  Type                   Name    Default Description
  ---------------------- ------- ------- -----------------------------------
  Real                   outMax  1       Height of output for infinite
                                         riseTime

  [Time](Modelica_SIunit riseTim         Rise time [s]
  s.html#Modelica.SIunit e               
  s.Time)                                

  [Time](Modelica_SIunit riseTim 0.1     Rise time constant; rising is
  s.html#Modelica.SIunit eConst          defined as
  s.Time)                                outMax\*(1-exp(-riseTime/riseTimeCo
                                         nst))
                                         [s]

  [Time](Modelica_SIunit fallTim riseTim Fall time constant [s]
  s.html#Modelica.SIunit eConst  eConst  
  s.Time)                                

  Real                   offset  0       Offset of output signal

  [Time](Modelica_SIunit startTi 0       Output = offset for time <
  s.html#Modelica.SIunit me              startTime [s]
  s.Time)                                
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Exponentials "Generate a rising and falling exponential signal"

      parameter Real outMax=1 "Height of output for infinite riseTime";
      parameter SIunits.Time riseTime(min=0,start = 0.5) "Rise time";
      parameter SIunits.Time riseTimeConst(min=Modelica.Constants.small)=0.1 
        "Rise time constant; rising is defined as outMax*(1-exp(-riseTime/riseTimeConst))";
      parameter SIunits.Time fallTimeConst(min=Modelica.Constants.small)=
        riseTimeConst "Fall time constant";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      Real y_riseTime;

    equation 
      y_riseTime = outMax*(1 - Modelica.Math.exp(-riseTime/riseTimeConst));
      y = offset + (if (time < startTime) then 0
              else if (time < (startTime + riseTime)) then outMax*(1 - Modelica.Math.exp(-(time - startTime)/riseTimeConst))
              else                                          y_riseTime*Modelica.Math.exp(-(time - startTime - riseTime)/fallTimeConst));

    end Exponentials;

* * * * *

![image62](Modelica.Blocks.Sources.PulseI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Pulse
====================================================================================================================================

**Generate pulse signal of type Real**

Information
-----------

::

The Real output y is a pulse signal:

::

Extends from
[Modelica.Blocks.Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  ------------------------------------------------------------------------
  Type                         Name   Defau Description
                                      lt    
  ---------------------------- ------ ----- ------------------------------
  Real                         amplit 1     Amplitude of pulse
                               ude          

  Real                         width  50    Width of pulse in % of period

  [Time](Modelica_SIunits.html period       Time for one period [s]
  #Modelica.SIunits.Time)                   

  Integer                      nperio -1    Number of periods (< 0 means
                               d            infinite number of periods)

  Real                         offset 0     Offset of output signals

  [Time](Modelica_SIunits.html startT 0     Output = offset for time <
  #Modelica.SIunits.Time)      ime          startTime [s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Pulse "Generate pulse signal of type Real"
      parameter Real amplitude=1 "Amplitude of pulse";
      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100) = 50 "Width of pulse in % of period";
      parameter Modelica.SIunits.Time period(final min=Modelica.Constants.small,start=1) 
        "Time for one period";
      parameter Integer nperiod=-1 
        "Number of periods (< 0 means infinite number of periods)";
      parameter Real offset=0 "Offset of output signals";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Modelica.Blocks.Interfaces.SO;
    protected 
      Modelica.SIunits.Time T_width = period*width/100;
      Modelica.SIunits.Time T_start "Start time of current period";
      Integer count "Period count";
    initial algorithm 
      count := integer((time - startTime)/period);
      T_start := startTime + count*period;
    equation 
      when integer((time - startTime)/period)>pre(count) then
        count = pre(count)+1;
        T_start = time;
      end when;
      y = offset + (if (time<startTime or nperiod==0 or (nperiod>0 and count>=nperiod)) then 0
               else if  time<T_start + T_width then amplitude else 0);
    end Pulse;

* * * * *

![image63](Modelica.Blocks.Sources.SawToothI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).SawTooth
==========================================================================================================================================

**Generate saw tooth signal**

Information
-----------

::

The Real output y is a saw tooth signal:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  ------------------------------------------------------------------------
  Type                         Name   Defau Description
                                      lt    
  ---------------------------- ------ ----- ------------------------------
  Real                         amplit 1     Amplitude of saw tooth
                               ude          

  [Time](Modelica_SIunits.html period       Time for one period [s]
  #Modelica.SIunits.Time)                   

  Integer                      nperio -1    Number of periods (< 0 means
                               d            infinite number of periods)

  Real                         offset 0     Offset of output signals

  [Time](Modelica_SIunits.html startT 0     Output = offset for time <
  #Modelica.SIunits.Time)      ime          startTime [s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block SawTooth "Generate saw tooth signal"
      parameter Real amplitude=1 "Amplitude of saw tooth";
      parameter SIunits.Time period(final min=Modelica.Constants.small,start = 1) 
        "Time for one period";
      parameter Integer nperiod=-1 
        "Number of periods (< 0 means infinite number of periods)";
      parameter Real offset=0 "Offset of output signals";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      SIunits.Time T_start(final start=startTime) "Start time of current period";
      Integer count "Period count";
    initial algorithm 
      count := integer((time - startTime)/period);
      T_start := startTime + count*period;
    equation 
      when integer((time - startTime)/period)>pre(count) then
        count = pre(count)+1;
        T_start = time;
      end when;
      y = offset + (if (time<startTime or nperiod==0 or (nperiod>0 and count>=nperiod)) then 0
                   else amplitude*(time - T_start)/period);
    end SawTooth;

* * * * *

![image64](Modelica.Blocks.Sources.TrapezoidI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).Trapezoid
============================================================================================================================================

**Generate trapezoidal signal of type Real**

Information
-----------

::

The Real output y is a trapezoid signal:

::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  ------------------------------------------------------------------------
  Type                         Name   Defau Description
                                      lt    
  ---------------------------- ------ ----- ------------------------------
  Real                         amplit 1     Amplitude of trapezoid
                               ude          

  [Time](Modelica_SIunits.html rising 0     Rising duration of trapezoid
  #Modelica.SIunits.Time)                   [s]

  [Time](Modelica_SIunits.html width  0.5   Width duration of trapezoid
  #Modelica.SIunits.Time)                   [s]

  [Time](Modelica_SIunits.html fallin 0     Falling duration of trapezoid
  #Modelica.SIunits.Time)      g            [s]

  [Time](Modelica_SIunits.html period       Time for one period [s]
  #Modelica.SIunits.Time)                   

  Integer                      nperio -1    Number of periods (< 0 means
                               d            infinite number of periods)

  Real                         offset 0     Offset of output signal

  [Time](Modelica_SIunits.html startT 0     Output = offset for time <
  #Modelica.SIunits.Time)      ime          startTime [s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Trapezoid "Generate trapezoidal signal of type Real"
      parameter Real amplitude=1 "Amplitude of trapezoid";
      parameter SIunits.Time rising(final min=0) = 0 "Rising duration of trapezoid";
      parameter SIunits.Time width(final min=0) = 0.5 "Width duration of trapezoid";
      parameter SIunits.Time falling(final min=0) = 0 
        "Falling duration of trapezoid";
      parameter SIunits.Time period(final min=Modelica.Constants.small, start= 1) 
        "Time for one period";
      parameter Integer nperiod=-1 
        "Number of periods (< 0 means infinite number of periods)";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      parameter SIunits.Time T_rising=rising 
        "End time of rising phase within one period";
      parameter SIunits.Time T_width=T_rising + width 
        "End time of width phase within one period";
      parameter SIunits.Time T_falling=T_width + falling 
        "End time of falling phase within one period";
      SIunits.Time T_start "Start time of current period";
      Integer count "Period count";
    initial algorithm 
      count := integer((time - startTime)/period);
      T_start := startTime + count*period;
    equation 
      when integer((time - startTime)/period)>pre(count) then
        count = pre(count)+1;
        T_start = time;
      end when;
      y = offset + (if (time<startTime or nperiod==0 or (nperiod>0 and count>=nperiod)) then 0
               else if (time < T_start + T_rising)  then amplitude*(time - T_start)/rising
               else if (time < T_start + T_width)   then amplitude
               else if (time < T_start + T_falling) then amplitude*(T_start + T_falling - time)/falling
               else                                 0);
    end Trapezoid;

* * * * *

![image65](Modelica.Blocks.Sources.KinematicPTPI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).KinematicPTP
==================================================================================================================================================

**Move as fast as possible along a distance within given kinematic
constraints**

Information
-----------

::

The goal is to move as **fast** as possible along a distance **deltaq**
under given **kinematical constraints**. The distance can be a
positional or angular range. In robotics such a movement is called
**PTP** (Point-To-Point). This source block generates the
**acceleration** qdd of this signal as output:

After integrating the output two times, the position q is obtained. The
signal is constructed in such a way that it is not possible to move
faster, given the **maximally** allowed **velocity** qd\_max and the
**maximally** allowed **acceleration** qdd\_max.

If several distances are given (vector deltaq has more than 1 element),
an acceleration output vector is constructed such that all signals are
in the same periods in the acceleration, constant velocity and
deceleration phase. This means that only one of the signals is at its
limits whereas the others are sychnronized in such a way that the end
point is reached at the same time instant.

This element is useful to generate a reference signal for a controller
which controls a drive train or in combination with model
Modelica.Mechanics.Rotational.**Accelerate** to drive a flange according
to a given acceleration.

::

Extends from
[Interfaces.MO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MO)
(Multiple Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name    Default          Description
  -------------------------- ------- ---------------- ---------------------
  Real                       deltaq[                  Distance to move
                             :]                       

  Real                       qd\_max                  Maximum velocities
                             [:]                      der(q)

  Real                       qdd\_ma                  Maximum accelerations
                             x[:]                     der(qd)

  [Time](Modelica_SIunits.ht startTi 0                Time instant at which
  ml#Modelica.SIunits.Time)  me                       movement starts [s]

  Integer                    nout    max([size(deltaq Number of outputs
                                     ,                
                                     1); size(q...    
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block KinematicPTP 
      "Move as fast as possible along a distance within given kinematic constraints"

      parameter Real deltaq[:] "Distance to move";
      parameter Real qd_max[:](each final min=Modelica.Constants.small) 
        "Maximum velocities der(q)";
      parameter Real qdd_max[:](each final min=Modelica.Constants.small) 
        "Maximum accelerations der(qd)";
      parameter SIunits.Time startTime=0 "Time instant at which movement starts";

      extends Interfaces.MO(final nout=max([size(deltaq, 1); size(qd_max, 1);
             size(qdd_max, 1)]));

    protected 
      parameter Real p_deltaq[nout]=(if size(deltaq, 1) == 1 then ones(nout)*
          deltaq[1] else deltaq);
      parameter Real p_qd_max[nout]=(if size(qd_max, 1) == 1 then ones(nout)*
          qd_max[1] else qd_max);
      parameter Real p_qdd_max[nout]=(if size(qdd_max, 1) == 1 then ones(nout)
          *qdd_max[1] else qdd_max);
      Real sd_max;
      Real sdd_max;
      Real sdd;
      Real aux1[nout];
      Real aux2[nout];
      SIunits.Time Ta1;
      SIunits.Time Ta2;
      SIunits.Time Tv;
      SIunits.Time Te;
      Boolean noWphase;

    equation 
      for i in 1:nout loop
        aux1[i] = p_deltaq[i]/p_qd_max[i];
        aux2[i] = p_deltaq[i]/p_qdd_max[i];
      end for;
      sd_max = 1/max(abs(aux1));
      sdd_max = 1/max(abs(aux2));

      Ta1 = sqrt(1/sdd_max);
      Ta2 = sd_max/sdd_max;
      noWphase = Ta2 >= Ta1;
      Tv = if noWphase then Ta1 else 1/sd_max;
      Te = if noWphase then Ta1 + Ta1 else Tv + Ta2;

      // path-acceleration
      sdd = if time < startTime then 0 else ((if noWphase then (if time < Ta1
         + startTime then sdd_max else (if time < Te + startTime then -
        sdd_max else 0)) else (if time < Ta2 + startTime then sdd_max else (
        if time < Tv + startTime then 0 else (if time < Te + startTime then -
        sdd_max else 0)))));

      // acceleration
      y = p_deltaq*sdd;
    end KinematicPTP;

* * * * *

![image66](Modelica.Blocks.Sources.KinematicPTP2I.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).KinematicPTP2
====================================================================================================================================================

**Move as fast as possible from start to end position within given
kinematic constraints with output signals q, qd=der(q), qdd=der(qd)**

Information
-----------

::

The goal is to move as **fast** as possible from start position
**q\_begin** to end position **q\_end** under given **kinematical
constraints**. The positions can be translational or rotational
definitions (i.e., q\_begin/q\_end is given). In robotics such a
movement is called **PTP** (Point-To-Point). This source block generates
the **position** q(t), the **speed** qd(t) = der(q), and the
**acceleration** qdd = der(qd) as output. The signals are constructed in
such a way that it is not possible to move faster, given the
**maximally** allowed **velocity** qd\_max and the **maximally** allowed
**acceleration** qdd\_max:

If vectors q\_begin/q\_end have more than 1 element, the output vectors
are constructed such that all signals are in the same periods in the
acceleration, constant velocity and deceleration phase. This means that
only one of the signals is at its limits whereas the others are
sychnronized in such a way that the end point is reached at the same
time instant.

This element is useful to generate a reference signal for a controller
which controls, e.g., a drive train, or to drive a flange according to a
given acceleration.

::

Extends from
[Modelica.Blocks.Interfaces.BlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon)
(Basic graphical layout of input/output block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                            Name     Defaul Description
                                           t      
  ------------------------------- -------- ------ -------------------------
  Real                            q\_begin {0}    Start position
                                  [:]             

  Real                            q\_end[:        End position
                                  ]               

  Real                            qd\_max[        Maximum velocities der(q)
                                  :]              

  Real                            qdd\_max        Maximum accelerations
                                  [:]             der(qd)

  [Time](Modelica_SIunits.html#Mo startTim 0      Time instant at which
  delica.SIunits.Time)            e               movement starts [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                             Name  Description
  -------------------------------- ----- ----------------------------------
  output                           q[nou Reference position of path
  [RealOutput](Modelica_Blocks_Int t]    planning
  erfaces.html#Modelica.Blocks.Int       
  erfaces.RealOutput)                    

  output                           qd[no Reference speed of path planning
  [RealOutput](Modelica_Blocks_Int ut]   
  erfaces.html#Modelica.Blocks.Int       
  erfaces.RealOutput)                    

  output                           qdd[n Reference acceleration of path
  [RealOutput](Modelica_Blocks_Int out]  planning
  erfaces.html#Modelica.Blocks.Int       
  erfaces.RealOutput)                    

  output                           movin = true, if end position not yet
  [BooleanOutput](Modelica_Blocks_ g[nou reached; = false, if end position
  Interfaces.html#Modelica.Blocks. t]    reached or axis is completely at
  Interfaces.BooleanOutput)              rest
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block KinematicPTP2 
      "Move as fast as possible from start to end position within given kinematic constraints with output signals q, qd=der(q), qdd=der(qd)"
      import SI = Modelica.SIunits;
      parameter Real q_begin[:] = {0} "Start position";
      parameter Real q_end[:] "End position";
      parameter Real qd_max[:](each final min=Modelica.Constants.small) 
        "Maximum velocities der(q)";
      parameter Real qdd_max[:](each final min=Modelica.Constants.small) 
        "Maximum accelerations der(qd)";
      parameter Modelica.SIunits.Time startTime=0 
        "Time instant at which movement starts";

      extends Modelica.Blocks.Interfaces.BlockIcon;
      final parameter Integer nout=max([size(q_begin, 1); size(q_end, 1); size(
          qd_max, 1); size(qdd_max, 1)]) 
        "Number of output signals (= dimension of q, qd, qdd, moving)";
      output Modelica.SIunits.Time endTime "Time instant at which movement stops";

      Modelica.Blocks.Interfaces.RealOutput q[nout] 
        "Reference position of path planning";
      Modelica.Blocks.Interfaces.RealOutput qd[nout] 
        "Reference speed of path planning";
      Modelica.Blocks.Interfaces.RealOutput qdd[nout] 
        "Reference acceleration of path planning";
      Modelica.Blocks.Interfaces.BooleanOutput moving[nout] 
        "= true, if end position not yet reached; = false, if end position reached or axis is completely at rest";


    protected 
      parameter Real p_q_begin[nout]=(if size(q_begin, 1) == 1 then ones(nout)*
          q_begin[1] else q_begin);
      parameter Real p_q_end[nout]=(if size(q_end, 1) == 1 then ones(nout)*
          q_end[1] else q_end);
      parameter Real p_qd_max[nout]=(if size(qd_max, 1) == 1 then ones(nout)*
          qd_max[1] else qd_max);
      parameter Real p_qdd_max[nout]=(if size(qdd_max, 1) == 1 then ones(nout)*
          qdd_max[1] else qdd_max);
      parameter Real p_deltaq[nout]=p_q_end - p_q_begin;
      constant Real eps=10*Modelica.Constants.eps;
      Boolean motion_ref;
      Real sd_max_inv;
      Real sdd_max_inv;
      Real sd_max;
      Real sdd_max;
      Real sdd;
      Real aux1[nout];
      Real aux2[nout];
      SI.Time Ta1;
      SI.Time Ta2;
      SI.Time Tv;
      SI.Time Te;
      Boolean noWphase;
      SI.Time Ta1s;
      SI.Time Ta2s;
      SI.Time Tvs;
      SI.Time Tes;
      Real sd_max2;
      Real s1;
      Real s2;
      Real s3;
      Real s;
      Real sd;
      Real r_s;
      Real r_sd;
      Real r_sdd;

      function position
      annotation(derivative=position_der);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         output Real q;
      algorithm 
        q :=q_qd_qdd[1];
      end position;

      function position_der
      annotation(derivative=position_der2);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         output Real qd;
      algorithm 
        qd :=q_qd_qdd[2];
      end position_der;

      function position_der2
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         input Real dummy_der2;
         output Real qdd;
      algorithm 
        qdd :=q_qd_qdd[3];
      end position_der2;
    equation 
      for i in 1:nout loop
        aux1[i] = p_deltaq[i]/p_qd_max[i];
        aux2[i] = p_deltaq[i]/p_qdd_max[i];
      end for;

      sd_max_inv = max(abs(aux1));
      sdd_max_inv = max(abs(aux2));

      if sd_max_inv <= eps or sdd_max_inv <= eps then
        sd_max = 0;
        sdd_max = 0;
        Ta1 = 0;
        Ta2 = 0;
        noWphase = false;
        Tv = 0;
        Te = 0;
        Ta1s = 0;
        Ta2s = 0;
        Tvs = 0;
        Tes = 0;
        sd_max2 = 0;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        r_sdd = 0;
        r_sd = 0;
        r_s = 0;
      else
        sd_max = 1/max(abs(aux1));
        sdd_max = 1/max(abs(aux2));
        Ta1 = sqrt(1/sdd_max);
        Ta2 = sd_max/sdd_max;
        noWphase = Ta2 >= Ta1;
        Tv = if noWphase then Ta1 else 1/sd_max;
        Te = if noWphase then Ta1 + Ta1 else Tv + Ta2;
        Ta1s = Ta1 + startTime;
        Ta2s = Ta2 + startTime;
        Tvs = Tv + startTime;
        Tes = Te + startTime;
        sd_max2 = sdd_max*Ta1;
        s1 = sdd_max*(if noWphase then Ta1*Ta1 else Ta2*Ta2)/2;
        s2 = s1 + (if noWphase then sd_max2*(Te - Ta1) - (sdd_max/2)*(Te - Ta1)
          ^2 else sd_max*(Tv - Ta2));
        s3 = s2 + sd_max*(Te - Tv) - (sdd_max/2)*(Te - Tv)*(Te - Tv);

        if time < startTime then
          r_sdd = 0;
          r_sd = 0;
          r_s = 0;
        elseif noWphase then
          if time < Ta1s then
            r_sdd = sdd_max;
            r_sd = sdd_max*(time - startTime);
            r_s = (sdd_max/2)*(time - startTime)*(time - startTime);
          elseif time < Tes then
            r_sdd = -sdd_max;
            r_sd = sd_max2 - sdd_max*(time - Ta1s);
            r_s = s1 + sd_max2*(time - Ta1s) - (sdd_max/2)*(time - Ta1s)*(time
               - Ta1s);
          else
            r_sdd = 0;
            r_sd = 0;
            r_s = s2;
          end if;
        elseif time < Ta2s then
          r_sdd = sdd_max;
          r_sd = sdd_max*(time - startTime);
          r_s = (sdd_max/2)*(time - startTime)*(time - startTime);
        elseif time < Tvs then
          r_sdd = 0;
          r_sd = sd_max;
          r_s = s1 + sd_max*(time - Ta2s);
        elseif time < Tes then
          r_sdd = -sdd_max;
          r_sd = sd_max - sdd_max*(time - Tvs);
          r_s = s2 + sd_max*(time - Tvs) - (sdd_max/2)*(time - Tvs)*(time - Tvs);
        else
          r_sdd = 0;
          r_sd = 0;
          r_s = s3;
        end if;

      end if;

      // acceleration
      qdd = p_deltaq*sdd;
      qd = p_deltaq*sd;
      q = p_q_begin + p_deltaq*s;
      endTime = Tes;

      s = position({r_s, r_sd, r_sdd}, time);
      sd = der(s);
      sdd = der(sd);

      // report when axis is moving
      motion_ref = time <= endTime;
      for i in 1:nout loop
        moving[i] = if abs(q_begin[i] - q_end[i]) > eps then motion_ref else false;
      end for;

    end KinematicPTP2;

* * * * *

![image67](Modelica.Blocks.Sources.TimeTableI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).TimeTable
============================================================================================================================================

**Generate a (possibly discontinuous) signal by linear interpolation in
a table**

Information
-----------

::

This block generates an output signal by **linear interpolation** in a
table. The time points and function values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the second column contains the data to be interpolated. The
table interpolation has the following proporties:

-   The time points need to be **monotonically increasing**.
-   **Discontinuities** are allowed, by providing the same time point
    twice in the table.
-   Values **outside** of the table range, are computed by
    **extrapolation** through the last or first two points of the table.
-   If the table has only **one row**, no interpolation is performed and
    the function value is just returned independantly of the actual time
    instant.
-   Via parameters **startTime** and **offset** the curve defined by the
    table can be shifted both in time and in the ordinate value.
-   The table is implemented in a numerically sound way by generating
    **time events** at interval boundaries, in order to not integrate
    over a discontinuous or not differentiable points.

Example:

    table = [0  0
             1  0
             1  1
             2  4
             3  9
             4 16]

> If, e.g., time = 1.0, the output y = 0.0 (before event), 1.0 (after
> event)
>   ~ e.g., time = 1.5, the output y = 2.5, e.g., time = 2.0, the output
>     y = 4.0, e.g., time = 5.0, the output y = 23.0 (i.e.,
>     extrapolation).
>
::

Extends from
[Interfaces.SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO)
(Single Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name    Defau Description
                                     lt    
  -------------------------- ------- ----- --------------------------------
  Real                       table[:       Table matrix (time = first
                             ,             column; e.g., table=[0, 0; 1, 1;
                             2]            2, 4])

  Real                       offset  0     Offset of output signal

  [Time](Modelica_SIunits.ht startTi 0     Output = offset for time <
  ml#Modelica.SIunits.Time)  me            startTime [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mode      output signal
  lica.Blocks.Interfaces.RealOutput)                     
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block TimeTable 
      "Generate a (possibly discontinuous) signal by linear interpolation in a table"

      parameter Real table[:, 2] 
        "Table matrix (time = first column; e.g., table=[0, 0; 1, 1; 2, 4])";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      Real a "Interpolation coefficients a of actual interval (y=a*x+b)";
      Real b "Interpolation coefficients b of actual interval (y=a*x+b)";
      Integer last(start=1) "Last used lower grid index";
      SIunits.Time nextEvent(start=0, fixed=true) "Next event instant";

      function getInterpolationCoefficients 
        "Determine interpolation coefficients and next time event"
        input Real table[:, 2] "Table for interpolation";
        input Real offset "y-offset";
        input Real startTime "time-offset";
        input Real t "Actual time instant";
        input Integer last "Last used lower grid index";
        input Real TimeEps "Relative epsilon to check for identical time instants";
        output Real a "Interpolation coefficients a (y=a*x + b)";
        output Real b "Interpolation coefficients b (y=a*x + b)";
        output Real nextEvent "Next event instant";
        output Integer next "New lower grid index";
      protected 
        Integer columns=2 "Column to be interpolated";
        Integer ncol=2 "Number of columns to be interpolated";
        Integer nrow=size(table, 1) "Number of table rows";
        Integer next0;
        Real tp;
        Real dt;
      algorithm 
        next := last;
        nextEvent := t - TimeEps*abs(t);
        // in case there are no more time events
        tp := t + TimeEps*abs(t) - startTime;

        if tp < 0.0 then
          // First event not yet reached
          nextEvent := startTime;
          a := 0;
          b := offset;
        elseif nrow < 2 then
          // Special action if table has only one row
          a := 0;
          b := offset + table[1, columns];
        else

            // Find next time event instant. Note, that two consecutive time instants
          // in the table may be identical due to a discontinuous point.
          while next < nrow and tp >= table[next, 1] loop
            next := next + 1;
          end while;

          // Define next time event, if last table entry not reached
          if next < nrow then
            nextEvent := startTime + table[next, 1];
          end if;

          // Determine interpolation coefficients
          next0 := next - 1;
          dt := table[next, 1] - table[next0, 1];
          if dt <= TimeEps*abs(table[next, 1]) then
            // Interpolation interval is not big enough, use "next" value
            a := 0;
            b := offset + table[next, columns];
          else
            a := (table[next, columns] - table[next0, columns])/dt;
            b := offset + table[next0, columns] - a*table[next0, 1];
          end if;
        end if;
        // Take into account startTime "a*(time - startTime) + b"
        b := b - a*startTime;
      end getInterpolationCoefficients;
    algorithm 
      when {time >= pre(nextEvent),initial()} then
        (a,b,nextEvent,last) := getInterpolationCoefficients(table, offset,
          startTime, time, last, 100*Modelica.Constants.eps);
      end when;
    equation 
      y = a*time + b;
    end TimeTable;

* * * * *

![image68](Modelica.Blocks.Sources.CombiTimeTableI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).CombiTimeTable
======================================================================================================================================================

**Table look-up with respect to time and linear/perodic extrapolation
methods (data from matrix/file)**

Information
-----------

::

This block generates an output signal y[:] by **linear interpolation**
in a table. The time points and function values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the other columns contain the data to be interpolated.

Via parameter **columns** it can be defined which columns of the table
are interpolated. If, e.g., columns={2,4}, it is assumed that 2 output
signals are present and that the first output is computed by
interpolation of column 2 and the second output is computed by
interpolation of column 4 of the table matrix. The table interpolation
has the following properties:

-   The time points need to be **monotonically increasing**.
-   **Discontinuities** are allowed, by providing the same time point
    twice in the table.
-   Values **outside** of the table range, are computed by extrapolation
    according to the setting of parameter **extrapolation**:

        extrapolation = 0: hold the first or last value of the table,
                           if outside of the range.
                      = 1: extrapolate through the last or first two
                           points of the table.
                      = 2: periodically repeat the table data
                           (periodical function).

-   Via parameter **smoothness** it is defined how the data is
    interpolated:

        smoothness = 0: linear interpolation
                   = 1: smooth interpolation with Akima Splines such
                        that der(y) is continuous.

-   If the table has only **one row**, no interpolation is performed and
    the table values of this row are just returned.
-   Via parameters **startTime** and **offset** the curve defined by the
    table can be shifted both in time and in the ordinate value. The
    time instants stored in the table are therefore **relative** to
    **startTime**. If time < startTime, no interpolation is performed
    and the offset is used as ordinate value for all outputs.
-   The table is implemented in a numerically sound way by generating
    **time events** at interval boundaries, in order to not integrate
    over a discontinuous or not differentiable points.
-   For special applications it is sometimes needed to know the minimum
    and maximum time instant defined in the table as a parameter. For
    this reason parameters **t\_min** and **t\_max** are provided and
    can be access from the outside of the table object.

Example:

    table = [0  0
             1  0
             1  1
             2  4
             3  9
             4 16]; extrapolation = 1 (default)

> If, e.g., time = 1.0, the output y = 0.0 (before event), 1.0 (after
> event)
>   ~ e.g., time = 1.5, the output y = 2.5, e.g., time = 2.0, the output
>     y = 4.0, e.g., time = 5.0, the output y = 23.0 (i.e.,
>     extrapolation via last 2 points).
>
The table matrix can be defined in the following ways:

1.  Explicitly supplied as **parameter matrix** "table", and the other
    parameters have the following values:

        tableName is "NoName" or has only blanks,
        fileName  is "NoName" or has only blanks.

2.  **Read** from a **file** "fileName" where the matrix is stored as
    "tableName". Both ASCII and binary file format is possible. (the
    ASCII format is described below). It is most convenient to generate
    the binary file from Matlab (Matlab 4 storage format), e.g., by
    command

        save tables.mat tab1 tab2 tab3 -V4

    when the three tables tab1, tab2, tab3 should be used from the
    model.

3.  Statically stored in function "usertab" in file "usertab.c". The
    matrix is identified by "tableName". Parameter fileName = "NoName"
    or has only blanks.

Table definition methods (1) and (3) do **not** allocate dynamic memory,
and do not access files, whereas method (2) does. Therefore (1) and (3)
are suited for hardware-in-the-loop simulation (e.g., with dSpace
hardware). When the constant "NO\_FILE" is defined in "usertab.c", all
parts of the source code of method (2) are removed by the
C-preprocessor, such that no dynamic memory allocation and no access to
files takes place.

If tables are read from an ASCII-file, the file need to have the
following structure ("-----" is not part of the file content):

    -----------------------------------------------------
    #1
    double tab1(6,2)   # comment line
      0   0
      1   0
      1   1
      2   4
      3   9
      4  16
    double tab2(6,2)   # another comment line
      0   0
      2   0
      2   2
      4   8
      6  18
      8  32
    -----------------------------------------------------

Note, that the first two characters in the file need to be "\#1".
Afterwards, the corresponding matrix has to be declared with type, name
and actual dimensions. Finally, in successive rows of the file, the
elements of the matrix have to be given. Several matrices may be defined
one after another.

::

Extends from
[Modelica.Blocks.Interfaces.MO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MO)
(Multiple Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type                           Name   Default      Description
  ------------------------------ ------ ------------ ----------------------
  Integer                        nout   max([size(co Number of outputs
                                        lumns,       
                                        1); size(... 

  table data definition                              

  Boolean                        tableO false        = true, if table is
                                 nFile               defined on file or in
                                                     function usertab

  Real                           table[ fill(0.0, 0, Table matrix (time =
                                 :,     2)           first column; e.g.,
                                 :]                  table=[0,2])

  String                         tableN "NoName"     Table name on file or
                                 ame                 in function usertab
                                                     (see docu)

  String                         fileNa "NoName"     File where matrix is
                                 me                  stored

  table data interpretation                          

  Integer                        column 2:size(table Columns of table to be
                                 s[:]   ,            interpolated
                                        2)           

  [Smoothness](Modelica_Blocks_T smooth Modelica.Blo Smoothness of table
  ypes.html#Modelica.Blocks.Type ness   cks.Types.Sm interpolation
  s.Smoothness)                         ooth...      

  [Extrapolation](Modelica_Block extrap Modelica.Blo Extrapolation of data
  s_Types.html#Modelica.Blocks.T olatio cks.Types.Ex outside the definition
  ypes.Extrapolation)            n      trap...      range

  Real                           offset {0}          Offsets of output
                                 [:]                 signals

  [Time](Modelica_SIunits.html#M startT 0            Output = offset for
  odelica.SIunits.Time)          ime                 time < startTime [s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- ------------------
  output                                          y[nou Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo t]    output signals
  delica.Blocks.Interfaces.RealOutput)                  
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model CombiTimeTable 
      "Table look-up with respect to time and linear/perodic extrapolation methods (data from matrix/file)"

      parameter Boolean tableOnFile=false 
        "= true, if table is defined on file or in function usertab";
      parameter Real table[:, :] = fill(0.0,0,2) 
        "Table matrix (time = first column; e.g., table=[0,2])";
      parameter String tableName="NoName" 
        "Table name on file or in function usertab (see docu)";
      parameter String fileName="NoName" "File where matrix is stored";
      parameter Integer columns[:]=2:size(table, 2) 
        "Columns of table to be interpolated";
      parameter Modelica.Blocks.Types.Smoothness smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments 
        "Smoothness of table interpolation";
      parameter Modelica.Blocks.Types.Extrapolation extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints 
        "Extrapolation of data outside the definition range";
      parameter Real offset[:]={0} "Offsets of output signals";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Modelica.Blocks.Interfaces.MO(final nout=max([size(columns, 1); size(offset, 1)]));
      final parameter Real t_min(fixed=false) 
        "Minimum abscissa value defined in table";
      final parameter Real t_max(fixed=false) 
        "Maximum abscissa value defined in table";

    protected 
      final parameter Real p_offset[nout]=(if size(offset, 1) == 1 then ones(nout)
           *offset[1] else offset);

      Integer tableID;

      function tableTimeInit 
        "Initialize 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input String tableName;
        input String fileName;
        input Real table[ :, :];
        input Real startTime;
        input Modelica.Blocks.Types.Smoothness smoothness;
        input Modelica.Blocks.Types.Extrapolation extrapolation;
        output Integer tableID;
      external "C" tableID=  ModelicaTables_CombiTimeTable_init(
                     tableName, fileName, table, size(table, 1), size(table, 2),
                     startTime, smoothness, extrapolation);
      end tableTimeInit;

      function tableTimeIpo 
        "Interpolate 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        input Integer icol;
        input Real timeIn;
        output Real value;
      external "C" value =
                         ModelicaTables_CombiTimeTable_interpolate(tableID, icol, timeIn);
      end tableTimeIpo;

      function tableTimeTmin 
        "Return minimum time value of 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        output Real Tmin "minimum time value in table";
      external "C" Tmin =
                        ModelicaTables_CombiTimeTable_minimumTime(tableID);
      end tableTimeTmin;

      function tableTimeTmax 
        "Return maximum time value of 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        output Real Tmax "maximum time value in table";
      external "C" Tmax =
                        ModelicaTables_CombiTimeTable_maximumTime(tableID);
      end tableTimeTmax;

    equation 
      if tableOnFile then
        assert(tableName<>"NoName", "tableOnFile = true and no table name given");
      end if;
      if not tableOnFile then
        assert(size(table,1) > 0 and size(table,2) > 0, "tableOnFile = false and parameter table is an empty matrix");
      end if;
      for i in 1:nout loop
        y[i] = p_offset[i] + tableTimeIpo(tableID, columns[i], time);
      end for;
      when initial() then
        tableID=tableTimeInit((if not tableOnFile then "NoName" else tableName),
                              (if not tableOnFile then "NoName" else fileName), table,
                              startTime, smoothness, extrapolation);
      end when;
    initial equation 
        t_min=tableTimeTmin(tableID);
        t_max=tableTimeTmax(tableID);
    end CombiTimeTable;

* * * * *

![image69](Modelica.Blocks.Sources.BooleanConstantI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).BooleanConstant
========================================================================================================================================================

**Generate constant signal of type Boolean**

Information
-----------

::

The Boolean output y is a constant signal:

::

Extends from
[Interfaces.partialBooleanSource](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource)
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ --------------------------
  Boolean      k         true         Constant output value

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanConstant "Generate constant signal of type Boolean"
      parameter Boolean k=true "Constant output value";
      extends Interfaces.partialBooleanSource;

    equation 
      y = k;
    end BooleanConstant;

* * * * *

![image70](Modelica.Blocks.Sources.BooleanStepI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).BooleanStep
================================================================================================================================================

**Generate step signal of type Boolean**

Information
-----------

::

The Boolean output y is a step signal:

::

Extends from
[Interfaces.partialBooleanSource](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource)
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name      Default Description
  ---------------------------------- --------- ------- ---------------------
  [Time](Modelica_SIunits.html#Model startTime 0       Time instant of step
  ica.SIunits.Time)                                    start [s]

  Boolean                            startValu false   Output before
                                     e                 startTime
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanStep "Generate step signal of type Boolean"
      parameter Modelica.SIunits.Time startTime=0 "Time instant of step start";
      parameter Boolean startValue = false "Output before startTime";

      extends Interfaces.partialBooleanSource;
    equation 
     y = if time >= startTime then not startValue else startValue;
    end BooleanStep;

* * * * *

![image71](Modelica.Blocks.Sources.BooleanPulseI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).BooleanPulse
==================================================================================================================================================

**Generate pulse signal of type Boolean**

Information
-----------

::

The Boolean output y is a pulse signal:

::

Extends from
[Modelica.Blocks.Interfaces.partialBooleanSource](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource)
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                               Name     Default Description
  ---------------------------------- -------- ------- ---------------------
  Real                               width    50      Width of pulse in %
                                                      of period

  [Time](Modelica_SIunits.html#Model period           Time for one period
  ica.SIunits.Time)                                   [s]

  [Time](Modelica_SIunits.html#Model startTim 0       Time instant of first
  ica.SIunits.Time)                  e                pulse [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanPulse "Generate pulse signal of type Boolean"

      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100) = 50 "Width of pulse in % of period";
      parameter Modelica.SIunits.Time period(final min=Modelica.Constants.small,start=1) 
        "Time for one period";
      parameter Modelica.SIunits.Time startTime=0 "Time instant of first pulse";
      extends Modelica.Blocks.Interfaces.partialBooleanSource;

    protected 
      parameter Modelica.SIunits.Time Twidth=period*width/100 "width of one pulse";
      discrete Modelica.SIunits.Time pulsStart "Start time of pulse";
    initial equation 
      pulsStart = startTime;
    equation 
        when sample(startTime, period) then
          pulsStart = time;
        end when;
        y = time >= pulsStart and time < pulsStart + Twidth;
    end BooleanPulse;

* * * * *

![image72](Modelica.Blocks.Sources.SampleTriggerI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).SampleTrigger
====================================================================================================================================================

**Generate sample trigger signal**

Information
-----------

::

The Boolean output y is a trigger signal where the output y is only
**true** at sample times (defined by parameter **period**) and is
otherwise **false**.

::

Extends from
[Interfaces.partialBooleanSource](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource)
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name    Defaul Description
                                           t      
  -------------------------------- ------- ------ -------------------------
  [Time](Modelica_SIunits.html#Mod period         Sample period [s]
  elica.SIunits.Time)                             

  [Time](Modelica_SIunits.html#Mod startTi 0      Time instant of first
  elica.SIunits.Time)              me             sample trigger [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block SampleTrigger "Generate sample trigger signal"
      parameter Modelica.SIunits.Time period(final min=Modelica.Constants.small,start=0.01) 
        "Sample period";
      parameter Modelica.SIunits.Time startTime=0 
        "Time instant of first sample trigger";
      extends Interfaces.partialBooleanSource;

    equation 
      y = sample(startTime, period);
    end SampleTrigger;

* * * * *

![image73](Modelica.Blocks.Sources.BooleanTableI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).BooleanTable
==================================================================================================================================================

**Generate a Boolean output signal based on a vector of time instants**

Information
-----------

::

The Boolean output y is a signal defined by parameter vector **table**.
In the vector time points are stored. At every time point, the output y
changes its value to the negated value of the previous one.

::

Extends from
[Interfaces.partialBooleanSource](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource)
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
----------

  -------------------------------------------------------------------------
  Type                  Name  Defa Description
                              ult  
  --------------------- ----- ---- ----------------------------------------
  Boolean               start fals Start value of y. At time = table[1], y
                        Value e    changes to 'not startValue'

  [Time](Modelica_SIuni table      Vector of time points. At every time
  ts.html#Modelica.SIun [:]        point, the output y gets its opposite
  its.Time)                        value (e.g., table={0,1}) [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block BooleanTable 
      "Generate a Boolean output signal based on a vector of time instants"

      parameter Boolean startValue = false 
        "Start value of y. At time = table[1], y changes to 'not startValue'";
      parameter Modelica.SIunits.Time table[:] 
        "Vector of time points. At every time point, the output y gets its opposite value (e.g., table={0,1})";
      extends Interfaces.partialBooleanSource;

    protected 
      function getFirstIndex "Get first index of table and check table"
        input Real table[:] "Vector of time instants";
        input Modelica.SIunits.Time simulationStartTime "Simulation start time";
        input Boolean startValue "Value of y for y < table[1]";
        output Integer index "First index to be used";
        output Modelica.SIunits.Time nextTime "Time instant of first event";
        output Boolean y "Value of y at simulationStartTime";
      protected 
        Modelica.SIunits.Time t_last;
        Integer j;
        Integer n=size(table,1) "Number of table points";
      algorithm 
        if size(table,1) == 0 then
           index :=0;
           nextTime :=-Modelica.Constants.inf;
           y :=startValue;
        elseif size(table,1) == 1 then
           index :=1;
           if table[1] > simulationStartTime then
              nextTime :=table[1];
              y        :=startValue;
           else
              nextTime :=simulationStartTime;
              y        :=startValue;
           end if;
        else

        // Check whether time values are strict monotonically increasing
          t_last :=table[1];
          for i in 2:n loop
             assert(table[i] > t_last,
               "Time values of table not strict monotonically increasing: table[" +
               String(i-1) + "] = " + String(table[i-1]) + "table[" + String(i)   +
               "] = " + String(table[i]));
          end for;

          // Determine first index in table
          j := 1;
          y := startValue;
          while j < n and table[j] <= simulationStartTime loop
            y :=not  y;
            j := j + 1;
          end while;

          if j == 1 then
             nextTime := table[1];
             y        := startValue;
          elseif j == n and table[n] <= simulationStartTime then
             nextTime := simulationStartTime - 1;
             y        :=not  y;
          else
             nextTime := table[j];
          end if;

          index := j;
        end if;
      end getFirstIndex;

      parameter Integer n = size(table,1) "Number of table points";
      Modelica.SIunits.Time nextTime;
      Integer index "Index of actual table entry";
    initial algorithm 
      (index, nextTime, y) :=getFirstIndex(table, time, startValue);
    algorithm 
      when time >= pre(nextTime) and n > 0 then
         if index < n then
            index    := index + 1;
            nextTime := table[index];
            y        :=not  y;
         elseif index == n then
            index := index + 1;
            y     :=not  y;
         end if;
      end when;
    end BooleanTable;

* * * * *

![image74](Modelica.Blocks.Sources.RadioButtonSourceI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).RadioButtonSource
============================================================================================================================================================

**Boolean signal source that mimis a radio button**

Information
-----------

::

Boolean signal source that mimics a radio button: Via a table, a radio
button is pressed (i.e., the output 'on' is set to true) and is reset
when an element of the Boolean vector 'reset' becomes true. If both
appear at the same time instant, setting the button according to the
table has a higher priority as reseting the button. Example:

    RadioButtonSource start(buttonTimeTable={1,3}, reset={stop.on});
    RadioButtonSource stop (buttonTimeTable={2,4}, reset={start.on});

The "start" button is pressed at time=1 s and time=3 s, whereas the
"stop" button is pressed at time=2 s and time=4 s. This gives the
following result:

> ![image75](../Resources/Images/Blocks/Sources/RadioButtonSource.png)

This example is also available in
[Modelica.Blocks.Examples.Interaction1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.Interaction1)

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                       Name       Defau Description
                                        lt    
  -------------------------- ---------- ----- -----------------------------
  [Time](Modelica_SIunits.ht buttonTime       Time instants where button is
  ml#Modelica.SIunits.Time)  Table[:]         pressed [s]

  Time varying expressions                    

  Boolean                    reset[:]   {fals Reset button to false, if an
                                        e}    element of reset becomes true
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  output                                                    on    
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Modelica.       
  Blocks.Interfaces.BooleanOutput)                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block RadioButtonSource 
      "Boolean signal source that mimis a radio button"

      parameter Modelica.SIunits.Time buttonTimeTable[:] 
        "Time instants where button is pressed";
      input Boolean reset[:]={false} 
        "Reset button to false, if an element of reset becomes true";

      Modelica.Blocks.Interfaces.BooleanOutput on(start=false,fixed=true);
    protected 
      Modelica.Blocks.Sources.BooleanTable table(table=buttonTimeTable);
      parameter Integer nReset = size(reset,1);
      Boolean pre_reset[nReset];
    initial equation 
      pre(pre_reset)=fill(false,nReset);
      pre(reset) = fill(false,nReset);
    algorithm 
      pre_reset :=pre(reset);
      when pre_reset then
         on := false;
      end when;

      when change(table.y) then
         on := true;
      end when;

    end RadioButtonSource;

* * * * *

![image76](Modelica.Blocks.Sources.IntegerConstantI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).IntegerConstant
========================================================================================================================================================

**Generate constant signal of type Integer**

Information
-----------

::

The Integer output y is a constant signal:

::

Extends from
[Interfaces.IntegerSO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSO)
(Single Integer Output continuous control block).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ --------------------------
  Integer      k                      Constant output value

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#M      Integer output
  odelica.Blocks.Interfaces.IntegerOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerConstant "Generate constant signal of type Integer"
      parameter Integer k(start=1) "Constant output value";
      extends Interfaces.IntegerSO;

    equation 
      y = k;
    end IntegerConstant;

* * * * *

![image77](Modelica.Blocks.Sources.IntegerStepI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).IntegerStep
================================================================================================================================================

**Generate step signal of type Integer**

Information
-----------

::

The Integer output y is a step signal:

::

Extends from
[Interfaces.IntegerSignalSource](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSignalSource)
(Base class for continuous Integer signal source).

Parameters
----------

  ------------------------------------------------------------------------
  Type                            Name    Defaul Description
                                          t      
  ------------------------------- ------- ------ -------------------------
  Integer                         height  1      Height of step

  Integer                         offset  0      Offset of output signal y

  [Time](Modelica_SIunits.html#Mo startTi 0      Output y = offset for
  delica.SIunits.Time)            me             time < startTime [s]
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#M      Integer output
  odelica.Blocks.Interfaces.IntegerOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerStep "Generate step signal of type Integer"
      parameter Integer height=1 "Height of step";
      extends Interfaces.IntegerSignalSource;
    equation 
      y = offset + (if time < startTime then 0 else height);
    end IntegerStep;

* * * * *

![image78](Modelica.Blocks.Sources.IntegerTableI.png) [Modelica.Blocks.Sources](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources).IntegerTable
==================================================================================================================================================

**Generate an Integer output signal based on a table matrix with [time,
yi] values**

Information
-----------

::

This block generates an Integer output signal by using a table. The time
points and y-values are stored in a matrix **table[i,j]**, where the
first column table[:,1] contains the Real time points and the second
column contains the Integer value of the output y at this time point.

An assert is triggered, if no table values are provided, if the time
points are not strict monotonically increasing, or if the second column
of the table matrix does not contain Integer values.

If the simulation time is less than the first table time instant, then
the output y = table[1,2]. If the simulation time is greater than the
last table time instant, then the output y = table[end,2].

Example:

    table = [  0, 1;
               1, 4;
             1.5, 5;
               2, 6];

results in the following output:

::

Extends from
[Interfaces.IntegerSO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSO)
(Single Integer Output continuous control block).

Parameters
----------

  -------------------------------------------------------------------------
  Type   Name        Default       Description
  ------ ----------- ------------- ----------------------------------------
  Real   table[:, 2] fill(0, 0, 2) Table matrix (first column: time; second
                                   column: y)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  output                                            y    Connector of
  [IntegerOutput](Modelica_Blocks_Interfaces.html#M      Integer output
  odelica.Blocks.Interfaces.IntegerOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block IntegerTable 
      "Generate an Integer output signal based on a table matrix with [time, yi] values"

      parameter Real table[:, 2] = fill(0, 0, 2) 
        "Table matrix (first column: time; second column: y)";

      extends Interfaces.IntegerSO;

    protected 
      function getFirstIndex "Get first index of table and check table"
        input Real table[:,2] "Table matrix";
        input Modelica.SIunits.Time simulationStartTime "Simulation start time";
        output Integer index "First index to be used";
        output Modelica.SIunits.Time nextTime "Time instant of first event";
        output Integer y "Value of y at simulationStartTime";
      protected 
        Modelica.SIunits.Time t_last;
        Integer j;
        Integer n=size(table,1) "Number of table points";
      algorithm 
        if size(table,1) == 0 then
           index :=0;
           nextTime := simulationStartTime - 1;
           y :=0;
        else
           // Check whether time values are strict monotonically increasing
           t_last :=table[1,1];
           for i in 2:n loop
              assert(table[i,1] > t_last,
                "Time values of table not strict monotonically increasing: table[" +
                String(i-1) + ",1] = " + String(table[i-1,1]) + "table[" + String(i)   +
                ",1] = " + String(table[i,1]));
           end for;

           // Check that all values in the second column are Integer values
           for i in 1:n loop
              assert(rem(table[i,2],1) == 0.0, "Table value is not an Integer: table[" +
                String(i) + ",2] = " + String(table[i,2]));
           end for;

           // Determine index in table for "nextTime"
           j := 1;
           y := integer(table[1,2]);
           while j < n and table[j,1] <= simulationStartTime loop
             j := j + 1;
           end while;

           if j == 1 then
              nextTime := table[1,1];
              y        := integer(table[1,2]);
           elseif j == n and table[n,1] <= simulationStartTime then
              nextTime := simulationStartTime - 1;
              y        := integer(table[n,2]);
           else
              nextTime := table[j,1];
              y        := integer(table[j-1,2]);
           end if;

           index := j;
        end if;
      end getFirstIndex;

      parameter Integer n = size(table,1) "Number of table points";
      Modelica.SIunits.Time nextTime;
      Integer index "Index of actual table entry";
    initial algorithm 
      (index, nextTime, y) :=getFirstIndex(table, time);
    equation 
      assert(size(table,1) > 0, "No table values defined.");
      when time >= pre(nextTime) then
         y        = integer(table[pre(index),2]);
         index    = pre(index) + 1;
         nextTime = if index <= n then table[index,1] else pre(nextTime) - 1;
      end when;
    end IntegerTable;

* * * * *

[Modelica.Blocks.Sources.KinematicPTP2](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.KinematicPTP2).position\_der
=========================================================================================================================

Inputs
------

  ------------------------------------------------------------------------
  Typ Name    Defau Description
  e           lt    
  --- ------- ----- ------------------------------------------------------
  Rea q\_qd\_       Required values for position, speed, acceleration
  l   qdd[3]        

  Rea dummy         Just to have one input signal that should be
  l                 differentiated to avoid possible problems in the
                    Modelica tool (is not used)

  Rea dummy\_       
  l   der           
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      qd        

Modelica definition
-------------------

    function position_der
      annotation(derivative=position_der2);
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       output Real qd;
    algorithm 
      qd :=q_qd_qdd[2];
    end position_der;

* * * * *

[Modelica.Blocks.Sources.KinematicPTP2](Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.KinematicPTP2).position\_der2
==========================================================================================================================

Inputs
------

  ------------------------------------------------------------------------
  Typ Name    Defau Description
  e           lt    
  --- ------- ----- ------------------------------------------------------
  Rea q\_qd\_       Required values for position, speed, acceleration
  l   qdd[3]        

  Rea dummy         Just to have one input signal that should be
  l                 differentiated to avoid possible problems in the
                    Modelica tool (is not used)

  Rea dummy\_       
  l   der           

  Rea dummy\_       
  l   der2          
  ------------------------------------------------------------------------

Outputs
-------

  Type      Name      Description
  --------- --------- ----------------
  Real      qdd       

Modelica definition
-------------------

    function position_der2
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       input Real dummy_der2;
       output Real qdd;
    algorithm 
      qdd :=q_qd_qdd[3];
    end position_der2;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:40 2010.
