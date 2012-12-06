==========================================================
Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces
==========================================================

`Modelica.Electrical.QuasiStationary.SinglePhase <Modelica_Electrical_QuasiStationary_SinglePhase.html#Modelica.Electrical.QuasiStationary.SinglePhase>`_.Interfaces
--------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Interfaces for AC singlephase models**

Information
~~~~~~~~~~~

::

This package contains connector specifications and partial models for
more complex components.

::

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| Name                                                                                                                                                                                                                                        | Description                        |
+=============================================================================================================================================================================================================================================+====================================+
| |image8| `Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_                                                                                            | Basic connector                    |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image9| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_                                                                            | Positive connector                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image10| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_                                                                           | Negative Connector                 |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image11| `TwoPin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin>`_                                                                                     | Two pins                           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image12| `OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_                                                                                   | Two pins, current through          |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image13| `AbsoluteSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor>`_                                                                     | Partial potential sensor           |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image14| `RelativeSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor>`_                                                                     | Partial voltage / current sensor   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image15| `Source <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source>`_                                                                                     | Partial voltage / current source   |
+---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+

--------------

`Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.Pin
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Basic connector**

Information
~~~~~~~~~~~

::

The potential of this connector is the complex voltage and the flow
variable is the complex current. The
`positive <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_
and `negative
pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_
are derived from this base connector.

See also
^^^^^^^^

`PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_,
`NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_,
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_,
`PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_,
`NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_

::

Contents
~~~~~~~~

+----------------------------------------------------------------------------------+--------+----------------------------------------+
| Type                                                                             | Name   | Description                            |
+==================================================================================+========+========================================+
| `ComplexVoltage <Modelica_SIunits.html#Modelica.SIunits.ComplexVoltage>`_        | v      | Complex potential at the node          |
+----------------------------------------------------------------------------------+--------+----------------------------------------+
| flow `ComplexCurrent <Modelica_SIunits.html#Modelica.SIunits.ComplexCurrent>`_   | i      | Complex current flowing into the pin   |
+----------------------------------------------------------------------------------+--------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Pin "Basic connector"
      Modelica.SIunits.ComplexVoltage  v "Complex potential at the node";
      flow Modelica.SIunits.ComplexCurrent  i 
        "Complex current flowing into the pin";
    end Pin;

--------------

|image16| `Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.PositivePin
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Positive connector**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePinD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin

   Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin

Information
~~~~~~~~~~~

::

The positive pin is based on
`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_.
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of the
quasi stationary voltage and current. The symbol is also designed such
way to look different than the `negative
pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_.

See also
^^^^^^^^

`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_,
`NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_,
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_,
`PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_,
`NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_

::

Extends from
`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_
(Basic connector).

Contents
~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+
| Type                                                                                                                | Name        | Description                            |
+=====================================================================================================================+=============+========================================+
| `ComplexVoltage <Modelica_SIunits.html#Modelica.SIunits.ComplexVoltage>`_                                           | v           | Complex potential at the node          |
+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+
| flow `ComplexCurrent <Modelica_SIunits.html#Modelica.SIunits.ComplexCurrent>`_                                      | i           | Complex current flowing into the pin   |
+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+
| `Reference <Modelica_Electrical_QuasiStationary_Types.html#Modelica.Electrical.QuasiStationary.Types.Reference>`_   | reference   | Reference                              |
+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector PositivePin "Positive connector"
      extends Pin;
      QuasiStationary.Types.Reference reference "Reference";
    end PositivePin;

--------------

|image17| `Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.NegativePin
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Negative Connector**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePinD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin

   Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin

Information
~~~~~~~~~~~

::

The negative pin is based on
`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_.
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of the
quasi stationary voltage and current. The symbol is also designed such
way to look different than the `positive
pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_.

See also
^^^^^^^^

`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_,
`PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_,
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_,
`PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_,
`NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_

::

Extends from
`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_
(Basic connector).

Contents
~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+
| Type                                                                                                                | Name        | Description                            |
+=====================================================================================================================+=============+========================================+
| `ComplexVoltage <Modelica_SIunits.html#Modelica.SIunits.ComplexVoltage>`_                                           | v           | Complex potential at the node          |
+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+
| flow `ComplexCurrent <Modelica_SIunits.html#Modelica.SIunits.ComplexCurrent>`_                                      | i           | Complex current flowing into the pin   |
+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+
| `Reference <Modelica_Electrical_QuasiStationary_Types.html#Modelica.Electrical.QuasiStationary.Types.Reference>`_   | reference   | Reference                              |
+---------------------------------------------------------------------------------------------------------------------+-------------+----------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector NegativePin "Negative Connector"
      extends Pin;
      QuasiStationary.Types.Reference reference "Reference";
    end NegativePin;

--------------

|image18| `Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.TwoPin
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Two pins**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin

   Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin

Information
~~~~~~~~~~~

::

This partial model uses a
`positive <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_
and `negative
pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_
and defines the complex voltage difference as well as the complex
current (into the positive pin). Additionally, the angular velocity of
the quasi stationary system is explicitely defined as variable. This
model is mainly intended to be used with graphical representation of
user models.

See also
^^^^^^^^

`PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_,
`NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_,
`OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model TwoPin "Two pins"
      Modelica.SIunits.ComplexVoltage  v;
      Modelica.SIunits.ComplexCurrent  i;
      Modelica.SIunits.AngularVelocity omega = der(pin_p.reference.gamma);
      PositivePin pin_p "Positive pin";
      NegativePin pin_n "Negative pin";
    equation 
      Connections.branch(pin_p.reference, pin_n.reference);
      pin_p.reference.gamma = pin_n.reference.gamma;
      i = pin_p.i;
      v = pin_p.v - pin_n.v;
    end TwoPin;

--------------

|image19| `Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.OnePort
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Two pins, current through**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort

   Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort

Information
~~~~~~~~~~~

::

This partial model is based on
`TwoPin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin>`_
and additionally considers the complex current balance of the
`positive <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_
and the `negative
pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_.
This model is intended to be used with textual representation of user
models.

See also
^^^^^^^^

`PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_,
`NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_,
`TwoPin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin>`_

::

Extends from
`TwoPin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin>`_
(Two pins).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model OnePort "Two pins, current through"
      extends TwoPin;
    equation 
      pin_p.i + pin_n.i = Complex(0);
    end OnePort;

--------------

|image20| `Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.AbsoluteSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial potential sensor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor

   Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor

Information
~~~~~~~~~~~

::

The absolute sensor partial model provides a single `positive
pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_
to measure the complex voltage. Additionally this model contains a
proper icon and a definition of the angular velocity.

See also
^^^^^^^^

`RelativeSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor>`_,
`PotentialSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PotentialSensor>`_,
`MultiPhase.Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor>`_,
`MultiPhase.Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor>`_

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                                                                      | Name   | Description   |
+===========================================================================================================================================================+========+===============+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin    | Pin           |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model AbsoluteSensor "Partial potential sensor"
      extends Modelica.Icons.RotationalSensor;
      Modelica.SIunits.AngularVelocity omega = der(pin.reference.gamma);
      PositivePin pin "Pin";
    equation 
      pin.i = Complex(0);
    end AbsoluteSensor;

--------------

|image21| `Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.RelativeSensor
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial voltage / current sensor**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor

   Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor

Information
~~~~~~~~~~~

::

The relative sensor partial model relies on the
`OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
to measure the complex voltage, current or power. Additionally this
model contains a proper icon and a definition of the angular velocity.

See also
^^^^^^^^

`AbsoluteSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor>`_,
`VoltageSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.VoltageSensor>`_,
`CurrentSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.CurrentSensor>`_,
`PowerSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Sensors.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sensors.PowerSensor>`_,
`MultiPhase.Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor>`_,
`MultiPhase.Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor>`_

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device),
`OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y        |                |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model RelativeSensor "Partial voltage / current sensor"
      extends Modelica.Icons.RotationalSensor;
      extends OnePort;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y;
    end RelativeSensor;

--------------

|image22| `Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces>`_.Source
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial voltage / current source**

.. figure:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.SourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source

   Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source

Information
~~~~~~~~~~~

::

The source partial model relies on the
`OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
and contains a proper icon.

See also
^^^^^^^^

`VoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VoltageSource>`_,
`VariableVoltageSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableVoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.CurrentSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_SinglePhase_Sources.html#Modelica.Electrical.QuasiStationary.SinglePhase.Sources.VariableCurrentSource>`_,
`MultiPhase.Interfaces.Source <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source>`_.

::

Extends from
`OnePort <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort>`_
(Two pins, current through).

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| Type                                                                                                                                                      | Name     | Description    |
+===========================================================================================================================================================+==========+================+
| `PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_   | pin\_p   | Positive pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+
| `NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_   | pin\_n   | Negative pin   |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+----------+----------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model Source "Partial voltage / current source"
      extends OnePort;
    equation 
      Connections.root(pin_p.reference);
    end Source;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:24
2010.

.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PinS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePinS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePinS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPin| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.OnePort| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensorS.png
.. |Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.SourceS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PinS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePinS.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePinS.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinS.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinS.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensorS.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensorS.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.SourceS.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePinI.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePinI.png
.. |image18| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinI.png
.. |image19| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.TwoPinI.png
.. |image20| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensorI.png
.. |image21| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensorI.png
.. |image22| image:: Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.SourceI.png
