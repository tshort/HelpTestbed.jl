% Modelica.Electrical.Digital.Sources
% 
% 

[Modelica.Electrical.Digital](Modelica_Electrical_Digital.html#Modelica.Electrical.Digital).Sources
===================================================================================================

**Time-dependend digital signal sources**

Information
-----------

::

The sources are not taken from Standard Logic. They were added since
they turned out to be quite useful, since such sources are often needed.
For a better optical overview the colour green was chosen for the
sources.

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                         Description
  ------------------------------------------------------------ -----------
  ![image5](Modelica.Electrical.Digital.Sources.SetS.png)      Digital Set
  [Set](Modelica_Electrical_Digital_Sources.html#Modelica.Elec Source
  trical.Digital.Sources.Set)                                  

  ![image6](Modelica.Electrical.Digital.Sources.StepS.png)     Digital
  [Step](Modelica_Electrical_Digital_Sources.html#Modelica.Ele Step Source
  ctrical.Digital.Sources.Step)                                

  ![image7](Modelica.Electrical.Digital.Sources.TableS.png)    Digital
  [Table](Modelica_Electrical_Digital_Sources.html#Modelica.El Tabular
  ectrical.Digital.Sources.Table)                              Source

  ![image8](Modelica.Electrical.Digital.Sources.PulseS.png)    Digital
  [Pulse](Modelica_Electrical_Digital_Sources.html#Modelica.El Pulse
  ectrical.Digital.Sources.Pulse)                              Source

  ![image9](Modelica.Electrical.Digital.Sources.ClockS.png)    Digital
  [Clock](Modelica_Electrical_Digital_Sources.html#Modelica.El Clock
  ectrical.Digital.Sources.Clock)                              Source
  ------------------------------------------------------------------------

* * * * *

![image10](Modelica.Electrical.Digital.Sources.SetI.png) [Modelica.Electrical.Digital.Sources](Modelica_Electrical_Digital_Sources.html#Modelica.Electrical.Digital.Sources).Set
================================================================================================================================================================================

**Digital Set Source**

Information
-----------

::

Sets a nine valued digital signal, which is specified by the *setval*
parameter.

To specify *setval*, the integer code has to be used.

**Code Table**

  -------------------- --------------------- ---------------------
  **Logic value**      **Integer code**      **Meaning**
  'U'                  1                     Uninitialized
  'X'                  2                     Forcing Unknown
  '0'                  3                     Forcing 0
  '1'                  4                     Forcing 1
  'Z'                  5                     High Impedance
  'W'                  6                     Weak Unknown
  'L'                  7                     Weak 0
  'H'                  8                     Weak 1
  '-'                  9                     Don't care
  -------------------- --------------------- ---------------------

If the logic values are imported by **import L =
Digital.Interfaces.Logic;** they can be used to specify the parameter,
e.g., **L.'0'** for forcing 0.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                              Name Defau Description
                                                         lt    
  ------------------------------------------------- ---- ----- ------------
  [Logic](Modelica_Electrical_Digital_Interfaces.ht x          Logic value
  ml#Modelica.Electrical.Digital.Interfaces.Logic)             to be set
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name Descrip
                                                                    tion
  ------------------------------------------------------------ ---- -------
  output                                                       y    
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html#      
  Modelica.Electrical.Digital.Interfaces.DigitalOutput)             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Set "Digital Set Source"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      parameter D.Interfaces.Logic x(start=L.'1') "Logic value to be set";
      D.Interfaces.DigitalOutput y;
    algorithm 
      y := x;
    end Set;

* * * * *

![image11](Modelica.Electrical.Digital.Sources.StepI.png) [Modelica.Electrical.Digital.Sources](Modelica_Electrical_Digital_Sources.html#Modelica.Electrical.Digital.Sources).Step
==================================================================================================================================================================================

**Digital Step Source**

Information
-----------

::

The step source output signal steps from the value *before* to the value
*after* at the time *stepTime*.

To specify the logic value parameters, the integer code has to be used.

**Code Table**

  -------------------- --------------------- ---------------------
  **Logic value**      **Integer code**      **Meaning**
  'U'                  1                     Uninitialized
  'X'                  2                     Forcing Unknown
  '0'                  3                     Forcing 0
  '1'                  4                     Forcing 1
  'Z'                  5                     High Impedance
  'W'                  6                     Weak Unknown
  'L'                  7                     Weak 0
  'H'                  8                     Weak 1
  '-'                  9                     Don't care
  -------------------- --------------------- ---------------------

If the logic values are imported by **import L =
Digital.Interfaces.Logic;** they can be used to specify the parameter,
e.g., **L.'0'** for forcing 0.

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                            Name  Defau Description
                                                        lt    
  ----------------------------------------------- ----- ----- ------------
  [Logic](Modelica_Electrical_Digital_Interfaces. befor       Logic value
  html#Modelica.Electrical.Digital.Interfaces.Log e           before step
  ic)                                                         

  [Logic](Modelica_Electrical_Digital_Interfaces. after       Logic value
  html#Modelica.Electrical.Digital.Interfaces.Log             after step
  ic)                                                         

  Real                                            stepT       step time
                                                  ime         
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name Descrip
                                                                    tion
  ------------------------------------------------------------ ---- -------
  output                                                       y    
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html#      
  Modelica.Electrical.Digital.Interfaces.DigitalOutput)             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Step "Digital Step Source"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      parameter D.Interfaces.Logic before(start=L.'0') "Logic value before step";
      parameter D.Interfaces.Logic after(start=L.'1') "Logic value after step";
      parameter Real stepTime(start=1) "step time";
      D.Interfaces.DigitalOutput y;
    algorithm 
      // assert(before >= L.min and before <= L.max, "Parameter is no logic value");
      // assert(after >= L.min and after <= L.max, "Parameter is no logic value");
      when initial() then
        y := before;
      end when;
      if time >= stepTime then
        y := after;
      else
        y := before;
      end if;
    end Step;

* * * * *

![image12](Modelica.Electrical.Digital.Sources.TableI.png) [Modelica.Electrical.Digital.Sources](Modelica_Electrical_Digital_Sources.html#Modelica.Electrical.Digital.Sources).Table
====================================================================================================================================================================================

**Digital Tabular Source**

Information
-----------

::

The table source output signal *y* steps to the values of the *x* table
at the corresponding timepoints in the *t* table. The initial value is
specified by *y0*.

To specify the logic value parameters, the integer code has to be used.

**Code Table**

  -------------------- --------------------- ---------------------
  **Logic value**      **Integer code**      **Meaning**
  'U'                  1                     Uninitialized
  'X'                  2                     Forcing Unknown
  '0'                  3                     Forcing 0
  '1'                  4                     Forcing 1
  'Z'                  5                     High Impedance
  'W'                  6                     Weak Unknown
  'L'                  7                     Weak 0
  'H'                  8                     Weak 1
  '-'                  9                     Don't care
  -------------------- --------------------- ---------------------

If the logic values are imported by **import L =
Digital.Interfaces.Logic;** they can be used to specify the parameter,
e.g., **L.'0'** for forcing 0.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                        Name    Defa Description
                                                      ult  
  ------------------------------------------- ------- ---- ----------------
  [Logic](Modelica_Electrical_Digital_Interfa x[:]    {1}  vector of values
  ces.html#Modelica.Electrical.Digital.Interf              
  aces.Logic)                                              

  Real                                        t[size( {1}  vector of
                                              x,           corresponding
                                              1)]          time points

  [Logic](Modelica_Electrical_Digital_Interfa y0      L.'U initial output
  ces.html#Modelica.Electrical.Digital.Interf         '    value
  aces.Logic)                                              
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name Descrip
                                                                    tion
  ------------------------------------------------------------ ---- -------
  output                                                       y    
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html#      
  Modelica.Electrical.Digital.Interfaces.DigitalOutput)             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Table "Digital Tabular Source"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      parameter D.Interfaces.Logic x[:]={1} "vector of values";
      parameter Real t[size(x, 1)]={1} "vector of corresponding time points";
      parameter D.Interfaces.Logic y0=L.'U' "initial output value";
      final parameter Integer n=size(x, 1) "table size";
      D.Interfaces.DigitalOutput y;
    algorithm 
      if initial() then
        // assert(y0 >= L.min and y0 <= L.max, "Parameter y0 is not of type Logic");
        assert(n > 0, "Invalid size of table (n < 1)");
        for i in 1:n loop
          // assert(x[i] >= L.min and x[i] <= L.max, "Table element is not of type Logic");
        end for;
      end if;
      y := y0;
      for i in 1:n loop
        if time >= t[i] then
          y := x[i];
        end if;
      end for;
    end Table;

* * * * *

![image13](Modelica.Electrical.Digital.Sources.PulseI.png) [Modelica.Electrical.Digital.Sources](Modelica_Electrical_Digital_Sources.html#Modelica.Electrical.Digital.Sources).Pulse
====================================================================================================================================================================================

**Digital Pulse Source**

Information
-----------

::

The pulse source forms pulses between the *quiet* value and the *pulse*
value. The pulse length *width* is specified in percent of the period
length *period*. The number of periods is specified by *nperiod*. If
*nperiod* is less than zero, the number of periods is unlimited.

To specify the logic value parameters, the integer code has to be used.

**Code Table**

  -------------------- --------------------- ---------------------
  **Logic value**      **Integer code**      **Meaning**
  'U'                  1                     Uninitialized
  'X'                  2                     Forcing Unknown
  '0'                  3                     Forcing 0
  '1'                  4                     Forcing 1
  'Z'                  5                     High Impedance
  'W'                  6                     Weak Unknown
  'L'                  7                     Weak 0
  'H'                  8                     Weak 1
  '-'                  9                     Don't care
  -------------------- --------------------- ---------------------

If the logic values are imported by **import L =
Digital.Interfaces.Logic;** they can be used to specify the parameter,
e.g., **L.'0'** for forcing 0.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                    Name  Defa Description
                                                ult  
  --------------------------------------- ----- ---- ----------------------
  Real                                    width      Widths of pulses in %
                                                     of periods

  [Time](Modelica_SIunits.html#Modelica.S perio      Time for one period
  Iunits.Time)                            d          [s]

  [Time](Modelica_SIunits.html#Modelica.S start      Output = quiet for
  Iunits.Time)                            Time       time < startTime [s]

  [Logic](Modelica_Electrical_Digital_Int pulse      pulsed value
  erfaces.html#Modelica.Electrical.Digita            
  l.Interfaces.Logic)                                

  [Logic](Modelica_Electrical_Digital_Int quiet      quiet value
  erfaces.html#Modelica.Electrical.Digita            
  l.Interfaces.Logic)                                

  Integer                                 nperi      Number of periods (< 0
                                          od         means infinite number
                                                     of periods)
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                         Name Descrip
                                                                    tion
  ------------------------------------------------------------ ---- -------
  output                                                       y    
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html#      
  Modelica.Electrical.Digital.Interfaces.DigitalOutput)             
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Pulse "Digital Pulse Source"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100, start=50) "Widths of pulses in % of periods";
      parameter Modelica.SIunits.Time period(final min=Modelica.Constants.small, start=1) 
        "Time for one period";
      parameter Modelica.SIunits.Time startTime(start=0) 
        "Output = quiet for time < startTime";
      parameter D.Interfaces.Logic pulse(start=L.'0') "pulsed value";
      parameter D.Interfaces.Logic quiet(start=L.'1') "quiet value";
      Modelica.SIunits.Time T0(final start=startTime) 
        "Start time of current period";
      parameter Integer nperiod(start=-1) 
        "Number of periods (< 0 means infinite number of periods)";
      Integer np(start=0, fixed=true);
      D.Interfaces.DigitalOutput y;
    protected 
      Boolean sampling;

    equation 
      sampling = nperiod <> 0 and (nperiod >= pre(np) or nperiod < 0);

      when sampling and sample(startTime, period) then
         T0 = time;
         np = if nperiod > 0 then pre(np) + 1 else pre(np);
      end when;

      if sampling then
         y = if time < startTime or time >= T0 + ((width*period)/100) then quiet else pulse;
      else
         y = quiet;
      end if;
    end Pulse;

* * * * *

![image14](Modelica.Electrical.Digital.Sources.ClockI.png) [Modelica.Electrical.Digital.Sources](Modelica_Electrical_Digital_Sources.html#Modelica.Electrical.Digital.Sources).Clock
====================================================================================================================================================================================

**Digital Clock Source**

Information
-----------

::

The clock source forms pulses between the *'0'* value (forcing 0) and
the *'1'* value (forcing 1). The pulse length *width* is specified in
percent of the period length *period*. The number of periods is
unlimited. The first pulse starts at startTime.

The clock source is a special but often used variant of the pulse
source.

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                             Name    Defaul Description
                                           t      
  -------------------------------- ------- ------ -------------------------
  [Time](Modelica_SIunits.html#Mod startTi        Output = offset for time
  elica.SIunits.Time)              me             < startTime [s]

  [Time](Modelica_SIunits.html#Mod period         Time for one period [s]
  elica.SIunits.Time)                             

  Real                             width          Width of pulses in % of
                                                  period
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ----------------
  output                                               y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interfac     Digital output
  es.html#Modelica.Electrical.Digital.Interfaces.Digit     signal
  alOutput)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Clock "Digital Clock Source"
      import D = Modelica.Electrical.Digital;
      import L = Modelica.Electrical.Digital.Interfaces.Logic;
      parameter Modelica.SIunits.Time startTime(start=0) 
        "Output = offset for time < startTime";
      parameter Modelica.SIunits.Time period(
        final min=Modelica.Constants.small, start=1) "Time for one period";
      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100, start=50) "Width of pulses in % of period";
      D.Interfaces.DigitalOutput y "Connector of Digital output signal";
    protected 
      Modelica.SIunits.Time t_i(final start=startTime) 
        "Start time of current period";
      Modelica.SIunits.Time t_width=period*width/100;
    algorithm 
      when sample(startTime, period) then
        t_i := time;
      end when;
      y := if (not time>=startTime) or time >= t_i + t_width then L.'0' else L.'1';
    end Clock;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:29 2010.
