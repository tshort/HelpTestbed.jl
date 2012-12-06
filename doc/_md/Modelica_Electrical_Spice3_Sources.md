% Modelica.Electrical.Spice3.Sources
% 
% 

[Modelica.Electrical.Spice3](Modelica_Electrical_Spice3.html#Modelica.Electrical.Spice3).Sources
================================================================================================

**Time dependent SPICE3 voltage and current sources**

Information
-----------

::

This package contains the SPICE sources.

**Note:** There are differences between SPICE3 and Modelica concerning
the default values of the parameter. Therefore it is recommended to
specify **all** parameters of the source.

::

Extends from
[Modelica.Icons.SourcesPackage](Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage)
(Icon for packages containing sources).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                      Description
  --------------------------------------------------------- --------------
  ![image12](Modelica.Electrical.Spice3.Sources.V_constantS Constant
  .png)                                                     independent
  [V\_constant](Modelica_Electrical_Spice3_Sources.html#Mod voltage
  elica.Electrical.Spice3.Sources.V_constant)               sources

  ![image13](Modelica.Electrical.Spice3.Sources.V_sinS.png) Sinusoidal
  [V\_sin](Modelica_Electrical_Spice3_Sources.html#Modelica voltage source
  .Electrical.Spice3.Sources.V_sin)                         

  ![image14](Modelica.Electrical.Spice3.Sources.V_expS.png) Exponential
  [V\_exp](Modelica_Electrical_Spice3_Sources.html#Modelica voltage source
  .Electrical.Spice3.Sources.V_exp)                         

  ![image15](Modelica.Electrical.Spice3.Sources.V_pulseS.pn Pulse voltage
  g)                                                        source
  [V\_pulse](Modelica_Electrical_Spice3_Sources.html#Modeli 
  ca.Electrical.Spice3.Sources.V_pulse)                     

  ![image16](Modelica.Electrical.Spice3.Sources.V_pwlS.png) Piece-wise
  [V\_pwl](Modelica_Electrical_Spice3_Sources.html#Modelica linear voltage
  .Electrical.Spice3.Sources.V_pwl)                         source

  ![image17](Modelica.Electrical.Spice3.Sources.V_sffmS.png Single-frequen
  )                                                         cy
  [V\_sffm](Modelica_Electrical_Spice3_Sources.html#Modelic FM voltage
  a.Electrical.Spice3.Sources.V_sffm)                       source

  ![image18](Modelica.Electrical.Spice3.Sources.I_constantS Constant
  .png)                                                     independent
  [I\_constant](Modelica_Electrical_Spice3_Sources.html#Mod current
  elica.Electrical.Spice3.Sources.I_constant)               sources

  ![image19](Modelica.Electrical.Spice3.Sources.I_sinS.png) Sinusoidal
  [I\_sin](Modelica_Electrical_Spice3_Sources.html#Modelica current source
  .Electrical.Spice3.Sources.I_sin)                         

  ![image20](Modelica.Electrical.Spice3.Sources.I_expS.png) Exponential
  [I\_exp](Modelica_Electrical_Spice3_Sources.html#Modelica current source
  .Electrical.Spice3.Sources.I_exp)                         

  ![image21](Modelica.Electrical.Spice3.Sources.I_pulseS.pn Pulse current
  g)                                                        source
  [I\_pulse](Modelica_Electrical_Spice3_Sources.html#Modeli 
  ca.Electrical.Spice3.Sources.I_pulse)                     

  ![image22](Modelica.Electrical.Spice3.Sources.I_pwlS.png) Piece-wise
  [I\_pwl](Modelica_Electrical_Spice3_Sources.html#Modelica linear current
  .Electrical.Spice3.Sources.I_pwl)                         source

  ![image23](Modelica.Electrical.Spice3.Sources.I_sffmS.png Single-frequen
  )                                                         cy
  [I\_sffm](Modelica_Electrical_Spice3_Sources.html#Modelic FM current
  a.Electrical.Spice3.Sources.I_sffm)                       source
  ------------------------------------------------------------------------

* * * * *

![image24](Modelica.Electrical.Spice3.Sources.V_constantI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).V\_constant
===========================================================================================================================================================================================

**Constant independent voltage sources**

Information
-----------

::

The V\_constant source is a source is a simple constant voltage source
for an ideal constant voltage which is provided by a parameter.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name  Default Description
  -------------------------------------- ----- ------- --------------------
  [Voltage](Modelica_SIunits.html#Modeli V     1       Value of constant
  ca.SIunits.Voltage)                                  voltage [V]
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

    model V_constant "Constant independent voltage sources"
      parameter SI.Voltage V=1 "Value of constant voltage";
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
    equation 
      v = V;
    end V_constant;

* * * * *

![image25](Modelica.Electrical.Spice3.Sources.V_sinI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).V\_sin
=================================================================================================================================================================================

**Sinusoidal voltage source**

Information
-----------

::

Damped sinusoidal source

### Note:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name   Default Description
  ------------------------------------------ ------ ------- ---------------
  [Voltage](Modelica_SIunits.html#Modelica.S VO     0.0     Offset [V]
  Iunits.Voltage)                                           

  [Voltage](Modelica_SIunits.html#Modelica.S VA     0.0     Amplitude [V]
  Iunits.Voltage)                                           

  [Frequency](Modelica_SIunits.html#Modelica FREQ           Frequency [Hz]
  .SIunits.Frequency)                                       

  [Time](Modelica_SIunits.html#Modelica.SIun TD     0.0     Delay [s]
  its.Time)                                                 

  [Damping](Modelica_SIunits.html#Modelica.S THETA  0.0     Damping factor
  Iunits.Damping)                                           [s-1]
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

    model V_sin "Sinusoidal voltage source"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Voltage VO=0.0 "Offset";
      parameter SI.Voltage VA=0.0 "Amplitude";
      parameter SI.Frequency FREQ(start=1) "Frequency";
      parameter SI.Time TD=0.0 "Delay";
      parameter SI.Damping THETA=0.0 "Damping factor";
    protected 
        constant Real pi=Modelica.Constants.pi;
    equation 
        assert(FREQ>0, "Frequency less or equal zero");
        v = VO + (if time < TD then 0 else VA*
        Modelica.Math.exp(-(time - TD)*THETA)*Modelica.Math.sin(2*pi
        *FREQ*(time - TD)));
    end V_sin;

* * * * *

![image26](Modelica.Electrical.Spice3.Sources.V_expI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).V\_exp
=================================================================================================================================================================================

**Exponential voltage source**

Information
-----------

::

Rising and falling exponential source.

### Note:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.- it
    should be set all the parameters definitly
    - normally, there exist differences between Dymola and Spice,
    because TSTEP and TSTOP are not available.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name  Default Description
  ----------------------------------------- ----- ------- -----------------
  [Voltage](Modelica_SIunits.html#Modelica. V1    0       Initial value [V]
  SIunits.Voltage)                                        

  [Voltage](Modelica_SIunits.html#Modelica. V2    0       Pulsed value [V]
  SIunits.Voltage)                                        

  [Time](Modelica_SIunits.html#Modelica.SIu TD1   0.0     Rise delay time
  nits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SIu TAU1  1       Rise time
  nits.Time)                                              constant [s]

  [Time](Modelica_SIunits.html#Modelica.SIu TD2   1       Fall delay time
  nits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SIu TAU2  1       Fall time
  nits.Time)                                              constant [s]
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

    model V_exp "Exponential voltage source"
     extends Modelica.Electrical.Analog.Interfaces.OnePort;

      parameter SI.Voltage V1=0 "Initial value";
      parameter SI.Voltage V2=0 "Pulsed value";
      parameter SI.Time TD1=0.0 "Rise delay time";
      parameter SI.Time TAU1=1 "Rise time constant";
      parameter SI.Time TD2=1 "Fall delay time";
      parameter SI.Time TAU2=1 "Fall time constant";

    equation 
    v = V1 + (if (time < TD1) then 0 else if (time < (TD2)) then 
              (V2-V1)*(1 - Modelica.Math.exp(-(time - TD1)/TAU1)) else 
              (V2-V1)*(1 - Modelica.Math.exp(-(time - TD1)/TAU1)) +
              (V1-V2)*(1 - Modelica.Math.exp(-(time - TD2)/TAU2)));
    end V_exp;

* * * * *

![image27](Modelica.Electrical.Spice3.Sources.V_pulseI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).V\_pulse
=====================================================================================================================================================================================

**Pulse voltage source**

Information
-----------

::

Periodic pulse source with not limited number of periods.

A single pulse is described by the following table:

### time

### value

0

V1

TD

V1

TD+TR

V2

TD+TR+PW

V2

TD+TR+PW+TF

V1

TSTOP

V1

Intermediate points are determined by linear interpolation.

A pulse it looks like a saw tooth, use this parameters e.g.:

### Parameter

### Value

V1

0

V2

1

TD

0

TR

1

TF

1

PW

2

PER

1

### Note:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                  Name  Default         Description
  ------------------------------------- ----- --------------- ------------
  [Voltage](Modelica_SIunits.html#Model V1    0               Initial
  ica.SIunits.Voltage)                                        value [V]

  [Voltage](Modelica_SIunits.html#Model V2    0               Pulsed value
  ica.SIunits.Voltage)                                        [V]

  [Time](Modelica_SIunits.html#Modelica TD    0.0             Delay time
  .SIunits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica TR                    Rise time
  .SIunits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica TF    TR              Fall time
  .SIunits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica PW    Modelica.Consta Pulse width
  .SIunits.Time)                              nts.inf         [s]

  [Time](Modelica_SIunits.html#Modelica PER   Modelica.Consta Period [s]
  .SIunits.Time)                              nts.inf         
  ------------------------------------------------------------------------

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

    model V_pulse "Pulse voltage source"
    extends Modelica.Electrical.Analog.Interfaces.OnePort;

      parameter SI.Voltage V1 = 0 "Initial value";
      parameter SI.Voltage V2 = 0 "Pulsed value";
      parameter SI.Time TD = 0.0 "Delay time";
      parameter SI.Time TR(start=1) "Rise time";
      parameter SI.Time TF = TR "Fall time";
      parameter SI.Time PW = Modelica.Constants.inf "Pulse width";
      parameter SI.Time PER= Modelica.Constants.inf "Period";

    protected 
      parameter SI.Time Trising=TR "End time of rising phase within one period";
      parameter SI.Time Twidth=Trising + PW 
        "End time of width phase within one period";
      parameter SI.Time Tfalling=Twidth + TF 
        "End time of falling phase within one period";
      SI.Time T0(final start=TD) "Start time of current period";
      Integer counter(start=-1) "Period counter";
      Integer counter2(start=-1);

    equation 
      when pre(counter2) <> 0 and sample(TD, PER) then
        T0 = time;
        counter2 = pre(counter);
        counter = pre(counter) - (if pre(counter) > 0 then 1 else 0);
      end when;
      v = V1 + (if (time < TD or counter2 == 0 or time >= T0 +
        Tfalling) then 0 else if (time < T0 + Trising) then (time - T0)*
        (V2-V1)/Trising else if (time < T0 + Twidth) then V2-V1 else 
        (T0 + Tfalling - time)*(V2-V1)/(Tfalling - Twidth));

    end V_pulse;

* * * * *

![image28](Modelica.Electrical.Spice3.Sources.V_pwlI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).V\_pwl
=================================================================================================================================================================================

**Piece-wise linear voltage source**

Information
-----------

::

This model generates a voltage by **linear interpolation** in a given
table. The time points and voltage values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the second column contains the voltage to be interpolated.
The table interpolation has the following proporties:

-   The time points need to be **monotonically increasing**.
-   **Discontinuities** are allowed, by providing the same time point
    twice in the table.
-   Values **outside** of the table range, are computed by
    **extrapolation** through the last or first two points of the table.
-   If the table has only **one row**, no interpolation is performed and
    the voltage value is just returned independantly of the actual time
    instant, i.e., this is a constant voltage source.
-   Via parameters **startTime** and **offset** the curve defined by the
    table can be shifted both in time and in the voltage.
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

> If, e.g., time = 1.0, the voltage v = 0.0 (before event), 1.0 (after
> event)
>   ~ e.g., time = 1.5, the voltage v = 2.5, e.g., time = 2.0, the
>     voltage v = 4.0, e.g., time = 5.0, the voltage v = 23.0 (i.e.,
>     extrapolation).
>
::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type  Name       Default        Description
  ----- ---------- -------------- -----------------------------------------
  Real  table[:,   [0, 0; 1, 1;   Table matrix (time = first column,
        :]         2, 4]          voltage = second column)
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

    model V_pwl "Piece-wise linear voltage source"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Real table[:, :]=[0, 0; 1, 1; 2, 4] 
        "Table matrix (time = first column, voltage = second column)";
      Modelica.Blocks.Sources.TimeTable tab(table=table);
    equation 
      v = tab.y;
    end V_pwl;

* * * * *

![image29](Modelica.Electrical.Spice3.Sources.V_sffmI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).V\_sffm
===================================================================================================================================================================================

**Single-frequency FM voltage source**

Information
-----------

::

The single-frequency frequency modulation source generates a carrier
signal of the frequency FC. This signal is modulated by the signal
frequency FS. See the formula in the modelica text.

### Attention:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name  Default Description
  ------------------------------------------ ----- ------- ----------------
  [Voltage](Modelica_SIunits.html#Modelica.S VO    0       Offset [V]
  Iunits.Voltage)                                          

  [Voltage](Modelica_SIunits.html#Modelica.S VA    0       Amplitude [V]
  Iunits.Voltage)                                          

  [Frequency](Modelica_SIunits.html#Modelica FC            Carrier
  .SIunits.Frequency)                                      frequency [Hz]

  Real                                       MDI   0       Modulation index

  [Frequency](Modelica_SIunits.html#Modelica FS    FC      Singnal
  .SIunits.Frequency)                                      frequency [Hz]
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

    model V_sffm "Single-frequency FM voltage source"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Voltage VO = 0 "Offset";
      parameter SI.Voltage VA = 0 "Amplitude";
      parameter SI.Frequency FC( start=0) "Carrier frequency";
      parameter Real MDI=0 "Modulation index";
      parameter SI.Frequency FS= FC "Singnal frequency";
    protected 
        constant Real pi=Modelica.Constants.pi;
    equation 
      v = VO + VA *Modelica.Math.sin( 2 *pi * FC *time + MDI *Modelica.Math.sin(2 *pi *FS *time));
    end V_sffm;

* * * * *

![image30](Modelica.Electrical.Spice3.Sources.I_constantI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).I\_constant
===========================================================================================================================================================================================

**Constant independent current sources**

Information
-----------

::

The I\_constant source is a simple constant current source for an ideal
constant current which is provided by a parameter.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                   Name  Default Description
  -------------------------------------- ----- ------- --------------------
  [Current](Modelica_SIunits.html#Modeli I     1       Value of constant
  ca.SIunits.Current)                                  voltage [A]
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

    model I_constant "Constant independent current sources"
       parameter SI.Current I=1 "Value of constant voltage";
       extends Modelica.Electrical.Analog.Interfaces.OnePort;
    equation 
       i = I;
    end I_constant;

* * * * *

![image31](Modelica.Electrical.Spice3.Sources.I_sinI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).I\_sin
=================================================================================================================================================================================

**Sinusoidal current source**

Information
-----------

::

Damped sinusoidal source

### Note:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name   Default Description
  ------------------------------------------ ------ ------- ---------------
  [Current](Modelica_SIunits.html#Modelica.S IO     0       Offset [A]
  Iunits.Current)                                           

  [Current](Modelica_SIunits.html#Modelica.S IA     0       Amplitude [A]
  Iunits.Current)                                           

  [Frequency](Modelica_SIunits.html#Modelica FREQ           Frequency [Hz]
  .SIunits.Frequency)                                       

  [Time](Modelica_SIunits.html#Modelica.SIun TD     0.0     Delay [s]
  its.Time)                                                 

  [Damping](Modelica_SIunits.html#Modelica.S THETA  0.0     Damping factor
  Iunits.Damping)                                           [s-1]
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

    model I_sin "Sinusoidal current source"

      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Current IO=0 "Offset";
      parameter SI.Current IA=0 "Amplitude";
      parameter SI.Frequency FREQ(start=1) "Frequency";
      parameter SI.Time TD=0.0 "Delay";
      parameter SI.Damping THETA=0.0 "Damping factor";
    protected 
        constant Real pi=Modelica.Constants.pi;
    equation 
        assert(FREQ>0, "Frequency less or equal zero");
        i = IO + (if time < TD then 0 else IA*
        Modelica.Math.exp(-(time - TD)*THETA)*Modelica.Math.sin(2*pi
        *FREQ*(time - TD)));
    end I_sin;

* * * * *

![image32](Modelica.Electrical.Spice3.Sources.I_expI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).I\_exp
=================================================================================================================================================================================

**Exponential current source**

Information
-----------

::

Rising and falling exponential source.

### Note:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                      Name  Default Description
  ----------------------------------------- ----- ------- -----------------
  [Current](Modelica_SIunits.html#Modelica. I1    0       Initial value [A]
  SIunits.Current)                                        

  [Current](Modelica_SIunits.html#Modelica. I2    0       Pulsed value [A]
  SIunits.Current)                                        

  [Time](Modelica_SIunits.html#Modelica.SIu TD1   0.0     Rise delay time
  nits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SIu TAU1  1       Rise time
  nits.Time)                                              constant [s]

  [Time](Modelica_SIunits.html#Modelica.SIu TD2   2       Fall delay time
  nits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SIu TAU2  1       Fall time
  nits.Time)                                              constant [s]
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

    model I_exp "Exponential current source"
    extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Current I1=0 "Initial value";
      parameter SI.Current I2=0 "Pulsed value";
      parameter SI.Time TD1=0.0 "Rise delay time";
      parameter SI.Time TAU1=1 "Rise time constant";
      parameter SI.Time TD2=2 "Fall delay time";
      parameter SI.Time TAU2=1 "Fall time constant";
    equation 
    i = I1 + (if (time < TD1) then 0 else if (time < (TD2)) then 
              (I2-I1)*(1 - Modelica.Math.exp(-(time - TD1)/TAU1)) else 
              (I2-I1)*(1 - Modelica.Math.exp(-(time - TD1)/TAU1)) +
              (I1-I2)*(1 - Modelica.Math.exp(-(time - TD2)/TAU2)));
    end I_exp;

* * * * *

![image33](Modelica.Electrical.Spice3.Sources.I_pulseI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).I\_pulse
=====================================================================================================================================================================================

**Pulse current source**

Information
-----------

::

Periodic pulse source with not limited number of periods.

A single pulse is described by the following table:

### time

### value

0

I1

TD

I1

TD+TR

I2

TD+TR+PW

I2

TD+TR+PW+TF

I1

TSTOP

I1

Intermediate points are determined by linear interpolation.

A pulse it looks like a saw tooth, use this parameters e.g.:

### Parameter

### Value

I1

0

I2

1

TD

0

TR

1

TF

1

PW

2

PER

1

### Note:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  ------------------------------------------------------------------------
  Type                                  Name  Default         Description
  ------------------------------------- ----- --------------- ------------
  [Current](Modelica_SIunits.html#Model I1    0               Initial
  ica.SIunits.Current)                                        value [A]

  [Current](Modelica_SIunits.html#Model I2    0               Pulsed value
  ica.SIunits.Current)                                        [A]

  [Time](Modelica_SIunits.html#Modelica TD    0.0             Delay time
  .SIunits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica TR                    Rise time
  .SIunits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica TF    TR              Fall time
  .SIunits.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica PW    Modelica.Consta Pulse width
  .SIunits.Time)                              nts.inf         [s]

  [Time](Modelica_SIunits.html#Modelica PER   Modelica.Consta Period [s]
  .SIunits.Time)                              nts.inf         
  ------------------------------------------------------------------------

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

    model I_pulse "Pulse current source"
     extends Modelica.Electrical.Analog.Interfaces.OnePort;

      parameter SI.Current I1 = 0 "Initial value";
      parameter SI.Current I2 = 0 "Pulsed value";
      parameter SI.Time TD = 0.0 "Delay time";
      parameter SI.Time TR(start=1) "Rise time";
      parameter SI.Time TF = TR "Fall time";
      parameter SI.Time PW = Modelica.Constants.inf "Pulse width";
      parameter SI.Time PER= Modelica.Constants.inf "Period";

    protected 
      parameter SI.Time Trising=TR "End time of rising phase within one period";
      parameter SI.Time Twidth=Trising + PW 
        "End time of width phase within one period";
      parameter SI.Time Tfalling=Twidth + TF 
        "End time of falling phase within one period";
      SI.Time T0(final start=TD) "Start time of current period";
      Integer counter(start=-1) "Period counter";
      Integer counter2(start=-1);

    equation 
      when pre(counter2) <> 0 and sample(TD, PER) then
        T0 = time;
        counter2 = pre(counter);
        counter = pre(counter) - (if pre(counter) > 0 then 1 else 0);
      end when;
      i = I1 + (if (time < TD or counter2 == 0 or time >= T0 +
        Tfalling) then 0 else if (time < T0 + Trising) then (time - T0)*
        (I2-I1)/Trising else if (time < T0 + Twidth) then I2-I1 else 
        (T0 + Tfalling - time)*(I2-I1)/(Tfalling - Twidth));

    end I_pulse;

* * * * *

![image34](Modelica.Electrical.Spice3.Sources.I_pwlI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).I\_pwl
=================================================================================================================================================================================

**Piece-wise linear current source**

Information
-----------

::

This model generates a current by **linear interpolation** in a given
table. The time points and current values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the second column contains the current to be interpolated.
The table interpolation has the following proporties:

-   The time points need to be **monotonically increasing**.
-   **Discontinuities** are allowed, by providing the same time point
    twice in the table.
-   Values **outside** of the table range, are computed by
    **extrapolation** through the last or first two points of the table.
-   If the table has only **one row**, no interpolation is performed and
    the current value is just returned independantly of the actual time
    instant, i.e., this is a constant current source.
-   Via parameters **startTime** and **offset** the curve defined by the
    table can be shifted both in time and in the current.
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

> If, e.g., time = 1.0, the current i = 0.0 (before event), 1.0 (after
> event)
>   ~ e.g., time = 1.5, the current i = 2.5, e.g., time = 2.0, the
>     current i = 4.0, e.g., time = 5.0, the current i = 23.0 (i.e.,
>     extrapolation).
>
::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type  Name       Default        Description
  ----- ---------- -------------- -----------------------------------------
  Real  table[:,   [0, 0; 1, 1;   Table matrix (time = first column,
        :]         2, 4]          voltage = second column)
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

    model I_pwl "Piece-wise linear current source"
       extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter Real table[:, :]=[0, 0; 1, 1; 2, 4] 
        "Table matrix (time = first column, voltage = second column)";
      Modelica.Blocks.Sources.TimeTable tab(table=table);

    equation 
      i = tab.y;

    end I_pwl;

* * * * *

![image35](Modelica.Electrical.Spice3.Sources.I_sffmI.png) [Modelica.Electrical.Spice3.Sources](Modelica_Electrical_Spice3_Sources.html#Modelica.Electrical.Spice3.Sources).I\_sffm
===================================================================================================================================================================================

**Single-frequency FM current source**

Information
-----------

::

The single-frequency frequency modulation source generates a carrier
signal of the frequency FC. This signal is modulated by the signal
frequency FS. See the formula in the modelica text.

### Note:

-   All parameters of sources should be set explicitly.
-   since TSTEP and TSTOP are not available for modeling in Modelica,
    differences to SPICE may occur if not all parameters are set.

::

Extends from
[Modelica.Electrical.Analog.Interfaces.OnePort](Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort)
(Component with two electrical pins p and n and current i from p to n).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                       Name  Default Description
  ------------------------------------------ ----- ------- ----------------
  [Current](Modelica_SIunits.html#Modelica.S IO    0       Offset [A]
  Iunits.Current)                                          

  [Current](Modelica_SIunits.html#Modelica.S IA    0       Amplitude [A]
  Iunits.Current)                                          

  [Frequency](Modelica_SIunits.html#Modelica FC            Carrier
  .SIunits.Frequency)                                      frequency [Hz]

  Real                                       MDI   0       Modulation index

  [Frequency](Modelica_SIunits.html#Modelica FS    FC      Singnal
  .SIunits.Frequency)                                      frequency [Hz]
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

    model I_sffm "Single-frequency FM current source"
      extends Modelica.Electrical.Analog.Interfaces.OnePort;
      parameter SI.Current IO = 0 "Offset";
      parameter SI.Current IA = 0 "Amplitude";
      parameter SI.Frequency FC( start=0) "Carrier frequency";
      parameter Real MDI=0 "Modulation index";
      parameter SI.Frequency FS= FC "Singnal frequency";

    protected 
        constant Real pi=Modelica.Constants.pi;
    equation 
      i = IO + IA *Modelica.Math.sin( 2 *pi * FC *time + MDI *Modelica.Math.sin(2 *pi *FS *time));
    end I_sffm;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:29:46 2010.
