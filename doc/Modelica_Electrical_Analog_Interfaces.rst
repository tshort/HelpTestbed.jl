=====================================
Modelica.Electrical.Analog.Interfaces
=====================================

`Modelica.Electrical.Analog <Modelica_Electrical_Analog.html#Modelica.Electrical.Analog>`_.Interfaces
-----------------------------------------------------------------------------------------------------

**Connectors and partial models for Analog electrical components**

Information
~~~~~~~~~~~

::

This package contains connectors and interfaces (partial models) for
analog electrical components. The partial models contain typical
combinations of pins, and internal variables which are often used.
Furthermode, the thermal heat port is in this package which can be
included by inheritance.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                        | Description                                                                                                 |
+=============================================================================================================================================================================================+=============================================================================================================+
| |image11| `Pin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.Pin>`_                                                                                     | Pin of an electrical component                                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image12| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_                                                                     | Positive pin of an electric component                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image13| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_                                                                     | Negative pin of an electric component                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image14| `TwoPin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPin>`_                                                                               | Component with two electrical pins                                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image15| `OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_                                                                             | Component with two electrical pins p and n and current i from p to n                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image16| `TwoPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.TwoPort>`_                                                                             | Component with two electrical ports, including current                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image17| `ConditionalHeatPort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort>`_                                                     | Partial model to include a conditional HeatPort in order to describe the power loss via a thermal network   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image18| `AbsoluteSensor <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.AbsoluteSensor>`_                                                               | Base class to measure the absolute value of a pin variable                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image19| `RelativeSensor <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.RelativeSensor>`_                                                               | Base class to measure a relative variable between two pins                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image20| `VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_                                                                 | Interface for voltage sources                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+
| |image21| `CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_                                                                 | Interface for current sources                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------------------------------------------------+

--------------

|image22| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.Pin
-----------------------------------------------------------------------------------------------------------------------------------------

**Pin of an electrical component**

.. figure:: Modelica.Electrical.Analog.Interfaces.PinD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.Pin

   Modelica.Electrical.Analog.Interfaces.Pin

Information
~~~~~~~~~~~

::

Pin is the basic electric connector. It includes the voltage which
consists between the pin and the ground node. The ground node is the
node of (any) ground device (Modelica.Electrical.Basic.Ground).
Furthermore, the pin includes the current, which is considered to be
**positive** if it is flowing at the pin**into the device**.

::

Contents
~~~~~~~~

+--------------------------------------------------------------------+--------+------------------------------------+
| Type                                                               | Name   | Description                        |
+====================================================================+========+====================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_        | v      | Potential at the pin [V]           |
+--------------------------------------------------------------------+--------+------------------------------------+
| flow `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | i      | Current flowing into the pin [A]   |
+--------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Pin "Pin of an electrical component"
      Modelica.SIunits.Voltage v "Potential at the pin";
      flow Modelica.SIunits.Current i "Current flowing into the pin";
    end Pin;

--------------

|image23| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.PositivePin
-------------------------------------------------------------------------------------------------------------------------------------------------

**Positive pin of an electric component**

.. figure:: Modelica.Electrical.Analog.Interfaces.PositivePinD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.PositivePin

   Modelica.Electrical.Analog.Interfaces.PositivePin

Information
~~~~~~~~~~~

::

Connectors PositivePin and NegativePin are nearly identical. The only
difference is that the icons are different in order to identify more
easily the pins of a component. Usually, connector PositivePin is used
for the positive and connector NegativePin for the negative pin of an
electrical component.

::

Contents
~~~~~~~~

+--------------------------------------------------------------------+--------+------------------------------------+
| Type                                                               | Name   | Description                        |
+====================================================================+========+====================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_        | v      | Potential at the pin [V]           |
+--------------------------------------------------------------------+--------+------------------------------------+
| flow `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | i      | Current flowing into the pin [A]   |
+--------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector PositivePin "Positive pin of an electric component"
      Modelica.SIunits.Voltage v "Potential at the pin";
      flow Modelica.SIunits.Current i "Current flowing into the pin";
    end PositivePin;

--------------

|image24| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.NegativePin
-------------------------------------------------------------------------------------------------------------------------------------------------

**Negative pin of an electric component**

.. figure:: Modelica.Electrical.Analog.Interfaces.NegativePinD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.NegativePin

   Modelica.Electrical.Analog.Interfaces.NegativePin

Information
~~~~~~~~~~~

::

Connectors PositivePin and NegativePin are nearly identical. The only
difference is that the icons are different in order to identify more
easily the pins of a component. Usually, connector PositivePin is used
for the positive and connector NegativePin for the negative pin of an
electrical component.

::

Contents
~~~~~~~~

+--------------------------------------------------------------------+--------+------------------------------------+
| Type                                                               | Name   | Description                        |
+====================================================================+========+====================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_        | v      | Potential at the pin [V]           |
+--------------------------------------------------------------------+--------+------------------------------------+
| flow `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | i      | Current flowing into the pin [A]   |
+--------------------------------------------------------------------+--------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector NegativePin "Negative pin of an electric component"
      Modelica.SIunits.Voltage v "Potential at the pin";
      flow Modelica.SIunits.Current i "Current flowing into the pin";
    end NegativePin;

--------------

|image25| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.TwoPin
--------------------------------------------------------------------------------------------------------------------------------------------

**Component with two electrical pins**

.. figure:: Modelica.Electrical.Analog.Interfaces.TwoPinD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.TwoPin

   Modelica.Electrical.Analog.Interfaces.TwoPin

Information
~~~~~~~~~~~

::

TwoPin is a partial model with two pins and one internal variable for
the voltage over the two pins. Internal currents are not defined. It is
intended to be used in cases where the model which inherits TwoPin is
composed by combining other components graphically, not by equations.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                   |
+=================================================================================================================+========+===============================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                                  |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model TwoPin "Component with two electrical pins"
      SI.Voltage v "Voltage drop between the two pins (= p.v - n.v)";
      PositivePin p 
        "Positive pin Positive pin (potential p.v > n.v for positive voltage drop v)";
      NegativePin n "Negative pin";
    equation 
      v = p.v - n.v;
    end TwoPin;

--------------

|image26| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.OnePort
---------------------------------------------------------------------------------------------------------------------------------------------

**Component with two electrical pins p and n and current i from p to n**

.. figure:: Modelica.Electrical.Analog.Interfaces.OnePortD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.OnePort

   Modelica.Electrical.Analog.Interfaces.OnePort

Information
~~~~~~~~~~~

::

Superclass of elements which have **two** electrical pins: the positive
pin connector *p*, and the negative pin connector *n*. It is assumed
that the current flowing into pin p is identical to the current flowing
out of pin n. This current is provided explicitly as current i.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                      |
+=================================================================================================================+========+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model OnePort 
      "Component with two electrical pins p and n and current i from p to n"

      SI.Voltage v "Voltage drop between the two pins (= p.v - n.v)";
      SI.Current i "Current flowing from pin p to pin n";
      PositivePin p 
        "Positive pin (potential p.v > n.v for positive voltage drop v)";
      NegativePin n "Negative pin";
    equation 
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
    end OnePort;

--------------

|image27| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.TwoPort
---------------------------------------------------------------------------------------------------------------------------------------------

**Component with two electrical ports, including current**

.. figure:: Modelica.Electrical.Analog.Interfaces.TwoPortD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.TwoPort

   Modelica.Electrical.Analog.Interfaces.TwoPort

Information
~~~~~~~~~~~

::

TwoPort is a partial model that consists of two ports. Like OnePort each
port has two pins. It is assumed that the current flowing into the
positive pin is identical to the current flowing out of pin n. This
currents of each port are provided explicitly as currents i1 and i2, the
voltages respectively as v1 and v2.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                                           |
+=================================================================================================================+========+=======================================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p1     | Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)    |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n1     | Negative pin of the left port                                                         |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p2     | Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)   |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n2     | Negative pin of the right port                                                        |
+-----------------------------------------------------------------------------------------------------------------+--------+---------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model TwoPort 
      "Component with two electrical ports, including current"
      SI.Voltage v1 "Voltage drop over the left port";
      SI.Voltage v2 "Voltage drop over the right port";
      SI.Current i1 "Current flowing from pos. to neg. pin of the left port";
      SI.Current i2 "Current flowing from pos. to neg. pin of the right port";
      PositivePin p1 
        "Positive pin of the left port (potential p1.v > n1.v for positive voltage drop v1)";
      NegativePin n1 "Negative pin of the left port";
      PositivePin p2 
        "Positive pin of the right port (potential p2.v > n2.v for positive voltage drop v2)";
      NegativePin n2 "Negative pin of the right port";
    equation 
      v1 = p1.v - n1.v;
      v2 = p2.v - n2.v;
      0 = p1.i + n1.i;
      0 = p2.i + n2.i;
      i1 = p1.i;
      i2 = p2.i;
    end TwoPort;

--------------

|image28| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.ConditionalHeatPort
---------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial model to include a conditional HeatPort in order to describe
the power loss via a thermal network**

.. figure:: Modelica.Electrical.Analog.Interfaces.ConditionalHeatPortD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort

   Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort

Information
~~~~~~~~~~~

::

This partial model provides a conditional heating port for the
connection to a thermal network.

-  If **useHeatPort** is set to **false** (default), no heat port is
   available, and the thermal loss power flows internally to the ground.
   In this case, the parameter **T** specifies the fixed device
   temperature (the default for T = 20\ :sup:`o`\ C).
-  If **useHeatPort** is set to **true**, a heat port is available.

If this model is used, the loss power has to be provided by an equation
in the model which inherits from ConditionalHeatingPort model
(**lossPower = ...**). As device temperature **T\_heatPort** can be used
to describe the influence of the device temperature on the model
behaviour.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| Type                                                                  | Name          | Default   | Description                                           |
+=======================================================================+===============+===========+=======================================================+
| Boolean                                                               | useHeatPort   | false     | =true, if HeatPort is enabled                         |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+
| `Temperature <Modelica_SIunits.html#Modelica.SIunits.Temperature>`_   | T             | 293.15    | Fixed device temperature if useHeatPort = false [K]   |
+-----------------------------------------------------------------------+---------------+-----------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+----------------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                                 | Name       | Description   |
+======================================================================================================================+============+===============+
| `HeatPort\_a <Modelica_Thermal_HeatTransfer_Interfaces.html#Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a>`_   | heatPort   |               |
+----------------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model ConditionalHeatPort 
      "Partial model to include a conditional HeatPort in order to describe the power loss via a thermal network"

      parameter Boolean useHeatPort = false "=true, if HeatPort is enabled";
      parameter Modelica.SIunits.Temperature T=293.15 
        "Fixed device temperature if useHeatPort = false";
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatPort(T(start=T)=T_heatPort, Q_flow=-LossPower) if useHeatPort;
      Modelica.SIunits.Power LossPower "Loss power leaving component via HeatPort";
      Modelica.SIunits.Temperature T_heatPort "Temperature of HeatPort";
    equation 
      if not useHeatPort then
         T_heatPort = T;
      end if;

    end ConditionalHeatPort;

--------------

|image29| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.AbsoluteSensor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Base class to measure the absolute value of a pin variable**

.. figure:: Modelica.Electrical.Analog.Interfaces.AbsoluteSensorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.AbsoluteSensor

   Modelica.Electrical.Analog.Interfaces.AbsoluteSensor

Information
~~~~~~~~~~~

::

The AbsoluteSensor is a partial model for converting values that can be
calculated from one pin connector into a real valued signal. The special
calculation has to be described in the model which inherits the
AbsoluteSensor. It is often used in sensor devices. To be a true sensor
the modeller has to take care that the sensor model does not influence
the electrical behavior to be measured.

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------+
| Type                                                                                                            | Name   | Description                               |
+=================================================================================================================+========+===========================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Pin to be measured                        |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                    | y      | Measured quantity as Real output signal   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model AbsoluteSensor 
      "Base class to measure the absolute value of a pin variable"
      extends Modelica.Icons.RotationalSensor;

      Interfaces.PositivePin p "Pin to be measured";
      Modelica.Blocks.Interfaces.RealOutput y 
        "Measured quantity as Real output signal";

    end AbsoluteSensor;

--------------

|image30| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.RelativeSensor
----------------------------------------------------------------------------------------------------------------------------------------------------

**Base class to measure a relative variable between two pins**

.. figure:: Modelica.Electrical.Analog.Interfaces.RelativeSensorD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.RelativeSensor

   Modelica.Electrical.Analog.Interfaces.RelativeSensor

Information
~~~~~~~~~~~

::

The RelaticeSensor is a partial model for converting values that can be
calculated from two pin connectors into a real valued signal. The
special calculation has to be described in the model which inherits the
RelativeSensor. It is often used in sensor devices. To be a true sensor
the modeller has to take care that the sensor model does not influence
the electrical behavior to be measured.

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------+
| Type                                                                                                            | Name   | Description                               |
+=================================================================================================================+========+===========================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin                              |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                              |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                    | y      | Measured quantity as Real output signal   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model RelativeSensor 
      "Base class to measure a relative variable between two pins"
      extends Modelica.Icons.RotationalSensor;

      Interfaces.PositivePin p "Positive pin";
      Interfaces.NegativePin n "Negative pin";
      Modelica.Blocks.Interfaces.RealOutput y 
        "Measured quantity as Real output signal";
    end RelativeSensor;

--------------

|image31| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.VoltageSource
---------------------------------------------------------------------------------------------------------------------------------------------------

**Interface for voltage sources**

.. figure:: Modelica.Electrical.Analog.Interfaces.VoltageSourceD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.VoltageSource

   Modelica.Electrical.Analog.Interfaces.VoltageSource

Information
~~~~~~~~~~~

::

The VoltageSource partial model prepares voltage sources by providing
the pins, and the offset and startTime parameters, which are the same at
all voltage sources. The source behavior is taken from Modelica.Blocks
signal sources by inheritance and usage of the replacable possibilities.

::

Extends from
`OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+
| Type                                                                                        | Name           | Default                           | Description          |
+=============================================================================================+================+===================================+======================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_                                 | offset         | 0                                 | Voltage offset [V]   |
+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                       | startTime      | 0                                 | Time offset [s]      |
+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+
| `SignalSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SignalSource>`_   | signalSource   | redeclare Modelica.Blocks.In...   |                      |
+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                      |
+=================================================================================================================+========+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model VoltageSource "Interface for voltage sources"
      extends OnePort;

      parameter SI.Voltage offset=0 "Voltage offset";
      parameter SI.Time startTime=0 "Time offset";
      replaceable Modelica.Blocks.Interfaces.SignalSource signalSource(
          final offset = offset, final startTime=startTime);
    equation 
      v = signalSource.y;
    end VoltageSource;

--------------

|image32| `Modelica.Electrical.Analog.Interfaces <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces>`_.CurrentSource
---------------------------------------------------------------------------------------------------------------------------------------------------

**Interface for current sources**

.. figure:: Modelica.Electrical.Analog.Interfaces.CurrentSourceD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Interfaces.CurrentSource

   Modelica.Electrical.Analog.Interfaces.CurrentSource

Information
~~~~~~~~~~~

::

The CurrentSource partial model prepares current sources by providing
the pins, and the offset and startTime parameters, which are the same at
all current sources. The source behavior is taken from Modelica.Blocks
signal sources by inheritance and usage of the replacable possibilities.

::

Extends from
`OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+
| Type                                                                                        | Name           | Default                           | Description          |
+=============================================================================================+================+===================================+======================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_                                 | offset         | 0                                 | Current offset [A]   |
+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                                       | startTime      | 0                                 | Time offset [s]      |
+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+
| `SignalSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SignalSource>`_   | signalSource   | redeclare Modelica.Blocks.In...   |                      |
+---------------------------------------------------------------------------------------------+----------------+-----------------------------------+----------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                      |
+=================================================================================================================+========+==================================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      | Positive pin (potential p.v > n.v for positive voltage drop v)   |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      | Negative pin                                                     |
+-----------------------------------------------------------------------------------------------------------------+--------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model CurrentSource "Interface for current sources"
      extends OnePort;
      parameter SI.Current offset=0 "Current offset";
      parameter SI.Time startTime=0 "Time offset";
      replaceable Modelica.Blocks.Interfaces.SignalSource signalSource(
          final offset = offset, final startTime=startTime);
    equation 
      i = signalSource.y;
    end CurrentSource;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:09
2010.

.. |Modelica.Electrical.Analog.Interfaces.Pin| image:: Modelica.Electrical.Analog.Interfaces.PinS.png
.. |Modelica.Electrical.Analog.Interfaces.PositivePin| image:: Modelica.Electrical.Analog.Interfaces.PinS.png
.. |Modelica.Electrical.Analog.Interfaces.NegativePin| image:: Modelica.Electrical.Analog.Interfaces.NegativePinS.png
.. |Modelica.Electrical.Analog.Interfaces.TwoPin| image:: Modelica.Electrical.Analog.Interfaces.TwoPinS.png
.. |Modelica.Electrical.Analog.Interfaces.OnePort| image:: Modelica.Electrical.Analog.Interfaces.TwoPinS.png
.. |Modelica.Electrical.Analog.Interfaces.TwoPort| image:: Modelica.Electrical.Analog.Interfaces.TwoPortS.png
.. |Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort| image:: Modelica.Electrical.Analog.Interfaces.ConditionalHeatPortS.png
.. |Modelica.Electrical.Analog.Interfaces.AbsoluteSensor| image:: Modelica.Electrical.Analog.Interfaces.AbsoluteSensorS.png
.. |Modelica.Electrical.Analog.Interfaces.RelativeSensor| image:: Modelica.Electrical.Analog.Interfaces.RelativeSensorS.png
.. |Modelica.Electrical.Analog.Interfaces.VoltageSource| image:: Modelica.Electrical.Analog.Interfaces.VoltageSourceS.png
.. |Modelica.Electrical.Analog.Interfaces.CurrentSource| image:: Modelica.Electrical.Analog.Interfaces.CurrentSourceS.png
.. |image11| image:: Modelica.Electrical.Analog.Interfaces.PinS.png
.. |image12| image:: Modelica.Electrical.Analog.Interfaces.PinS.png
.. |image13| image:: Modelica.Electrical.Analog.Interfaces.NegativePinS.png
.. |image14| image:: Modelica.Electrical.Analog.Interfaces.TwoPinS.png
.. |image15| image:: Modelica.Electrical.Analog.Interfaces.TwoPinS.png
.. |image16| image:: Modelica.Electrical.Analog.Interfaces.TwoPortS.png
.. |image17| image:: Modelica.Electrical.Analog.Interfaces.ConditionalHeatPortS.png
.. |image18| image:: Modelica.Electrical.Analog.Interfaces.AbsoluteSensorS.png
.. |image19| image:: Modelica.Electrical.Analog.Interfaces.RelativeSensorS.png
.. |image20| image:: Modelica.Electrical.Analog.Interfaces.VoltageSourceS.png
.. |image21| image:: Modelica.Electrical.Analog.Interfaces.CurrentSourceS.png
.. |image22| image:: Modelica.Electrical.Analog.Interfaces.PinI.png
.. |image23| image:: Modelica.Electrical.Analog.Interfaces.PinI.png
.. |image24| image:: Modelica.Electrical.Analog.Interfaces.NegativePinI.png
.. |image25| image:: Modelica.Electrical.Analog.Interfaces.TwoPinI.png
.. |image26| image:: Modelica.Electrical.Analog.Interfaces.TwoPinI.png
.. |image27| image:: Modelica.Electrical.Analog.Interfaces.TwoPortI.png
.. |image28| image:: Modelica.Electrical.Analog.Interfaces.ConditionalHeatPortI.png
.. |image29| image:: Modelica.Electrical.Analog.Interfaces.AbsoluteSensorI.png
.. |image30| image:: Modelica.Electrical.Analog.Interfaces.RelativeSensorI.png
.. |image31| image:: Modelica.Electrical.Analog.Interfaces.VoltageSourceI.png
.. |image32| image:: Modelica.Electrical.Analog.Interfaces.CurrentSourceI.png
