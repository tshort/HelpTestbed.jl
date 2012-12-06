% Modelica.Blocks.MathBoolean
% 
% 

[Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).MathBoolean
===================================================================

**Library of Boolean mathematical functions as input/output blocks**

Information
-----------

::

This package contains basic **mathematical operations** on **Boolean**
signals.

Package MathBoolean is a new design that shall replace in the future the
[Logical](Modelica_Blocks_Logical.html#Modelica.Blocks.Logical) package.
The new features are:

-   If useful, blocks may have an arbitrary number of inputs (e.g.,
    "And" block with 2,3,4,... Boolean inputs). This is based on the
    "connectorSizing" annotation which allows a tool to conveniently
    handle vectors of connectors.
-   The blocks are smaller in size, so that the diagram area is better
    utilized for trivial blocks such as "And" or "Or".

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                    Description
  --------------------------------------- --------------------------------
  ![image11](Modelica.Blocks.MathBoolean. Set Boolean expression that is
  MultiSwitchS.png)                       associated with the first active
  [MultiSwitch](Modelica_Blocks_MathBoole input signal
  an.html#Modelica.Blocks.MathBoolean.Mul 
  tiSwitch)                               

  ![image12](Modelica.Blocks.MathBoolean. Logical 'and': y = u[1] and u[2]
  AndS.png)                               and ... and u[nu]
  [And](Modelica_Blocks_MathBoolean.html# 
  Modelica.Blocks.MathBoolean.And)        

  ![image13](Modelica.Blocks.MathBoolean. Logical 'or': y = u[1] or u[2]
  OrS.png)                                or ... or u[nu]
  [Or](Modelica_Blocks_MathBoolean.html#M 
  odelica.Blocks.MathBoolean.Or)          

  ![image14](Modelica.Blocks.MathBoolean. Logical 'xor': y = oneTrue(u) (y
  XorS.png)                               is true, if exactly one element
  [Xor](Modelica_Blocks_MathBoolean.html# of u is true, otherwise it is
  Modelica.Blocks.MathBoolean.Xor)        false)

  ![image15](Modelica.Blocks.MathBoolean. Logical 'nand': y = not ( u[1]
  XorS.png)                               and u[2] and ... and u[nu] )
  [Nand](Modelica_Blocks_MathBoolean.html 
  #Modelica.Blocks.MathBoolean.Nand)      

  ![image16](Modelica.Blocks.MathBoolean. Logical 'nor': y = not ( u[1] or
  XorS.png)                               u[2] or ... or u[nu] )
  [Nor](Modelica_Blocks_MathBoolean.html# 
  Modelica.Blocks.MathBoolean.Nor)        

  ![image17](Modelica.Blocks.MathBoolean. Logical 'not': y = not u
  NotS.png)                               
  [Not](Modelica_Blocks_MathBoolean.html# 
  Modelica.Blocks.MathBoolean.Not)        

  ![image18](Modelica.Blocks.MathBoolean. Output y is true, if the input u
  RisingEdgeS.png)                        has a rising edge, otherwise it
  [RisingEdge](Modelica_Blocks_MathBoolea is false (y = edge(u))
  n.html#Modelica.Blocks.MathBoolean.Risi 
  ngEdge)                                 

  ![image19](Modelica.Blocks.MathBoolean. Output y is true, if the input u
  FallingEdgeS.png)                       has a falling edge, otherwise it
  [FallingEdge](Modelica_Blocks_MathBoole is false (y = edge(not u))
  an.html#Modelica.Blocks.MathBoolean.Fal 
  lingEdge)                               

  ![image20](Modelica.Blocks.MathBoolean. Output y is true, if the input u
  ChangingEdgeS.png)                      has either a rising or a falling
  [ChangingEdge](Modelica_Blocks_MathBool edge and otherwise it is false
  ean.html#Modelica.Blocks.MathBoolean.Ch (y=change(u))
  angingEdge)                             

  ![image21](Modelica.Blocks.MathBoolean. Delay a rising edge of the
  OnDelayS.png)                           input, but do not delay a
  [OnDelay](Modelica_Blocks_MathBoolean.h falling edge.
  tml#Modelica.Blocks.MathBoolean.OnDelay 
  )                                       
  ------------------------------------------------------------------------

* * * * *

![image22](Modelica.Blocks.MathBoolean.MultiSwitchI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).MultiSwitch
================================================================================================================================================================

**Set Boolean expression that is associated with the first active input
signal**

Information
-----------

::

The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Boolean expressions expr[:]. The output signal y is set
to expr[i], if i is the first element in the input vector u that is
true. If all input signals are false, y is set to parameter "y\_default"
or the previous value of y is kept if parameter use\_pre\_as\_default =
**true**:

>     // Conceptual equation (not valid Modelica)
>     i = 'first element of u[:] that is true';
>     y = if i==0 then (if use_pre_as_default then pre(y)
>                                             else y_default)
>         else expr[i];

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

::

Parameters
----------

  --------------------------------------------------------------------------
  Type    Name            Default     Description
  ------- --------------- ----------- --------------------------------------
  Boolean expr[nu]        fill(false, y = if u[i] then expr[i] else
                          nu)         y\_default (time varying)

  Boolean use\_pre\_as\_d true        set true to hold last value as default
          efault                      (y\_default = pre(y))

  Boolean y\_default      false       Default value of output y if all u[i]
                                      = false
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Set y = expr[i],
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    if u[i] = true
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         

  output                                              y    Output depending
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mod      on expression
  elica.Blocks.Interfaces.BooleanOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block MultiSwitch 
      "Set Boolean expression that is associated with the first active input signal"

      input Boolean expr[nu]=fill(false, nu) 
        "y = if u[i] then expr[i] else y_default (time varying)";
      parameter Boolean use_pre_as_default=true 
        "set true to hold last value as default (y_default = pre(y))";
      parameter Boolean y_default=false 
        "Default value of output y if all u[i] = false";

      parameter Integer nu(min=0) = 0 "Number of input connections";

      Modelica.Blocks.Interfaces.BooleanVectorInput u[nu] 
        "Set y = expr[i], if u[i] = true";
      Modelica.Blocks.Interfaces.BooleanOutput y(start=y_default,fixed=true) 
        "Output depending on expression";

    protected 
      Integer firstActiveIndex;
    equation 
        firstActiveIndex =
          Modelica.Math.BooleanVectors.firstTrueIndex(
                                       u);
       y = if firstActiveIndex == 0 then (if use_pre_as_default then pre(y) else y_default) else 
                                         expr[firstActiveIndex];
    end MultiSwitch;

* * * * *

![image23](Modelica.Blocks.MathBoolean.AndI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).And
================================================================================================================================================

**Logical 'and': y = u[1] and u[2] and ... and u[nu]**

Information
-----------

::

The output is **true** if all inputs are **true**, otherwise the output
is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO)
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    Boolean input
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         signals

  output                                              y    Boolean output
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.BooleanOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block And 
      "Logical 'and': y = u[1] and u[2] and ... and u[nu]"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = Modelica.Math.BooleanVectors.allTrue(
                                u);
    end And;

* * * * *

![image24](Modelica.Blocks.MathBoolean.OrI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).Or
==============================================================================================================================================

**Logical 'or': y = u[1] or u[2] or ... or u[nu]**

Information
-----------

::

The output is **true** if at least one input is **true**, otherwise the
output is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO)
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    Boolean input
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         signals

  output                                              y    Boolean output
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.BooleanOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Or "Logical 'or': y = u[1] or u[2] or ... or u[nu]"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = Modelica.Math.BooleanVectors.anyTrue(
                                u);
    end Or;

* * * * *

![image25](Modelica.Blocks.MathBoolean.XorI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).Xor
================================================================================================================================================

**Logical 'xor': y = oneTrue(u) (y is true, if exactly one element of u
is true, otherwise it is false)**

Information
-----------

::

The output is **true** if exactly one input is **true**, otherwise the
output is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO)
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    Boolean input
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         signals

  output                                              y    Boolean output
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.BooleanOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Xor 
      "Logical 'xor': y = oneTrue(u)  (y is true, if exactly one element of u is true, otherwise it is false)"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = Modelica.Math.BooleanVectors.oneTrue(
                                u);
    end Xor;

* * * * *

![image26](Modelica.Blocks.MathBoolean.NandI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).Nand
==================================================================================================================================================

**Logical 'nand': y = not ( u[1] and u[2] and ... and u[nu] )**

Information
-----------

::

The output is **true** if at least one input is **false**, otherwise the
output is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO)
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    Boolean input
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         signals

  output                                              y    Boolean output
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.BooleanOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Nand 
      "Logical 'nand': y = not ( u[1] and u[2] and ... and u[nu] )"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = not Modelica.Math.BooleanVectors.allTrue(
                                    u);
    end Nand;

* * * * *

![image27](Modelica.Blocks.MathBoolean.NorI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).Nor
================================================================================================================================================

**Logical 'nor': y = not ( u[1] or u[2] or ... or u[nu] )**

Information
-----------

::

The output is **false** if at least one input is **true**, otherwise the
output is **true**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO)
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    Boolean input
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         signals

  output                                              y    Boolean output
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.BooleanOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Nor 
      "Logical 'nor': y = not ( u[1] or u[2] or ... or u[nu] )"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = not Modelica.Math.BooleanVectors.anyTrue(
                                    u);
    end Nor;

* * * * *

![image28](Modelica.Blocks.MathBoolean.NotI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).Not
================================================================================================================================================

**Logical 'not': y = not u**

Information
-----------

::

The output is **false** if at least one input is **true**, otherwise the
output is **true**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanSISO\_small](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small)
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  input                                                 u    Boolean input
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modeli      signal
  ca.Blocks.Interfaces.BooleanInput)                         

  output                                                y    Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Model      output signal
  ica.Blocks.Interfaces.BooleanOutput)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block Not "Logical 'not': y = not u"
      extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;

    equation 
      y = not u;
    end Not;

* * * * *

![image29](Modelica.Blocks.MathBoolean.RisingEdgeI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).RisingEdge
==============================================================================================================================================================

**Output y is true, if the input u has a rising edge, otherwise it is
false (y = edge(u))**

Information
-----------

::

A rising edge of the Boolean input u results in y = **true** at this
time instant. At all other time instants, y = **false**.

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanSISO\_small](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small)
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
----------

  Type        Name             Default     Description
  ----------- ---------------- ----------- ---------------------------------
  Boolean     pre\_u\_start    false       Value of pre(u) at initial time

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  input                                                 u    Boolean input
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modeli      signal
  ca.Blocks.Interfaces.BooleanInput)                         

  output                                                y    Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Model      output signal
  ica.Blocks.Interfaces.BooleanOutput)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block RisingEdge 
      "Output y is true, if the input u has a rising edge, otherwise it is false (y = edge(u))"
       parameter Boolean pre_u_start = false "Value of pre(u) at initial time";
       extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;
    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = edge(u);
    end RisingEdge;

* * * * *

![image30](Modelica.Blocks.MathBoolean.FallingEdgeI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).FallingEdge
================================================================================================================================================================

**Output y is true, if the input u has a falling edge, otherwise it is
false (y = edge(not u))**

Information
-----------

::

A falling edge of the Boolean input u results in y = **true** at this
time instant. At all other time instants, y = **false**.

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanSISO\_small](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small)
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
----------

  Type        Name             Default     Description
  ----------- ---------------- ----------- ---------------------------------
  Boolean     pre\_u\_start    false       Value of pre(u) at initial time

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  input                                                 u    Boolean input
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modeli      signal
  ca.Blocks.Interfaces.BooleanInput)                         

  output                                                y    Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Model      output signal
  ica.Blocks.Interfaces.BooleanOutput)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block FallingEdge 
      "Output y is true, if the input u has a falling edge, otherwise it is false (y = edge(not u))"
       parameter Boolean pre_u_start = false "Value of pre(u) at initial time";
       extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;
    protected 
      Boolean not_u = not u;
    initial equation 
      pre(not_u) = not pre_u_start;
    equation 
      y = edge(not_u);
    end FallingEdge;

* * * * *

![image31](Modelica.Blocks.MathBoolean.ChangingEdgeI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).ChangingEdge
==================================================================================================================================================================

**Output y is true, if the input u has either a rising or a falling edge
and otherwise it is false (y=change(u))**

Information
-----------

::

A changing edge, i.e., either rising or falling, of the Boolean input u
results in y = **true** at this time instant. At all other time
instants, y = **false**.

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanSISO\_small](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small)
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
----------

  Type        Name             Default     Description
  ----------- ---------------- ----------- ---------------------------------
  Boolean     pre\_u\_start    false       Value of pre(u) at initial time

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  input                                                 u    Boolean input
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modeli      signal
  ca.Blocks.Interfaces.BooleanInput)                         

  output                                                y    Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Model      output signal
  ica.Blocks.Interfaces.BooleanOutput)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block ChangingEdge 
      "Output y is true, if the input u has either a rising or a falling edge and otherwise it is false (y=change(u))"
       parameter Boolean pre_u_start = false "Value of pre(u) at initial time";
       extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;
    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = change(u);
    end ChangingEdge;

* * * * *

![image32](Modelica.Blocks.MathBoolean.OnDelayI.png) [Modelica.Blocks.MathBoolean](Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean).OnDelay
========================================================================================================================================================

**Delay a rising edge of the input, but do not delay a falling edge.**

Information
-----------

::

A rising edge of the Boolean input u gives a delayed output. A falling
edge of the input is immediately given to the output.

Simulation results of a typical example with a delay time of 0.1 s is
shown in the next figure.

![image33](../Resources/Images/Blocks/MathBoolean/OnDelay1.png)
  ~ ![image34](../Resources/Images/Blocks/MathBoolean/OnDelay2.png)

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.BooleanNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1).

::

Extends from
[Modelica.Blocks.Interfaces.PartialBooleanSISO\_small](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small)
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
----------

  -------------------------------------------------------------------------
  Type                                     Name      Default  Description
  ---------------------------------------- --------- -------- -------------
  [Time](Modelica_SIunits.html#Modelica.SI delayTime          Delay time
  units.Time)                                                 [s]
  -------------------------------------------------------------------------

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                  Name Description
  ----------------------------------------------------- ---- -------------
  input                                                 u    Boolean input
  [BooleanInput](Modelica_Blocks_Interfaces.html#Modeli      signal
  ca.Blocks.Interfaces.BooleanInput)                         

  output                                                y    Boolean
  [BooleanOutput](Modelica_Blocks_Interfaces.html#Model      output signal
  ica.Blocks.Interfaces.BooleanOutput)                       
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block OnDelay 
      "Delay a rising edge of the input, but do not delay a falling edge."
          extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;
          parameter Modelica.SIunits.Time delayTime "Delay time";

    protected 
          Boolean delaySignal(start=false,fixed=true);
          discrete Modelica.SIunits.Time t_next;
    initial equation 
          pre(u) = false;
          pre(t_next) = time - 1;
    algorithm 
          when u then
             delaySignal := true;
             t_next := time + delayTime;
          elsewhen not u then
             delaySignal := false;
             t_next := time - 1;
          end when;
    equation 
          if delaySignal then
             y = time >= t_next;
          else
             y = false;
          end if;
    end OnDelay;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:39 2010.
