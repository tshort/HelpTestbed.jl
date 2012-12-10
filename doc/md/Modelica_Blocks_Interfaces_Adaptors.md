% Modelica.Blocks.Interfaces.Adaptors
% 
% 

[Modelica.Blocks.Interfaces](Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces).Adaptors
=================================================================================================

**Obsolete package with components to send signals to a bus or receive
signals from a bus (only for backward compatibility)**

Information
-----------

::

The components of this package should no longer be used. They are only
provided for backward compatibility. It is much more convenient and more
powerful to use "expandable connectors" for signal buses, see example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                   Description
  ------------------------------------------------------ -----------------
  ![image6](Modelica.Blocks.Interfaces.Adaptors.SendReal Obsolete block to
  S.png)                                                 send Real signal
  [SendReal](Modelica_Blocks_Interfaces_Adaptors.html#Mo to bus
  delica.Blocks.Interfaces.Adaptors.SendReal)            

  ![image7](Modelica.Blocks.Interfaces.Adaptors.SendBool Obsolete block to
  eanS.png)                                              send Boolean
  [SendBoolean](Modelica_Blocks_Interfaces_Adaptors.html signal to bus
  #Modelica.Blocks.Interfaces.Adaptors.SendBoolean)      

  ![image8](Modelica.Blocks.Interfaces.Adaptors.SendInte Obsolete block to
  gerS.png)                                              send Integer
  [SendInteger](Modelica_Blocks_Interfaces_Adaptors.html signal to bus
  #Modelica.Blocks.Interfaces.Adaptors.SendInteger)      

  ![image9](Modelica.Blocks.Interfaces.Adaptors.ReceiveR Obsolete block to
  ealS.png)                                              receive Real
  [ReceiveReal](Modelica_Blocks_Interfaces_Adaptors.html signal from bus
  #Modelica.Blocks.Interfaces.Adaptors.ReceiveReal)      

  ![image10](Modelica.Blocks.Interfaces.Adaptors.Receive Obsolete block to
  BooleanS.png)                                          receive Boolean
  [ReceiveBoolean](Modelica_Blocks_Interfaces_Adaptors.h signal from bus
  tml#Modelica.Blocks.Interfaces.Adaptors.ReceiveBoolean 
  )                                                      

  ![image11](Modelica.Blocks.Interfaces.Adaptors.Receive Obsolete block to
  IntegerS.png)                                          receive Integer
  [ReceiveInteger](Modelica_Blocks_Interfaces_Adaptors.h signal from bus
  tml#Modelica.Blocks.Interfaces.Adaptors.ReceiveInteger 
  )                                                      
  ------------------------------------------------------------------------

* * * * *

![image12](Modelica.Blocks.Interfaces.Adaptors.SendRealI.png) [Modelica.Blocks.Interfaces.Adaptors](Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors).SendReal
==========================================================================================================================================================================================

**Obsolete block to send Real signal to bus**

Information
-----------

::

Obsolete block that was previously used to connect a Real signal to a
signal in a connector. This block is only provided for backward
compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                            Name Description
  ----------------------------------------------- ---- -------------------
  output                                          toBu Output signal to be
  [RealOutput](Modelica_Blocks_Interfaces.html#Mo s    connected to bus
  delica.Blocks.Interfaces.RealOutput)                 

  input                                           u    Input signal to be
  [RealInput](Modelica_Blocks_Interfaces.html#Mod      send to bus
  elica.Blocks.Interfaces.RealInput)                   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    block SendReal "Obsolete block to send Real signal to bus"

      RealOutput toBus "Output signal to be connected to bus";
      RealInput u "Input signal to be send to bus";
    equation 
      toBus = u;
    end SendReal;

* * * * *

![image13](Modelica.Blocks.Interfaces.Adaptors.SendBooleanI.png) [Modelica.Blocks.Interfaces.Adaptors](Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors).SendBoolean
================================================================================================================================================================================================

**Obsolete block to send Boolean signal to bus**

Information
-----------

::

Obsolete block that was previously used to connect a Boolean signal to a
signal in a connector. This block is only provided for backward
compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  output                                           toBu Output signal to be
  [BooleanOutput](Modelica_Blocks_Interfaces.html# s    connected to bus
  Modelica.Blocks.Interfaces.BooleanOutput)             

  input                                            u    Input signal to be
  [BooleanInput](Modelica_Blocks_Interfaces.html#M      send to bus
  odelica.Blocks.Interfaces.BooleanInput)               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block SendBoolean "Obsolete block to send Boolean signal to bus"

      BooleanOutput toBus "Output signal to be connected to bus";
      BooleanInput u "Input signal to be send to bus";
    equation 
      toBus = u;
    end SendBoolean;

* * * * *

![image14](Modelica.Blocks.Interfaces.Adaptors.SendIntegerI.png) [Modelica.Blocks.Interfaces.Adaptors](Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors).SendInteger
================================================================================================================================================================================================

**Obsolete block to send Integer signal to bus**

Information
-----------

::

Obsolete block that was previously used to connect an Integer signal to
a signal in a connector. This block is only provided for backward
compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                             Name Description
  ------------------------------------------------ ---- -------------------
  output                                           toBu Output signal to be
  [IntegerOutput](Modelica_Blocks_Interfaces.html# s    connected to bus
  Modelica.Blocks.Interfaces.IntegerOutput)             

  input                                            u    Input signal to be
  [IntegerInput](Modelica_Blocks_Interfaces.html#M      send to bus
  odelica.Blocks.Interfaces.IntegerInput)               
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block SendInteger "Obsolete block to send Integer signal to bus"

      IntegerOutput toBus "Output signal to be connected to bus";
      IntegerInput u "Input signal to be send to bus";
    equation 
      toBus = u;
    end SendInteger;

* * * * *

![image15](Modelica.Blocks.Interfaces.Adaptors.ReceiveRealI.png) [Modelica.Blocks.Interfaces.Adaptors](Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors).ReceiveReal
================================================================================================================================================================================================

**Obsolete block to receive Real signal from bus**

Information
-----------

::

Obsolete block that was previously used to connect a Real signal in a
connector to an input of a block. This block is only provided for
backward compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                           Name  Description
  ---------------------------------------------- ----- --------------------
  input                                          fromB To be connected with
  [RealInput](Modelica_Blocks_Interfaces.html#Mo us    signal on bus
  delica.Blocks.Interfaces.RealInput)                  

  output                                         y     Output signal to be
  [RealOutput](Modelica_Blocks_Interfaces.html#M       received from bus
  odelica.Blocks.Interfaces.RealOutput)                
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ReceiveReal "Obsolete block to receive Real signal from bus"

      RealInput fromBus "To be connected with signal on bus";
      RealOutput y "Output signal to be received from bus";
    equation 
      y = fromBus;
    end ReceiveReal;

* * * * *

![image16](Modelica.Blocks.Interfaces.Adaptors.ReceiveBooleanI.png) [Modelica.Blocks.Interfaces.Adaptors](Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors).ReceiveBoolean
======================================================================================================================================================================================================

**Obsolete block to receive Boolean signal from bus**

Information
-----------

::

Obsolete block that was previously used to connect a Boolean signal in a
connector to an input of a block. This block is only provided for
backward compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  input                                           fromB To be connected
  [BooleanInput](Modelica_Blocks_Interfaces.html# us    with signal on bus
  Modelica.Blocks.Interfaces.BooleanInput)              

  output                                          y     Output signal to be
  [BooleanOutput](Modelica_Blocks_Interfaces.html       received from bus
  #Modelica.Blocks.Interfaces.BooleanOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ReceiveBoolean 
      "Obsolete block to receive Boolean signal from bus"

      BooleanInput fromBus "To be connected with signal on bus";
      BooleanOutput y "Output signal to be received from bus";
    equation 
      y = fromBus;
    end ReceiveBoolean;

* * * * *

![image17](Modelica.Blocks.Interfaces.Adaptors.ReceiveIntegerI.png) [Modelica.Blocks.Interfaces.Adaptors](Modelica_Blocks_Interfaces_Adaptors.html#Modelica.Blocks.Interfaces.Adaptors).ReceiveInteger
======================================================================================================================================================================================================

**Obsolete block to receive Integer signal from bus**

Information
-----------

::

Obsolete block that was previously used to connect an Integer signal in
a connector to an input of a block. This block is only provided for
backward compatibility.

It is much more convenient and more powerful to use "expandable
connectors" for signal buses, see example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Connectors
----------

  -------------------------------------------------------------------------
  Type                                            Name  Description
  ----------------------------------------------- ----- -------------------
  input                                           fromB To be connected
  [IntegerInput](Modelica_Blocks_Interfaces.html# us    with signal on bus
  Modelica.Blocks.Interfaces.IntegerInput)              

  output                                          y     Output signal to be
  [IntegerOutput](Modelica_Blocks_Interfaces.html       received from bus
  #Modelica.Blocks.Interfaces.IntegerOutput)            
  -------------------------------------------------------------------------

Modelica definition
-------------------

    block ReceiveInteger 
      "Obsolete block to receive Integer signal from bus"

      IntegerInput fromBus "To be connected with signal on bus";
      IntegerOutput y "Output signal to be received from bus";
    equation 
      y = fromBus;
    end ReceiveInteger;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:37 2010.
