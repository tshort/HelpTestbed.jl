% Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces
% 
% 

[Modelica.Blocks.Examples.BusUsage\_Utilities](Modelica_Blocks_Examples_BusUsage_Utilities.html#Modelica.Blocks.Examples.BusUsage_Utilities).Interfaces
=======================================================================================================================================================

**Interfaces specialised for this example**

Information
-----------

::

This package contains the bus definitions needed for the
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage)
example.

::

Extends from
[Modelica.Icons.InterfacesPackage](Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage)
(Icon for packages containing interfaces).

Package Content
---------------

  ------------------------------------------------------------------------
  Name                                                    Description
  ------------------------------------------------------- ----------------
  ![image2](Modelica.Blocks.Examples.BusUsage_Utilities.I Control bus that
  nterfaces.ControlBusS.png)                              is adapted to
  [ControlBus](Modelica_Blocks_Examples_BusUsage_Utilitie the signals
  s_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Uti connected to it
  lities.Interfaces.ControlBus)                           

  ![image3](Modelica.Blocks.Examples.BusUsage_Utilities.I Sub-control bus
  nterfaces.SubControlBusS.png)                           that is adapted
  [SubControlBus](Modelica_Blocks_Examples_BusUsage_Utili to the signals
  ties_Interfaces.html#Modelica.Blocks.Examples.BusUsage_ connected to it
  Utilities.Interfaces.SubControlBus)                     
  ------------------------------------------------------------------------

* * * * *

![image4](Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.ControlBusI.png) [Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces](Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces).ControlBus
==========================================================================================================================================================================================================================================================================

**Control bus that is adapted to the signals connected to it**

Information
-----------

::

This connector defines the "expandable connector" ControlBus that is
used as bus in the
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage)
example. Note, this connector contains "default" signals that might be
utilized in a connection (the input/output causalities of the signals
are determined from the connections to this bus).

::

Extends from
[Modelica.Icons.SignalBus](Modelica_Icons.html#Modelica.Icons.SignalBus)
(Icon for signal bus).

Contents
--------

  ------------------------------------------------------------------------
  Type                                              Name  Description
  ------------------------------------------------- ----- ----------------
  [AngularVelocity](Modelica_SIunits.html#Modelica. realS First Real
  SIunits.AngularVelocity)                          ignal signal (angular
                                                    1     velocity)
                                                          [rad/s]

  [Velocity](Modelica_SIunits.html#Modelica.SIunits realS Second Real
  .Velocity)                                        ignal signal [m/s]
                                                    2     

  Integer                                           integ Integer signal
                                                    erSig 
                                                    nal   

  Boolean                                           boole Boolean signal
                                                    anSig 
                                                    nal   

  [SubControlBus](Modelica_Blocks_Examples_BusUsage subCo Combined signal
  _Utilities_Interfaces.html#Modelica.Blocks.Exampl ntrol 
  es.BusUsage_Utilities.Interfaces.SubControlBus)   Bus   
  ------------------------------------------------------------------------

Modelica definition
-------------------

    expandable connector ControlBus 
      "Control bus that is adapted to the signals connected to it"
      extends Modelica.Icons.SignalBus;
      import SI = Modelica.SIunits;
      SI.AngularVelocity realSignal1 "First Real signal (angular velocity)";
      SI.Velocity realSignal2 "Second Real signal";
      Integer integerSignal "Integer signal";
      Boolean booleanSignal "Boolean signal";
      SubControlBus subControlBus "Combined signal";

    end ControlBus;

* * * * *

![image5](Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.SubControlBusI.png) [Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces](Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces).SubControlBus
================================================================================================================================================================================================================================================================================

**Sub-control bus that is adapted to the signals connected to it**

Information
-----------

::

This connector defines the "expandable connector" SubControlBus that is
used as sub-bus in the
[BusUsage](Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage)
example. Note, this is an expandable connector which has a "default" set
of signals (the input/output causalities of the signals are determined
from the connections to this bus).

::

Extends from
[Modelica.Icons.SignalSubBus](Modelica_Icons.html#Modelica.Icons.SignalSubBus)
(Icon for signal sub-bus).

Contents
--------

  Type         Name                 Description
  ------------ -------------------- ----------------
  Real         myRealSignal         
  Boolean      myBooleanSignal      

Modelica definition
-------------------

    expandable connector SubControlBus 
      "Sub-control bus that is adapted to the signals connected to it"
      extends Modelica.Icons.SignalSubBus;
      Real myRealSignal;
      Boolean myBooleanSignal;

    end SubControlBus;

* * * * *

[Automatically generated](http://www.3ds.com/) Fri Nov 12 16:27:35 2010.
