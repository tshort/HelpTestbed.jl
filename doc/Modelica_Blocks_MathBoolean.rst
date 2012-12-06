===========================
Modelica.Blocks.MathBoolean
===========================

`Modelica.Blocks <Modelica_Blocks.html#Modelica.Blocks>`_.MathBoolean
---------------------------------------------------------------------

**Library of Boolean mathematical functions as input/output blocks**

Information
~~~~~~~~~~~

::

This package contains basic **mathematical operations** on **Boolean**
signals.

Package MathBoolean is a new design that shall replace in the future the
`Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_
package. The new features are:

-  If useful, blocks may have an arbitrary number of inputs (e.g., "And"
   block with 2,3,4,... Boolean inputs). This is based on the
   "connectorSizing" annotation which allows a tool to conveniently
   handle vectors of connectors.
-  The blocks are smaller in size, so that the diagram area is better
   utilized for trivial blocks such as "And" or "Or".

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                     | Description                                                                                                      |
+==========================================================================================================================================+==================================================================================================================+
| |image11| `MultiSwitch <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.MultiSwitch>`_                                      | Set Boolean expression that is associated with the first active input signal                                     |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image12| `And <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.And>`_                                                      | Logical 'and': y = u[1] and u[2] and ... and u[nu]                                                               |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image13| `Or <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.Or>`_                                                        | Logical 'or': y = u[1] or u[2] or ... or u[nu]                                                                   |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image14| `Xor <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.Xor>`_                                                      | Logical 'xor': y = oneTrue(u) (y is true, if exactly one element of u is true, otherwise it is false)            |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image15| `Nand <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.Nand>`_                                                    | Logical 'nand': y = not ( u[1] and u[2] and ... and u[nu] )                                                      |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image16| `Nor <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.Nor>`_                                                      | Logical 'nor': y = not ( u[1] or u[2] or ... or u[nu] )                                                          |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image17| `Not <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.Not>`_                                                      | Logical 'not': y = not u                                                                                         |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image18| `RisingEdge <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.RisingEdge>`_                                        | Output y is true, if the input u has a rising edge, otherwise it is false (y = edge(u))                          |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image19| `FallingEdge <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.FallingEdge>`_                                      | Output y is true, if the input u has a falling edge, otherwise it is false (y = edge(not u))                     |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image20| `ChangingEdge <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.ChangingEdge>`_                                    | Output y is true, if the input u has either a rising or a falling edge and otherwise it is false (y=change(u))   |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+
| |image21| `OnDelay <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean.OnDelay>`_                                              | Delay a rising edge of the input, but do not delay a falling edge.                                               |
+------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------+

--------------

|image22| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.MultiSwitch
-------------------------------------------------------------------------------------------------------------------

**Set Boolean expression that is associated with the first active input
signal**

.. figure:: Modelica.Blocks.MathBoolean.MultiSwitchD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.MultiSwitch

   Modelica.Blocks.MathBoolean.MultiSwitch

Information
~~~~~~~~~~~

::

The block has a vector of Boolean input signals u[nu] and a vector of
(time varying) Boolean expressions expr[:]. The output signal y is set
to expr[i], if i is the first element in the input vector u that is
true. If all input signals are false, y is set to parameter "y\_default"
or the previous value of y is kept if parameter use\_pre\_as\_default =
**true**:

    ::

          // Conceptual equation (not valid Modelica)
          i = 'first element of u[:] that is true';
          y = if i==0 then (if use_pre_as_default then pre(y)
                                                  else y_default)
              else expr[i];

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

::

Parameters
~~~~~~~~~~

+-----------+-------------------------+-------------------+----------------------------------------------------------------+
| Type      | Name                    | Default           | Description                                                    |
+===========+=========================+===================+================================================================+
| Boolean   | expr[nu]                | fill(false, nu)   | y = if u[i] then expr[i] else y\_default (time varying)        |
+-----------+-------------------------+-------------------+----------------------------------------------------------------+
| Boolean   | use\_pre\_as\_default   | true              | set true to hold last value as default (y\_default = pre(y))   |
+-----------+-------------------------+-------------------+----------------------------------------------------------------+
| Boolean   | y\_default              | false             | Default value of output y if all u[i] = false                  |
+-----------+-------------------------+-------------------+----------------------------------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| Type                                                                                                          | Name    | Description                       |
+===============================================================================================================+=========+===================================+
| input `BooleanVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanVectorInput>`_   | u[nu]   | Set y = expr[i], if u[i] = true   |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_            | y       | Output depending on expression    |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image23| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.And
-----------------------------------------------------------------------------------------------------------

**Logical 'and': y = u[1] and u[2] and ... and u[nu]**

.. figure:: Modelica.Blocks.MathBoolean.AndD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.And

   Modelica.Blocks.MathBoolean.And

Information
~~~~~~~~~~~

::

The output is **true** if all inputs are **true**, otherwise the output
is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanMISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO>`_
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| Type                                                                                                          | Name    | Description                       |
+===============================================================================================================+=========+===================================+
| input `BooleanVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanVectorInput>`_   | u[nu]   | Vector of Boolean input signals   |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_            | y       | Boolean output signal             |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block And 
      "Logical 'and': y = u[1] and u[2] and ... and u[nu]"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = Modelica.Math.BooleanVectors.allTrue(
                                u);
    end And;

--------------

|image24| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.Or
----------------------------------------------------------------------------------------------------------

**Logical 'or': y = u[1] or u[2] or ... or u[nu]**

.. figure:: Modelica.Blocks.MathBoolean.AndD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.Or

   Modelica.Blocks.MathBoolean.Or

Information
~~~~~~~~~~~

::

The output is **true** if at least one input is **true**, otherwise the
output is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanMISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO>`_
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| Type                                                                                                          | Name    | Description                       |
+===============================================================================================================+=========+===================================+
| input `BooleanVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanVectorInput>`_   | u[nu]   | Vector of Boolean input signals   |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_            | y       | Boolean output signal             |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Or "Logical 'or': y = u[1] or u[2] or ... or u[nu]"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = Modelica.Math.BooleanVectors.anyTrue(
                                u);
    end Or;

--------------

|image25| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.Xor
-----------------------------------------------------------------------------------------------------------

**Logical 'xor': y = oneTrue(u) (y is true, if exactly one element of u
is true, otherwise it is false)**

.. figure:: Modelica.Blocks.MathBoolean.AndD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.Xor

   Modelica.Blocks.MathBoolean.Xor

Information
~~~~~~~~~~~

::

The output is **true** if exactly one input is **true**, otherwise the
output is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanMISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO>`_
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| Type                                                                                                          | Name    | Description                       |
+===============================================================================================================+=========+===================================+
| input `BooleanVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanVectorInput>`_   | u[nu]   | Vector of Boolean input signals   |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_            | y       | Boolean output signal             |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Xor 
      "Logical 'xor': y = oneTrue(u)  (y is true, if exactly one element of u is true, otherwise it is false)"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = Modelica.Math.BooleanVectors.oneTrue(
                                u);
    end Xor;

--------------

|image26| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.Nand
------------------------------------------------------------------------------------------------------------

**Logical 'nand': y = not ( u[1] and u[2] and ... and u[nu] )**

.. figure:: Modelica.Blocks.MathBoolean.AndD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.Nand

   Modelica.Blocks.MathBoolean.Nand

Information
~~~~~~~~~~~

::

The output is **true** if at least one input is **false**, otherwise the
output is **false**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanMISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO>`_
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| Type                                                                                                          | Name    | Description                       |
+===============================================================================================================+=========+===================================+
| input `BooleanVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanVectorInput>`_   | u[nu]   | Vector of Boolean input signals   |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_            | y       | Boolean output signal             |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Nand 
      "Logical 'nand': y = not ( u[1] and u[2] and ... and u[nu] )"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = not Modelica.Math.BooleanVectors.allTrue(
                                    u);
    end Nand;

--------------

|image27| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.Nor
-----------------------------------------------------------------------------------------------------------

**Logical 'nor': y = not ( u[1] or u[2] or ... or u[nu] )**

.. figure:: Modelica.Blocks.MathBoolean.AndD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.Nor

   Modelica.Blocks.MathBoolean.Nor

Information
~~~~~~~~~~~

::

The output is **false** if at least one input is **true**, otherwise the
output is **true**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

If no connection to the input connector "u" is present, the output is
set to **false**: y=false.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanMISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanMISO>`_
(Partial block with a BooleanVectorInput and a BooleanOutput signal).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| Type                                                                                                          | Name    | Description                       |
+===============================================================================================================+=========+===================================+
| input `BooleanVectorInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanVectorInput>`_   | u[nu]   | Vector of Boolean input signals   |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_            | y       | Boolean output signal             |
+---------------------------------------------------------------------------------------------------------------+---------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Nor 
      "Logical 'nor': y = not ( u[1] or u[2] or ... or u[nu] )"
      extends Modelica.Blocks.Interfaces.PartialBooleanMISO;

    equation 
      y = not Modelica.Math.BooleanVectors.anyTrue(
                                    u);
    end Nor;

--------------

|image28| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.Not
-----------------------------------------------------------------------------------------------------------

**Logical 'not': y = not u**

.. figure:: Modelica.Blocks.MathBoolean.NotD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.Not

   Modelica.Blocks.MathBoolean.Not

Information
~~~~~~~~~~~

::

The output is **false** if at least one input is **true**, otherwise the
output is **true**.

The input connector is a vector of Boolean input signals. When a
connection line is drawn, the dimension of the input vector is enlarged
by one and the connection is automatically connected to this new free
index (thanks to the connectorSizing annotation).

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanSISO\_small <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small>`_
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| Type                                                                                                 | Name   | Description             |
+======================================================================================================+========+=========================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Not "Logical 'not': y = not u"
      extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;

    equation 
      y = not u;
    end Not;

--------------

|image29| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.RisingEdge
------------------------------------------------------------------------------------------------------------------

**Output y is true, if the input u has a rising edge, otherwise it is
false (y = edge(u))**

.. figure:: Modelica.Blocks.MathBoolean.NotD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.RisingEdge

   Modelica.Blocks.MathBoolean.RisingEdge

Information
~~~~~~~~~~~

::

A rising edge of the Boolean input u results in y = **true** at this
time instant. At all other time instants, y = **false**.

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanSISO\_small <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small>`_
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-----------------------------------+
| Type      | Name            | Default   | Description                       |
+===========+=================+===========+===================================+
| Boolean   | pre\_u\_start   | false     | Value of pre(u) at initial time   |
+-----------+-----------------+-----------+-----------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| Type                                                                                                 | Name   | Description             |
+======================================================================================================+========+=========================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RisingEdge 
      "Output y is true, if the input u has a rising edge, otherwise it is false (y = edge(u))"
       parameter Boolean pre_u_start = false "Value of pre(u) at initial time";
       extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;
    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = edge(u);
    end RisingEdge;

--------------

|image30| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.FallingEdge
-------------------------------------------------------------------------------------------------------------------

**Output y is true, if the input u has a falling edge, otherwise it is
false (y = edge(not u))**

.. figure:: Modelica.Blocks.MathBoolean.NotD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.FallingEdge

   Modelica.Blocks.MathBoolean.FallingEdge

Information
~~~~~~~~~~~

::

A falling edge of the Boolean input u results in y = **true** at this
time instant. At all other time instants, y = **false**.

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanSISO\_small <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small>`_
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-----------------------------------+
| Type      | Name            | Default   | Description                       |
+===========+=================+===========+===================================+
| Boolean   | pre\_u\_start   | false     | Value of pre(u) at initial time   |
+-----------+-----------------+-----------+-----------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| Type                                                                                                 | Name   | Description             |
+======================================================================================================+========+=========================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image31| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.ChangingEdge
--------------------------------------------------------------------------------------------------------------------

**Output y is true, if the input u has either a rising or a falling edge
and otherwise it is false (y=change(u))**

.. figure:: Modelica.Blocks.MathBoolean.NotD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.ChangingEdge

   Modelica.Blocks.MathBoolean.ChangingEdge

Information
~~~~~~~~~~~

::

A changing edge, i.e., either rising or falling, of the Boolean input u
results in y = **true** at this time instant. At all other time
instants, y = **false**.

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanSISO\_small <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small>`_
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-----------------------------------+
| Type      | Name            | Default   | Description                       |
+===========+=================+===========+===================================+
| Boolean   | pre\_u\_start   | false     | Value of pre(u) at initial time   |
+-----------+-----------------+-----------+-----------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| Type                                                                                                 | Name   | Description             |
+======================================================================================================+========+=========================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ChangingEdge 
      "Output y is true, if the input u has either a rising or a falling edge and otherwise it is false (y=change(u))"
       parameter Boolean pre_u_start = false "Value of pre(u) at initial time";
       extends Modelica.Blocks.Interfaces.PartialBooleanSISO_small;
    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = change(u);
    end ChangingEdge;

--------------

|image32| `Modelica.Blocks.MathBoolean <Modelica_Blocks_MathBoolean.html#Modelica.Blocks.MathBoolean>`_.OnDelay
---------------------------------------------------------------------------------------------------------------

**Delay a rising edge of the input, but do not delay a falling edge.**

.. figure:: Modelica.Blocks.MathBoolean.NotD.png
   :align: center
   :alt: Modelica.Blocks.MathBoolean.OnDelay

   Modelica.Blocks.MathBoolean.OnDelay

Information
~~~~~~~~~~~

::

A rising edge of the Boolean input u gives a delayed output. A falling
edge of the input is immediately given to the output.

Simulation results of a typical example with a delay time of 0.1 s is
shown in the next figure.

|image33|
 |image34|

The usage is demonstrated, e.g., in example
`Modelica.Blocks.Examples.BooleanNetwork1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BooleanNetwork1>`_.

::

Extends from
`Modelica.Blocks.Interfaces.PartialBooleanSISO\_small <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.PartialBooleanSISO_small>`_
(Partial block with a BooleanInput and a BooleanOutput signal and a
small block icon).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+------------------+
| Type                                                    | Name        | Default   | Description      |
+=========================================================+=============+===========+==================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | delayTime   |           | Delay time [s]   |
+---------------------------------------------------------+-------------+-----------+------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| Type                                                                                                 | Name   | Description             |
+======================================================================================================+========+=========================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+-------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:39
2010.

.. |Modelica.Blocks.MathBoolean.MultiSwitch| image:: Modelica.Blocks.MathBoolean.MultiSwitchS.png
.. |Modelica.Blocks.MathBoolean.And| image:: Modelica.Blocks.MathBoolean.AndS.png
.. |Modelica.Blocks.MathBoolean.Or| image:: Modelica.Blocks.MathBoolean.OrS.png
.. |Modelica.Blocks.MathBoolean.Xor| image:: Modelica.Blocks.MathBoolean.XorS.png
.. |Modelica.Blocks.MathBoolean.Nand| image:: Modelica.Blocks.MathBoolean.XorS.png
.. |Modelica.Blocks.MathBoolean.Nor| image:: Modelica.Blocks.MathBoolean.XorS.png
.. |Modelica.Blocks.MathBoolean.Not| image:: Modelica.Blocks.MathBoolean.NotS.png
.. |Modelica.Blocks.MathBoolean.RisingEdge| image:: Modelica.Blocks.MathBoolean.RisingEdgeS.png
.. |Modelica.Blocks.MathBoolean.FallingEdge| image:: Modelica.Blocks.MathBoolean.FallingEdgeS.png
.. |Modelica.Blocks.MathBoolean.ChangingEdge| image:: Modelica.Blocks.MathBoolean.ChangingEdgeS.png
.. |Modelica.Blocks.MathBoolean.OnDelay| image:: Modelica.Blocks.MathBoolean.OnDelayS.png
.. |image11| image:: Modelica.Blocks.MathBoolean.MultiSwitchS.png
.. |image12| image:: Modelica.Blocks.MathBoolean.AndS.png
.. |image13| image:: Modelica.Blocks.MathBoolean.OrS.png
.. |image14| image:: Modelica.Blocks.MathBoolean.XorS.png
.. |image15| image:: Modelica.Blocks.MathBoolean.XorS.png
.. |image16| image:: Modelica.Blocks.MathBoolean.XorS.png
.. |image17| image:: Modelica.Blocks.MathBoolean.NotS.png
.. |image18| image:: Modelica.Blocks.MathBoolean.RisingEdgeS.png
.. |image19| image:: Modelica.Blocks.MathBoolean.FallingEdgeS.png
.. |image20| image:: Modelica.Blocks.MathBoolean.ChangingEdgeS.png
.. |image21| image:: Modelica.Blocks.MathBoolean.OnDelayS.png
.. |image22| image:: Modelica.Blocks.MathBoolean.MultiSwitchI.png
.. |image23| image:: Modelica.Blocks.MathBoolean.AndI.png
.. |image24| image:: Modelica.Blocks.MathBoolean.OrI.png
.. |image25| image:: Modelica.Blocks.MathBoolean.XorI.png
.. |image26| image:: Modelica.Blocks.MathBoolean.NandI.png
.. |image27| image:: Modelica.Blocks.MathBoolean.NorI.png
.. |image28| image:: Modelica.Blocks.MathBoolean.NotI.png
.. |image29| image:: Modelica.Blocks.MathBoolean.RisingEdgeI.png
.. |image30| image:: Modelica.Blocks.MathBoolean.FallingEdgeI.png
.. |image31| image:: Modelica.Blocks.MathBoolean.ChangingEdgeI.png
.. |image32| image:: Modelica.Blocks.MathBoolean.OnDelayI.png
.. |image33| image:: ../Resources/Images/Blocks/MathBoolean/OnDelay1.png
.. |image34| image:: ../Resources/Images/Blocks/MathBoolean/OnDelay2.png
