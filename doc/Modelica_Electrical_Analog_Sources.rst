==================================
Modelica.Electrical.Analog.Sources
==================================

`Modelica.Electrical.Analog <Modelica_Electrical_Analog.html#Modelica.Electrical.Analog>`_.Sources
--------------------------------------------------------------------------------------------------

**Time-dependend and controlled voltage and current sources**

Information
~~~~~~~~~~~

::

This package contains time-dependend and controlled voltage and current
sources. Most of the sources use the behavior modeled in the
Modelica.Blocks.Sources package. All sources are ideal in the sense that
**no** internal resistances are included.

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| Name                                                                                                                                                                               | Description                                                       |
+====================================================================================================================================================================================+===================================================================+
| |image22| `SignalVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.SignalVoltage>`_                                                              | Generic voltage source using the input signal as source voltage   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image23| `ConstantVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.ConstantVoltage>`_                                                          | Source for constant voltage                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image24| `StepVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.StepVoltage>`_                                                                  | Step voltage source                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image25| `RampVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.RampVoltage>`_                                                                  | Ramp voltage source                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image26| `SineVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.SineVoltage>`_                                                                  | Sine voltage source                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image27| `ExpSineVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.ExpSineVoltage>`_                                                            | Exponentially damped sine voltage source                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image28| `ExponentialsVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.ExponentialsVoltage>`_                                                  | Rising and falling exponential voltage source                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image29| `PulseVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.PulseVoltage>`_                                                                | Pulse voltage source                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image30| `SawToothVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.SawToothVoltage>`_                                                          | Saw tooth voltage source                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image31| `TrapezoidVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.TrapezoidVoltage>`_                                                        | Trapezoidal voltage source                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image32| `TableVoltage <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.TableVoltage>`_                                                                | Voltage source by linear interpolation in a table                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image33| `SignalCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.SignalCurrent>`_                                                              | Generic current source using the input signal as source current   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image34| `ConstantCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.ConstantCurrent>`_                                                          | Source for constant current                                       |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image35| `StepCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.StepCurrent>`_                                                                  | Step current source                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image36| `RampCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.RampCurrent>`_                                                                  | Ramp current source                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image37| `SineCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.SineCurrent>`_                                                                  | Sine current source                                               |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image38| `ExpSineCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.ExpSineCurrent>`_                                                            | Exponentially damped sine current source                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image39| `ExponentialsCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.ExponentialsCurrent>`_                                                  | Rising and falling exponential current source                     |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image40| `PulseCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.PulseCurrent>`_                                                                | Pulse current source                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image41| `SawToothCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.SawToothCurrent>`_                                                          | Saw tooth current source                                          |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image42| `TrapezoidCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.TrapezoidCurrent>`_                                                        | Trapezoidal current source                                        |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+
| |image43| `TableCurrent <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources.TableCurrent>`_                                                                | Current source by linear interpolation in a table                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------------------------------------------------------------+

--------------

|image44| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.SignalVoltage
------------------------------------------------------------------------------------------------------------------------------------------

**Generic voltage source using the input signal as source voltage**

.. figure:: Modelica.Electrical.Analog.Sources.SignalVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.SignalVoltage

   Modelica.Electrical.Analog.Sources.SignalVoltage

Information
~~~~~~~~~~~

::

The signall voltage source is a parameterless converter of real valued
signals into a the source voltage. No further effects are modeled. The
real valued signal has to be provided by components of the blocks
library. It can be regarded as the "Opposite" of a voltage sensor.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                                 |
+=================================================================================================================+========+=============================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      |                                                             |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      |                                                             |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                       | v      | Voltage between pin p and n (= p.v - n.v) as input signal   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalVoltage 
      "Generic voltage source using the input signal as source voltage"

      Interfaces.PositivePin p;
      Interfaces.NegativePin n;
      Modelica.Blocks.Interfaces.RealInput v 
        "Voltage between pin p and n (= p.v - n.v) as input signal";
      SI.Current i "Current flowing from pin p to pin n";
    equation 
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
    end SignalVoltage;

--------------

|image45| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.ConstantVoltage
--------------------------------------------------------------------------------------------------------------------------------------------

**Source for constant voltage**

.. figure:: Modelica.Electrical.Analog.Sources.ConstantVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.ConstantVoltage

   Modelica.Electrical.Analog.Sources.ConstantVoltage

Information
~~~~~~~~~~~

::

The ConstantVoltage source is a simple source for an ideal constant
voltage which is provided by a parameter. There is no internal
resistance modeled. If it is used instead of a battery model it is not
very realistic: This battery will never be unloaded.

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                          | Name   | Default   | Description                     |
+===============================================================+========+===========+=================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V      |           | Value of constant voltage [V]   |
+---------------------------------------------------------------+--------+-----------+---------------------------------+

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

    model ConstantVoltage "Source for constant voltage"
      parameter SI.Voltage V(start=1) "Value of constant voltage";
      extends Interfaces.OnePort;

    equation 
      v = V;
    end ConstantVoltage;

--------------

|image46| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.StepVoltage
----------------------------------------------------------------------------------------------------------------------------------------

**Step voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.StepVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.StepVoltage

   Modelica.Electrical.Analog.Sources.StepVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+----------------------+
| Type                                                          | Name        | Default   | Description          |
+===============================================================+=============+===========+======================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V           |           | Height of step [V]   |
+---------------------------------------------------------------+-------------+-----------+----------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | offset      | 0         | Voltage offset [V]   |
+---------------------------------------------------------------+-------------+-----------+----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]      |
+---------------------------------------------------------------+-------------+-----------+----------------------+

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

    model StepVoltage "Step voltage source"
      parameter SI.Voltage V(start=1) "Height of step";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.Step
          signalSource(height=V));
    end StepVoltage;

--------------

|image47| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.RampVoltage
----------------------------------------------------------------------------------------------------------------------------------------

**Ramp voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.RampVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.RampVoltage

   Modelica.Electrical.Analog.Sources.RampVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+------------------------+
| Type                                                          | Name        | Default   | Description            |
+===============================================================+=============+===========+========================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V           |           | Height of ramp [V]     |
+---------------------------------------------------------------+-------------+-----------+------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | duration    |           | Duration of ramp [s]   |
+---------------------------------------------------------------+-------------+-----------+------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | offset      | 0         | Voltage offset [V]     |
+---------------------------------------------------------------+-------------+-----------+------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]        |
+---------------------------------------------------------------+-------------+-----------+------------------------+

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

    model RampVoltage "Ramp voltage source"
      parameter SI.Voltage V(start=1) "Height of ramp";
      parameter SI.Time duration(min=Modelica.Constants.small, start=2) 
        "Duration of ramp";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.Ramp
          signalSource( final height=
                   V, final duration=duration));
    end RampVoltage;

--------------

|image48| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.SineVoltage
----------------------------------------------------------------------------------------------------------------------------------------

**Sine voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.SineVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.SineVoltage

   Modelica.Electrical.Analog.Sources.SineVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| Type                                                              | Name        | Default   | Description                   |
+===================================================================+=============+===========+===============================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | V           |           | Amplitude of sine wave [V]    |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase       | 0         | Phase of sine wave [rad]      |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      |           | Frequency of sine wave [Hz]   |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | offset      | 0         | Voltage offset [V]            |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime   | 0         | Time offset [s]               |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+

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

    model SineVoltage "Sine voltage source"
      parameter SI.Voltage V(start=1) "Amplitude of sine wave";
      parameter SI.Angle phase=0 "Phase of sine wave";
      parameter SI.Frequency freqHz(start=1) "Frequency of sine wave";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.Sine
          signalSource(
          amplitude=V,
          freqHz=freqHz,
          phase=phase));

    end SineVoltage;

--------------

|image49| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.ExpSineVoltage
-------------------------------------------------------------------------------------------------------------------------------------------

**Exponentially damped sine voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.ExpSineVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.ExpSineVoltage

   Modelica.Electrical.Analog.Sources.ExpSineVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| Type                                                              | Name        | Default   | Description                              |
+===================================================================+=============+===========+==========================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | V           |           | Amplitude of sine wave [V]               |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      |           | Frequency of sine wave [Hz]              |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase       | 0         | Phase of sine wave [rad]                 |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Damping <Modelica_SIunits.html#Modelica.SIunits.Damping>`_       | damping     |           | Damping coefficient of sine wave [s-1]   |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_       | offset      | 0         | Voltage offset [V]                       |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime   | 0         | Time offset [s]                          |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+

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

    model ExpSineVoltage "Exponentially damped sine voltage source"
      parameter SI.Voltage V(start=1) "Amplitude of sine wave";
      parameter SI.Frequency freqHz(start=2) "Frequency of sine wave";
      parameter SI.Angle phase=0 "Phase of sine wave";
      parameter SI.Damping damping(start=1) "Damping coefficient of sine wave";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.ExpSine
          signalSource(
          amplitude=V,
          freqHz=freqHz,
          phase=phase,
          damping=damping));
    end ExpSineVoltage;

--------------

|image50| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.ExponentialsVoltage
------------------------------------------------------------------------------------------------------------------------------------------------

**Rising and falling exponential voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.ExponentialsVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.ExponentialsVoltage

   Modelica.Electrical.Analog.Sources.ExponentialsVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| Type                                                          | Name            | Default   | Description                   |
+===============================================================+=================+===========+===============================+
| Real                                                          | vMax            |           | Upper bound for rising edge   |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | riseTime        |           | Rise time [s]                 |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | riseTimeConst   |           | Rise time constant [s]        |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | fallTimeConst   |           | Fall time constant [s]        |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | offset          | 0         | Voltage offset [V]            |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime       | 0         | Time offset [s]               |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+

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

    model ExponentialsVoltage 
      "Rising and falling exponential voltage source"
      parameter Real vMax(start=1) "Upper bound for rising edge";
      parameter SI.Time riseTime(min=0, start=0.5) "Rise time";
      parameter SI.Time riseTimeConst(min=Modelica.Constants.small, start=0.1) 
        "Rise time constant";
      parameter SI.Time fallTimeConst(min=Modelica.Constants.small, start=riseTimeConst) 
        "Fall time constant";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.Exponentials
                                               signalSource(
          outMax=vMax,
          riseTime=riseTime,
          riseTimeConst=riseTimeConst,
          fallTimeConst=fallTimeConst));
    end ExponentialsVoltage;

--------------

|image51| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.PulseVoltage
-----------------------------------------------------------------------------------------------------------------------------------------

**Pulse voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.PulseVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.PulseVoltage

   Modelica.Electrical.Analog.Sources.PulseVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| Type                                                          | Name        | Default   | Description                     |
+===============================================================+=============+===========+=================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V           |           | Amplitude of pulse [V]          |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| Real                                                          | width       |           | Width of pulse in % of period   |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | period      |           | Time for one period [s]         |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | offset      | 0         | Voltage offset [V]              |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]                 |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+

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

    model PulseVoltage "Pulse voltage source"
      parameter SI.Voltage V(start=1) "Amplitude of pulse";
      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100, start=50) "Width of pulse in % of period";
      parameter SI.Time period(final min=Modelica.Constants.small, start=1) 
        "Time for one period";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.Pulse
          signalSource(
          amplitude=V,
          width=width,
          period=period));
    end PulseVoltage;

--------------

|image52| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.SawToothVoltage
--------------------------------------------------------------------------------------------------------------------------------------------

**Saw tooth voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.SawToothVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.SawToothVoltage

   Modelica.Electrical.Analog.Sources.SawToothVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+------------------------------+
| Type                                                          | Name        | Default   | Description                  |
+===============================================================+=============+===========+==============================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V           |           | Amplitude of saw tooth [V]   |
+---------------------------------------------------------------+-------------+-----------+------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | period      |           | Time for one period [s]      |
+---------------------------------------------------------------+-------------+-----------+------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | offset      | 0         | Voltage offset [V]           |
+---------------------------------------------------------------+-------------+-----------+------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]              |
+---------------------------------------------------------------+-------------+-----------+------------------------------+

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

    model SawToothVoltage "Saw tooth voltage source"
      parameter SI.Voltage V(start=1) "Amplitude of saw tooth";
      parameter SI.Time period(start=1) "Time for one period";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.SawTooth
          signalSource(
            amplitude=V, period=period));
    end SawToothVoltage;

--------------

|image53| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.TrapezoidVoltage
---------------------------------------------------------------------------------------------------------------------------------------------

**Trapezoidal voltage source**

.. figure:: Modelica.Electrical.Analog.Sources.TrapezoidVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.TrapezoidVoltage

   Modelica.Electrical.Analog.Sources.TrapezoidVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Type                                                          | Name        | Default   | Description                                                |
+===============================================================+=============+===========+============================================================+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | V           |           | Amplitude of trapezoid [V]                                 |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | rising      |           | Rising duration of trapezoid [s]                           |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | width       |           | Width duration of trapezoid [s]                            |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | falling     |           | Falling duration of trapezoid [s]                          |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | period      |           | Time for one period [s]                                    |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Integer                                                       | nperiod     |           | Number of periods (< 0 means infinite number of periods)   |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | offset      | 0         | Voltage offset [V]                                         |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]                                            |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+

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

    model TrapezoidVoltage "Trapezoidal voltage source"
      parameter SI.Voltage V(start=1) "Amplitude of trapezoid";
      parameter SI.Time rising(final min=0, start=0) "Rising duration of trapezoid";
      parameter SI.Time width(final min=0, start=0.5) "Width duration of trapezoid";
      parameter SI.Time falling(final min=0, start=0) 
        "Falling duration of trapezoid";
      parameter SI.Time period(final min=Modelica.Constants.small, start=1) 
        "Time for one period";
      parameter Integer nperiod(start=-1) 
        "Number of periods (< 0 means infinite number of periods)";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.Trapezoid
                                            signalSource(
          amplitude=V,
          rising=rising,
          width=width,
          falling=falling,
          period=period,
          nperiod=nperiod));
    end TrapezoidVoltage;

--------------

|image54| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.TableVoltage
-----------------------------------------------------------------------------------------------------------------------------------------

**Voltage source by linear interpolation in a table**

.. figure:: Modelica.Electrical.Analog.Sources.TableVoltageD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.TableVoltage

   Modelica.Electrical.Analog.Sources.TableVoltage

Information
~~~~~~~~~~~

::

This voltage source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Furthermore, an offset parameter is
introduced, which is added to the value calculated by the blocks source.
The startTime parameter allows to shift the blocks source behavior on
the time axis.

This block generates a voltage source by **linear interpolation** in a
table. The time points and voltage values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the second column contains the voltage to be interpolated.
The table interpolation has the following proporties:

-  The time points need to be **monotonically increasing**.
-  **Discontinuities** are allowed, by providing the same time point
   twice in the table.
-  Values **outside** of the table range, are computed by
   **extrapolation** through the last or first two points of the table.
-  If the table has only **one row**, no interpolation is performed and
   the voltage value is just returned independantly of the actual time
   instant, i.e., this is a constant voltage source.
-  Via parameters **startTime** and **offset** the curve defined by the
   table can be shifted both in time and in the voltage.
-  The table is implemented in a numerically sound way by generating
   **time events** at interval boundaries, in order to not integrate
   over a discontinuous or not differentiable points.

Example:

::

       table = [0  0
                1  0
                1  1
                2  4
                3  9
                4 16]
    If, e.g., time = 1.0, the voltage v =  0.0 (before event), 1.0 (after event)
        e.g., time = 1.5, the voltage v =  2.5,
        e.g., time = 2.0, the voltage v =  4.0,
        e.g., time = 5.0, the voltage v = 23.0 (i.e., extrapolation). 

 Furthermore, an offset parameter is introduced, which is added to the
value calculated by the blocks source. The startTime parameter allows to
shift the blocks source behavior on the time axis.

::

Extends from
`Interfaces.VoltageSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.VoltageSource>`_
(Interface for voltage sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+
| Type                                                          | Name          | Default              | Description                                                   |
+===============================================================+===============+======================+===============================================================+
| Real                                                          | table[:, :]   | [0, 0; 1, 1; 2, 4]   | Table matrix (time = first column, voltage = second column)   |
+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+
| `Voltage <Modelica_SIunits.html#Modelica.SIunits.Voltage>`_   | offset        | 0                    | Voltage offset [V]                                            |
+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime     | 0                    | Time offset [s]                                               |
+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+

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

    model TableVoltage 
      "Voltage source by linear interpolation in a table"
      parameter Real table[:, :]=[0, 0; 1, 1; 2, 4] 
        "Table matrix (time = first column, voltage = second column)";
      extends Interfaces.VoltageSource(redeclare Modelica.Blocks.Sources.TimeTable
                                            signalSource(                                       table=
             table));
    end TableVoltage;

--------------

|image55| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.SignalCurrent
------------------------------------------------------------------------------------------------------------------------------------------

**Generic current source using the input signal as source current**

.. figure:: Modelica.Electrical.Analog.Sources.SignalCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.SignalCurrent

   Modelica.Electrical.Analog.Sources.SignalCurrent

Information
~~~~~~~~~~~

::

The signall current source is a parameterless converter of real valued
signals into a the source currrent. No further effects are modeled. The
real valued signal has to be provided by components of the blocks
library. It can be regarded as the "Opposite" of a current sensor.

::

Connectors
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------+
| Type                                                                                                            | Name   | Description                                           |
+=================================================================================================================+========+=======================================================+
| `PositivePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.PositivePin>`_   | p      |                                                       |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------+
| `NegativePin <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.NegativePin>`_   | n      |                                                       |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                       | i      | Current flowing from pin p to pin n as input signal   |
+-----------------------------------------------------------------------------------------------------------------+--------+-------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model SignalCurrent 
      "Generic current source using the input signal as source current"

      Interfaces.PositivePin p;
      Interfaces.NegativePin n;
      SI.Voltage v "Voltage drop between the two pins (= p.v - n.v)";
      Modelica.Blocks.Interfaces.RealInput i 
        "Current flowing from pin p to pin n as input signal";
    equation 
      v = p.v - n.v;
      0 = p.i + n.i;
      i = p.i;
    end SignalCurrent;

--------------

|image56| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.ConstantCurrent
--------------------------------------------------------------------------------------------------------------------------------------------

**Source for constant current**

.. figure:: Modelica.Electrical.Analog.Sources.ConstantCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.ConstantCurrent

   Modelica.Electrical.Analog.Sources.ConstantCurrent

Information
~~~~~~~~~~~

::

The ConstantCurrrent source is a simple source for an ideal constant
current which is provided by a parameter. There is no internal
resistance modeled. No further effects are modeled. Especially, th
currend flow will never end.

::

Extends from
`Interfaces.OnePort <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.OnePort>`_
(Component with two electrical pins p and n and current i from p to n).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+--------+-----------+---------------------------------+
| Type                                                          | Name   | Default   | Description                     |
+===============================================================+========+===========+=================================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | I      |           | Value of constant current [A]   |
+---------------------------------------------------------------+--------+-----------+---------------------------------+

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

    model ConstantCurrent "Source for constant current"
      parameter SI.Current I(start=1) "Value of constant current";
      extends Interfaces.OnePort;
    equation 
      i = I;
    end ConstantCurrent;

--------------

|image57| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.StepCurrent
----------------------------------------------------------------------------------------------------------------------------------------

**Step current source**

.. figure:: Modelica.Electrical.Analog.Sources.StepCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.StepCurrent

   Modelica.Electrical.Analog.Sources.StepCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+----------------------+
| Type                                                          | Name        | Default   | Description          |
+===============================================================+=============+===========+======================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | I           |           | Height of step [A]   |
+---------------------------------------------------------------+-------------+-----------+----------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | offset      | 0         | Current offset [A]   |
+---------------------------------------------------------------+-------------+-----------+----------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]      |
+---------------------------------------------------------------+-------------+-----------+----------------------+

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

    model StepCurrent "Step current source"
      parameter SI.Current I(start=1) "Height of step";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.Step
          signalSource( height=I));
    end StepCurrent;

--------------

|image58| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.RampCurrent
----------------------------------------------------------------------------------------------------------------------------------------

**Ramp current source**

.. figure:: Modelica.Electrical.Analog.Sources.RampCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.RampCurrent

   Modelica.Electrical.Analog.Sources.RampCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+------------------------+
| Type                                                          | Name        | Default   | Description            |
+===============================================================+=============+===========+========================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | I           |           | Height of ramp [A]     |
+---------------------------------------------------------------+-------------+-----------+------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | duration    |           | Duration of ramp [s]   |
+---------------------------------------------------------------+-------------+-----------+------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | offset      | 0         | Current offset [A]     |
+---------------------------------------------------------------+-------------+-----------+------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]        |
+---------------------------------------------------------------+-------------+-----------+------------------------+

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

    model RampCurrent "Ramp current source"
      parameter SI.Current I(start=1) "Height of ramp";
      parameter SI.Time duration(min=Modelica.Constants.small, start=2) 
        "Duration of ramp";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.Ramp
          signalSource(final height=I, final duration=duration));
    end RampCurrent;

--------------

|image59| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.SineCurrent
----------------------------------------------------------------------------------------------------------------------------------------

**Sine current source**

.. figure:: Modelica.Electrical.Analog.Sources.SineCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.SineCurrent

   Modelica.Electrical.Analog.Sources.SineCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| Type                                                              | Name        | Default   | Description                   |
+===================================================================+=============+===========+===============================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_       | I           |           | Amplitude of sine wave [A]    |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase       | 0         | Phase of sine wave [rad]      |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      |           | Frequency of sine wave [Hz]   |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_       | offset      | 0         | Current offset [A]            |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime   | 0         | Time offset [s]               |
+-------------------------------------------------------------------+-------------+-----------+-------------------------------+

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

    model SineCurrent "Sine current source"
      parameter SI.Current I(start=1) "Amplitude of sine wave";
      parameter SI.Angle phase=0 "Phase of sine wave";
      parameter SI.Frequency freqHz(start=1) "Frequency of sine wave";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.Sine
          signalSource(
          amplitude=I,
          freqHz=freqHz,
          phase=phase));

    end SineCurrent;

--------------

|image60| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.ExpSineCurrent
-------------------------------------------------------------------------------------------------------------------------------------------

**Exponentially damped sine current source**

.. figure:: Modelica.Electrical.Analog.Sources.ExpSineCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.ExpSineCurrent

   Modelica.Electrical.Analog.Sources.ExpSineCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| Type                                                              | Name        | Default   | Description                              |
+===================================================================+=============+===========+==========================================+
| Real                                                              | I           |           | Amplitude of sine wave                   |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      |           | Frequency of sine wave [Hz]              |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase       | 0         | Phase of sine wave [rad]                 |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Damping <Modelica_SIunits.html#Modelica.SIunits.Damping>`_       | damping     |           | Damping coefficient of sine wave [s-1]   |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_       | offset      | 0         | Current offset [A]                       |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime   | 0         | Time offset [s]                          |
+-------------------------------------------------------------------+-------------+-----------+------------------------------------------+

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

    model ExpSineCurrent "Exponentially damped sine current source"
      parameter Real I(start=1) "Amplitude of sine wave";
      parameter SI.Frequency freqHz(start=2) "Frequency of sine wave";
      parameter SI.Angle phase=0 "Phase of sine wave";
      parameter SI.Damping damping(start=1) "Damping coefficient of sine wave";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.ExpSine
          signalSource(
          amplitude=I,
          freqHz=freqHz,
          phase=phase,
          damping=damping));
    end ExpSineCurrent;

--------------

|image61| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.ExponentialsCurrent
------------------------------------------------------------------------------------------------------------------------------------------------

**Rising and falling exponential current source**

.. figure:: Modelica.Electrical.Analog.Sources.ExponentialsCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.ExponentialsCurrent

   Modelica.Electrical.Analog.Sources.ExponentialsCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| Type                                                          | Name            | Default   | Description                   |
+===============================================================+=================+===========+===============================+
| Real                                                          | iMax            |           | Upper bound for rising edge   |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | riseTime        |           | Rise time [s]                 |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | riseTimeConst   |           | Rise time constant [s]        |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | fallTimeConst   |           | Fall time constant [s]        |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | offset          | 0         | Current offset [A]            |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime       | 0         | Time offset [s]               |
+---------------------------------------------------------------+-----------------+-----------+-------------------------------+

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

    model ExponentialsCurrent 
      "Rising and falling exponential current source"
      parameter Real iMax(start=1) "Upper bound for rising edge";
      parameter SI.Time riseTime(min=0, start=0.5) "Rise time";
      parameter SI.Time riseTimeConst(min=Modelica.Constants.small, start=0.1) 
        "Rise time constant";
      parameter SI.Time fallTimeConst(min=Modelica.Constants.small, start=riseTimeConst) 
        "Fall time constant";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.Exponentials
                                               signalSource(
          outMax=iMax,
          riseTime=riseTime,
          riseTimeConst=riseTimeConst,
          fallTimeConst=fallTimeConst));
    end ExponentialsCurrent;

--------------

|image62| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.PulseCurrent
-----------------------------------------------------------------------------------------------------------------------------------------

**Pulse current source**

.. figure:: Modelica.Electrical.Analog.Sources.PulseCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.PulseCurrent

   Modelica.Electrical.Analog.Sources.PulseCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| Type                                                          | Name        | Default   | Description                     |
+===============================================================+=============+===========+=================================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | I           |           | Amplitude of pulse [A]          |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| Real                                                          | width       |           | Width of pulse in % of period   |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | period      |           | Time for one period [s]         |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | offset      | 0         | Current offset [A]              |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]                 |
+---------------------------------------------------------------+-------------+-----------+---------------------------------+

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

    model PulseCurrent "Pulse current source"
      parameter SI.Current I(start=1) "Amplitude of pulse";
      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100, start=50) "Width of pulse in % of period";
      parameter SI.Time period(final min=Modelica.Constants.small, start=1) 
        "Time for one period";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.Pulse
          signalSource(
          amplitude=I,
          width=width,
          period=period));
    end PulseCurrent;

--------------

|image63| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.SawToothCurrent
--------------------------------------------------------------------------------------------------------------------------------------------

**Saw tooth current source**

.. figure:: Modelica.Electrical.Analog.Sources.SawToothCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.SawToothCurrent

   Modelica.Electrical.Analog.Sources.SawToothCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+------------------------------+
| Type                                                          | Name        | Default   | Description                  |
+===============================================================+=============+===========+==============================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | I           |           | Amplitude of saw tooth [A]   |
+---------------------------------------------------------------+-------------+-----------+------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | period      |           | Time for one period [s]      |
+---------------------------------------------------------------+-------------+-----------+------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | offset      | 0         | Current offset [A]           |
+---------------------------------------------------------------+-------------+-----------+------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]              |
+---------------------------------------------------------------+-------------+-----------+------------------------------+

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

    model SawToothCurrent "Saw tooth current source"
      parameter SI.Current I(start=1) "Amplitude of saw tooth";
      parameter SI.Time period(start=1) "Time for one period";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.SawTooth
          signalSource(
            amplitude=I, period=period));
    end SawToothCurrent;

--------------

|image64| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.TrapezoidCurrent
---------------------------------------------------------------------------------------------------------------------------------------------

**Trapezoidal current source**

.. figure:: Modelica.Electrical.Analog.Sources.TrapezoidCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.TrapezoidCurrent

   Modelica.Electrical.Analog.Sources.TrapezoidCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Care for the meaning of the parameters
in the Blocks package. Furthermore, an offset parameter is introduced,
which is added to the value calculated by the blocks source. The
startTime parameter allows to shift the blocks source behavior on the
time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Type                                                          | Name        | Default   | Description                                                |
+===============================================================+=============+===========+============================================================+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | I           |           | Amplitude of trapezoid [A]                                 |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | rising      |           | Rising duration of trapezoid [s]                           |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | width       |           | Width duration of trapezoid [s]                            |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | falling     |           | Falling duration of trapezoid [s]                          |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | period      |           | Time for one period [s]                                    |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Integer                                                       | nperiod     |           | Number of periods (< 0 means infinite number of periods)   |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | offset      | 0         | Current offset [A]                                         |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime   | 0         | Time offset [s]                                            |
+---------------------------------------------------------------+-------------+-----------+------------------------------------------------------------+

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

    model TrapezoidCurrent "Trapezoidal current source"
      parameter SI.Current I(start=1) "Amplitude of trapezoid";
      parameter SI.Time rising(final min=0, start=0) "Rising duration of trapezoid";
      parameter SI.Time width(final min=0, start=0.5) "Width duration of trapezoid";
      parameter SI.Time falling(final min=0, start=0) 
        "Falling duration of trapezoid";
      parameter SI.Time period(final min=Modelica.Constants.small, start=1) 
        "Time for one period";
      parameter Integer nperiod(start=-1) 
        "Number of periods (< 0 means infinite number of periods)";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.Trapezoid
                                            signalSource(
          amplitude=I,
          rising=rising,
          width=width,
          falling=falling,
          period=period,
          nperiod=nperiod));
    end TrapezoidCurrent;

--------------

|image65| `Modelica.Electrical.Analog.Sources <Modelica_Electrical_Analog_Sources.html#Modelica.Electrical.Analog.Sources>`_.TableCurrent
-----------------------------------------------------------------------------------------------------------------------------------------

**Current source by linear interpolation in a table**

.. figure:: Modelica.Electrical.Analog.Sources.TableCurrentD.png
   :align: center
   :alt: Modelica.Electrical.Analog.Sources.TableCurrent

   Modelica.Electrical.Analog.Sources.TableCurrent

Information
~~~~~~~~~~~

::

This current source uses the coresponding signal source of the
Modelica.Blocks.Sources package. Furthermore, an offset parameter is
introduced, which is added to the value calculated by the blocks source.
The startTime parameter allows to shift the blocks source behavior on
the time axis.

This block generates a current source by **linear interpolation** in a
table. The time points and current values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the second column contains the current to be interpolated.
The table interpolation has the following proporties:

-  The time points need to be **monotonically increasing**.
-  **Discontinuities** are allowed, by providing the same time point
   twice in the table.
-  Values **outside** of the table range, are computed by
   **extrapolation** through the last or first two points of the table.
-  If the table has only **one row**, no interpolation is performed and
   the current value is just returned independantly of the actual time
   instant, i.e., this is a constant current source.
-  Via parameters **startTime** and **offset** the curve defined by the
   table can be shifted both in time and in the current.
-  The table is implemented in a numerically sound way by generating
   **time events** at interval boundaries, in order to not integrate
   over a discontinuous or not differentiable points.

Example:

::

       table = [0  0
                1  0
                1  1
                2  4
                3  9
                4 16]
    If, e.g., time = 1.0, the current i =  0.0 (before event), 1.0 (after event)
        e.g., time = 1.5, the current i =  2.5,
        e.g., time = 2.0, the current i =  4.0,
        e.g., time = 5.0, the current i = 23.0 (i.e., extrapolation). 

 Furthermore, an offset parameter is introduced, which is added to the
value calculated by the blocks source. The startTime parameter allows to
shift the blocks source behavior on the time axis.

::

Extends from
`Interfaces.CurrentSource <Modelica_Electrical_Analog_Interfaces.html#Modelica.Electrical.Analog.Interfaces.CurrentSource>`_
(Interface for current sources).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+
| Type                                                          | Name          | Default              | Description                                                   |
+===============================================================+===============+======================+===============================================================+
| Real                                                          | table[:, :]   | [0, 0; 1, 1; 2, 4]   | Table matrix (time = first column, current = second column)   |
+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+
| `Current <Modelica_SIunits.html#Modelica.SIunits.Current>`_   | offset        | 0                    | Current offset [A]                                            |
+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_         | startTime     | 0                    | Time offset [s]                                               |
+---------------------------------------------------------------+---------------+----------------------+---------------------------------------------------------------+

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

    model TableCurrent 
      "Current source by linear interpolation in a table"
      parameter Real table[:, :]=[0, 0; 1, 1; 2, 4] 
        "Table matrix (time = first column, current = second column)";
      extends Interfaces.CurrentSource(redeclare Modelica.Blocks.Sources.TimeTable
                                            signalSource(
                       table = table));
    end TableCurrent;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:28:19
2010.

.. |Modelica.Electrical.Analog.Sources.SignalVoltage| image:: Modelica.Electrical.Analog.Sources.SignalVoltageS.png
.. |Modelica.Electrical.Analog.Sources.ConstantVoltage| image:: Modelica.Electrical.Analog.Sources.ConstantVoltageS.png
.. |Modelica.Electrical.Analog.Sources.StepVoltage| image:: Modelica.Electrical.Analog.Sources.StepVoltageS.png
.. |Modelica.Electrical.Analog.Sources.RampVoltage| image:: Modelica.Electrical.Analog.Sources.RampVoltageS.png
.. |Modelica.Electrical.Analog.Sources.SineVoltage| image:: Modelica.Electrical.Analog.Sources.SineVoltageS.png
.. |Modelica.Electrical.Analog.Sources.ExpSineVoltage| image:: Modelica.Electrical.Analog.Sources.ExpSineVoltageS.png
.. |Modelica.Electrical.Analog.Sources.ExponentialsVoltage| image:: Modelica.Electrical.Analog.Sources.ExponentialsVoltageS.png
.. |Modelica.Electrical.Analog.Sources.PulseVoltage| image:: Modelica.Electrical.Analog.Sources.PulseVoltageS.png
.. |Modelica.Electrical.Analog.Sources.SawToothVoltage| image:: Modelica.Electrical.Analog.Sources.SawToothVoltageS.png
.. |Modelica.Electrical.Analog.Sources.TrapezoidVoltage| image:: Modelica.Electrical.Analog.Sources.TrapezoidVoltageS.png
.. |Modelica.Electrical.Analog.Sources.TableVoltage| image:: Modelica.Electrical.Analog.Sources.TableVoltageS.png
.. |Modelica.Electrical.Analog.Sources.SignalCurrent| image:: Modelica.Electrical.Analog.Sources.SignalCurrentS.png
.. |Modelica.Electrical.Analog.Sources.ConstantCurrent| image:: Modelica.Electrical.Analog.Sources.ConstantCurrentS.png
.. |Modelica.Electrical.Analog.Sources.StepCurrent| image:: Modelica.Electrical.Analog.Sources.StepCurrentS.png
.. |Modelica.Electrical.Analog.Sources.RampCurrent| image:: Modelica.Electrical.Analog.Sources.RampCurrentS.png
.. |Modelica.Electrical.Analog.Sources.SineCurrent| image:: Modelica.Electrical.Analog.Sources.SineCurrentS.png
.. |Modelica.Electrical.Analog.Sources.ExpSineCurrent| image:: Modelica.Electrical.Analog.Sources.ExpSineCurrentS.png
.. |Modelica.Electrical.Analog.Sources.ExponentialsCurrent| image:: Modelica.Electrical.Analog.Sources.ExponentialsCurrentS.png
.. |Modelica.Electrical.Analog.Sources.PulseCurrent| image:: Modelica.Electrical.Analog.Sources.PulseCurrentS.png
.. |Modelica.Electrical.Analog.Sources.SawToothCurrent| image:: Modelica.Electrical.Analog.Sources.SawToothCurrentS.png
.. |Modelica.Electrical.Analog.Sources.TrapezoidCurrent| image:: Modelica.Electrical.Analog.Sources.TrapezoidCurrentS.png
.. |Modelica.Electrical.Analog.Sources.TableCurrent| image:: Modelica.Electrical.Analog.Sources.TableCurrentS.png
.. |image22| image:: Modelica.Electrical.Analog.Sources.SignalVoltageS.png
.. |image23| image:: Modelica.Electrical.Analog.Sources.ConstantVoltageS.png
.. |image24| image:: Modelica.Electrical.Analog.Sources.StepVoltageS.png
.. |image25| image:: Modelica.Electrical.Analog.Sources.RampVoltageS.png
.. |image26| image:: Modelica.Electrical.Analog.Sources.SineVoltageS.png
.. |image27| image:: Modelica.Electrical.Analog.Sources.ExpSineVoltageS.png
.. |image28| image:: Modelica.Electrical.Analog.Sources.ExponentialsVoltageS.png
.. |image29| image:: Modelica.Electrical.Analog.Sources.PulseVoltageS.png
.. |image30| image:: Modelica.Electrical.Analog.Sources.SawToothVoltageS.png
.. |image31| image:: Modelica.Electrical.Analog.Sources.TrapezoidVoltageS.png
.. |image32| image:: Modelica.Electrical.Analog.Sources.TableVoltageS.png
.. |image33| image:: Modelica.Electrical.Analog.Sources.SignalCurrentS.png
.. |image34| image:: Modelica.Electrical.Analog.Sources.ConstantCurrentS.png
.. |image35| image:: Modelica.Electrical.Analog.Sources.StepCurrentS.png
.. |image36| image:: Modelica.Electrical.Analog.Sources.RampCurrentS.png
.. |image37| image:: Modelica.Electrical.Analog.Sources.SineCurrentS.png
.. |image38| image:: Modelica.Electrical.Analog.Sources.ExpSineCurrentS.png
.. |image39| image:: Modelica.Electrical.Analog.Sources.ExponentialsCurrentS.png
.. |image40| image:: Modelica.Electrical.Analog.Sources.PulseCurrentS.png
.. |image41| image:: Modelica.Electrical.Analog.Sources.SawToothCurrentS.png
.. |image42| image:: Modelica.Electrical.Analog.Sources.TrapezoidCurrentS.png
.. |image43| image:: Modelica.Electrical.Analog.Sources.TableCurrentS.png
.. |image44| image:: Modelica.Electrical.Analog.Sources.SignalVoltageI.png
.. |image45| image:: Modelica.Electrical.Analog.Sources.ConstantVoltageI.png
.. |image46| image:: Modelica.Electrical.Analog.Sources.StepVoltageI.png
.. |image47| image:: Modelica.Electrical.Analog.Sources.RampVoltageI.png
.. |image48| image:: Modelica.Electrical.Analog.Sources.SineVoltageI.png
.. |image49| image:: Modelica.Electrical.Analog.Sources.ExpSineVoltageI.png
.. |image50| image:: Modelica.Electrical.Analog.Sources.ExponentialsVoltageI.png
.. |image51| image:: Modelica.Electrical.Analog.Sources.PulseVoltageI.png
.. |image52| image:: Modelica.Electrical.Analog.Sources.SawToothVoltageI.png
.. |image53| image:: Modelica.Electrical.Analog.Sources.TrapezoidVoltageI.png
.. |image54| image:: Modelica.Electrical.Analog.Sources.TableVoltageI.png
.. |image55| image:: Modelica.Electrical.Analog.Sources.SignalCurrentI.png
.. |image56| image:: Modelica.Electrical.Analog.Sources.ConstantCurrentI.png
.. |image57| image:: Modelica.Electrical.Analog.Sources.StepCurrentI.png
.. |image58| image:: Modelica.Electrical.Analog.Sources.RampCurrentI.png
.. |image59| image:: Modelica.Electrical.Analog.Sources.SineCurrentI.png
.. |image60| image:: Modelica.Electrical.Analog.Sources.ExpSineCurrentI.png
.. |image61| image:: Modelica.Electrical.Analog.Sources.ExponentialsCurrentI.png
.. |image62| image:: Modelica.Electrical.Analog.Sources.PulseCurrentI.png
.. |image63| image:: Modelica.Electrical.Analog.Sources.SawToothCurrentI.png
.. |image64| image:: Modelica.Electrical.Analog.Sources.TrapezoidCurrentI.png
.. |image65| image:: Modelica.Electrical.Analog.Sources.TableCurrentI.png
