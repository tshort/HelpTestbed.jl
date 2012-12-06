=======================
Modelica.Blocks.Logical
=======================

`Modelica.Blocks <Modelica_Blocks.html#Modelica.Blocks>`_.Logical
-----------------------------------------------------------------

**Library of components with Boolean input and output signals**

Information
~~~~~~~~~~~

::

This package provides blocks with Boolean input and output signals to
describe logical networks. A typical example for a logical network built
with package Logical is shown in the next figure:

.. figure:: ../Resources/Images/Blocks/LogicalNetwork1.png
   :align: center
   :alt: 

The actual value of Boolean input and/or output signals is displayed in
the respective block icon as "circle", where "white" color means value
**false** and "green" color means value **true**. These values are
visualized in a diagram animation.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                    | Description                                                                                                            |
+=========================================================================================================================================================+========================================================================================================================+
| |image26| `And <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.And>`_                                                                             | Logical 'and': y = u1 and u2                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image27| `Or <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Or>`_                                                                               | Logical 'or': y = u1 or u2                                                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image28| `Xor <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Xor>`_                                                                             | Logical 'xor': y = u1 xor u2                                                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image29| `Nor <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Nor>`_                                                                             | Logical 'nor': y = not (u1 or u2)                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image30| `Nand <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Nand>`_                                                                           | Logical 'nand': y = not (u1 and u2)                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image31| `Not <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Not>`_                                                                             | Logical 'not': y = not u                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image32| `Pre <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Pre>`_                                                                             | Breaks algebraic loops by an infinitesimal small time delay (y = pre(u): event iteration continues until u = pre(u))   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image33| `Edge <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Edge>`_                                                                           | Output y is true, if the input u has a rising edge (y = edge(u))                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image34| `FallingEdge <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.FallingEdge>`_                                                             | Output y is true, if the input u has a falling edge (y = edge(not u))                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image35| `Change <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Change>`_                                                                       | Output y is true, if the input u has a rising or falling edge (y = change(u))                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image36| `GreaterThreshold <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.GreaterThreshold>`_                                                   | Output y is true, if input u is greater than threshold                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image37| `GreaterEqualThreshold <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.GreaterEqualThreshold>`_                                         | Output y is true, if input u is greater or equal than threshold                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image38| `LessThreshold <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.LessThreshold>`_                                                         | Output y is true, if input u is less than threshold                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image39| `LessEqualThreshold <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.LessEqualThreshold>`_                                               | Output y is true, if input u is less or equal than threshold                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image40| `Greater <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Greater>`_                                                                     | Output y is true, if input u1 is greater as input u2                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image41| `GreaterEqual <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.GreaterEqual>`_                                                           | Output y is true, if input u1 is greater or equal as input u2                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image42| `Less <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Less>`_                                                                           | Output y is true, if input u1 is less as input u2                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image43| `LessEqual <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.LessEqual>`_                                                                 | Output y is true, if input u1 is less or equal as input u2                                                             |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image44| `ZeroCrossing <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.ZeroCrossing>`_                                                           | Trigger zero crossing of input u                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image45| `LogicalSwitch <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.LogicalSwitch>`_                                                         | Logical Switch                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image46| `Switch <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Switch>`_                                                                       | Switch between two Real signals                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image47| `Hysteresis <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Hysteresis>`_                                                               | Transform Real to Boolean signal with Hysteresis                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image48| `OnOffController <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.OnOffController>`_                                                     | On-off controller                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image49| `TriggeredTrapezoid <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.TriggeredTrapezoid>`_                                               | Triggered trapezoid generator                                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image50| `Timer <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.Timer>`_                                                                         | Timer measuring the time from the time instant where the Boolean input became true                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+
| |image51| `TerminateSimulation <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical.TerminateSimulation>`_                                             | Terminate simulation if condition is fullfilled                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------------------------------------------------------------+

--------------

|image52| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.And
-----------------------------------------------------------------------------------------------

**Logical 'and': y = u1 and u2**

.. figure:: Modelica.Blocks.Logical.AndD.png
   :align: center
   :alt: Modelica.Blocks.Logical.And

   Modelica.Blocks.Logical.And

Information
~~~~~~~~~~~

::

The output is **true** if all inputs are **true**, otherwise the output
is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO>`_
(Partial block with 2 input and 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model And "Logical 'and': y = u1 and u2"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y = u1 and u2;
    end And;

--------------

|image53| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Or
----------------------------------------------------------------------------------------------

**Logical 'or': y = u1 or u2**

.. figure:: Modelica.Blocks.Logical.AndD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Or

   Modelica.Blocks.Logical.Or

Information
~~~~~~~~~~~

::

The output is **true** if at least one input is **true**, otherwise the
output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO>`_
(Partial block with 2 input and 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Or "Logical 'or': y = u1 or u2"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y = u1 or u2;
    end Or;

--------------

|image54| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Xor
-----------------------------------------------------------------------------------------------

**Logical 'xor': y = u1 xor u2**

.. figure:: Modelica.Blocks.Logical.AndD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Xor

   Modelica.Blocks.Logical.Xor

Information
~~~~~~~~~~~

::

The output is **true** if exactly one input is **true**, otherwise the
output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO>`_
(Partial block with 2 input and 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Xor "Logical 'xor': y = u1 xor u2"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y =not  ( (u1 and u2) or (not u1 and not u2));
    end Xor;

--------------

|image55| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Nor
-----------------------------------------------------------------------------------------------

**Logical 'nor': y = not (u1 or u2)**

.. figure:: Modelica.Blocks.Logical.AndD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Nor

   Modelica.Blocks.Logical.Nor

Information
~~~~~~~~~~~

::

The output is **true** if none of the inputs is **true**, otherwise the
output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO>`_
(Partial block with 2 input and 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Nor "Logical 'nor': y = not (u1 or u2)"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y =not  ( u1 or u2);
    end Nor;

--------------

|image56| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Nand
------------------------------------------------------------------------------------------------

**Logical 'nand': y = not (u1 and u2)**

.. figure:: Modelica.Blocks.Logical.AndD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Nand

   Modelica.Blocks.Logical.Nand

Information
~~~~~~~~~~~

::

The output is **true** if at least one input is **false**, otherwise the
output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSI2SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI2SO>`_
(Partial block with 2 input and 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Nand "Logical 'nand': y = not (u1 and u2)"
      extends Blocks.Interfaces.partialBooleanSI2SO;
    equation 
      y =not  ( u1 and u2);
    end Nand;

--------------

|image57| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Not
-----------------------------------------------------------------------------------------------

**Logical 'not': y = not u**

.. figure:: Modelica.Blocks.Logical.NotD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Not

   Modelica.Blocks.Logical.Not

Information
~~~~~~~~~~~

::

The output is **true** if the input is **false**, otherwise the output
is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO>`_
(Partial block with 1 input and 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Not "Logical 'not': y = not u"
      extends Blocks.Interfaces.partialBooleanSISO;

    equation 
      y =not  u;
    end Not;

--------------

|image58| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Pre
-----------------------------------------------------------------------------------------------

**Breaks algebraic loops by an infinitesimal small time delay (y =
pre(u): event iteration continues until u = pre(u))**

.. figure:: Modelica.Blocks.Logical.NotD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Pre

   Modelica.Blocks.Logical.Pre

Information
~~~~~~~~~~~

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
`Blocks.Interfaces.partialBooleanSISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO>`_
(Partial block with 1 input and 1 output Boolean signal).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-----------------------------------------+
| Type      | Name            | Default   | Description                             |
+===========+=================+===========+=========================================+
| Boolean   | pre\_u\_start   | false     | Start value of pre(u) at initial time   |
+-----------+-----------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Pre 
      "Breaks algebraic loops by an infinitesimal small time delay (y = pre(u): event iteration continues until u = pre(u))"

      parameter Boolean pre_u_start = false "Start value of pre(u) at initial time";
      extends Blocks.Interfaces.partialBooleanSISO;

    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = pre(u);
    end Pre;

--------------

|image59| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Edge
------------------------------------------------------------------------------------------------

**Output y is true, if the input u has a rising edge (y = edge(u))**

.. figure:: Modelica.Blocks.Logical.NotD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Edge

   Modelica.Blocks.Logical.Edge

Information
~~~~~~~~~~~

::

The output is **true** if the Boolean input has a rising edge from
**false** to **true**, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO>`_
(Partial block with 1 input and 1 output Boolean signal).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-----------------------------------------+
| Type      | Name            | Default   | Description                             |
+===========+=================+===========+=========================================+
| Boolean   | pre\_u\_start   | false     | Start value of pre(u) at initial time   |
+-----------+-----------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Edge 
      "Output y is true, if the input u has a rising edge (y = edge(u))"

      parameter Boolean pre_u_start = false "Start value of pre(u) at initial time";
      extends Blocks.Interfaces.partialBooleanSISO;

    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = edge(u);
    end Edge;

--------------

|image60| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.FallingEdge
-------------------------------------------------------------------------------------------------------

**Output y is true, if the input u has a falling edge (y = edge(not
u))**

.. figure:: Modelica.Blocks.Logical.NotD.png
   :align: center
   :alt: Modelica.Blocks.Logical.FallingEdge

   Modelica.Blocks.Logical.FallingEdge

Information
~~~~~~~~~~~

::

The output is **true** if the Boolean input has a falling edge from
**true** to **false**, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO>`_
(Partial block with 1 input and 1 output Boolean signal).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-----------------------------------------+
| Type      | Name            | Default   | Description                             |
+===========+=================+===========+=========================================+
| Boolean   | pre\_u\_start   | false     | Start value of pre(u) at initial time   |
+-----------+-----------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image61| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Change
--------------------------------------------------------------------------------------------------

**Output y is true, if the input u has a rising or falling edge (y =
change(u))**

.. figure:: Modelica.Blocks.Logical.NotD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Change

   Modelica.Blocks.Logical.Change

Information
~~~~~~~~~~~

::

The output is **true** if the Boolean input has either a rising edge
from **false** to **true** or a falling edge from **true** to **false**,
otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanSISO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSISO>`_
(Partial block with 1 input and 1 output Boolean signal).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-----------------------------------------+
| Type      | Name            | Default   | Description                             |
+===========+=================+===========+=========================================+
| Boolean   | pre\_u\_start   | false     | Start value of pre(u) at initial time   |
+-----------+-----------------+-----------+-----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Change 
      "Output y is true, if the input u has a rising or falling edge (y = change(u))"

      parameter Boolean pre_u_start = false "Start value of pre(u) at initial time";
      extends Blocks.Interfaces.partialBooleanSISO;

    initial equation 
      pre(u) = pre_u_start;
    equation 
      y = change(u);
    end Change;

--------------

|image62| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.GreaterThreshold
------------------------------------------------------------------------------------------------------------

**Output y is true, if input u is greater than threshold**

.. figure:: Modelica.Blocks.Logical.GreaterThresholdD.png
   :align: center
   :alt: Modelica.Blocks.Logical.GreaterThreshold

   Modelica.Blocks.Logical.GreaterThreshold

Information
~~~~~~~~~~~

::

The output is **true** if the Real input is greater than parameter
**threshold**, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanThresholdComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison>`_
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
~~~~~~~~~~

+--------+-------------+-----------+----------------------------------------+
| Type   | Name        | Default   | Description                            |
+========+=============+===========+========================================+
| Real   | threshold   | 0         | Comparison with respect to threshold   |
+--------+-------------+-----------+----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block GreaterThreshold 
      "Output y is true, if input u is greater than threshold"
      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u > threshold;
    end GreaterThreshold;

--------------

|image63| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.GreaterEqualThreshold
-----------------------------------------------------------------------------------------------------------------

**Output y is true, if input u is greater or equal than threshold**

.. figure:: Modelica.Blocks.Logical.GreaterThresholdD.png
   :align: center
   :alt: Modelica.Blocks.Logical.GreaterEqualThreshold

   Modelica.Blocks.Logical.GreaterEqualThreshold

Information
~~~~~~~~~~~

::

The output is **true** if the Real input is greater than or equal to
parameter **threshold**, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanThresholdComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison>`_
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
~~~~~~~~~~

+--------+-------------+-----------+----------------------------------------+
| Type   | Name        | Default   | Description                            |
+========+=============+===========+========================================+
| Real   | threshold   | 0         | Comparison with respect to threshold   |
+--------+-------------+-----------+----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block GreaterEqualThreshold 
      "Output y is true, if input u is greater or equal than threshold"

      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u >= threshold;
    end GreaterEqualThreshold;

--------------

|image64| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.LessThreshold
---------------------------------------------------------------------------------------------------------

**Output y is true, if input u is less than threshold**

.. figure:: Modelica.Blocks.Logical.GreaterThresholdD.png
   :align: center
   :alt: Modelica.Blocks.Logical.LessThreshold

   Modelica.Blocks.Logical.LessThreshold

Information
~~~~~~~~~~~

::

The output is **true** if the Real input is less than parameter
**threshold**, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanThresholdComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison>`_
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
~~~~~~~~~~

+--------+-------------+-----------+----------------------------------------+
| Type   | Name        | Default   | Description                            |
+========+=============+===========+========================================+
| Real   | threshold   | 0         | Comparison with respect to threshold   |
+--------+-------------+-----------+----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LessThreshold 
      "Output y is true, if input u is less than threshold"

      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u < threshold;
    end LessThreshold;

--------------

|image65| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.LessEqualThreshold
--------------------------------------------------------------------------------------------------------------

**Output y is true, if input u is less or equal than threshold**

.. figure:: Modelica.Blocks.Logical.GreaterThresholdD.png
   :align: center
   :alt: Modelica.Blocks.Logical.LessEqualThreshold

   Modelica.Blocks.Logical.LessEqualThreshold

Information
~~~~~~~~~~~

::

The output is **true** if the Real input is less than or equal to
parameter **threshold**, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanThresholdComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanThresholdComparison>`_
(Partial block to compare the Real input u with a threshold and provide
the result as 1 Boolean output signal).

Parameters
~~~~~~~~~~

+--------+-------------+-----------+----------------------------------------+
| Type   | Name        | Default   | Description                            |
+========+=============+===========+========================================+
| Real   | threshold   | 0         | Comparison with respect to threshold   |
+--------+-------------+-----------+----------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u      | Connector of Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LessEqualThreshold 
      "Output y is true, if input u is less or equal than threshold"
      extends Blocks.Interfaces.partialBooleanThresholdComparison;
    equation 
      y = u <= threshold;
    end LessEqualThreshold;

--------------

|image66| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Greater
---------------------------------------------------------------------------------------------------

**Output y is true, if input u1 is greater as input u2**

.. figure:: Modelica.Blocks.Logical.GreaterD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Greater

   Modelica.Blocks.Logical.Greater

Information
~~~~~~~~~~~

::

The output is **true** if Real input u1 is greater than Real input u2,
otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison>`_
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Greater "Output y is true, if input u1 is greater as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 > u2;
    end Greater;

--------------

|image67| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.GreaterEqual
--------------------------------------------------------------------------------------------------------

**Output y is true, if input u1 is greater or equal as input u2**

.. figure:: Modelica.Blocks.Logical.GreaterD.png
   :align: center
   :alt: Modelica.Blocks.Logical.GreaterEqual

   Modelica.Blocks.Logical.GreaterEqual

Information
~~~~~~~~~~~

::

The output is **true** if Real input u1 is greater than or equal to Real
input u2, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison>`_
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block GreaterEqual 
      "Output y is true, if input u1 is greater or equal as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 >= u2;
    end GreaterEqual;

--------------

|image68| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Less
------------------------------------------------------------------------------------------------

**Output y is true, if input u1 is less as input u2**

.. figure:: Modelica.Blocks.Logical.GreaterD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Less

   Modelica.Blocks.Logical.Less

Information
~~~~~~~~~~~

::

The output is **true** if Real input u1 is less than Real input u2,
otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison>`_
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Less "Output y is true, if input u1 is less as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 < u2;
    end Less;

--------------

|image69| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.LessEqual
-----------------------------------------------------------------------------------------------------

**Output y is true, if input u1 is less or equal as input u2**

.. figure:: Modelica.Blocks.Logical.GreaterD.png
   :align: center
   :alt: Modelica.Blocks.Logical.LessEqual

   Modelica.Blocks.Logical.LessEqual

Information
~~~~~~~~~~~

::

The output is **true** if Real input u1 is less than or equal to Real
input u2, otherwise the output is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanComparison <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanComparison>`_
(Partial block with 2 Real input and 1 Boolean output signal (the result
of a comparison of the two Real inputs).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LessEqual 
      "Output y is true, if input u1 is less or equal as input u2"
      extends Blocks.Interfaces.partialBooleanComparison;

    equation 
      y = u1 <= u2;
    end LessEqual;

--------------

|image70| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.ZeroCrossing
--------------------------------------------------------------------------------------------------------

**Trigger zero crossing of input u**

.. figure:: Modelica.Blocks.Logical.ZeroCrossingD.png
   :align: center
   :alt: Modelica.Blocks.Logical.ZeroCrossing

   Modelica.Blocks.Logical.ZeroCrossing

Information
~~~~~~~~~~~

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
`Blocks.Interfaces.partialBooleanSO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSO>`_
(Partial block with 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------------------------+
| Type                                                                                                 | Name     | Description                                                           |
+======================================================================================================+==========+=======================================================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y        | Connector of Boolean output signal                                    |
+------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u        |                                                                       |
+------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | enable   | Zero input crossing is triggered if the enable input signal is true   |
+------------------------------------------------------------------------------------------------------+----------+-----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image71| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.LogicalSwitch
---------------------------------------------------------------------------------------------------------

**Logical Switch**

.. figure:: Modelica.Blocks.Logical.LogicalSwitchD.png
   :align: center
   :alt: Modelica.Blocks.Logical.LogicalSwitch

   Modelica.Blocks.Logical.LogicalSwitch

Information
~~~~~~~~~~~

::

The LogicalSwitch switches, depending on the Boolean u2 connector (the
middle connector), between the two possible input signals u1 (upper
connector) and u3 (lower connector).

If u2 is true, connector y is set equal to u1, else it is set equal to
u3.

::

Extends from
`Blocks.Interfaces.partialBooleanSI3SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSI3SO>`_
(Partial block with 3 input and 1 output Boolean signal).

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| Type                                                                                                 | Name   | Description                                |
+======================================================================================================+========+============================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u1     | Connector of first Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u2     | Connector of second Boolean input signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u3     | Connector of third Boolean input signal    |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal         |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block LogicalSwitch "Logical Switch"
      extends Blocks.Interfaces.partialBooleanSI3SO;

    equation 
      y = if u2 then u1 else u3;
    end LogicalSwitch;

--------------

|image72| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Switch
--------------------------------------------------------------------------------------------------

**Switch between two Real signals**

.. figure:: Modelica.Blocks.Logical.SwitchD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Switch

   Modelica.Blocks.Logical.Switch

Information
~~~~~~~~~~~

::

The Logical.Switch switches, depending on the logical connector u2 (the
middle connector) between the two possible input signals u1 (upper
connector) and u3 (lower connector).

If u2 is **true**, the output signal y is set equal to u1, else it is
set equal to u3.

::

Extends from
`Blocks.Interfaces.partialBooleanBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon>`_
(Basic graphical layout of logical block).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| Type                                                                                              | Name   | Description                             |
+===================================================================================================+========+=========================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_         | u1     | Connector of first Real input signal    |
+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_   | u2     | Connector of Boolean input signal       |
+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_         | u3     | Connector of second Real input signal   |
+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_      | y      | Connector of Real output signal         |
+---------------------------------------------------------------------------------------------------+--------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Switch "Switch between two Real signals"
      extends Blocks.Interfaces.partialBooleanBlockIcon;
      Blocks.Interfaces.RealInput u1 "Connector of first Real input signal";
      Blocks.Interfaces.BooleanInput u2 "Connector of Boolean input signal";
      Blocks.Interfaces.RealInput u3 "Connector of second Real input signal";
      Blocks.Interfaces.RealOutput y "Connector of Real output signal";

    equation 
      y = if u2 then u1 else u3;
    end Switch;

--------------

|image73| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Hysteresis
------------------------------------------------------------------------------------------------------

**Transform Real to Boolean signal with Hysteresis**

.. figure:: Modelica.Blocks.Logical.HysteresisD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Hysteresis

   Modelica.Blocks.Logical.Hysteresis

Information
~~~~~~~~~~~

::

This block transforms a **Real** input signal into a **Boolean** output
signal:

-  When the output was **false** and the input becomes **greater** than
   parameter **uHigh**, the output switches to **true**.
-  When the output was **true** and the input becomes **less** than
   parameter **uLow**, the output switches to **false**.

The start value of the output is defined via parameter **pre\_y\_start**
(= value of pre(y) at initial time). The default value of this parameter
is **false**.

::

Extends from
`Blocks.Interfaces.partialBooleanBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon>`_
(Basic graphical layout of logical block).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+---------------------------------------------+
| Type      | Name            | Default   | Description                                 |
+===========+=================+===========+=============================================+
| Real      | uLow            |           | if y=true and u<=uLow, switch to y=false    |
+-----------+-----------------+-----------+---------------------------------------------+
| Real      | uHigh           |           | if y=false and u>=uHigh, switch to y=true   |
+-----------+-----------------+-----------+---------------------------------------------+
| Boolean   | pre\_y\_start   | false     | Value of pre(y) at initial time             |
+-----------+-----------------+-----------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                 | Name   | Description   |
+======================================================================================================+========+===============+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u      |               |
+------------------------------------------------------------------------------------------------------+--------+---------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      |               |
+------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image74| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.OnOffController
-----------------------------------------------------------------------------------------------------------

**On-off controller**

.. figure:: Modelica.Blocks.Logical.OnOffControllerD.png
   :align: center
   :alt: Modelica.Blocks.Logical.OnOffController

   Modelica.Blocks.Logical.OnOffController

Information
~~~~~~~~~~~

::

The block OnOffController sets the output signal **y** to **true** when
the input signal **u** falls below the **reference** signal minus half
of the bandwidth and sets the output signal **y** to **false** when the
input signal **u** exceeds the **reference** signal plus half of the
bandwidth.

::

Extends from
`Interfaces.partialBooleanBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon>`_
(Basic graphical layout of logical block).

Parameters
~~~~~~~~~~

+-----------+-----------------+-----------+-------------------------------------+
| Type      | Name            | Default   | Description                         |
+===========+=================+===========+=====================================+
| Real      | bandwidth       |           | Bandwidth around reference signal   |
+-----------+-----------------+-----------+-------------------------------------+
| Boolean   | pre\_y\_start   | false     | Value of pre(y) at initial time     |
+-----------+-----------------+-----------+-------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+-------------+-------------------------------------------------------------+
| Type                                                                                                 | Name        | Description                                                 |
+======================================================================================================+=============+=============================================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | reference   | Connector of Real input signal used as reference signal     |
+------------------------------------------------------------------------------------------------------+-------------+-------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_            | u           | Connector of Real input signal used as measurement signal   |
+------------------------------------------------------------------------------------------------------+-------------+-------------------------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y           | Connector of Real output signal used as actuator signal     |
+------------------------------------------------------------------------------------------------------+-------------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image75| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.TriggeredTrapezoid
--------------------------------------------------------------------------------------------------------------

**Triggered trapezoid generator**

.. figure:: Modelica.Blocks.Logical.TriggeredTrapezoidD.png
   :align: center
   :alt: Modelica.Blocks.Logical.TriggeredTrapezoid

   Modelica.Blocks.Logical.TriggeredTrapezoid

Information
~~~~~~~~~~~

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
`Interfaces.partialBooleanBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon>`_
(Basic graphical layout of logical block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+-------------------------------------+
| Type                                                    | Name        | Default   | Description                         |
+=========================================================+=============+===========+=====================================+
| Real                                                    | amplitude   | 1         | Amplitude of trapezoid              |
+---------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | rising      | 0         | Rising duration of trapezoid [s]    |
+---------------------------------------------------------+-------------+-----------+-------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | falling     | rising    | Falling duration of trapezoid [s]   |
+---------------------------------------------------------+-------------+-----------+-------------------------------------+
| Real                                                    | offset      | 0         | Offset of output signal             |
+---------------------------------------------------------+-------------+-----------+-------------------------------------+

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                              | Name   | Description                         |
+===================================================================================================+========+=====================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_   | u      | Connector of Boolean input signal   |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_      | y      | Connector of Real output signal     |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image76| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.Timer
-------------------------------------------------------------------------------------------------

**Timer measuring the time from the time instant where the Boolean input
became true**

.. figure:: Modelica.Blocks.Logical.TimerD.png
   :align: center
   :alt: Modelica.Blocks.Logical.Timer

   Modelica.Blocks.Logical.Timer

Information
~~~~~~~~~~~

::

When the Boolean input "u" becomes **true**, the timer is started and
the output "y" is the time from the time instant where u became true.
The timer is stopped and the output is reset to zero, once the input
becomes false.

::

Extends from
`Interfaces.partialBooleanBlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanBlockIcon>`_
(Basic graphical layout of logical block).

Connectors
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| Type                                                                                              | Name   | Description                         |
+===================================================================================================+========+=====================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_   | u      | Connector of Boolean input signal   |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_      | y      | Connector of Real output signal     |
+---------------------------------------------------------------------------------------------------+--------+-------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image77| `Modelica.Blocks.Logical <Modelica_Blocks_Logical.html#Modelica.Blocks.Logical>`_.TerminateSimulation
---------------------------------------------------------------------------------------------------------------

**Terminate simulation if condition is fullfilled**

.. figure:: Modelica.Blocks.Logical.TerminateSimulationD.png
   :align: center
   :alt: Modelica.Blocks.Logical.TerminateSimulation

   Modelica.Blocks.Logical.TerminateSimulation

Information
~~~~~~~~~~~

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
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------+-------------------+-------------------------------+-------------------------------------------------------------+
| Type                                                                                          | Name              | Default                       | Description                                                 |
+===============================================================================================+===================+===============================+=============================================================+
| `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | condition         | false                         | Terminate simulation when condition becomes true            |
+-----------------------------------------------------------------------------------------------+-------------------+-------------------------------+-------------------------------------------------------------+
| String                                                                                        | terminationText   | "... End condition reached"   | Text that will be displayed when simulation is terminated   |
+-----------------------------------------------------------------------------------------------+-------------------+-------------------------------+-------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+-------------+----------------------------------------------------+
| Type                                                                                                 | Name        | Description                                        |
+======================================================================================================+=============+====================================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | condition   | Terminate simulation when condition becomes true   |
+------------------------------------------------------------------------------------------------------+-------------+----------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:37
2010.

.. |Modelica.Blocks.Logical.And| image:: Modelica.Blocks.Logical.AndS.png
.. |Modelica.Blocks.Logical.Or| image:: Modelica.Blocks.Logical.OrS.png
.. |Modelica.Blocks.Logical.Xor| image:: Modelica.Blocks.Logical.XorS.png
.. |Modelica.Blocks.Logical.Nor| image:: Modelica.Blocks.Logical.XorS.png
.. |Modelica.Blocks.Logical.Nand| image:: Modelica.Blocks.Logical.XorS.png
.. |Modelica.Blocks.Logical.Not| image:: Modelica.Blocks.Logical.NotS.png
.. |Modelica.Blocks.Logical.Pre| image:: Modelica.Blocks.Logical.NotS.png
.. |Modelica.Blocks.Logical.Edge| image:: Modelica.Blocks.Logical.NotS.png
.. |Modelica.Blocks.Logical.FallingEdge| image:: Modelica.Blocks.Logical.NotS.png
.. |Modelica.Blocks.Logical.Change| image:: Modelica.Blocks.Logical.NotS.png
.. |Modelica.Blocks.Logical.GreaterThreshold| image:: Modelica.Blocks.Logical.GreaterThresholdS.png
.. |Modelica.Blocks.Logical.GreaterEqualThreshold| image:: Modelica.Blocks.Logical.GreaterEqualThresholdS.png
.. |Modelica.Blocks.Logical.LessThreshold| image:: Modelica.Blocks.Logical.LessThresholdS.png
.. |Modelica.Blocks.Logical.LessEqualThreshold| image:: Modelica.Blocks.Logical.LessEqualThresholdS.png
.. |Modelica.Blocks.Logical.Greater| image:: Modelica.Blocks.Logical.GreaterS.png
.. |Modelica.Blocks.Logical.GreaterEqual| image:: Modelica.Blocks.Logical.GreaterEqualS.png
.. |Modelica.Blocks.Logical.Less| image:: Modelica.Blocks.Logical.LessS.png
.. |Modelica.Blocks.Logical.LessEqual| image:: Modelica.Blocks.Logical.LessEqualS.png
.. |Modelica.Blocks.Logical.ZeroCrossing| image:: Modelica.Blocks.Logical.ZeroCrossingS.png
.. |Modelica.Blocks.Logical.LogicalSwitch| image:: Modelica.Blocks.Logical.LogicalSwitchS.png
.. |Modelica.Blocks.Logical.Switch| image:: Modelica.Blocks.Logical.SwitchS.png
.. |Modelica.Blocks.Logical.Hysteresis| image:: Modelica.Blocks.Logical.HysteresisS.png
.. |Modelica.Blocks.Logical.OnOffController| image:: Modelica.Blocks.Logical.OnOffControllerS.png
.. |Modelica.Blocks.Logical.TriggeredTrapezoid| image:: Modelica.Blocks.Logical.TriggeredTrapezoidS.png
.. |Modelica.Blocks.Logical.Timer| image:: Modelica.Blocks.Logical.TimerS.png
.. |Modelica.Blocks.Logical.TerminateSimulation| image:: Modelica.Blocks.Logical.TerminateSimulationS.png
.. |image26| image:: Modelica.Blocks.Logical.AndS.png
.. |image27| image:: Modelica.Blocks.Logical.OrS.png
.. |image28| image:: Modelica.Blocks.Logical.XorS.png
.. |image29| image:: Modelica.Blocks.Logical.XorS.png
.. |image30| image:: Modelica.Blocks.Logical.XorS.png
.. |image31| image:: Modelica.Blocks.Logical.NotS.png
.. |image32| image:: Modelica.Blocks.Logical.NotS.png
.. |image33| image:: Modelica.Blocks.Logical.NotS.png
.. |image34| image:: Modelica.Blocks.Logical.NotS.png
.. |image35| image:: Modelica.Blocks.Logical.NotS.png
.. |image36| image:: Modelica.Blocks.Logical.GreaterThresholdS.png
.. |image37| image:: Modelica.Blocks.Logical.GreaterEqualThresholdS.png
.. |image38| image:: Modelica.Blocks.Logical.LessThresholdS.png
.. |image39| image:: Modelica.Blocks.Logical.LessEqualThresholdS.png
.. |image40| image:: Modelica.Blocks.Logical.GreaterS.png
.. |image41| image:: Modelica.Blocks.Logical.GreaterEqualS.png
.. |image42| image:: Modelica.Blocks.Logical.LessS.png
.. |image43| image:: Modelica.Blocks.Logical.LessEqualS.png
.. |image44| image:: Modelica.Blocks.Logical.ZeroCrossingS.png
.. |image45| image:: Modelica.Blocks.Logical.LogicalSwitchS.png
.. |image46| image:: Modelica.Blocks.Logical.SwitchS.png
.. |image47| image:: Modelica.Blocks.Logical.HysteresisS.png
.. |image48| image:: Modelica.Blocks.Logical.OnOffControllerS.png
.. |image49| image:: Modelica.Blocks.Logical.TriggeredTrapezoidS.png
.. |image50| image:: Modelica.Blocks.Logical.TimerS.png
.. |image51| image:: Modelica.Blocks.Logical.TerminateSimulationS.png
.. |image52| image:: Modelica.Blocks.Logical.AndI.png
.. |image53| image:: Modelica.Blocks.Logical.OrI.png
.. |image54| image:: Modelica.Blocks.Logical.XorI.png
.. |image55| image:: Modelica.Blocks.Logical.NorI.png
.. |image56| image:: Modelica.Blocks.Logical.NandI.png
.. |image57| image:: Modelica.Blocks.Logical.NotI.png
.. |image58| image:: Modelica.Blocks.Logical.PreI.png
.. |image59| image:: Modelica.Blocks.Logical.EdgeI.png
.. |image60| image:: Modelica.Blocks.Logical.FallingEdgeI.png
.. |image61| image:: Modelica.Blocks.Logical.ChangeI.png
.. |image62| image:: Modelica.Blocks.Logical.GreaterThresholdI.png
.. |image63| image:: Modelica.Blocks.Logical.GreaterEqualThresholdI.png
.. |image64| image:: Modelica.Blocks.Logical.LessThresholdI.png
.. |image65| image:: Modelica.Blocks.Logical.LessEqualThresholdI.png
.. |image66| image:: Modelica.Blocks.Logical.GreaterI.png
.. |image67| image:: Modelica.Blocks.Logical.GreaterEqualI.png
.. |image68| image:: Modelica.Blocks.Logical.LessI.png
.. |image69| image:: Modelica.Blocks.Logical.LessEqualI.png
.. |image70| image:: Modelica.Blocks.Logical.ZeroCrossingI.png
.. |image71| image:: Modelica.Blocks.Logical.LogicalSwitchI.png
.. |image72| image:: Modelica.Blocks.Logical.SwitchI.png
.. |image73| image:: Modelica.Blocks.Logical.HysteresisI.png
.. |image74| image:: Modelica.Blocks.Logical.OnOffControllerI.png
.. |image75| image:: Modelica.Blocks.Logical.TriggeredTrapezoidI.png
.. |image76| image:: Modelica.Blocks.Logical.TimerI.png
.. |image77| image:: Modelica.Blocks.Logical.TerminateSimulationI.png
