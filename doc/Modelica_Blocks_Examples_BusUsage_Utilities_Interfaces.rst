=======================================================
Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces
=======================================================

`Modelica.Blocks.Examples.BusUsage\_Utilities <Modelica_Blocks_Examples_BusUsage_Utilities.html#Modelica.Blocks.Examples.BusUsage_Utilities>`_.Interfaces
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Interfaces specialised for this example**

Information
~~~~~~~~~~~

::

This package contains the bus definitions needed for the
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_
example.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| Name                                                                                                                                                                                                                          | Description                                                      |
+===============================================================================================================================================================================================================================+==================================================================+
| |image2| `ControlBus <Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.ControlBus>`_                                                                        | Control bus that is adapted to the signals connected to it       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+
| |image3| `SubControlBus <Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.SubControlBus>`_                                                                  | Sub-control bus that is adapted to the signals connected to it   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------------------------------------+

--------------

|image4| `Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces <Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces>`_.ControlBus
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Control bus that is adapted to the signals connected to it**

.. figure:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.ControlBusD.png
   :align: center
   :alt: Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces.ControlBus

   Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces.ControlBus

Information
~~~~~~~~~~~

::

This connector defines the "expandable connector" ControlBus that is
used as bus in the
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_
example. Note, this connector contains "default" signals that might be
utilized in a connection (the input/output causalities of the signals
are determined from the connections to this bus).

::

Extends from
`Modelica.Icons.SignalBus <Modelica_Icons.html#Modelica.Icons.SignalBus>`_
(Icon for signal bus).

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------+
| Type                                                                                                                                                  | Name            | Description                                    |
+=======================================================================================================================================================+=================+================================================+
| `AngularVelocity <Modelica_SIunits.html#Modelica.SIunits.AngularVelocity>`_                                                                           | realSignal1     | First Real signal (angular velocity) [rad/s]   |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------+
| `Velocity <Modelica_SIunits.html#Modelica.SIunits.Velocity>`_                                                                                         | realSignal2     | Second Real signal [m/s]                       |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------+
| Integer                                                                                                                                               | integerSignal   | Integer signal                                 |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------+
| Boolean                                                                                                                                               | booleanSignal   | Boolean signal                                 |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------+
| `SubControlBus <Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.SubControlBus>`_   | subControlBus   | Combined signal                                |
+-------------------------------------------------------------------------------------------------------------------------------------------------------+-----------------+------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

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

--------------

|image5| `Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces <Modelica_Blocks_Examples_BusUsage_Utilities_Interfaces.html#Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces>`_.SubControlBus
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Sub-control bus that is adapted to the signals connected to it**

.. figure:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.ControlBusD.png
   :align: center
   :alt: Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces.SubControlBus

   Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces.SubControlBus

Information
~~~~~~~~~~~

::

This connector defines the "expandable connector" SubControlBus that is
used as sub-bus in the
`BusUsage <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.BusUsage>`_
example. Note, this is an expandable connector which has a "default" set
of signals (the input/output causalities of the signals are determined
from the connections to this bus).

::

Extends from
`Modelica.Icons.SignalSubBus <Modelica_Icons.html#Modelica.Icons.SignalSubBus>`_
(Icon for signal sub-bus).

Contents
~~~~~~~~

+-----------+-------------------+---------------+
| Type      | Name              | Description   |
+===========+===================+===============+
| Real      | myRealSignal      |               |
+-----------+-------------------+---------------+
| Boolean   | myBooleanSignal   |               |
+-----------+-------------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    expandable connector SubControlBus 
      "Sub-control bus that is adapted to the signals connected to it"
      extends Modelica.Icons.SignalSubBus;
      Real myRealSignal;
      Boolean myBooleanSignal;

    end SubControlBus;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:35
2010.

.. |Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces.ControlBus| image:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.ControlBusS.png
.. |Modelica.Blocks.Examples.BusUsage\_Utilities.Interfaces.SubControlBus| image:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.SubControlBusS.png
.. |image2| image:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.ControlBusS.png
.. |image3| image:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.SubControlBusS.png
.. |image4| image:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.ControlBusI.png
.. |image5| image:: Modelica.Blocks.Examples.BusUsage_Utilities.Interfaces.SubControlBusI.png
