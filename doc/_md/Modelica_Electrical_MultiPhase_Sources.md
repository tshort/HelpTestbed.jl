% Modelica.Electrical.MultiPhase.Sources
% 
% 

[Modelica.Electrical.MultiPhase](Modelica_Electrical_MultiPhase.html#Modelica.Electrical.MultiPhase).Sources
============================================================================================================

**Multiphase voltage and current sources**

Information
-----------

::

This package contains time-dependend and controlled multiphase voltage
and current sources:

-   SignalVoltage: fed by Modelica.Blocks.Sources arbitrary waveforms of
    voltages are possible
-   SineVoltage : phase shift between consecutive voltages by default
    `= pi/m`
-   SignalCurrent: fed by Modelica.Blocks.Sources arbitrary waveforms of
    currents are possible
-   SineCurrent : phase shift between consecutive currents by default
    `= pi/m`

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                        Description
  ----------------------------------------------------------- ------------
  ![image6](Modelica.Electrical.MultiPhase.Sources.SignalVolt Multiphase
  ageS.png)                                                   signal
  [SignalVoltage](Modelica_Electrical_MultiPhase_Sources.html voltage
  #Modelica.Electrical.MultiPhase.Sources.SignalVoltage)      source

  ![image7](Modelica.Electrical.MultiPhase.Sources.ConstantVo Multiphase
  ltageS.png)                                                 constant
  [ConstantVoltage](Modelica_Electrical_MultiPhase_Sources.ht voltage
  ml#Modelica.Electrical.MultiPhase.Sources.ConstantVoltage)  source

  ![image8](Modelica.Electrical.MultiPhase.Sources.SineVoltag Multiphase
  eS.png)                                                     sine voltage
  [SineVoltage](Modelica_Electrical_MultiPhase_Sources.html#M source
  odelica.Electrical.MultiPhase.Sources.SineVoltage)          

  ![image9](Modelica.Electrical.MultiPhase.Sources.SignalCurr Multiphase
  entS.png)                                                   sine current
  [SignalCurrent](Modelica_Electrical_MultiPhase_Sources.html source
  #Modelica.Electrical.MultiPhase.Sources.SignalCurrent)      

  ![image10](Modelica.Electrical.MultiPhase.Sources.ConstantC Multiphase
  urrentS.png)                                                constant
  [ConstantCurrent](Modelica_Electrical_MultiPhase_Sources.ht current
  ml#Modelica.Electrical.MultiPhase.Sources.ConstantCurrent)  source

  ![image11](Modelica.Electrical.MultiPhase.Sources.SineCurre Multiphase
  ntS.png)                                                    sine current
  [SineCurrent](Modelica_Electrical_MultiPhase_Sources.html#M source
  odelica.Electrical.MultiPhase.Sources.SineCurrent)          
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Electrical.MultiPhase.Sources.SignalVoltageI.png) [Modelica.Electrical.MultiPhase.Sources](Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources).SignalVoltage
================================================================================================================================================================================================================

**Multiphase signal voltage source**

Information
-----------

::

Contains m signal controlled voltage sources
(Modelica.Electrical.Analog.Sources.SignalVoltage)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                          Name Description
  --------------------------------------------- ---- ----------------------
  [PositivePlug](Modelica_Electrical_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.MultiPha \_p  
  se.Interfaces.PositivePlug)                        

  [NegativePlug](Modelica_Electrical_MultiPhase plug 
  _Interfaces.html#Modelica.Electrical.MultiPha \_n  
  se.Interfaces.NegativePlug)                        

  input                                         v[m] Voltage between pin p
  [RealInput](Modelica_Blocks_Interfaces.html#M      and n (= p.v - n.v) as
  odelica.Blocks.Interfaces.RealInput)               input signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SignalVoltage "Multiphase signal voltage source"
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.Current i[m] = plug_p.pin.i 
        "Currents flowing into positive plugs";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Blocks.Interfaces.RealInput v[m] 
        "Voltage between pin p and n (= p.v - n.v) as input signal";
      Modelica.Electrical.Analog.Sources.SignalVoltage signalVoltage[m];
    equation 
      connect(signalVoltage.p, plug_p.pin);
      connect(signalVoltage.n, plug_n.pin);
      connect(v, signalVoltage.v);
    end SignalVoltage;

* * * * *

![image13](Modelica.Electrical.MultiPhase.Sources.ConstantVoltageI.png) [Modelica.Electrical.MultiPhase.Sources](Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources).ConstantVoltage
====================================================================================================================================================================================================================

**Multiphase constant voltage source**

Information
-----------

::

Contains m constant voltage sources
(Modelica.Electrical.Analog.Sources.ConstantVoltage)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name  Default Description
  -------------------------------------- ----- ------- --------------------
  Integer                                m     3       Number of phases

  [Voltage](Modelica_SIunits.html#Modeli V[m]          Value of constant
  ca.SIunits.Voltage)                                  voltage [V]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantVoltage "Multiphase constant voltage source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Voltage V[m](start=fill(1, m)) 
        "Value of constant voltage";
      Modelica.Electrical.Analog.Sources.ConstantVoltage constantVoltage[m](
        final V=V);
    equation 
      connect(constantVoltage.p, plug_p.pin);
      connect(constantVoltage.n, plug_n.pin);
    end ConstantVoltage;

* * * * *

![image14](Modelica.Electrical.MultiPhase.Sources.SineVoltageI.png) [Modelica.Electrical.MultiPhase.Sources](Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources).SineVoltage
============================================================================================================================================================================================================

**Multiphase sine voltage source**

Information
-----------

::

Contains m sine voltage sources
(Modelica.Electrical.Analog.Sources.SineVoltage) with a default phase
shift of -(j-1)/m \* 2\*pi for j in 1:m.

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  ------------------------------------------------------------------------
  Type                           Name    Default           Description
  ------------------------------ ------- ----------------- ---------------
  Integer                        m       3                 Number of
                                                           phases

  [Voltage](Modelica_SIunits.htm V[m]                      Amplitudes of
  l#Modelica.SIunits.Voltage)                              sine waves [V]

  [Angle](Modelica_SIunits.html# phase[m -{(j -            Phases of sine
  Modelica.SIunits.Angle)        ]       1)/m\*2\*Modelica waves [rad]
                                         .Const...         

  [Frequency](Modelica_SIunits.h freqHz[                   Frequencies of
  tml#Modelica.SIunits.Frequency m]                        sine waves [Hz]
  )                                                        

  [Voltage](Modelica_SIunits.htm offset[ zeros(m)          Voltage offsets
  l#Modelica.SIunits.Voltage)    m]                        [V]

  [Time](Modelica_SIunits.html#M startTi zeros(m)          Time offsets
  odelica.SIunits.Time)          me[m]                     [s]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SineVoltage "Multiphase sine voltage source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Voltage V[m](start=fill(1, m)) 
        "Amplitudes of sine waves";
      parameter Modelica.SIunits.Angle phase[m]=-{(j - 1)/m*2*Modelica.
          Constants.pi for j in 1:m} "Phases of sine waves";
      parameter Modelica.SIunits.Frequency freqHz[m](start=fill(1, m)) 
        "Frequencies of sine waves";
      parameter Modelica.SIunits.Voltage offset[m]=zeros(m) "Voltage offsets";
      parameter Modelica.SIunits.Time startTime[m]=zeros(m) "Time offsets";
      Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage[m](
        final V=V,
        final phase=phase,
        final freqHz=freqHz,
        final offset=offset,
        final startTime=startTime);
    equation 
      connect(sineVoltage.p, plug_p.pin);
      connect(sineVoltage.n, plug_n.pin);
    end SineVoltage;

* * * * *

![image15](Modelica.Electrical.MultiPhase.Sources.SignalCurrentI.png) [Modelica.Electrical.MultiPhase.Sources](Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources).SignalCurrent
================================================================================================================================================================================================================

**Multiphase sine current source**

Information
-----------

::

Contains m signal controlled current sources
(Modelica.Electrical.Analog.Sources.SignalCurrent)

::

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      m         3            Number of phases

Connectors
----------

  -------------------------------------------------------------------------
  Type                                           Name Description
  ---------------------------------------------- ---- ---------------------
  [PositivePlug](Modelica_Electrical_MultiPhase_ plug 
  Interfaces.html#Modelica.Electrical.MultiPhase \_p  
  .Interfaces.PositivePlug)                           

  [NegativePlug](Modelica_Electrical_MultiPhase_ plug 
  Interfaces.html#Modelica.Electrical.MultiPhase \_n  
  .Interfaces.NegativePlug)                           

  input                                          i[m] Current flowing from
  [RealInput](Modelica_Blocks_Interfaces.html#Mo      pin p to pin n as
  delica.Blocks.Interfaces.RealInput)                 input signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model SignalCurrent "Multiphase sine current source"
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.Voltage v[m] = plug_p.pin.v - plug_n.pin.v 
        "Voltage drops between the two plugs";
      Interfaces.PositivePlug plug_p(final m=m);
      Interfaces.NegativePlug plug_n(final m=m);
      Modelica.Blocks.Interfaces.RealInput i[m] 
        "Current flowing from pin p to pin n as input signal";
      Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent[m];
    equation 
      connect(signalCurrent.p, plug_p.pin);
      connect(signalCurrent.n, plug_n.pin);
      connect(i, signalCurrent.i);
    end SignalCurrent;

* * * * *

![image16](Modelica.Electrical.MultiPhase.Sources.ConstantCurrentI.png) [Modelica.Electrical.MultiPhase.Sources](Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources).ConstantCurrent
====================================================================================================================================================================================================================

**Multiphase constant current source**

Information
-----------

::

Contains m constant current sources
(Modelica.Electrical.Analog.Sources.ConstantCurrent)

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name  Default Description
  -------------------------------------- ----- ------- --------------------
  Integer                                m     3       Number of phases

  [Current](Modelica_SIunits.html#Modeli I[m]          Value of constant
  ca.SIunits.Current)                                  current [A]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model ConstantCurrent "Multiphase constant current source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Current I[m](start=fill(1, m)) 
        "Value of constant current";
      Modelica.Electrical.Analog.Sources.ConstantCurrent constantCurrent[m](
        final I=I);
    equation 
      connect(constantCurrent.p, plug_p.pin);
      connect(constantCurrent.n, plug_n.pin);
    end ConstantCurrent;

* * * * *

![image17](Modelica.Electrical.MultiPhase.Sources.SineCurrentI.png) [Modelica.Electrical.MultiPhase.Sources](Modelica_Electrical_MultiPhase_Sources.html#Modelica.Electrical.MultiPhase.Sources).SineCurrent
============================================================================================================================================================================================================

**Multiphase sine current source**

Information
-----------

::

Contains m sine current sources
(Modelica.Electrical.Analog.Sources.SineCurrent) with a default phase
shift of -(j-1)/m \* 2\*pi for j in 1:m.

::

Extends from
[Interfaces.TwoPlug](Modelica_Electrical_MultiPhase_Interfaces.html#Modelica.Electrical.MultiPhase.Interfaces.TwoPlug)
(Component with one m-phase electric port).

Parameters
----------

  ------------------------------------------------------------------------
  Type                           Name    Default           Description
  ------------------------------ ------- ----------------- ---------------
  Integer                        m       3                 Number of
                                                           phases

  [Current](Modelica_SIunits.htm I[m]                      Amplitudes of
  l#Modelica.SIunits.Current)                              sine waves [A]

  [Angle](Modelica_SIunits.html# phase[m -{(j -            Phases of sine
  Modelica.SIunits.Angle)        ]       1)/m\*2\*Modelica waves [rad]
                                         .Const...         

  [Frequency](Modelica_SIunits.h freqHz[                   Frequencies of
  tml#Modelica.SIunits.Frequency m]                        sine waves [Hz]
  )                                                        

  [Current](Modelica_SIunits.htm offset[ zeros(m)          Current offsets
  l#Modelica.SIunits.Current)    m]                        [A]

  [Time](Modelica_SIunits.html#M startTi zeros(m)          Time offsets
  odelica.SIunits.Time)          me[m]                     [s]
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name  Descrip
                                                                   tion
  ---------------------------------------------------------- ----- -------
  [PositivePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.PositivePlug _p    
  )                                                                

  [NegativePlug](Modelica_Electrical_MultiPhase_Interfaces.h plug\ 
  tml#Modelica.Electrical.MultiPhase.Interfaces.NegativePlug _n    
  )                                                                
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model SineCurrent "Multiphase sine current source"
      extends Interfaces.TwoPlug;
      parameter Modelica.SIunits.Current I[m](start=fill(1, m)) 
        "Amplitudes of sine waves";
      parameter Modelica.SIunits.Angle phase[m]=-{(j - 1)/m*2*Modelica.
          Constants.pi for j in 1:m} "Phases of sine waves";
      parameter Modelica.SIunits.Frequency freqHz[m](start=fill(1, m)) 
        "Frequencies of sine waves";
      parameter Modelica.SIunits.Current offset[m]=zeros(m) "Current offsets";
      parameter Modelica.SIunits.Time startTime[m]=zeros(m) "Time offsets";
      Modelica.Electrical.Analog.Sources.SineCurrent sineCurrent[m](
        final I=I,
        final phase=phase,
        final freqHz=freqHz,
        final offset=offset,
        final startTime=startTime);
    equation 
      connect(sineCurrent.p, plug_p.pin);
      connect(sineCurrent.n, plug_n.pin);
    end SineCurrent;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:22 2010.
