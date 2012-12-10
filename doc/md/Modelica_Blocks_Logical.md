% Modelica.Blocks.Logical
% 
% 

[Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).Logical
===============================================================

**Library of components with Boolean input and output signals**

Information
-----------

::

This package provides blocks with Boolean input and output signals to
describe logical networks. A typical example for a logical network built
with package Logical is shown in the next figure:

The actual value of Boolean input and/or output signals is displayed in
the respective block icon as "circle", where "white" color means value
**false** and "green" color means value **true**. These values are
visualized in a diagram animation.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                     Description
  ---------------------------------------- -------------------------------
  ![image26](Modelica.Blocks.Logical.AndS. Logical 'and': y = u1 and u2
  png)                                     
  [And](Modelica_Blocks_Logical.html#Model 
  ica.Blocks.Logical.And)                  

  ![image27](Modelica.Blocks.Logical.OrS.p Logical 'or': y = u1 or u2
  ng)                                      
  [Or](Modelica_Blocks_Logical.html#Modeli 
  ca.Blocks.Logical.Or)                    

  ![image28](Modelica.Blocks.Logical.XorS. Logical 'xor': y = u1 xor u2
  png)                                     
  [Xor](Modelica_Blocks_Logical.html#Model 
  ica.Blocks.Logical.Xor)                  

  ![image29](Modelica.Blocks.Logical.XorS. Logical 'nor': y = not (u1 or
  png)                                     u2)
  [Nor](Modelica_Blocks_Logical.html#Model 
  ica.Blocks.Logical.Nor)                  

  ![image30](Modelica.Blocks.Logical.XorS. Logical 'nand': y = not (u1 and
  png)                                     u2)
  [Nand](Modelica_Blocks_Logical.html#Mode 
  lica.Blocks.Logical.Nand)                

  ![image31](Modelica.Blocks.Logical.NotS. Logical 'not': y = not u
  png)                                     
  [Not](Modelica_Blocks_Logical.html#Model 
  ica.Blocks.Logical.Not)                  

  ![image32](Modelica.Blocks.Logical.NotS. Breaks algebraic loops by an
  png)                                     infinitesimal small time delay
  [Pre](Modelica_Blocks_Logical.html#Model (y = pre(u): event iteration
  ica.Blocks.Logical.Pre)                  continues until u = pre(u))

  ![image33](Modelica.Blocks.Logical.NotS. Output y is true, if the input
  png)                                     u has a rising edge (y =
  [Edge](Modelica_Blocks_Logical.html#Mode edge(u))
  lica.Blocks.Logical.Edge)                

  ![image34](Modelica.Blocks.Logical.NotS. Output y is true, if the input
  png)                                     u has a falling edge (y =
  [FallingEdge](Modelica_Blocks_Logical.ht edge(not u))
  ml#Modelica.Blocks.Logical.FallingEdge)  

  ![image35](Modelica.Blocks.Logical.NotS. Output y is true, if the input
  png)                                     u has a rising or falling edge
  [Change](Modelica_Blocks_Logical.html#Mo (y = change(u))
  delica.Blocks.Logical.Change)            

  ![image36](Modelica.Blocks.Logical.Great Output y is true, if input u is
  erThresholdS.png)                        greater than threshold
  [GreaterThreshold](Modelica_Blocks_Logic 
  al.html#Modelica.Blocks.Logical.GreaterT 
  hreshold)                                

  ![image37](Modelica.Blocks.Logical.Great Output y is true, if input u is
  erEqualThresholdS.png)                   greater or equal than threshold
  [GreaterEqualThreshold](Modelica_Blocks_ 
  Logical.html#Modelica.Blocks.Logical.Gre 
  aterEqualThreshold)                      

  ![image38](Modelica.Blocks.Logical.LessT Output y is true, if input u is
  hresholdS.png)                           less than threshold
  [LessThreshold](Modelica_Blocks_Logical. 
  html#Modelica.Blocks.Logical.LessThresho 
  ld)                                      

  ![image39](Modelica.Blocks.Logical.LessE Output y is true, if input u is
  qualThresholdS.png)                      less or equal than threshold
  [LessEqualThreshold](Modelica_Blocks_Log 
  ical.html#Modelica.Blocks.Logical.LessEq 
  ualThreshold)                            

  ![image40](Modelica.Blocks.Logical.Great Output y is true, if input u1
  erS.png)                                 is greater as input u2
  [Greater](Modelica_Blocks_Logical.html#M 
  odelica.Blocks.Logical.Greater)          

  ![image41](Modelica.Blocks.Logical.Great Output y is true, if input u1
  erEqualS.png)                            is greater or equal as input u2
  [GreaterEqual](Modelica_Blocks_Logical.h 
  tml#Modelica.Blocks.Logical.GreaterEqual 
  )                                        

  ![image42](Modelica.Blocks.Logical.LessS Output y is true, if input u1
  .png)                                    is less as input u2
  [Less](Modelica_Blocks_Logical.html#Mode 
  lica.Blocks.Logical.Less)                

  ![image43](Modelica.Blocks.Logical.LessE Output y is true, if input u1
  qualS.png)                               is less or equal as input u2
  [LessEqual](Modelica_Blocks_Logical.html 
  #Modelica.Blocks.Logical.LessEqual)      

  ![image44](Modelica.Blocks.Logical.ZeroC Trigger zero crossing of input
  rossingS.png)                            u
  [ZeroCrossing](Modelica_Blocks_Logical.h 
  tml#Modelica.Blocks.Logical.ZeroCrossing 
  )                                        

  ![image45](Modelica.Blocks.Logical.Logic Logical Switch
  alSwitchS.png)                           
  [LogicalSwitch](Modelica_Blocks_Logical. 
  html#Modelica.Blocks.Logical.LogicalSwit 
  ch)                                      

  ![image46](Modelica.Blocks.Logical.Switc Switch between two Real signals
  hS.png)                                  
  [Switch](Modelica_Blocks_Logical.html#Mo 
  delica.Blocks.Logical.Switch)            

  ![image47](Modelica.Blocks.Logical.Hyste Transform Real to Boolean
  resisS.png)                              signal with Hysteresis
  [Hysteresis](Modelica_Blocks_Logical.htm 
  l#Modelica.Blocks.Logical.Hysteresis)    

  ![image48](Modelica.Blocks.Logical.OnOff On-off controller
  ControllerS.png)                         
  [OnOffController](Modelica_Blocks_Logica 
  l.html#Modelica.Blocks.Logical.OnOffCont 
  roller)                                  

  ![image49](Modelica.Blocks.Logical.Trigg Triggered trapezoid generator
  eredTrapezoidS.png)                      
  [TriggeredTrapezoid](Modelica_Blocks_Log 
  ical.html#Modelica.Blocks.Logical.Trigge 
  redTrapezoid)                            

  ![image50](Modelica.Blocks.Logical.Timer Timer measuring the time from
  S.png)                                   the time instant where the
  [Timer](Modelica_Blocks_Logical.html#Mod Boolean input became true
  elica.Blocks.Logical.Timer)              

  ![image51](Modelica.Blocks.Logical.Termi Terminate simulation if
  nateSimulationS.png)                     condition is fullfilled
  [TerminateSimulation](Modelica_Blocks_Lo 
  gical.html#Modelica.Blocks.Logical.Termi 
  nateSimulation)                          
  ------------------------------------------------------------------------

* * * * *

![image52](Modelica.Blocks.Logical.AndI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).And
================================================================================================================================

**Logical 'and': y = u1 and u2**

Information
-----------

::

The output is **true** if all inputs are **true**, otherwise the output
is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO)
(Partial block with 2 input and 1 output Boolean signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model And "Logical 'and': y = u1 and u2"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y = u1 and u2;
    end And;

* * * * *

![image53](Modelica.Blocks.Logical.OrI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Or
==============================================================================================================================

**Logical 'or': y = u1 or u2**

Information
-----------

::

The output is **true** if at least one input is **true**, otherwise the
output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO)
(Partial block with 2 input and 1 output Boolean signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Or "Logical 'or': y = u1 or u2"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y = u1 or u2;
    end Or;

* * * * *

![image54](Modelica.Blocks.Logical.XorI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Xor
================================================================================================================================

**Logical 'xor': y = u1 xor u2**

Information
-----------

::

The output is **true** if exactly one input is **true**, otherwise the
output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO)
(Partial block with 2 input and 1 output Boolean signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Xor "Logical 'xor': y = u1 xor u2"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y =not  ( (u1 and u2) or (not u1 and not u2));
    end Xor;

* * * * *

![image55](Modelica.Blocks.Logical.NorI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Nor
================================================================================================================================

**Logical 'nor': y = not (u1 or u2)**

Information
-----------

::

The output is **true** if none of the inputs is **true**, otherwise the
output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO)
(Partial block with 2 input and 1 output Boolean signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Nor "Logical 'nor': y = not (u1 or u2)"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y =not  ( u1 or u2);
    end Nor;

* * * * *

![image56](Modelica.Blocks.Logical.NandI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Nand
==================================================================================================================================

**Logical 'nand': y = not (u1 and u2)**

Information
-----------

::

The output is **true** if at least one input is **false**, otherwise the
output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSI2SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO)
(Partial block with 2 input and 1 output Boolean signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Nand "Logical 'nand': y = not (u1 and u2)"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y =not  ( u1 and u2);
    end Nand;

* * * * *

![image57](Modelica.Blocks.Logical.NotI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Not
================================================================================================================================

**Logical 'not': y = not u**

Information
-----------

::

The output is **true** if the input is **false**, otherwise the output
is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO)
(Partial block with 1 input and 1 output Boolean signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Not "Logical 'not': y = not u"
      extends Blocks.Interfaces.partialBooleanSISO;

    equation 
      y =not  u;
    end Not;

* * * * *

![image58](Modelica.Blocks.Logical.PreI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Pre
================================================================================================================================

**Breaks algebraic loops by an infinitesimal small time delay (y =
pre(u): event iteration continues until u = pre(u))**

Information
-----------

::

This block delays the Boolean input by an infinitesimal small time delay
and therefore breaks algebraic loops. In a network of logical blocks, in
every "closed connection loop" at least one logical block must have a
delay, since algebraic systems of Boolean equations are not solveable.

The "Pre" block returns the value of the "input" signal from the last
"event iteration". The "event iteration" stops, once both values are
identical (u = pre(u)).

::

Extends from
[Blocks.Interfaces.partialBooleanSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO)
(Partial block with 1 input and 1 output Boolean signal).

Parameters
----------

  --------------------------------------------------------------------------
  Type       Name            Default    Description
  ---------- --------------- ---------- ------------------------------------
  Boolean    pre\_u\_start   false      Start value of pre(u) at initial
                                        time
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Pre 
      "Breaks algebraic loops by an infinitesimal small time delay (y = pre(u): event iteration continues until u = pre(u))"

      parameter Boolean pre_u_start = false "Start value of pre(u) at initial time";
      extends Blocks.Interfaces.partialBooleanSISO;

    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = pre(u);
    end Pre;

* * * * *

![image59](Modelica.Blocks.Logical.EdgeI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Edge
==================================================================================================================================

**Output y is true, if the input u has a rising edge (y = edge(u))**

Information
-----------

::

The output is **true** if the Boolean input has a rising edge from
**false** to **true**, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO)
(Partial block with 1 input and 1 output Boolean signal).

Parameters
----------

  --------------------------------------------------------------------------
  Type       Name            Default    Description
  ---------- --------------- ---------- ------------------------------------
  Boolean    pre\_u\_start   false      Start value of pre(u) at initial
                                        time
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Edge 
      "Output y is true, if the input u has a rising edge (y = edge(u))"

      parameter Boolean pre_u_start = false "Start value of pre(u) at initial time";
      extends Blocks.Interfaces.partialBooleanSISO;

    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = edge(u);
    end Edge;

* * * * *

![image60](Modelica.Blocks.Logical.FallingEdgeI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).FallingEdge
================================================================================================================================================

**Output y is true, if the input u has a falling edge (y = edge(not
u))**

Information
-----------

::

The output is **true** if the Boolean input has a falling edge from
**true** to **false**, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO)
(Partial block with 1 input and 1 output Boolean signal).

Parameters
----------

  --------------------------------------------------------------------------
  Type       Name            Default    Description
  ---------- --------------- ---------- ------------------------------------
  Boolean    pre\_u\_start   false      Start value of pre(u) at initial
                                        time
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model FallingEdge 
      "Output y is true, if the input u has a falling edge (y = edge(not u))"

      parameter Boolean pre_u_start = false "Start value of pre(u) at initial time";
      extends Blocks.Interfaces.partialBooleanSISO;

    protected 
     Boolean not_u=not u;
    initial equation 
      pre(not_u) =not  pre_u_start;
    equation 
      y = edge(not_u);
    end FallingEdge;

* * * * *

![image61](Modelica.Blocks.Logical.ChangeI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Change
======================================================================================================================================

**Output y is true, if the input u has a rising or falling edge (y =
change(u))**

Information
-----------

::

The output is **true** if the Boolean input has either a rising edge
from **false** to **true** or a falling edge from **true** to **false**,
otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO)
(Partial block with 1 input and 1 output Boolean signal).

Parameters
----------

  --------------------------------------------------------------------------
  Type       Name            Default    Description
  ---------- --------------- ---------- ------------------------------------
  Boolean    pre\_u\_start   false      Start value of pre(u) at initial
                                        time
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#Mo      Boolean input
  delica.Blocks.Interfaces.BooleanInput)                 signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    model Change 
      "Output y is true, if the input u has a rising or falling edge (y = change(u))"

      parameter Boolean pre_u_start = false "Start value of pre(u) at initial time";
      extends Blocks.Interfaces.partialBooleanSISO;

    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = change(u);
    end Change;

* * * * *

![image62](Modelica.Blocks.Logical.GreaterThresholdI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).GreaterThreshold
==========================================================================================================================================================

**Output y is true, if input u is greater than threshold**

Information
-----------

::

The output is **true** if the Real input is greater than parameter
**threshold**, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanThresholdComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison)
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
----------

  Type     Name          Default     Description
  -------- ------------- ----------- --------------------------------------
  Real     threshold     0           Comparison with respect to threshold

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [RealInput](Modelica_Blocks_Interfaces.html#Model      Boolean input
  ica.Blocks.Interfaces.RealInput)                       signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block GreaterThreshold 
      "Output y is true, if input u is greater than threshold"
      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u > threshold;
    end GreaterThreshold;

* * * * *

![image63](Modelica.Blocks.Logical.GreaterEqualThresholdI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).GreaterEqualThreshold
====================================================================================================================================================================

**Output y is true, if input u is greater or equal than threshold**

Information
-----------

::

The output is **true** if the Real input is greater than or equal to
parameter **threshold**, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanThresholdComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison)
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
----------

  Type     Name          Default     Description
  -------- ------------- ----------- --------------------------------------
  Real     threshold     0           Comparison with respect to threshold

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [RealInput](Modelica_Blocks_Interfaces.html#Model      Boolean input
  ica.Blocks.Interfaces.RealInput)                       signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block GreaterEqualThreshold 
      "Output y is true, if input u is greater or equal than threshold"

      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u >= threshold;
    end GreaterEqualThreshold;

* * * * *

![image64](Modelica.Blocks.Logical.LessThresholdI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).LessThreshold
====================================================================================================================================================

**Output y is true, if input u is less than threshold**

Information
-----------

::

The output is **true** if the Real input is less than parameter
**threshold**, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanThresholdComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison)
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
----------

  Type     Name          Default     Description
  -------- ------------- ----------- --------------------------------------
  Real     threshold     0           Comparison with respect to threshold

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [RealInput](Modelica_Blocks_Interfaces.html#Model      Boolean input
  ica.Blocks.Interfaces.RealInput)                       signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block LessThreshold 
      "Output y is true, if input u is less than threshold"

      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u < threshold;
    end LessThreshold;

* * * * *

![image65](Modelica.Blocks.Logical.LessEqualThresholdI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).LessEqualThreshold
==============================================================================================================================================================

**Output y is true, if input u is less or equal than threshold**

Information
-----------

::

The output is **true** if the Real input is less than or equal to
parameter **threshold**, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanThresholdComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison)
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
----------

  Type     Name          Default     Description
  -------- ------------- ----------- --------------------------------------
  Real     threshold     0           Comparison with respect to threshold

Connectors
----------

  -------------------------------------------------------------------------
  Type                                              Name Description
  ------------------------------------------------- ---- ------------------
  input                                             u    Connector of
  [RealInput](Modelica_Blocks_Interfaces.html#Model      Boolean input
  ica.Blocks.Interfaces.RealInput)                       signal

  output                                            y    Connector of
  [BooleanOutput](Modelica_Blocks_Interfaces.html#M      Boolean output
  odelica.Blocks.Interfaces.BooleanOutput)               signal
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block LessEqualThreshold 
      "Output y is true, if input u is less or equal than threshold"
      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u <= threshold;
    end LessEqualThreshold;

* * * * *

![image66](Modelica.Blocks.Logical.GreaterI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Greater
========================================================================================================================================

**Output y is true, if input u1 is greater as input u2**

Information
-----------

::

The output is **true** if Real input u1 is greater than Real input u2,
otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison)
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  input                                           u2   Connector of second
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Greater "Output y is true, if input u1 is greater as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 > u2;
    end Greater;

* * * * *

![image67](Modelica.Blocks.Logical.GreaterEqualI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).GreaterEqual
==================================================================================================================================================

**Output y is true, if input u1 is greater or equal as input u2**

Information
-----------

::

The output is **true** if Real input u1 is greater than or equal to Real
input u2, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison)
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  input                                           u2   Connector of second
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block GreaterEqual 
      "Output y is true, if input u1 is greater or equal as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 >= u2;
    end GreaterEqual;

* * * * *

![image68](Modelica.Blocks.Logical.LessI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Less
==================================================================================================================================

**Output y is true, if input u1 is less as input u2**

Information
-----------

::

The output is **true** if Real input u1 is less than Real input u2,
otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison)
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  input                                           u2   Connector of second
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Less "Output y is true, if input u1 is less as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 < u2;
    end Less;

* * * * *

![image69](Modelica.Blocks.Logical.LessEqualI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).LessEqual
============================================================================================================================================

**Output y is true, if input u1 is less or equal as input u2**

Information
-----------

::

The output is **true** if Real input u1 is less than or equal to Real
input u2, otherwise the output is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanComparison](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison)
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  input                                           u2   Connector of second
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Boolean input signal
  elica.Blocks.Interfaces.RealInput)                   

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block LessEqual 
      "Output y is true, if input u1 is less or equal as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 <= u2;
    end LessEqual;

* * * * *

![image70](Modelica.Blocks.Logical.ZeroCrossingI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).ZeroCrossing
==================================================================================================================================================

**Trigger zero crossing of input u**

Information
-----------

::

The output "y" is **true** at the time instant when the input "u"
becomes zero, provided the input "enable" is **true**. At all other time
instants, the output "y" is **false**. If the input "u" is zero at a
time instant when the "enable" input changes its value, then the output
y is **false**.

Note, that in the plot window of a Modelica simulator, the output of
this block is usually identically to **false**, because the output may
only be **true** at an event instant, but not during continuous
integration. In order to check that this component is actually working
as expected, one should connect its output to, e.g., component
*ModelicaAdditions.Blocks.Discrete.TriggeredSampler*.

::

Extends from
[Blocks.Interfaces.partialBooleanSO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSO)
(Partial block with 1 output Boolean signal).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                    Name Description
  --------------------------------------- ---- ---------------------------
  output                                  y    Connector of Boolean output
  [BooleanOutput](Modelica_Blocks_Interfa      signal
  ces.html#Modelica.Blocks.Interfaces.Boo      
  leanOutput)                                  

  input                                   u    
  [RealInput](Modelica_Blocks_Interfaces.      
  html#Modelica.Blocks.Interfaces.RealInp      
  ut)                                          

  input                                   enab Zero input crossing is
  [BooleanInput](Modelica_Blocks_Interfac le   triggered if the enable
  es.html#Modelica.Blocks.Interfaces.Bool      input signal is true
  eanInput)                                    
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block ZeroCrossing "Trigger zero crossing of input u"
      extends Blocks.Interfaces.partialBooleanSO;
      Blocks.Interfaces.RealInput u;
      Blocks.Interfaces.BooleanInput enable 
        "Zero input crossing is triggered if the enable input signal is true";

    protected 
      Boolean disable=not   enable;
      Boolean u_pos;
    initial equation 
      pre(u_pos)  = false;
      pre(enable) = false;
      pre(disable) =not  pre(enable);
    equation 
      u_pos = enable and u >= 0;
      y = change(u_pos) and not edge(enable) and not edge(disable);
    end ZeroCrossing;

* * * * *

![image71](Modelica.Blocks.Logical.LogicalSwitchI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).LogicalSwitch
====================================================================================================================================================

**Logical Switch**

Information
-----------

::

The LogicalSwitch switches, depending on the Boolean u2 connector (the
middle connector), between the two possible input signals u1 (upper
connector) and u3 (lower connector).

If u2 is true, connector y is set equal to u1, else it is set equal to
u3.

::

Extends from
[Blocks.Interfaces.partialBooleanSI3SO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI3SO)
(Partial block with 3 input and 1 output Boolean signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u2   Connector of second
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u3   Connector of third
  [BooleanInput](Modelica_Blocks_Interfaces.html#      Boolean input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  output                                          y    Connector of Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html      output signal
  #Modelica.Blocks.Interfaces.BooleanOutput)           
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block LogicalSwitch "Logical Switch"
      extends Blocks.Interfaces.partialBooleanSI3SO;

    equation 
      y = if u2 then u1 else u3;
    end LogicalSwitch;

* * * * *

![image72](Modelica.Blocks.Logical.SwitchI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Switch
======================================================================================================================================

**Switch between two Real signals**

Information
-----------

::

The Logical.Switch switches, depending on the logical connector u2 (the
middle connector) between the two possible input signals u1 (upper
connector) and u3 (lower connector).

If u2 is **true**, the output signal y is set equal to u1, else it is
set equal to u3.

::

Extends from
[Blocks.Interfaces.partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- --------------------
  input                                           u1   Connector of first
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Real input signal
  elica.Blocks.Interfaces.RealInput)                   

  input                                           u2   Connector of Boolean
  [BooleanInput](Modelica_Blocks_Interfaces.html#      input signal
  Modelica.Blocks.Interfaces.BooleanInput)             

  input                                           u3   Connector of second
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      Real input signal
  elica.Blocks.Interfaces.RealInput)                   

  output                                          y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo      output signal
  delica.Blocks.Interfaces.RealOutput)                 
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Switch "Switch between two Real signals"
      extends Blocks.Interfaces.partialBooleanBlockIcon;
      Blocks.Interfaces.RealInput u1 "Connector of first Real input signal";
      Blocks.Interfaces.BooleanInput u2 "Connector of Boolean input signal";
      Blocks.Interfaces.RealInput u3 "Connector of second Real input signal";
      Blocks.Interfaces.RealOutput y "Connector of Real output signal";

    equation 
      y = if u2 then u1 else u3;
    end Switch;

* * * * *

![image73](Modelica.Blocks.Logical.HysteresisI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Hysteresis
==============================================================================================================================================

**Transform Real to Boolean signal with Hysteresis**

Information
-----------

::

This block transforms a **Real** input signal into a **Boolean** output
signal:

-   When the output was **false** and the input becomes **greater** than
    parameter **uHigh**, the output switches to **true**.
-   When the output was **true** and the input becomes **less** than
    parameter **uLow**, the output switches to **false**.

The start value of the output is defined via parameter **pre\_y\_start**
(= value of pre(y) at initial time). The default value of this parameter
is **false**.

::

Extends from
[Blocks.Interfaces.partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Parameters
----------

  ------------------------------------------------------------------------
  Type      Name           Default   Description
  --------- -------------- --------- -------------------------------------
  Real      uLow                     if y=true and u<=uLow, switch to
                                     y=false

  Real      uHigh                    if y=false and u\>=uHigh, switch to
                                     y=true

  Boolean   pre\_y\_start  false     Value of pre(y) at initial time
  ------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                      Name  Descripti
                                                                  on
  --------------------------------------------------------- ----- ---------
  input                                                     u     
  [RealInput](Modelica_Blocks_Interfaces.html#Modelica.Bloc       
  ks.Interfaces.RealInput)                                        

  output                                                    y     
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Modelica.       
  Blocks.Interfaces.BooleanOutput)                                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Hysteresis "Transform Real to Boolean signal with Hysteresis"

      extends Blocks.Interfaces.partialBooleanBlockIcon;
      parameter Real uLow(start=0) "if y=true and u<=uLow, switch to y=false";
      parameter Real uHigh(start=1) "if y=false and u>=uHigh, switch to y=true";
      parameter Boolean pre_y_start = false "Value of pre(y) at initial time";

      Blocks.Interfaces.RealInput u;
      Blocks.Interfaces.BooleanOutput y;

    initial equation 
      pre(y) = pre_y_start;
    equation 
       y = u > uHigh or pre(y) and u >= uLow;
    end Hysteresis;

* * * * *

![image74](Modelica.Blocks.Logical.OnOffControllerI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).OnOffController
========================================================================================================================================================

**On-off controller**

Information
-----------

::

The block OnOffController sets the output signal **y** to **true** when
the input signal **u** falls below the **reference** signal minus half
of the bandwidth and sets the output signal **y** to **false** when the
input signal **u** exceeds the **reference** signal plus half of the
bandwidth.

::

Extends from
[Interfaces.partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Parameters
----------

  Type       Name             Default    Description
  ---------- ---------------- ---------- ----------------------------------
  Real       bandwidth                   Bandwidth around reference signal
  Boolean    pre\_y\_start    false      Value of pre(y) at initial time

Connectors
----------

  ------------------------------------------------------------------------
  Type                                      Name  Description
  ----------------------------------------- ----- ------------------------
  input                                     refer Connector of Real input
  [RealInput](Modelica_Blocks_Interfaces.ht ence  signal used as reference
  ml#Modelica.Blocks.Interfaces.RealInput)        signal

  input                                     u     Connector of Real input
  [RealInput](Modelica_Blocks_Interfaces.ht       signal used as
  ml#Modelica.Blocks.Interfaces.RealInput)        measurement signal

  output                                    y     Connector of Real output
  [BooleanOutput](Modelica_Blocks_Interface       signal used as actuator
  s.html#Modelica.Blocks.Interfaces.Boolean       signal
  Output)                                         
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block OnOffController "On-off controller"
      extends Interfaces.partialBooleanBlockIcon;
      Blocks.Interfaces.RealInput reference 
        "Connector of Real input signal used as reference signal";
      Blocks.Interfaces.RealInput u 
        "Connector of Real input signal used as measurement signal";
      Blocks.Interfaces.BooleanOutput y 
        "Connector of Real output signal used as actuator signal";

      parameter Real bandwidth(start=0.1) "Bandwidth around reference signal";
      parameter Boolean pre_y_start = false "Value of pre(y) at initial time";

    initial equation 
      pre(y) = pre_y_start;
    equation 
      y = pre(y) and (u < reference + bandwidth/2) or (u < reference - bandwidth/2);
    end OnOffController;

* * * * *

![image75](Modelica.Blocks.Logical.TriggeredTrapezoidI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).TriggeredTrapezoid
==============================================================================================================================================================

**Triggered trapezoid generator**

Information
-----------

::

The block TriggeredTrapezoid has a boolean input and a real output
signal and requires the parameters *amplitude*, *rising*, *falling* and
*offset*. The output signal **y** represents a trapezoidal signal
dependent on the input signal **u**.

The behaviour is as follows: Assume the initial input to be false. In
this case, the output will be *offset*. After a rising edge (i.e., the
input changes from false to true), the output is rising during *rising*
to the sum of *offset* and *amplitude*. In contrast, after a falling
edge (i.e., the input changes from true to false), the output is falling
during *falling* to a value of *offset*.

Note, that the case of edges before expiration of rising or falling is
handled properly.

::

Extends from
[Interfaces.partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Parameters
----------

  --------------------------------------------------------------------------
  Type                               Name     Default Description
  ---------------------------------- -------- ------- ----------------------
  Real                               amplitud 1       Amplitude of trapezoid
                                     e                

  [Time](Modelica_SIunits.html#Model rising   0       Rising duration of
  ica.SIunits.Time)                                   trapezoid [s]

  [Time](Modelica_SIunits.html#Model falling  rising  Falling duration of
  ica.SIunits.Time)                                   trapezoid [s]

  Real                               offset   0       Offset of output
                                                      signal
  --------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#M      Boolean input
  odelica.Blocks.Interfaces.BooleanInput)               signal

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block TriggeredTrapezoid "Triggered trapezoid generator"
      extends Interfaces.partialBooleanBlockIcon;

      parameter Real amplitude=1 "Amplitude of trapezoid";
      parameter Modelica.SIunits.Time rising(final min=0)=0 
        "Rising duration of trapezoid";
      parameter Modelica.SIunits.Time falling(final min=0)=rising 
        "Falling duration of trapezoid";
      parameter Real offset=0 "Offset of output signal";

      Blocks.Interfaces.BooleanInput u "Connector of Boolean input signal";
      Blocks.Interfaces.RealOutput y "Connector of Real output signal";

    protected 
      discrete Real endValue "Value of y at time of recent edge";
      discrete Real rate "Current rising/falling rate";
      discrete Modelica.SIunits.Time T "Predicted time of output reaching endValue";
    initial equation 
      /* A start value of y is set, because pre(y) is present
         to avoid a warning message from the compiler. However,
         this setting does not have an effect, because y is initialized
         correctly, before pre(y) is used
      */
      pre(y) = 0;
    equation 
        y = if time < T then endValue - (T - time)*rate else  endValue;

        when {initial(),u,not u} then
          endValue = if u then offset + amplitude else offset;
          rate = if u and (rising > 0) then amplitude/rising else 
            if not u and (falling > 0) then -amplitude/falling else 0;
          T = if u and not (rising > 0) or not u and not (falling
             > 0) or not abs(amplitude) > 0 or initial() then time else time
             + (endValue - pre(y))/rate;
        end when;
    end TriggeredTrapezoid;

* * * * *

![image76](Modelica.Blocks.Logical.TimerI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).Timer
====================================================================================================================================

**Timer measuring the time from the time instant where the Boolean input
became true**

Information
-----------

::

When the Boolean input "u" becomes **true**, the timer is started and
the output "y" is the time from the time instant where u became true.
The timer is stopped and the output is reset to zero, once the input
becomes false.

::

Extends from
[Interfaces.partialBooleanBlockIcon](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon)
(Basic graphical layout of logical block).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- ------------------
  input                                            u    Connector of
  [BooleanInput](Modelica_Blocks_Interfaces.html#M      Boolean input
  odelica.Blocks.Interfaces.BooleanInput)               signal

  output                                           y    Connector of Real
  [RealOutput](Modelica_Blocks_Interfaces.html#Mod      output signal
  elica.Blocks.Interfaces.RealOutput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Timer 
      "Timer measuring the time from the time instant where the Boolean input became true"

      extends Interfaces.partialBooleanBlockIcon;
      Blocks.Interfaces.BooleanInput u "Connector of Boolean input signal";
      Blocks.Interfaces.RealOutput y "Connector of Real output signal";

    protected 
      discrete Modelica.SIunits.Time entryTime "Time instant when u became true";
    initial equation 
      pre(entryTime) = 0;
    equation 
      when u then
        entryTime = time;
      end when;
      y = if u then time - entryTime else 0.0;
    end Timer;

* * * * *

![image77](Modelica.Blocks.Logical.TerminateSimulationI.png) [Modelica.Blocks.Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical).TerminateSimulation
================================================================================================================================================================

**Terminate simulation if condition is fullfilled**

Information
-----------

::

In the parameter menu, a **time varying** expression can be defined via
variable **condition**, for example "condition = x < 0", where "x" is a
variable that is declared in the model in which the
"TerminateSimulation" block is present. If this expression becomes
**true**, the simulation is (successfully) terminated. A termination
message explaining the reason for the termination can be given via
parameter "terminationText".

::

Parameters
----------

  ------------------------------------------------------------------------
  Type                             Name   Default    Description
  -------------------------------- ------ ---------- ---------------------
  [BooleanOutput](Modelica_Blocks_ condit false      Terminate simulation
  Interfaces.html#Modelica.Blocks. ion               when condition
  Interfaces.BooleanOutput)                          becomes true

  String                           termin "... End   Text that will be
                                   ationT condition  displayed when
                                   ext    reached"   simulation is
                                                     terminated
  ------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                        Name  Description
  ------------------------------------------- ----- ----------------------
  output                                      condi Terminate simulation
  [BooleanOutput](Modelica_Blocks_Interfaces. tion  when condition becomes
  html#Modelica.Blocks.Interfaces.BooleanOutp       true
  ut)                                               
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block TerminateSimulation 
      "Terminate simulation if condition is fullfilled"

      Modelica.Blocks.Interfaces.BooleanOutput condition=false 
        "Terminate simulation when condition becomes true";
      parameter String terminationText = "... End condition reached" 
        "Text that will be displayed when simulation is terminated";

    equation 
      when condition then
         terminate(terminationText);
      end when;
    end TerminateSimulation;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:37 2010.
