===================================
Modelica.Blocks.Interfaces.Adaptors
===================================

`Modelica.Blocks.Interfaces <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces>`_.Adaptors
---------------------------------------------------------------------------------------------------

**Obsolete package with components to send signals to a bus or receive
signals from a bus (only for backward compatibility)**

Information
~~~~~~~~~~~

::

The components of this package should no longer be used. They are only
provided for backward compatibility. It is much more convenient and more
powerful to use "expandable connectors" for signal buses, see example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| Name                                                                                                                                                                   | Description                                         |
+========================================================================================================================================================================+=====================================================+
| |image6| `SendReal <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors.SendReal>`_                                                           | Obsolete block to send Real signal to bus           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image7| `SendBoolean <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors.SendBoolean>`_                                                     | Obsolete block to send Boolean signal to bus        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image8| `SendInteger <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors.SendInteger>`_                                                     | Obsolete block to send Integer signal to bus        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image9| `ReceiveReal <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors.ReceiveReal>`_                                                     | Obsolete block to receive Real signal from bus      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image10| `ReceiveBoolean <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors.ReceiveBoolean>`_                                              | Obsolete block to receive Boolean signal from bus   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+
| |image11| `ReceiveInteger <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors.ReceiveInteger>`_                                              | Obsolete block to receive Integer signal from bus   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------------------------------------------+

--------------

|image12| `Modelica.Blocks.Interfaces.Adaptors <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors>`_.SendReal
----------------------------------------------------------------------------------------------------------------------------------------

**Obsolete block to send Real signal to bus**

.. figure:: Modelica.Blocks.Interfaces.Adaptors.SendRealD.png
   :align: center
   :alt: Modelica.Blocks.Interfaces.Adaptors.SendReal

   Modelica.Blocks.Interfaces.Adaptors.SendReal

Information
~~~~~~~~~~~

::

Obsolete block that was previously used to connect a Real signal to a
signal in a connector. This block is only provided for backward
compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| Type                                                                                           | Name    | Description                            |
+================================================================================================+=========+========================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | toBus   | Output signal to be connected to bus   |
+------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | u       | Input signal to be send to bus         |
+------------------------------------------------------------------------------------------------+---------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block SendReal "Obsolete block to send Real signal to bus"

      RealOutput toBus "Output signal to be connected to bus";
      RealInput u "Input signal to be send to bus";
    equation 
      toBus = u;
    end SendReal;

--------------

|image13| `Modelica.Blocks.Interfaces.Adaptors <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors>`_.SendBoolean
-------------------------------------------------------------------------------------------------------------------------------------------

**Obsolete block to send Boolean signal to bus**

.. figure:: Modelica.Blocks.Interfaces.Adaptors.SendBooleanD.png
   :align: center
   :alt: Modelica.Blocks.Interfaces.Adaptors.SendBoolean

   Modelica.Blocks.Interfaces.Adaptors.SendBoolean

Information
~~~~~~~~~~~

::

Obsolete block that was previously used to connect a Boolean signal to a
signal in a connector. This block is only provided for backward
compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| Type                                                                                                 | Name    | Description                            |
+======================================================================================================+=========+========================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | toBus   | Output signal to be connected to bus   |
+------------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | u       | Input signal to be send to bus         |
+------------------------------------------------------------------------------------------------------+---------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block SendBoolean "Obsolete block to send Boolean signal to bus"

      BooleanOutput toBus "Output signal to be connected to bus";
      BooleanInput u "Input signal to be send to bus";
    equation 
      toBus = u;
    end SendBoolean;

--------------

|image14| `Modelica.Blocks.Interfaces.Adaptors <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors>`_.SendInteger
-------------------------------------------------------------------------------------------------------------------------------------------

**Obsolete block to send Integer signal to bus**

.. figure:: Modelica.Blocks.Interfaces.Adaptors.SendIntegerD.png
   :align: center
   :alt: Modelica.Blocks.Interfaces.Adaptors.SendInteger

   Modelica.Blocks.Interfaces.Adaptors.SendInteger

Information
~~~~~~~~~~~

::

Obsolete block that was previously used to connect an Integer signal to
a signal in a connector. This block is only provided for backward
compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| Type                                                                                                 | Name    | Description                            |
+======================================================================================================+=========+========================================+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | toBus   | Output signal to be connected to bus   |
+------------------------------------------------------------------------------------------------------+---------+----------------------------------------+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_      | u       | Input signal to be send to bus         |
+------------------------------------------------------------------------------------------------------+---------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block SendInteger "Obsolete block to send Integer signal to bus"

      IntegerOutput toBus "Output signal to be connected to bus";
      IntegerInput u "Input signal to be send to bus";
    equation 
      toBus = u;
    end SendInteger;

--------------

|image15| `Modelica.Blocks.Interfaces.Adaptors <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors>`_.ReceiveReal
-------------------------------------------------------------------------------------------------------------------------------------------

**Obsolete block to receive Real signal from bus**

.. figure:: Modelica.Blocks.Interfaces.Adaptors.ReceiveRealD.png
   :align: center
   :alt: Modelica.Blocks.Interfaces.Adaptors.ReceiveReal

   Modelica.Blocks.Interfaces.Adaptors.ReceiveReal

Information
~~~~~~~~~~~

::

Obsolete block that was previously used to connect a Real signal in a
connector to an input of a block. This block is only provided for
backward compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| Type                                                                                           | Name      | Description                             |
+================================================================================================+===========+=========================================+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_      | fromBus   | To be connected with signal on bus      |
+------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y         | Output signal to be received from bus   |
+------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ReceiveReal "Obsolete block to receive Real signal from bus"

      RealInput fromBus "To be connected with signal on bus";
      RealOutput y "Output signal to be received from bus";
    equation 
      y = fromBus;
    end ReceiveReal;

--------------

|image16| `Modelica.Blocks.Interfaces.Adaptors <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors>`_.ReceiveBoolean
----------------------------------------------------------------------------------------------------------------------------------------------

**Obsolete block to receive Boolean signal from bus**

.. figure:: Modelica.Blocks.Interfaces.Adaptors.ReceiveBooleanD.png
   :align: center
   :alt: Modelica.Blocks.Interfaces.Adaptors.ReceiveBoolean

   Modelica.Blocks.Interfaces.Adaptors.ReceiveBoolean

Information
~~~~~~~~~~~

::

Obsolete block that was previously used to connect a Boolean signal in a
connector to an input of a block. This block is only provided for
backward compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| Type                                                                                                 | Name      | Description                             |
+======================================================================================================+===========+=========================================+
| input `BooleanInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanInput>`_      | fromBus   | To be connected with signal on bus      |
+------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y         | Output signal to be received from bus   |
+------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ReceiveBoolean 
      "Obsolete block to receive Boolean signal from bus"

      BooleanInput fromBus "To be connected with signal on bus";
      BooleanOutput y "Output signal to be received from bus";
    equation 
      y = fromBus;
    end ReceiveBoolean;

--------------

|image17| `Modelica.Blocks.Interfaces.Adaptors <Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors>`_.ReceiveInteger
----------------------------------------------------------------------------------------------------------------------------------------------

**Obsolete block to receive Integer signal from bus**

.. figure:: Modelica.Blocks.Interfaces.Adaptors.ReceiveIntegerD.png
   :align: center
   :alt: Modelica.Blocks.Interfaces.Adaptors.ReceiveInteger

   Modelica.Blocks.Interfaces.Adaptors.ReceiveInteger

Information
~~~~~~~~~~~

::

Obsolete block that was previously used to connect an Integer signal in
a connector to an input of a block. This block is only provided for
backward compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_.

::

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| Type                                                                                                 | Name      | Description                             |
+======================================================================================================+===========+=========================================+
| input `IntegerInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerInput>`_      | fromBus   | To be connected with signal on bus      |
+------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y         | Output signal to be received from bus   |
+------------------------------------------------------------------------------------------------------+-----------+-----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ReceiveInteger 
      "Obsolete block to receive Integer signal from bus"

      IntegerInput fromBus "To be connected with signal on bus";
      IntegerOutput y "Output signal to be received from bus";
    equation 
      y = fromBus;
    end ReceiveInteger;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:37
2010.

.. |Modelica.Blocks.Interfaces.Adaptors.SendReal| image:: Modelica.Blocks.Interfaces.Adaptors.SendRealS.png
.. |Modelica.Blocks.Interfaces.Adaptors.SendBoolean| image:: Modelica.Blocks.Interfaces.Adaptors.SendBooleanS.png
.. |Modelica.Blocks.Interfaces.Adaptors.SendInteger| image:: Modelica.Blocks.Interfaces.Adaptors.SendIntegerS.png
.. |Modelica.Blocks.Interfaces.Adaptors.ReceiveReal| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveRealS.png
.. |Modelica.Blocks.Interfaces.Adaptors.ReceiveBoolean| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveBooleanS.png
.. |Modelica.Blocks.Interfaces.Adaptors.ReceiveInteger| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveIntegerS.png
.. |image6| image:: Modelica.Blocks.Interfaces.Adaptors.SendRealS.png
.. |image7| image:: Modelica.Blocks.Interfaces.Adaptors.SendBooleanS.png
.. |image8| image:: Modelica.Blocks.Interfaces.Adaptors.SendIntegerS.png
.. |image9| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveRealS.png
.. |image10| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveBooleanS.png
.. |image11| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveIntegerS.png
.. |image12| image:: Modelica.Blocks.Interfaces.Adaptors.SendRealI.png
.. |image13| image:: Modelica.Blocks.Interfaces.Adaptors.SendBooleanI.png
.. |image14| image:: Modelica.Blocks.Interfaces.Adaptors.SendIntegerI.png
.. |image15| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveRealI.png
.. |image16| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveBooleanI.png
.. |image17| image:: Modelica.Blocks.Interfaces.Adaptors.ReceiveIntegerI.png
