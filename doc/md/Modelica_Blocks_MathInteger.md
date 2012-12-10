% Modelica.Blocks.MathInteger
% 
% 

[Modelica.Blocks](Modelica_Blocks.html#Modelica.Blocks).MathInteger
===================================================================

**Library of Integer mathematical functions as input/output blocks**

Information
-----------

::

This package contains basic **mathematical operations** on **Integer**
signals.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                          Description
  --------------------------------------------- --------------------------
  ![image4](Modelica.Blocks.MathInteger.MultiSw Set Integer expression
  itchS.png)                                    that is associated with
  [MultiSwitch](Modelica_Blocks_MathInteger.htm the first active input
  l#Modelica.Blocks.MathInteger.MultiSwitch)    signal

  ![image5](Modelica.Blocks.MathInteger.SumS.pn Sum of Integers: y =
  g)                                            k[1]\*u[1] + k[2]\*u[2] +
  [Sum](Modelica_Blocks_MathInteger.html#Modeli ... + k[n]\*u[n]
  ca.Blocks.MathInteger.Sum)                    

  ![image6](Modelica.Blocks.MathInteger.Product Product of Integer: y =
  S.png)                                        u[1]\*u[2]\* ... \*u[n]
  [Product](Modelica_Blocks_MathInteger.html#Mo 
  delica.Blocks.MathInteger.Product)            

  ![image7](Modelica.Blocks.MathInteger.Trigger Add input to previous
  edAddS.png)                                   value of output, if rising
  [TriggeredAdd](Modelica_Blocks_MathInteger.ht edge of trigger port
  ml#Modelica.Blocks.MathInteger.TriggeredAdd)  
  ------------------------------------------------------------------------

* * * * *

![image8](Modelica.Blocks.MathInteger.MultiSwitchI.png) [Modelica.Blocks.MathInteger](Modelica_Blocks_MathInteger.html#Modelica.Blocks.MathInteger).MultiSwitch
===============================================================================================================================================================

**Set Integer expression that is associated with the first active input
signal**

Information
-----------

::

This block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Integer expressions expr[nu]. The output signal y is set
to expr[i], if i is the first element in the input vector u that is
true. If all input signals are false, y is set to parameter "y\_default"
or the last value is kept, if use\_pre\_as\_default = **true**.

>     // Conceptual equation (not valid Modelica)
>     i = 'first element of u[:] that is true';
>     y = if i==0 then (if use_pre_as_default then pre(y) 
>                                             else y_default) 
>         else expr[i];

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.IntegerNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.IntegerNetwork1).

::

Parameters
----------

  -------------------------------------------------------------------------
  Type  Name         Default Description
  ----- ------------ ------- ----------------------------------------------
  Integ expr[nu]     fill(0, y = if u[i] then expr[i] elseif
  er                 nu)     use\_pre\_as\_default then pre(y) else
                             y\_default

  Integ y\_default   0       Default value of output y if
  er                         use\_pre\_as\_default=false, as well as pre(y)
                             at initial time

  Boole use\_pre\_as true    = true, y holds its last value if all
  an    \_default            u[i]=false, otherwise y=y\_default
  -------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Set y = expr[i],
  [BooleanVectorInput](Modelica_Blocks_Interfaces.htm ]    if u[i] = true
  l#Modelica.Blocks.Interfaces.BooleanVectorInput)         

  output                                              y    Output depending
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Mod      on expression
  elica.Blocks.Interfaces.IntegerOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block MultiSwitch 
      "Set Integer expression that is associated with the first active input signal"

      input Integer expr[nu]=fill(0, nu) 
        "y = if u[i] then expr[i] elseif use_pre_as_default then pre(y) else y_default";
      parameter Integer y_default=0 
        "Default value of output y if use_pre_as_default=false, as well as pre(y) at initial time";

      parameter Boolean use_pre_as_default=true 
        "= true, y holds its last value if all u[i]=false, otherwise y=y_default";
      parameter Integer nu(min=0) = 0 "Number of input connections";

      Modelica.Blocks.Interfaces.BooleanVectorInput u[nu] 
        "Set y = expr[i], if u[i] = true";
      Modelica.Blocks.Interfaces.IntegerOutput y "Output depending on expression";

    protected 
      Integer firstActiveIndex;
    initial equation 
      pre(y) = y_default;
    equation 
      firstActiveIndex = Modelica.Math.BooleanVectors.firstTrueIndex(
                                                      u);
      y = if firstActiveIndex > 0 then expr[firstActiveIndex] else 
          if use_pre_as_default then pre(y) else y_default;
    end MultiSwitch;

* * * * *

![image9](Modelica.Blocks.MathInteger.SumI.png) [Modelica.Blocks.MathInteger](Modelica_Blocks_MathInteger.html#Modelica.Blocks.MathInteger).Sum
===============================================================================================================================================

**Sum of Integers: y = k[1]\*u[1] + k[2]\*u[2] + ... + k[n]\*u[n]**

Information
-----------

::

This blocks computes the scalar Integer output "y" as sum of the
elements of the Integer input signal vector u:

>     y = k[1]*u[1] + k[2]*u[2] + ... k[N]*u[N];

The input connector is a vector of Integer input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.IntegerNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.IntegerNetwork1).

If no connection to the input connector "u" is present, the output is
set to zero: y=0.

::

Extends from
[Modelica.Blocks.Interfaces.PartialIntegerMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialIntegerMISO)
(Partial block with an IntegerVectorInput and an IntegerOutput signal).

Parameters
----------

  Type         Name       Default          Description
  ------------ ---------- ---------------- ----------------
  Integer      k[nu]      fill(1, nu)      Input gains

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [IntegerVectorInput](Modelica_Blocks_Interfaces.htm ]    Integer input
  l#Modelica.Blocks.Interfaces.IntegerVectorInput)         signals

  output                                              y    Integer output
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.IntegerOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Sum 
      "Sum of Integers: y = k[1]*u[1] + k[2]*u[2] + ... + k[n]*u[n]"
       extends Modelica.Blocks.Interfaces.PartialIntegerMISO;
       parameter Integer k[nu] = fill(1,nu) "Input gains";
    equation 
      if size(u,1) > 0 then
         y = k*u;
      else
         y = 0;
      end if;
    end Sum;

* * * * *

![image10](Modelica.Blocks.MathInteger.ProductI.png) [Modelica.Blocks.MathInteger](Modelica_Blocks_MathInteger.html#Modelica.Blocks.MathInteger).Product
========================================================================================================================================================

**Product of Integer: y = u[1]\*u[2]\* ... \*u[n]**

Information
-----------

::

This blocks computes the scalar Integer output "y" as product of the
elements of the Integer input signal vector u:

>     y = u[1]*u[2]* ... *u[N];

The input connector is a vector of Integer input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.IntegerNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.IntegerNetwork1).

If no connection to the input connector "u" is present, the output is
set to zero: y=0.

::

Extends from
[Modelica.Blocks.Interfaces.PartialIntegerMISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialIntegerMISO)
(Partial block with an IntegerVectorInput and an IntegerOutput signal).

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                Name Description
  --------------------------------------------------- ---- ----------------
  input                                               u[nu Vector of
  [IntegerVectorInput](Modelica_Blocks_Interfaces.htm ]    Integer input
  l#Modelica.Blocks.Interfaces.IntegerVectorInput)         signals

  output                                              y    Integer output
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Mod      signal
  elica.Blocks.Interfaces.IntegerOutput)                   
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block Product "Product of Integer: y = u[1]*u[2]* ... *u[n]"
       extends Modelica.Blocks.Interfaces.PartialIntegerMISO;
    equation 
      if size(u,1) > 0 then
         y = product(u);
      else
         y = 0;
      end if;

    end Product;

* * * * *

![image11](Modelica.Blocks.MathInteger.TriggeredAddI.png) [Modelica.Blocks.MathInteger](Modelica_Blocks_MathInteger.html#Modelica.Blocks.MathInteger).TriggeredAdd
==================================================================================================================================================================

**Add input to previous value of output, if rising edge of trigger
port**

Information
-----------

::

Add input to previous value of output, if rising edge of trigger port

This block has one Integer input "u", one Boolean input "trigger", an
optional Boolean input "reset", an optional Integer input "set", and an
Integer output "y". The optional inputs can be activated with the
"use\_reset" and "use\_set" flags, respectively.

The input "u" is added to the previous value of the output "y" if the
"trigger" port has a rising edge. At the start of the simulation "y =
y\_start".

If the "reset" port is enabled, then the output "y" is reset to "set" or
to "y\_start" (if the "set" port is not enabled), whenever the "reset"
port has a rising edge.

The usage is demonstrated, e.g., in example
[Modelica.Blocks.Examples.IntegerNetwork1](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.IntegerNetwork1).

::

Extends from
[Modelica.Blocks.Interfaces.PartialIntegerSISO](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialIntegerSISO)
(Partial block with a IntegerInput and an IntegerOutput signal).

Parameters
----------

  --------------------------------------------------------------------------
  Type     Name       Default  Description
  -------- ---------- -------- ---------------------------------------------
  Boolean  use\_reset false    =true, if reset port enabled

  Boolean  use\_set   false    =true, if set port enabled and used as
                               default value when reset

  Integer  y\_start   0        Initial and reset value of y if set port is
                               not used
  --------------------------------------------------------------------------

Connectors
----------

  -------------------------------------------------------------------------
  Type                                                 Name   Description
  ---------------------------------------------------- ------ -------------
  input                                                u      Integer input
  [IntegerInput](Modelica_Blocks_Interfaces.html#Model        signal
  ica.Blocks.Interfaces.IntegerInput)                         

  output                                               y      Integer
  [IntegerOutput](Modelica_Blocks_Interfaces.html#Mode        output signal
  lica.Blocks.Interfaces.IntegerOutput)                       

  input                                                trigge 
  [BooleanInput](Modelica_Blocks_Interfaces.html#Model r      
  ica.Blocks.Interfaces.BooleanInput)                         

  input                                                reset  
  [BooleanInput](Modelica_Blocks_Interfaces.html#Model        
  ica.Blocks.Interfaces.BooleanInput)                         

  input                                                set    
  [IntegerInput](Modelica_Blocks_Interfaces.html#Model        
  ica.Blocks.Interfaces.IntegerInput)                         
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block TriggeredAdd 
      "Add input to previous value of output, if rising edge of trigger port"
      extends Modelica.Blocks.Interfaces.PartialIntegerSISO;

      parameter Boolean use_reset = false "=true, if reset port enabled";
      parameter Boolean use_set = false 
        "=true, if set port enabled and used as default value when reset";
      parameter Integer y_start = 0 
        "Initial and reset value of y if set port is not used";

      Modelica.Blocks.Interfaces.BooleanInput trigger;
      Modelica.Blocks.Interfaces.BooleanInput reset if use_reset;
      Modelica.Blocks.Interfaces.IntegerInput set if use_set;
    protected 
      Modelica.Blocks.Interfaces.BooleanOutput local_reset;
      Modelica.Blocks.Interfaces.IntegerOutput local_set;
    initial equation 
      pre(y) = y_start;
    equation 
      if use_reset then
         connect(reset, local_reset);
           if use_set then
             connect(set, local_set);
           else
             local_set = y_start;
           end if;
      else
         local_reset = false;
         local_set = 0;
      end if;

      when {trigger, local_reset} then
         y = if local_reset then local_set else pre(y) + u;
      end when;
    end TriggeredAdd;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:39 2010.
