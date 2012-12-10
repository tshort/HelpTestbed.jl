% Modelica.Electrical.Digital.Interfaces
% 
% 

[Modelica.Electrical.Digital](Modelica_Electrical_Digital.html#Modelica.Electrical.Digital).Interfaces
======================================================================================================

**Basic definitions**

Information
-----------

::

This package contains basic definitions: Type definitions of Logic and
Strength, interface definitions (connectors) for digital electrical
components, and partial models for connection patterns which are often
used.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                               Description
  -------------------------------------------------- ---------------------
  [Logic](Modelica_Electrical_Digital_Interfaces.htm Logic values and
  l#Modelica.Electrical.Digital.Interfaces.Logic)    their coding
                                                     according to IEEE
                                                     1164 STD\_ULOGIC type

  [UX01](Modelica_Electrical_Digital_Interfaces.html 4-valued subtype of
  #Modelica.Electrical.Digital.Interfaces.UX01)      IEEE 1164 STD\_ULOGIC
                                                     type

  [Strength](Modelica_Electrical_Digital_Interfaces. Output strengthes of
  html#Modelica.Electrical.Digital.Interfaces.Streng registers
  th)                                                

  ![image6](Modelica.Electrical.Digital.Interfaces.D Digital port (both
  igitalSignalS.png)                                 input/output
  [DigitalSignal](Modelica_Electrical_Digital_Interf possible)
  aces.html#Modelica.Electrical.Digital.Interfaces.D 
  igitalSignal)                                      

  ![image7](Modelica.Electrical.Digital.Interfaces.D Input DigitalSignal
  igitalInputS.png)                                  as connector
  [DigitalInput](Modelica_Electrical_Digital_Interfa 
  ces.html#Modelica.Electrical.Digital.Interfaces.Di 
  gitalInput)                                        

  ![image8](Modelica.Electrical.Digital.Interfaces.D Output DigitalSignal
  igitalOutputS.png)                                 as connector
  [DigitalOutput](Modelica_Electrical_Digital_Interf 
  aces.html#Modelica.Electrical.Digital.Interfaces.D 
  igitalOutput)                                      

  ![image9](Modelica.Electrical.Digital.Interfaces.S Single input, single
  ISOS.png)                                          output
  [SISO](Modelica_Electrical_Digital_Interfaces.html 
  #Modelica.Electrical.Digital.Interfaces.SISO)      

  ![image10](Modelica.Electrical.Digital.Interfaces. Multiple input -
  MISOS.png)                                         single output
  [MISO](Modelica_Electrical_Digital_Interfaces.html 
  #Modelica.Electrical.Digital.Interfaces.MISO)      

  ![image11](Modelica.Electrical.Digital.Interfaces. Multiple input -
  MIMOS.png)                                         multiple output
  [MIMO](Modelica_Electrical_Digital_Interfaces.html 
  #Modelica.Electrical.Digital.Interfaces.MIMO)      
  ------------------------------------------------------------------------

Types and constants
-------------------

    type Logic = enumeration(
      'U' "U  Uninitialized",
      'X' "X  Forcing Unknown",
      '0' "0  Forcing 0",
      '1' "1  Forcing 1",
      'Z' "Z  High Impedance",
      'W' "W  Weak    Unknown",
      'L' "L  Weak    0",
      'H' "H  Weak    1",
      '-' "-  Don't care") 
    "Logic values and their coding according to IEEE 1164 STD_ULOGIC type";

    type UX01 = enumeration(
      'U' "U  Uninitialized",
      'X' "X  Forcing Unknown",
      '0' "0  Forcing 0",
      '1' "1  Forcing 1") "4-valued subtype of IEEE 1164 STD_ULOGIC type";

    type Strength = enumeration(
      'S_X01',
      'S_X0H',
      'S_XL1',
      'S_X0Z',
      'S_XZ1',
      'S_WLH',
      'S_WLZ',
      'S_WZH',
      'S_W0H',
      'S_WL1') "Output strengthes of registers";

* * * * *

[Modelica.Electrical.Digital.Interfaces](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces).DigitalSignal
==========================================================================================================================================

**Digital port (both input/output possible)**

Information
-----------

::

DigitalSignal is the basic digital connector defintion. A direction
(input, output) is not yet defined. DigitalSignal is of type Logic. It
can have the logic values (U, X, 0, 1, ...) which are internally coded
by integer values by using the enumeration (c.f. the definition of type
Logic).

::

Extends from
[Logic](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.Logic)
(Logic values and their coding according to IEEE 1164 STD\_ULOGIC type).

Modelica definition
-------------------

    connector DigitalSignal = Logic "Digital port (both input/output possible)";

* * * * *

![image12](Modelica.Electrical.Digital.Interfaces.DigitalInputI.png) [Modelica.Electrical.Digital.Interfaces](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces).DigitalInput
==============================================================================================================================================================================================================

**Input DigitalSignal as connector**

Information
-----------

::

DigitalInput is the digital input connector defintion. DigitalInput is
of type Logic. It can have the logic values (U, X, 0, 1, ...) which are
internally coded by integer values by using the enumeration (c.f. the
definition of type Logic).

::

Extends from
[DigitalSignal](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalSignal)
(Digital port (both input/output possible)).

Modelica definition
-------------------

    connector DigitalInput = input DigitalSignal "Input DigitalSignal as connector";

* * * * *

![image13](Modelica.Electrical.Digital.Interfaces.DigitalOutputI.png) [Modelica.Electrical.Digital.Interfaces](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces).DigitalOutput
================================================================================================================================================================================================================

**Output DigitalSignal as connector**

Information
-----------

::

DigitalOutput is the digital output connector defintion. DigitalOutput
is of type Logic. It can have the logic values (U, X, 0, 1, ...) which
are internally coded by integer values by using the enumeration (c.f.
the definition of type Logic). The arrow shape symbolizes the signal
flow direction.

::

Extends from
[DigitalSignal](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces.DigitalSignal)
(Digital port (both input/output possible)).

Modelica definition
-------------------

    connector DigitalOutput = output DigitalSignal 
      "Output DigitalSignal as connector";

* * * * *

![image14](Modelica.Electrical.Digital.Interfaces.SISOI.png) [Modelica.Electrical.Digital.Interfaces](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces).SISO
==============================================================================================================================================================================================

**Single input, single output**

Information
-----------

::

SISO is a partial model for the connection pattern whith **s**ingle
(scalar) digital **i**nput and **s**ingle (scalar) digital **o**utput.
Besides the connectors it provides a rectangel for the icon which can be
filled in by the component which inherits the SISO model.

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Nam Description
                                                       e   
  ---------------------------------------------------- --- ----------------
  input                                                x   Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interface     Digital input
  s.html#Modelica.Electrical.Digital.Interfaces.Digita     signal
  lInput)                                                  

  output                                               y   Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interfac     Digital output
  es.html#Modelica.Electrical.Digital.Interfaces.Digit     signal
  alOutput)                                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block SISO "Single input, single output"
      import D = Modelica.Electrical.Digital;
      D.Interfaces.DigitalInput x "Connector of Digital input signal";
      D.Interfaces.DigitalOutput y "Connector of Digital output signal";
    end SISO;

* * * * *

![image15](Modelica.Electrical.Digital.Interfaces.MISOI.png) [Modelica.Electrical.Digital.Interfaces](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces).MISO
==============================================================================================================================================================================================

**Multiple input - single output**

Information
-----------

::

MISO is a partial model for the connection pattern whith **m**ultiple
(vector) digital**i**nput and **s**ingle (scalar) digital **o**utput.
Besides the connectors it provides a rectangel for the icon which can be
filled in by the component which inherits the MISO model.

::

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

    partial block MISO "Multiple input - single output"
      import D = Modelica.Electrical.Digital;

      parameter Integer n(final min=2) = 2 "Number of inputs";
      D.Interfaces.DigitalInput x[n] "Connector of Digital input signal vector";
      D.Interfaces.DigitalOutput y "Connector of Digital output signal";
    end MISO;

* * * * *

![image16](Modelica.Electrical.Digital.Interfaces.MIMOI.png) [Modelica.Electrical.Digital.Interfaces](Modelica_Electrical_Digital_Interfaces.html#Modelica.Electrical.Digital.Interfaces).MIMO
==============================================================================================================================================================================================

**Multiple input - multiple output**

Information
-----------

::

MIMO is a partial model for the connection pattern whith **m**ultiple
(vector) digital**i**nput and **m**ultiple (vector) digital **o**utput.
Besides the connectors it provides a rectangel for the icon which can be
filled in by the component which inherits the MISO model.

::

Parameters
----------

  Type        Name     Default     Description
  ----------- -------- ----------- ---------------------------------------
  Integer     n        1           Number of inputs = Number of outputs

Connectors
----------

  -------------------------------------------------------------------------
  Type                                               Nam Description
                                                     e   
  -------------------------------------------------- --- ------------------
  input                                              x[n Connector of
  [DigitalInput](Modelica_Electrical_Digital_Interfa ]   Digital input
  ces.html#Modelica.Electrical.Digital.Interfaces.Di     signal vector
  gitalInput)                                            

  output                                             y[n Connector of
  [DigitalOutput](Modelica_Electrical_Digital_Interf ]   Digital output
  aces.html#Modelica.Electrical.Digital.Interfaces.D     signal vector
  igitalOutput)                                          
  -------------------------------------------------------------------------

Modelica definition
-------------------

    partial block MIMO "Multiple input - multiple output"
      import D = Modelica.Electrical.Digital;

      parameter Integer n(final min=1) = 1 "Number of inputs = Number of outputs";
      D.Interfaces.DigitalInput x[n] "Connector of Digital input signal vector";
      D.Interfaces.DigitalOutput y[n] "Connector of Digital output signal vector";
    end MIMO;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:28:27 2010.
