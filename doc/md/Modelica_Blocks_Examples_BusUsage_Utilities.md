% Modelica.Blocks.Examples.BusUsage\_Utilities
% 
% 

[Modelica.Blocks.Examples](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples).BusUsage\_Utilities
======================================================================================================

**Utility models and connectors for example
Modelica.Blocks.Examples.BusUsage**

Information
-----------

::

This package contains utility models and bus definitions needed for the
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage)
example.

::

Extends from
[Modelica.Icons.Package](Modelica_Icons_Package.html#Modelica.Icons.Package)
(Icon for standard packages).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                       Description
  ---------------------------------------------------------- -------------
  ![image2](Modelica.Blocks.Examples.BusUsage_Utilities.Inte Interfaces
  rfacesS.png)                                               specialised
  [Interfaces](Modelica_Blocks_Examples_BusUsage_Utilities_I for this
  nterfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities example
  .Interfaces)                                               

  ![image3](Modelica.Blocks.Examples.BusUsage_Utilities.Part Component
  S.png)                                                     with
  [Part](Modelica_Blocks_Examples_BusUsage_Utilities.html#Mo sub-control
  delica.Blocks.Examples.BusUsage_Utilities.Part)            bus
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Blocks.Examples.BusUsage_Utilities.PartI.png) [Modelica.Blocks.Examples.BusUsage\_Utilities](Modelica_Blocks_Examples_BusUsage_Utilities.html#Modelica.Blocks.Examples.BusUsage_Utilities).Part
==================================================================================================================================================================================================================

**Component with sub-control bus**

Information
-----------

::

This model is used to demonstrate the bus usage in example
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage).

::

Connectors
----------

  ------------------------------------------------------------------------
  Type                                                       Name   Descri
                                                                    ption
  ---------------------------------------------------------- ------ ------
  [SubControlBus](Modelica_Blocks_Examples_BusUsage_Utilitie subCon 
  s_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilit trolBu 
  ies.Interfaces.SubControlBus)                              s      
  ------------------------------------------------------------------------

Modelica definition
-------------------

    model Part "Component with sub-control bus"

      Interfaces.SubControlBus subControlBus;
      Sources.RealExpression realExpression(y=time);
      Sources.BooleanExpression booleanExpression(y=time > 0.5);
    equation 
       connect(realExpression.y, subControlBus.myRealSignal);
       connect(booleanExpression.y, subControlBus.myBooleanSignal);
    end Part;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:35 2010.
