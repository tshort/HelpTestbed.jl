=========================================================
Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces
=========================================================

`Modelica.Electrical.QuasiStationary.MultiPhase <Modelica_Electrical_QuasiStationary_MultiPhase.html#Modelica.Electrical.QuasiStationary.MultiPhase>`_.Interfaces
-----------------------------------------------------------------------------------------------------------------------------------------------------------------

**Interfaces for AC multiphase models**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.InterfacesPackage <Modelica_Icons_InterfacesPackage.html#Modelica.Icons.InterfacesPackage>`_
(Icon for packages containing interfaces).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| Name                                                                                                                                                                                                                                     | Description                        |
+==========================================================================================================================================================================================================================================+====================================+
| |image8| `Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_                                                                                         | Basic multiphase plug              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image9| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_                                                                         | Positive multiphase connector      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image10| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_                                                                        | Negative multiphase connector      |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image11| `TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_                                                                                  | Two plugs with pin-adapter         |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image12| `OnePort <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.OnePort>`_                                                                                  |                                    |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image13| `AbsoluteSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor>`_                                                                    | Partial potential sensor           |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image14| `RelativeSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor>`_                                                                    | Partial voltage / current sensor   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+
| |image15| `Source <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source>`_                                                                                    | Partial voltage / current source   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+------------------------------------+

--------------

`Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.Plug
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Basic multiphase plug**

Information
~~~~~~~~~~~

::

This multiphase plug contains a vector of *m* `single phase
pins <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_.
The
`positive <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_
and `negative
plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_
are derived from this base connector.

See also
^^^^^^^^

`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_,
`PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_,
`NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_,
`PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_,
`NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+----------+--------------------+
| Type                                                                                                                                      | Name     | Description        |
+===========================================================================================================================================+==========+====================+
| Integer                                                                                                                                   | m        | number of phases   |
+-------------------------------------------------------------------------------------------------------------------------------------------+----------+--------------------+
| `Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_   | pin[m]   |                    |
+-------------------------------------------------------------------------------------------------------------------------------------------+----------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector Plug "Basic multiphase plug"
      parameter Integer m=3 "number of phases";
      QuasiStationary.SinglePhase.Interfaces.Pin pin[m];
    end Plug;

--------------

|image16| `Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.PositivePlug
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Positive multiphase connector**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlugD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug

   Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug

Information
~~~~~~~~~~~

::

The positive plug is based on
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_.
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of each
quasi stationary voltage and current. The symbol is also designed such
way to look different than the `negative
plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_.

See also
^^^^^^^^

`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_,
`PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_,
`NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_,
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_,
`NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_

::

Extends from
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_
(Basic multiphase plug).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+
| Type                                                                                                                                      | Name        | Description        |
+===========================================================================================================================================+=============+====================+
| Integer                                                                                                                                   | m           | number of phases   |
+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+
| `Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_   | pin[m]      |                    |
+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+
| `Reference <Modelica_Electrical_QuasiStationary_Types.html#Modelica.Electrical.QuasiStationary.Types.Reference>`_                         | reference   |                    |
+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector PositivePlug "Positive multiphase connector"
      extends Plug;
      QuasiStationary.Types.Reference reference;
    end PositivePlug;

--------------

|image17| `Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.NegativePlug
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Negative multiphase connector**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlugD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug

   Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug

Information
~~~~~~~~~~~

::

The negative plug is based on
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_.
Additionally the reference angle is specified in the connector. The time
derivative of the reference angle is the actual angluar velocity of each
quasi stationary voltage and current. The symbol is also designed such
way to look different than the `positive
plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_.

See also
^^^^^^^^

`Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_,
`PositivePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.PositivePin>`_,
`NegativePin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.NegativePin>`_,
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_,
`PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_,

::

Extends from
`Plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug>`_
(Basic multiphase plug).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Contents
~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+
| Type                                                                                                                                      | Name        | Description        |
+===========================================================================================================================================+=============+====================+
| Integer                                                                                                                                   | m           | number of phases   |
+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+
| `Pin <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Pin>`_   | pin[m]      |                    |
+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+
| `Reference <Modelica_Electrical_QuasiStationary_Types.html#Modelica.Electrical.QuasiStationary.Types.Reference>`_                         | reference   |                    |
+-------------------------------------------------------------------------------------------------------------------------------------------+-------------+--------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    connector NegativePlug "Negative multiphase connector"
      extends Plug;
      QuasiStationary.Types.Reference reference;
    end NegativePlug;

--------------

|image18| `Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.TwoPlug
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Two plugs with pin-adapter**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug

   Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug

Information
~~~~~~~~~~~

::

This partial model uses a
`positive <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_
and `negative
plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_
and defines the complex voltage differences as well as the complex
currents (into the positive plug). A
`positive <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_p>`_
and a `negative
adapter <Modelica_Electrical_QuasiStationary_MultiPhase_Basic.html#Modelica.Electrical.QuasiStationary.MultiPhase.Basic.PlugToPins_n>`_
are used to give easy acces to the single pins of both plugs.
Additionally, the angular velocity of the quasi stationary system is
explicitely defined as variable. This model is mainly intended to be
used with graphical representation of user models.

See also
^^^^^^^^

`PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_,
`NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_,

::

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model TwoPlug "Two plugs with pin-adapter"
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.ComplexVoltage  v[
                                        m];
      Modelica.SIunits.ComplexCurrent  i[
                                        m];
      Modelica.SIunits.AngularVelocity omega = der(plug_p.reference.gamma);
      PositivePlug plug_p(final m=m);
      NegativePlug plug_n(final m=m);
      Basic.PlugToPins_p plugToPins_p(final m=m);
      Basic.PlugToPins_n plugToPins_n(final m=m);
    equation 
      v = plug_p.pin.v - plug_n.pin.v;
      i = plug_p.pin.i;
      connect(plug_p, plugToPins_p.plug_p);
      connect(plugToPins_n.plug_n, plug_n);
    end TwoPlug;

--------------

|image19| `Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.OnePort
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.OnePortD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.OnePort

   Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.OnePort

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model OnePort
      parameter Integer m(min=1) = 3 "Number of phases";
      Modelica.SIunits.ComplexVoltage  v[
                                        m];
      Modelica.SIunits.ComplexCurrent  i[
                                        m];
      Modelica.SIunits.AngularVelocity omega = der(plug_p.reference.gamma);
      PositivePlug plug_p(final m=m);
      NegativePlug plug_n(final m=m);
    equation 
      Connections.branch(plug_p.reference, plug_n.reference);
      plug_p.reference.gamma = plug_n.reference.gamma;
      v = plug_p.pin.v - plug_n.pin.v;
      i = plug_p.pin.i;
      plug_p.pin.i + plug_n.pin.i = fill(Complex(0),m);
    end OnePort;

--------------

|image20| `Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.AbsoluteSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial potential sensor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor

   Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor

Information
~~~~~~~~~~~

::

The absolute sensor partial model relies on the a `positive
plug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_
to measure the complex potential. Additionally this model contains a
proper icon and a definition of the angular velocity.

See also
^^^^^^^^

`RelativeSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor>`_,
`SinglePhase.Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor>`_,
`SinglePhase.Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor>`_

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model AbsoluteSensor "Partial potential sensor"
      extends Modelica.Icons.RotationalSensor;
      parameter Integer m(min=1) = 3 "number of phases";
      Modelica.SIunits.AngularVelocity omega = der(plug_p.reference.gamma);
      PositivePlug plug_p(final m=m);
    end AbsoluteSensor;

--------------

|image21| `Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.RelativeSensor
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial voltage / current sensor**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensorD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor

   Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor

Information
~~~~~~~~~~~

::

The relative sensor partial model relies on the
`TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
to measure the complex voltages, currents or power. Additionally this
model contains a proper icon and a definition of the angular velocity.

See also
^^^^^^^^

`AbsoluteSensor <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor>`_,
`SinglePhase.Interfaces.AbsoluteSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.AbsoluteSensor>`_,
`SinglePhase.Interfaces.RelativeSensor <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.RelativeSensor>`_

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device),
`TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| output `ComplexOutput <Modelica_ComplexBlocks_Interfaces.html#Modelica.ComplexBlocks.Interfaces.ComplexOutput>`_                                          | y[m]      |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model RelativeSensor "Partial voltage / current sensor"
      extends Modelica.Icons.RotationalSensor;
      extends TwoPlug;
      Modelica.ComplexBlocks.Interfaces.ComplexOutput y[m];
    end RelativeSensor;

--------------

|image22| `Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces>`_.Source
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial voltage / current source**

.. figure:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.SourceD.png
   :align: center
   :alt: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source

   Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source

Information
~~~~~~~~~~~

::

The source partial model relies on the
`TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
and contains a proper icon.

See also
^^^^^^^^

`VoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VoltageSource>`_,
`VariableVoltageSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableVoltageSource>`_,
`CurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.CurrentSource>`_,
`VariableCurrentSource <Modelica_Electrical_QuasiStationary_MultiPhase_Sources.html#Modelica.Electrical.QuasiStationary.MultiPhase.Sources.VariableCurrentSource>`_,
`SinglePhase.Interfaces.Source <Modelica_Electrical_QuasiStationary_SinglePhase_Interfaces.html#Modelica.Electrical.QuasiStationary.SinglePhase.Interfaces.Source>`_.

::

Extends from
`TwoPlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug>`_
(Two plugs with pin-adapter).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+--------------------+
| Type      | Name   | Default   | Description        |
+===========+========+===========+====================+
| Integer   | m      | 3         | Number of phases   |
+-----------+--------+-----------+--------------------+

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| Type                                                                                                                                                      | Name      | Description   |
+===========================================================================================================================================================+===========+===============+
| `PositivePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug>`_   | plug\_p   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+
| `NegativePlug <Modelica_Electrical_QuasiStationary_MultiPhase_Interfaces.html#Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug>`_   | plug\_n   |               |
+-----------------------------------------------------------------------------------------------------------------------------------------------------------+-----------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model Source "Partial voltage / current source"
      extends TwoPlug;
      constant Modelica.SIunits.Angle pi=Modelica.Constants.pi;
    end Source;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:29:44
2010.

.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Plug| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PlugS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlug| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlugS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlug| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlugS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlug| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.OnePort| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensor| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensorS.png
.. |Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.Source| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.SourceS.png
.. |image8| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PlugS.png
.. |image9| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlugS.png
.. |image10| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlugS.png
.. |image11| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugS.png
.. |image12| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugS.png
.. |image13| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensorS.png
.. |image14| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensorS.png
.. |image15| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.SourceS.png
.. |image16| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.PositivePlugI.png
.. |image17| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.NegativePlugI.png
.. |image18| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugI.png
.. |image19| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.TwoPlugI.png
.. |image20| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.AbsoluteSensorI.png
.. |image21| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.RelativeSensorI.png
.. |image22| image:: Modelica.Electrical.QuasiStationary.MultiPhase.Interfaces.SourceI.png
