% Modelica.Electrical.Digital.Tristates
% 
% 

[Modelica.Electrical.Digital](Modelica_Electrical_Digital.html#Modelica.Electrical.Digital).Tristates
=====================================================================================================

**Transfergates, Buffers, Inverters, and WiredX**

Information
-----------

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                Description
  --------------------------------------------------- --------------------
  ![image9](Modelica.Electrical.Digital.Tristates.NXF Transfergate with
  ERGATES.png)                                        enable active high
  [NXFERGATE](Modelica_Electrical_Digital_Tristates.h 
  tml#Modelica.Electrical.Digital.Tristates.NXFERGATE 
  )                                                   

  ![image10](Modelica.Electrical.Digital.Tristates.NR Transfergate with
  XFERGATES.png)                                      enable active high.
  [NRXFERGATE](Modelica_Electrical_Digital_Tristates. Output strength
  html#Modelica.Electrical.Digital.Tristates.NRXFERGA reduced.
  TE)                                                 

  ![image11](Modelica.Electrical.Digital.Tristates.PX Transfergate with
  FERGATES.png)                                       enable active low
  [PXFERGATE](Modelica_Electrical_Digital_Tristates.h 
  tml#Modelica.Electrical.Digital.Tristates.PXFERGATE 
  )                                                   

  ![image12](Modelica.Electrical.Digital.Tristates.PR Transfergate with
  XFERGATES.png)                                      enable active low.
  [PRXFERGATE](Modelica_Electrical_Digital_Tristates. Output strength
  html#Modelica.Electrical.Digital.Tristates.PRXFERGA reduced.
  TE)                                                 

  ![image13](Modelica.Electrical.Digital.Tristates.BU Tristate buffer with
  F3SS.png)                                           enable active high
  [BUF3S](Modelica_Electrical_Digital_Tristates.html# 
  Modelica.Electrical.Digital.Tristates.BUF3S)        

  ![image14](Modelica.Electrical.Digital.Tristates.BU Tristate buffer with
  F3SS.png)                                           enable active low
  [BUF3SL](Modelica_Electrical_Digital_Tristates.html 
  #Modelica.Electrical.Digital.Tristates.BUF3SL)      

  ![image15](Modelica.Electrical.Digital.Tristates.BU Tristate Inverter
  F3SS.png)                                           with enable active
  [INV3S](Modelica_Electrical_Digital_Tristates.html# high
  Modelica.Electrical.Digital.Tristates.INV3S)        

  ![image16](Modelica.Electrical.Digital.Tristates.BU Tristate inverter
  F3SS.png)                                           with enable active
  [INV3SL](Modelica_Electrical_Digital_Tristates.html low
  #Modelica.Electrical.Digital.Tristates.INV3SL)      

  ![image17](Modelica.Electrical.Digital.Tristates.Wi Wired node with
  redXS.png)                                          multiple input and
  [WiredX](Modelica_Electrical_Digital_Tristates.html one output
  #Modelica.Electrical.Digital.Tristates.WiredX)      
  ------------------------------------------------------------------------

* * * * *

![image18](Modelica.Electrical.Digital.Tristates.NXFERGATEI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).NXFERGATE
====================================================================================================================================================================================================

**Transfergate with enable active high**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

  --------------- --------------- ----------------
  **DataIn**      **Enable**      **DataOut**
  \*              U               U
  \*              X               UX
  \*              0               Z
  \*              1               DataIn
  \*              Z               UX
  \*              W               UX
  \*              L               Z
  \*              H               DataIn
  \*              -               UX
  --------------- --------------- ----------------

    UX: if dataIn == U then U else X

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name   Default  Description
  ---------------------------------------- ------ -------- ----------------
  [Time](Modelica_SIunits.html#Modelica.SI tHL    0        High-\>Low delay
  units.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SI tLH    0        Low-\>High delay
  units.Time)                                              [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model NXFERGATE "Transfergate with enable active high"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.NXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end NXFERGATE;

* * * * *

![image19](Modelica.Electrical.Digital.Tristates.NRXFERGATEI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).NRXFERGATE
======================================================================================================================================================================================================

**Transfergate with enable active high. Output strength reduced.**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

  --------------- --------------- -----------------------------
  **DataIn**      **Enable**      **DataOut**
  \*              U               U
  \*              X               UW
  \*              0               Z
  \*              1               DataIn, Strength Reduced
  \*              Z               UW
  \*              W               UW
  \*              L               Z
  \*              H               DataIn, Strength Reduced
  \*              -               UW
  --------------- --------------- -----------------------------

    UW: if dataIn == U then U else W
    Strength Reduced: 0 -> L, 1 -> H, X -> W

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name   Default  Description
  ---------------------------------------- ------ -------- ----------------
  [Time](Modelica_SIunits.html#Modelica.SI tHL    0        High-\>Low delay
  units.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SI tLH    0        Low-\>High delay
  units.Time)                                              [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model NRXFERGATE 
      "Transfergate with enable active high. Output strength reduced."
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.NRXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end NRXFERGATE;

* * * * *

![image20](Modelica.Electrical.Digital.Tristates.PXFERGATEI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).PXFERGATE
====================================================================================================================================================================================================

**Transfergate with enable active low**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

  --------------- --------------- ----------------
  **DataIn**      **Enable**      **DataOut**
  \*              U               U
  \*              X               UX
  \*              0               DataIn
  \*              1               Z
  \*              Z               UX
  \*              W               UX
  \*              L               DataIn
  \*              H               Z
  \*              -               UX
  --------------- --------------- ----------------

    UX: if dataIn == U then U else X

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name   Default  Description
  ---------------------------------------- ------ -------- ----------------
  [Time](Modelica_SIunits.html#Modelica.SI tHL    0        High-\>Low delay
  units.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SI tLH    0        Low-\>High delay
  units.Time)                                              [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PXFERGATE "Transfergate with enable active low"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.PXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end PXFERGATE;

* * * * *

![image21](Modelica.Electrical.Digital.Tristates.PRXFERGATEI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).PRXFERGATE
======================================================================================================================================================================================================

**Transfergate with enable active low. Output strength reduced.**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

**Truth Table**

  --------------- --------------- -----------------------------
  **DataIn**      **Enable**      **DataOut**
  \*              U               U
  \*              X               UW
  \*              0               DataIn, Strength Reduced
  \*              1               Z
  \*              Z               UW
  \*              W               UW
  \*              L               DataIn, Strength Reduced
  \*              H               Z
  \*              -               UW
  --------------- --------------- -----------------------------

UW: if dataIn == U then U else W Strength Reduced: 0 -\> L, 1 -\> H, X
-\> W

::

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name   Default  Description
  ---------------------------------------- ------ -------- ----------------
  [Time](Modelica_SIunits.html#Modelica.SI tHL    0        High-\>Low delay
  units.Time)                                              [s]

  [Time](Modelica_SIunits.html#Modelica.SI tLH    0        Low-\>High delay
  units.Time)                                              [s]
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model PRXFERGATE 
      "Transfergate with enable active low. Output strength reduced."
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.PRXferTable[enable, x];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end PRXFERGATE;

* * * * *

![image22](Modelica.Electrical.Digital.Tristates.BUF3SI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).BUF3S
============================================================================================================================================================================================

**Tristate buffer with enable active high**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

  --------------- --------------- ------------------
  **DataIn**      **Enable**      **DataOut\***
  \*              U               U
  \*              X               UX
  \*              0               Z
  \*              1               DataIn
  \*              Z               UX
  \*              W               UX
  \*              L               Z
  \*              H               DataIn
  \*              -               UX
  --------------- --------------- ------------------

    UX: if dataIn == U then U else X
    DataOut*: Strength map for DataOut according to tristate table Buf3sTable

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                             Name  Defaul Descriptio
                                                         t      n
  ------------------------------------------------ ----- ------ ----------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL   0      High-\>Low
  me)                                                           delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH   0      Low-\>High
  me)                                                           delay [s]

  [Strength](Modelica_Electrical_Digital_Interface stren S.'S\_ output
  s.html#Modelica.Electrical.Digital.Interfaces.St gth   X01'   strength
  rength)                                                       
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BUF3S "Tristate buffer with enable active high"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3sTable[strength, T.UX01Table[enable], T.UX01Table[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end BUF3S;

* * * * *

![image23](Modelica.Electrical.Digital.Tristates.BUF3SI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).BUF3SL
=============================================================================================================================================================================================

**Tristate buffer with enable active low**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

  --------------- --------------- ------------------
  **DataIn**      **Enable**      **DataOut\***
  \*              U               U
  \*              X               UX
  \*              0               DataIn
  \*              1               Z
  \*              Z               UX
  \*              W               UX
  \*              L               DataIn
  \*              H               Z
  \*              -               UX
  --------------- --------------- ------------------

    UX: if dataIn == U then U else X
    DataOut*: Strength map for DataOut according to tristate table Buf3slTable

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                             Name  Defaul Descriptio
                                                         t      n
  ------------------------------------------------ ----- ------ ----------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL   0      High-\>Low
  me)                                                           delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH   0      Low-\>High
  me)                                                           delay [s]

  [Strength](Modelica_Electrical_Digital_Interface stren S.'S\_ output
  s.html#Modelica.Electrical.Digital.Interfaces.St gth   X01'   strength
  rength)                                                       
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model BUF3SL "Tristate buffer with enable active low"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3slTable[strength, T.UX01Table[enable], T.UX01Table[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end BUF3SL;

* * * * *

![image24](Modelica.Electrical.Digital.Tristates.INV3SI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).INV3S
============================================================================================================================================================================================

**Tristate Inverter with enable active high**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

  --------------- --------------- ------------------
  **DataIn**      **Enable**      **DataOut\***
  \*              U               U
  \*              X               UX
  \*              0               Z
  \*              1               Not DataIn
  \*              Z               UX
  \*              W               UX
  \*              L               Z
  \*              H               Not DataIn
  \*              -               UX
  --------------- --------------- ------------------

    UX: if dataIn == U then U else X
    DataOut*: Strength map for DataOut according to tristate table Buf3sTable

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                             Name  Defaul Descriptio
                                                         t      n
  ------------------------------------------------ ----- ------ ----------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL   0      High-\>Low
  me)                                                           delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH   0      Low-\>High
  me)                                                           delay [s]

  [Strength](Modelica_Electrical_Digital_Interface stren S.'S\_ output
  s.html#Modelica.Electrical.Digital.Interfaces.St gth   X01'   strength
  rength)                                                       
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model INV3S "Tristate Inverter with enable active high"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3sTable[strength, T.UX01Table[enable], T.NotTable[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end INV3S;

* * * * *

![image25](Modelica.Electrical.Digital.Tristates.INV3SLI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).INV3SL
==============================================================================================================================================================================================

**Tristate inverter with enable active low**

Information
-----------

::

Description in VHDL is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_entities.vhd

and for tristate table
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

**Truth Table**

  --------------- --------------- ------------------
  **DataIn**      **Enable**      **DataOut\***
  \*              U               U
  \*              X               UX
  \*              0               Not DataIn
  \*              1               Z
  \*              Z               UX
  \*              W               UX
  \*              L               Not DataIn
  \*              H               Z
  \*              -               UX
  --------------- --------------- ------------------

    UX: if dataIn == U then U else X
    DataOut*: Strength map for DataOut according to tristate table Buf3slTable

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                                             Name  Defaul Descriptio
                                                         t      n
  ------------------------------------------------ ----- ------ ----------
  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tHL   0      High-\>Low
  me)                                                           delay [s]

  [Time](Modelica_SIunits.html#Modelica.SIunits.Ti tLH   0      Low-\>High
  me)                                                           delay [s]

  [Strength](Modelica_Electrical_Digital_Interface stren S.'S\_ output
  s.html#Modelica.Electrical.Digital.Interfaces.St gth   X01'   strength
  rength)                                                       
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                        Name  Descrip
                                                                    tion
  ----------------------------------------------------------- ----- -------
  input                                                       enabl 
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html# e     
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  input                                                       x     
  [DigitalInput](Modelica_Electrical_Digital_Interfaces.html#       
  Modelica.Electrical.Digital.Interfaces.DigitalInput)              

  output                                                      y     
  [DigitalOutput](Modelica_Electrical_Digital_Interfaces.html       
  #Modelica.Electrical.Digital.Interfaces.DigitalOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model INV3SL "Tristate inverter with enable active low"
      parameter Modelica.SIunits.Time tHL=0 "High->Low delay";
      parameter Modelica.SIunits.Time tLH=0 "Low->High delay";
      parameter D.Interfaces.Strength strength = S.'S_X01' "output strength";
      D.Interfaces.DigitalInput enable;
      D.Interfaces.DigitalInput x;
      D.Interfaces.DigitalOutput y;
    protected 
              D.Interfaces.Logic nextstate(start=L.'U');
              D.Interfaces.DigitalOutput yy(start=L.'U');
              D.Delay.InertialDelaySensitive inertialDelaySensitive(each tLH=tLH, each tHL=tHL);
    algorithm 
      nextstate := T.Buf3sTable[strength, T.NotTable[enable], T.NotTable[x]];
      yy := nextstate;
    equation 
      connect(yy, inertialDelaySensitive.x);
      connect(inertialDelaySensitive.y, y);
    end INV3SL;

* * * * *

![image26](Modelica.Electrical.Digital.Tristates.WiredXI.png) [Modelica.Electrical.Digital.Tristates](Modelica_Electrical_Digital_Tristates.html#Modelica.Electrical.Digital.Tristates).WiredX
==============================================================================================================================================================================================

**Wired node with multiple input and one output**

Information
-----------

::

Wires n input signals in one output signal, without delay.

Resolution table is given by
http://www.cs.sfu.ca/\~ggbaker/reference/std\_logic/src/std\_logic\_misc.vhd

::

Extends from
[D.Interfaces.MISO](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.MISO)
(Multiple input - single output).

Parameters
----------

  Type         Name      Default      Description
  ------------ --------- ------------ ---------------------
  Integer      n         2            Number of inputs

Connectors
----------

  ------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- -----------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf     Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal
  igitalOutput)                                          
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model WiredX "Wired node with multiple input and one output"
      extends D.Interfaces.MISO;
    protected 
      D.Interfaces.Logic auxiliary[n](each start=L.'Z', each fixed=true);
    equation 
      auxiliary[1] = x[1];
      for i in 1:n - 1 loop
        auxiliary[i + 1] = D.Tables.ResolutionTable[auxiliary[i], x[i + 1]];
      end for;
      y = pre(auxiliary[n]);
    end WiredX;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:32 2010.
