=======================
Modelica.Blocks.Sources
=======================

`Modelica.Blocks <Modelica_Blocks.html#Modelica.Blocks>`_.Sources
-----------------------------------------------------------------

**Library of signal source blocks generating Real and Boolean signals**

Information
~~~~~~~~~~~

::

This package contains **source** components, i.e., blocks which have
only output signals. These blocks are used as signal generators for
Real, Integer and Boolean signals.

All Real source signals (with the exception of the Constant source) have
at least the following two parameters:

+-----------------+------------------------------------------------------------------------------+
| **offset**      | Value which is added to the signal                                           |
+-----------------+------------------------------------------------------------------------------+
| **startTime**   | Start time of signal. For time < startTime, the output y is set to offset.   |
+-----------------+------------------------------------------------------------------------------+

The **offset** parameter is especially useful in order to shift the
corresponding source, such that at initial time the system is
stationary. To determine the corresponding value of offset, usually
requires a trimming calculation.

::

Extends from
`Modelica.Icons.SourcesPackage <Modelica_Icons_SourcesPackage.html#Modelica.Icons.SourcesPackage>`_
(Icon for packages containing sources).

Package Content
~~~~~~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                        | Description                                                                                                                            |
+=============================================================================================================================================+========================================================================================================================================+
| |image26| `RealExpression <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.RealExpression>`_                                           | Set output signal to a time varying Real expression                                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image27| `IntegerExpression <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.IntegerExpression>`_                                     | Set output signal to a time varying Integer expression                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image28| `BooleanExpression <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.BooleanExpression>`_                                     | Set output signal to a time varying Boolean expression                                                                                 |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image29| `Clock <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Clock>`_                                                             | Generate actual time signal                                                                                                            |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image30| `Constant <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Constant>`_                                                       | Generate constant signal of type Real                                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image31| `Step <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Step>`_                                                               | Generate step signal of type Real                                                                                                      |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image32| `Ramp <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Ramp>`_                                                               | Generate ramp signal                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image33| `Sine <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Sine>`_                                                               | Generate sine signal                                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image34| `ExpSine <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.ExpSine>`_                                                         | Generate exponentially damped sine signal                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image35| `Exponentials <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Exponentials>`_                                               | Generate a rising and falling exponential signal                                                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image36| `Pulse <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Pulse>`_                                                             | Generate pulse signal of type Real                                                                                                     |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image37| `SawTooth <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.SawTooth>`_                                                       | Generate saw tooth signal                                                                                                              |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image38| `Trapezoid <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.Trapezoid>`_                                                     | Generate trapezoidal signal of type Real                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image39| `KinematicPTP <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.KinematicPTP>`_                                               | Move as fast as possible along a distance within given kinematic constraints                                                           |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image40| `KinematicPTP2 <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.KinematicPTP2>`_                                             | Move as fast as possible from start to end position within given kinematic constraints with output signals q, qd=der(q), qdd=der(qd)   |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image41| `TimeTable <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.TimeTable>`_                                                     | Generate a (possibly discontinuous) signal by linear interpolation in a table                                                          |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image42| `CombiTimeTable <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.CombiTimeTable>`_                                           | Table look-up with respect to time and linear/perodic extrapolation methods (data from matrix/file)                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image43| `BooleanConstant <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.BooleanConstant>`_                                         | Generate constant signal of type Boolean                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image44| `BooleanStep <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.BooleanStep>`_                                                 | Generate step signal of type Boolean                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image45| `BooleanPulse <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.BooleanPulse>`_                                               | Generate pulse signal of type Boolean                                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image46| `SampleTrigger <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.SampleTrigger>`_                                             | Generate sample trigger signal                                                                                                         |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image47| `BooleanTable <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.BooleanTable>`_                                               | Generate a Boolean output signal based on a vector of time instants                                                                    |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image48| `RadioButtonSource <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.RadioButtonSource>`_                                     | Boolean signal source that mimis a radio button                                                                                        |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image49| `IntegerConstant <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.IntegerConstant>`_                                         | Generate constant signal of type Integer                                                                                               |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image50| `IntegerStep <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.IntegerStep>`_                                                 | Generate step signal of type Integer                                                                                                   |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+
| |image51| `IntegerTable <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.IntegerTable>`_                                               | Generate an Integer output signal based on a table matrix with [time, yi] values                                                       |
+---------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image52| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.RealExpression
----------------------------------------------------------------------------------------------------------

**Set output signal to a time varying Real expression**

.. figure:: Modelica.Blocks.Sources.RealExpressionD.png
   :align: center
   :alt: Modelica.Blocks.Sources.RealExpression

   Modelica.Blocks.Sources.RealExpression

Information
~~~~~~~~~~~

::

The (time varying) Real output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Real expressions in a block diagram. For example, in
the y-menu the definition "if time < 1 then 0 else 1" can be given in
order to define that the output signal is one, if time ≥ 1 and otherwise
it is zero. Note, that "time" is a built-in variable that is always
accessible and represents the "model time" and that Variable **y** is
both a variable and a connector.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------+--------+-----------+------------------------+
| Type                                                                                    | Name   | Default   | Description            |
+=========================================================================================+========+===========+========================+
| Time varying output signal                                                              |
+-----------------------------------------------------------------------------------------+--------+-----------+------------------------+
| `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | 0.0       | Value of Real output   |
+-----------------------------------------------------------------------------------------+--------+-----------+------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+------------------------+
| Type                                                                                           | Name   | Description            |
+================================================================================================+========+========================+
| Time varying output signal                                                                     |
+------------------------------------------------------------------------------------------------+--------+------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Value of Real output   |
+------------------------------------------------------------------------------------------------+--------+------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RealExpression 
      "Set output signal to a time varying Real expression"

      Modelica.Blocks.Interfaces.RealOutput y=0.0 "Value of Real output";


    end RealExpression;

--------------

|image53| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.IntegerExpression
-------------------------------------------------------------------------------------------------------------

**Set output signal to a time varying Integer expression**

.. figure:: Modelica.Blocks.Sources.IntegerExpressionD.png
   :align: center
   :alt: Modelica.Blocks.Sources.IntegerExpression

   Modelica.Blocks.Sources.IntegerExpression

Information
~~~~~~~~~~~

::

The (time varying) Integer output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Integer expressions in a block diagram. For example,
in the y-menu the definition "if time < 1 then 0 else 1" can be given in
order to define that the output signal is one, if time ≥ 1 and otherwise
it is zero. Note, that "time" is a built-in variable that is always
accessible and represents the "model time" and that Variable **y** is
both a variable and a connector.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                          | Name   | Default   | Description               |
+===============================================================================================+========+===========+===========================+
| Time varying output signal                                                                    |
+-----------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | 0         | Value of Integer output   |
+-----------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+---------------------------+
| Type                                                                                                 | Name   | Description               |
+======================================================================================================+========+===========================+
| Time varying output signal                                                                           |
+------------------------------------------------------------------------------------------------------+--------+---------------------------+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | Value of Integer output   |
+------------------------------------------------------------------------------------------------------+--------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block IntegerExpression 
      "Set output signal to a time varying Integer expression"

      Modelica.Blocks.Interfaces.IntegerOutput y=0 "Value of Integer output";


    end IntegerExpression;

--------------

|image54| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.BooleanExpression
-------------------------------------------------------------------------------------------------------------

**Set output signal to a time varying Boolean expression**

.. figure:: Modelica.Blocks.Sources.BooleanExpressionD.png
   :align: center
   :alt: Modelica.Blocks.Sources.BooleanExpression

   Modelica.Blocks.Sources.BooleanExpression

Information
~~~~~~~~~~~

::

The (time varying) Boolean output signal of this block can be defined in
its parameter menu via variable **y**. The purpose is to support the
easy definition of Boolean expressions in a block diagram. For example,
in the y-menu the definition "time >= 1 and time <= 2" can be given in
order to define that the output signal is **true** in the time interval
1 ≤ time ≤ 2 and otherwise it is **false**. Note, that "time" is a
built-in variable that is always accessible and represents the "model
time" and that Variable **y** is both a variable and a connector.

::

Parameters
~~~~~~~~~~

+-----------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| Type                                                                                          | Name   | Default   | Description               |
+===============================================================================================+========+===========+===========================+
| Time varying output signal                                                                    |
+-----------------------------------------------------------------------------------------------+--------+-----------+---------------------------+
| `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | false     | Value of Boolean output   |
+-----------------------------------------------------------------------------------------------+--------+-----------+---------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+---------------------------+
| Type                                                                                                 | Name   | Description               |
+======================================================================================================+========+===========================+
| Time varying output signal                                                                           |
+------------------------------------------------------------------------------------------------------+--------+---------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Value of Boolean output   |
+------------------------------------------------------------------------------------------------------+--------+---------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanExpression 
      "Set output signal to a time varying Boolean expression"

      Modelica.Blocks.Interfaces.BooleanOutput y=false "Value of Boolean output";


    end BooleanExpression;

--------------

|image55| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Clock
-------------------------------------------------------------------------------------------------

**Generate actual time signal**

.. figure:: Modelica.Blocks.Sources.ClockD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Clock

   Modelica.Blocks.Sources.Clock

Information
~~~~~~~~~~~

::

The Real output y is a clock signal:

.. figure:: ../Resources/Images/Blocks/Sources/Clock.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Type                                                    | Name        | Default   | Description                                |
+=========================================================+=============+===========+============================================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | offset      | 0         | Offset of output signal [s]                |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Output = offset for time < startTime [s]   |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Clock "Generate actual time signal "
      parameter Modelica.SIunits.Time offset=0 "Offset of output signal";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Interfaces.SO;

    equation 
      y = offset + (if time < startTime then 0 else time - startTime);
    end Clock;

--------------

|image56| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Constant
----------------------------------------------------------------------------------------------------

**Generate constant signal of type Real**

.. figure:: Modelica.Blocks.Sources.ConstantD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Constant

   Modelica.Blocks.Sources.Constant

Information
~~~~~~~~~~~

::

The Real output y is a constant signal:

.. figure:: ../Resources/Images/Blocks/Sources/Constant.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+--------+--------+-----------+-------------------------+
| Type   | Name   | Default   | Description             |
+========+========+===========+=========================+
| Real   | k      |           | Constant output value   |
+--------+--------+-----------+-------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Constant "Generate constant signal of type Real"
      parameter Real k(start=1) "Constant output value";
      extends Interfaces.SO;

    equation 
      y = k;
    end Constant;

--------------

|image57| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Step
------------------------------------------------------------------------------------------------

**Generate step signal of type Real**

.. figure:: Modelica.Blocks.Sources.StepD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Step

   Modelica.Blocks.Sources.Step

Information
~~~~~~~~~~~

::

The Real output y is a step signal:

.. figure:: ../Resources/Images/Blocks/Sources/Step.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SignalSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SignalSource>`_
(Base class for continuous signal source).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+----------------------------------------------+
| Type                                                    | Name        | Default   | Description                                  |
+=========================================================+=============+===========+==============================================+
| Real                                                    | height      | 1         | Height of step                               |
+---------------------------------------------------------+-------------+-----------+----------------------------------------------+
| Real                                                    | offset      | 0         | Offset of output signal y                    |
+---------------------------------------------------------+-------------+-----------+----------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Output y = offset for time < startTime [s]   |
+---------------------------------------------------------+-------------+-----------+----------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Step "Generate step signal of type Real"
      parameter Real height=1 "Height of step";
      extends Interfaces.SignalSource;

    equation 
      y = offset + (if time < startTime then 0 else height);
    end Step;

--------------

|image58| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Ramp
------------------------------------------------------------------------------------------------

**Generate ramp signal**

.. figure:: Modelica.Blocks.Sources.RampD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Ramp

   Modelica.Blocks.Sources.Ramp

Information
~~~~~~~~~~~

::

The Real output y is a ramp signal:

.. figure:: ../Resources/Images/Blocks/Sources/Ramp.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Type                                                    | Name        | Default   | Description                                |
+=========================================================+=============+===========+============================================+
| Real                                                    | height      | 1         | Height of ramps                            |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | duration    |           | Durations of ramp [s]                      |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Real                                                    | offset      | 0         | Offset of output signal                    |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Output = offset for time < startTime [s]   |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Ramp "Generate ramp signal"
      parameter Real height=1 "Height of ramps";
      parameter Modelica.SIunits.Time duration(min=Modelica.Constants.small, start = 2) 
        "Durations of ramp";
      parameter Real offset=0 "Offset of output signal";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Interfaces.SO;

    equation 
      y = offset + (if time < startTime then 0 else if time < (startTime +
        duration) then (time - startTime)*height/duration else height);
    end Ramp;

--------------

|image59| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Sine
------------------------------------------------------------------------------------------------

**Generate sine signal**

.. figure:: Modelica.Blocks.Sources.SineD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Sine

   Modelica.Blocks.Sources.Sine

Information
~~~~~~~~~~~

::

The Real output y is a sine signal:

.. figure:: ../Resources/Images/Blocks/Sources/Sine.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Type                                                              | Name        | Default   | Description                                |
+===================================================================+=============+===========+============================================+
| Real                                                              | amplitude   | 1         | Amplitude of sine wave                     |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      |           | Frequency of sine wave [Hz]                |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase       | 0         | Phase of sine wave [rad]                   |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Real                                                              | offset      | 0         | Offset of output signal                    |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime   | 0         | Output = offset for time < startTime [s]   |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Sine "Generate sine signal"
      parameter Real amplitude=1 "Amplitude of sine wave";
      parameter SIunits.Frequency freqHz(start=1) "Frequency of sine wave";
      parameter SIunits.Angle phase=0 "Phase of sine wave";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      constant Real pi=Modelica.Constants.pi;

    equation 
      y = offset + (if time < startTime then 0 else amplitude*
        Modelica.Math.sin(2*pi*freqHz*(time - startTime) + phase));
    end Sine;

--------------

|image60| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.ExpSine
---------------------------------------------------------------------------------------------------

**Generate exponentially damped sine signal**

.. figure:: Modelica.Blocks.Sources.ExpSineD.png
   :align: center
   :alt: Modelica.Blocks.Sources.ExpSine

   Modelica.Blocks.Sources.ExpSine

Information
~~~~~~~~~~~

::

The Real output y is a sine signal with exponentially changing
amplitude:

.. figure:: ../Resources/Images/Blocks/Sources/ExpSine.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Type                                                              | Name        | Default   | Description                                |
+===================================================================+=============+===========+============================================+
| Real                                                              | amplitude   | 1         | Amplitude of sine wave                     |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Frequency <Modelica_SIunits.html#Modelica.SIunits.Frequency>`_   | freqHz      |           | Frequency of sine wave [Hz]                |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Angle <Modelica_SIunits.html#Modelica.SIunits.Angle>`_           | phase       | 0         | Phase of sine wave [rad]                   |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Damping <Modelica_SIunits.html#Modelica.SIunits.Damping>`_       | damping     |           | Damping coefficient of sine wave [s-1]     |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Real                                                              | offset      | 0         | Offset of output signal                    |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_             | startTime   | 0         | Output = offset for time < startTime [s]   |
+-------------------------------------------------------------------+-------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block ExpSine "Generate exponentially damped sine signal"
      parameter Real amplitude=1 "Amplitude of sine wave";
      parameter SIunits.Frequency freqHz(start=2) "Frequency of sine wave";
      parameter SIunits.Angle phase=0 "Phase of sine wave";
      parameter SIunits.Damping damping(start=1) "Damping coefficient of sine wave";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      constant Real pi=Modelica.Constants.pi;

    equation 
      y = offset + (if time < startTime then 0 else amplitude*
        Modelica.Math.exp(-(time - startTime)*damping)*Modelica.Math.sin(2*pi*freqHz*(time - startTime) + phase));
    end ExpSine;

--------------

|image61| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Exponentials
--------------------------------------------------------------------------------------------------------

**Generate a rising and falling exponential signal**

.. figure:: Modelica.Blocks.Sources.ExponentialsD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Exponentials

   Modelica.Blocks.Sources.Exponentials

Information
~~~~~~~~~~~

::

The Real output y is a rising exponential followed by a falling
exponential signal:

.. figure:: ../Resources/Images/Blocks/Sources/Exponentials.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-----------------+-----------------+-----------------------------------------------------------------------------------------+
| Type                                                    | Name            | Default         | Description                                                                             |
+=========================================================+=================+=================+=========================================================================================+
| Real                                                    | outMax          | 1               | Height of output for infinite riseTime                                                  |
+---------------------------------------------------------+-----------------+-----------------+-----------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | riseTime        |                 | Rise time [s]                                                                           |
+---------------------------------------------------------+-----------------+-----------------+-----------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | riseTimeConst   | 0.1             | Rise time constant; rising is defined as outMax\*(1-exp(-riseTime/riseTimeConst)) [s]   |
+---------------------------------------------------------+-----------------+-----------------+-----------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | fallTimeConst   | riseTimeConst   | Fall time constant [s]                                                                  |
+---------------------------------------------------------+-----------------+-----------------+-----------------------------------------------------------------------------------------+
| Real                                                    | offset          | 0               | Offset of output signal                                                                 |
+---------------------------------------------------------+-----------------+-----------------+-----------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime       | 0               | Output = offset for time < startTime [s]                                                |
+---------------------------------------------------------+-----------------+-----------------+-----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model Exponentials "Generate a rising and falling exponential signal"

      parameter Real outMax=1 "Height of output for infinite riseTime";
      parameter SIunits.Time riseTime(min=0,start = 0.5) "Rise time";
      parameter SIunits.Time riseTimeConst(min=Modelica.Constants.small)=0.1 
        "Rise time constant; rising is defined as outMax*(1-exp(-riseTime/riseTimeConst))";
      parameter SIunits.Time fallTimeConst(min=Modelica.Constants.small)=
        riseTimeConst "Fall time constant";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      Real y_riseTime;

    equation 
      y_riseTime = outMax*(1 - Modelica.Math.exp(-riseTime/riseTimeConst));
      y = offset + (if (time < startTime) then 0
              else if (time < (startTime + riseTime)) then outMax*(1 - Modelica.Math.exp(-(time - startTime)/riseTimeConst))
              else                                          y_riseTime*Modelica.Math.exp(-(time - startTime - riseTime)/fallTimeConst));

    end Exponentials;

--------------

|image62| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Pulse
-------------------------------------------------------------------------------------------------

**Generate pulse signal of type Real**

.. figure:: Modelica.Blocks.Sources.PulseD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Pulse

   Modelica.Blocks.Sources.Pulse

Information
~~~~~~~~~~~

::

The Real output y is a pulse signal:

.. figure:: ../Resources/Images/Blocks/Sources/Pulse.png
   :align: center
   :alt: 

::

Extends from
`Modelica.Blocks.Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Type                                                    | Name        | Default   | Description                                                |
+=========================================================+=============+===========+============================================================+
| Real                                                    | amplitude   | 1         | Amplitude of pulse                                         |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Real                                                    | width       | 50        | Width of pulse in % of period                              |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | period      |           | Time for one period [s]                                    |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Integer                                                 | nperiod     | -1        | Number of periods (< 0 means infinite number of periods)   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Real                                                    | offset      | 0         | Offset of output signals                                   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Output = offset for time < startTime [s]                   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Pulse "Generate pulse signal of type Real"
      parameter Real amplitude=1 "Amplitude of pulse";
      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100) = 50 "Width of pulse in % of period";
      parameter Modelica.SIunits.Time period(final min=Modelica.Constants.small,start=1) 
        "Time for one period";
      parameter Integer nperiod=-1 
        "Number of periods (< 0 means infinite number of periods)";
      parameter Real offset=0 "Offset of output signals";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Modelica.Blocks.Interfaces.SO;
    protected 
      Modelica.SIunits.Time T_width = period*width/100;
      Modelica.SIunits.Time T_start "Start time of current period";
      Integer count "Period count";
    initial algorithm 
      count := integer((time - startTime)/period);
      T_start := startTime + count*period;
    equation 
      when integer((time - startTime)/period)>pre(count) then
        count = pre(count)+1;
        T_start = time;
      end when;
      y = offset + (if (time<startTime or nperiod==0 or (nperiod>0 and count>=nperiod)) then 0
               else if  time<T_start + T_width then amplitude else 0);
    end Pulse;

--------------

|image63| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.SawTooth
----------------------------------------------------------------------------------------------------

**Generate saw tooth signal**

.. figure:: Modelica.Blocks.Sources.SawToothD.png
   :align: center
   :alt: Modelica.Blocks.Sources.SawTooth

   Modelica.Blocks.Sources.SawTooth

Information
~~~~~~~~~~~

::

The Real output y is a saw tooth signal:

.. figure:: ../Resources/Images/Blocks/Sources/SawTooth.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Type                                                    | Name        | Default   | Description                                                |
+=========================================================+=============+===========+============================================================+
| Real                                                    | amplitude   | 1         | Amplitude of saw tooth                                     |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | period      |           | Time for one period [s]                                    |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Integer                                                 | nperiod     | -1        | Number of periods (< 0 means infinite number of periods)   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Real                                                    | offset      | 0         | Offset of output signals                                   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Output = offset for time < startTime [s]                   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block SawTooth "Generate saw tooth signal"
      parameter Real amplitude=1 "Amplitude of saw tooth";
      parameter SIunits.Time period(final min=Modelica.Constants.small,start = 1) 
        "Time for one period";
      parameter Integer nperiod=-1 
        "Number of periods (< 0 means infinite number of periods)";
      parameter Real offset=0 "Offset of output signals";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      SIunits.Time T_start(final start=startTime) "Start time of current period";
      Integer count "Period count";
    initial algorithm 
      count := integer((time - startTime)/period);
      T_start := startTime + count*period;
    equation 
      when integer((time - startTime)/period)>pre(count) then
        count = pre(count)+1;
        T_start = time;
      end when;
      y = offset + (if (time<startTime or nperiod==0 or (nperiod>0 and count>=nperiod)) then 0
                   else amplitude*(time - T_start)/period);
    end SawTooth;

--------------

|image64| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.Trapezoid
-----------------------------------------------------------------------------------------------------

**Generate trapezoidal signal of type Real**

.. figure:: Modelica.Blocks.Sources.TrapezoidD.png
   :align: center
   :alt: Modelica.Blocks.Sources.Trapezoid

   Modelica.Blocks.Sources.Trapezoid

Information
~~~~~~~~~~~

::

The Real output y is a trapezoid signal:

.. figure:: ../Resources/Images/Blocks/Sources/Trapezoid.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Type                                                    | Name        | Default   | Description                                                |
+=========================================================+=============+===========+============================================================+
| Real                                                    | amplitude   | 1         | Amplitude of trapezoid                                     |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | rising      | 0         | Rising duration of trapezoid [s]                           |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | width       | 0.5       | Width duration of trapezoid [s]                            |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | falling     | 0         | Falling duration of trapezoid [s]                          |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | period      |           | Time for one period [s]                                    |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Integer                                                 | nperiod     | -1        | Number of periods (< 0 means infinite number of periods)   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| Real                                                    | offset      | 0         | Offset of output signal                                    |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Output = offset for time < startTime [s]                   |
+---------------------------------------------------------+-------------+-----------+------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block Trapezoid "Generate trapezoidal signal of type Real"
      parameter Real amplitude=1 "Amplitude of trapezoid";
      parameter SIunits.Time rising(final min=0) = 0 "Rising duration of trapezoid";
      parameter SIunits.Time width(final min=0) = 0.5 "Width duration of trapezoid";
      parameter SIunits.Time falling(final min=0) = 0 
        "Falling duration of trapezoid";
      parameter SIunits.Time period(final min=Modelica.Constants.small, start= 1) 
        "Time for one period";
      parameter Integer nperiod=-1 
        "Number of periods (< 0 means infinite number of periods)";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      parameter SIunits.Time T_rising=rising 
        "End time of rising phase within one period";
      parameter SIunits.Time T_width=T_rising + width 
        "End time of width phase within one period";
      parameter SIunits.Time T_falling=T_width + falling 
        "End time of falling phase within one period";
      SIunits.Time T_start "Start time of current period";
      Integer count "Period count";
    initial algorithm 
      count := integer((time - startTime)/period);
      T_start := startTime + count*period;
    equation 
      when integer((time - startTime)/period)>pre(count) then
        count = pre(count)+1;
        T_start = time;
      end when;
      y = offset + (if (time<startTime or nperiod==0 or (nperiod>0 and count>=nperiod)) then 0
               else if (time < T_start + T_rising)  then amplitude*(time - T_start)/rising
               else if (time < T_start + T_width)   then amplitude
               else if (time < T_start + T_falling) then amplitude*(T_start + T_falling - time)/falling
               else                                 0);
    end Trapezoid;

--------------

|image65| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.KinematicPTP
--------------------------------------------------------------------------------------------------------

**Move as fast as possible along a distance within given kinematic
constraints**

.. figure:: Modelica.Blocks.Sources.KinematicPTPD.png
   :align: center
   :alt: Modelica.Blocks.Sources.KinematicPTP

   Modelica.Blocks.Sources.KinematicPTP

Information
~~~~~~~~~~~

::

The goal is to move as **fast** as possible along a distance **deltaq**
under given **kinematical constraints**. The distance can be a
positional or angular range. In robotics such a movement is called
**PTP** (Point-To-Point). This source block generates the
**acceleration** qdd of this signal as output:

.. figure:: ../Resources/Images/Blocks/Sources/KinematicPTP.png
   :align: center
   :alt: 

After integrating the output two times, the position q is obtained. The
signal is constructed in such a way that it is not possible to move
faster, given the **maximally** allowed **velocity** qd\_max and the
**maximally** allowed **acceleration** qdd\_max.

If several distances are given (vector deltaq has more than 1 element),
an acceleration output vector is constructed such that all signals are
in the same periods in the acceleration, constant velocity and
deceleration phase. This means that only one of the signals is at its
limits whereas the others are sychnronized in such a way that the end
point is reached at the same time instant.

This element is useful to generate a reference signal for a controller
which controls a drive train or in combination with model
Modelica.Mechanics.Rotational.**Accelerate** to drive a flange according
to a given acceleration.

::

Extends from
`Interfaces.MO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MO>`_
(Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+---------------+-----------------------------------+---------------------------------------------+
| Type                                                    | Name          | Default                           | Description                                 |
+=========================================================+===============+===================================+=============================================+
| Real                                                    | deltaq[:]     |                                   | Distance to move                            |
+---------------------------------------------------------+---------------+-----------------------------------+---------------------------------------------+
| Real                                                    | qd\_max[:]    |                                   | Maximum velocities der(q)                   |
+---------------------------------------------------------+---------------+-----------------------------------+---------------------------------------------+
| Real                                                    | qdd\_max[:]   |                                   | Maximum accelerations der(qd)               |
+---------------------------------------------------------+---------------+-----------------------------------+---------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime     | 0                                 | Time instant at which movement starts [s]   |
+---------------------------------------------------------+---------------+-----------------------------------+---------------------------------------------+
| Integer                                                 | nout          | max([size(deltaq, 1); size(q...   | Number of outputs                           |
+---------------------------------------------------------+---------------+-----------------------------------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| Type                                                                                           | Name      | Description                        |
+================================================================================================+===========+====================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[nout]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block KinematicPTP 
      "Move as fast as possible along a distance within given kinematic constraints"

      parameter Real deltaq[:] "Distance to move";
      parameter Real qd_max[:](each final min=Modelica.Constants.small) 
        "Maximum velocities der(q)";
      parameter Real qdd_max[:](each final min=Modelica.Constants.small) 
        "Maximum accelerations der(qd)";
      parameter SIunits.Time startTime=0 "Time instant at which movement starts";

      extends Interfaces.MO(final nout=max([size(deltaq, 1); size(qd_max, 1);
             size(qdd_max, 1)]));

    protected 
      parameter Real p_deltaq[nout]=(if size(deltaq, 1) == 1 then ones(nout)*
          deltaq[1] else deltaq);
      parameter Real p_qd_max[nout]=(if size(qd_max, 1) == 1 then ones(nout)*
          qd_max[1] else qd_max);
      parameter Real p_qdd_max[nout]=(if size(qdd_max, 1) == 1 then ones(nout)
          *qdd_max[1] else qdd_max);
      Real sd_max;
      Real sdd_max;
      Real sdd;
      Real aux1[nout];
      Real aux2[nout];
      SIunits.Time Ta1;
      SIunits.Time Ta2;
      SIunits.Time Tv;
      SIunits.Time Te;
      Boolean noWphase;

    equation 
      for i in 1:nout loop
        aux1[i] = p_deltaq[i]/p_qd_max[i];
        aux2[i] = p_deltaq[i]/p_qdd_max[i];
      end for;
      sd_max = 1/max(abs(aux1));
      sdd_max = 1/max(abs(aux2));

      Ta1 = sqrt(1/sdd_max);
      Ta2 = sd_max/sdd_max;
      noWphase = Ta2 >= Ta1;
      Tv = if noWphase then Ta1 else 1/sd_max;
      Te = if noWphase then Ta1 + Ta1 else Tv + Ta2;

      // path-acceleration
      sdd = if time < startTime then 0 else ((if noWphase then (if time < Ta1
         + startTime then sdd_max else (if time < Te + startTime then -
        sdd_max else 0)) else (if time < Ta2 + startTime then sdd_max else (
        if time < Tv + startTime then 0 else (if time < Te + startTime then -
        sdd_max else 0)))));

      // acceleration
      y = p_deltaq*sdd;
    end KinematicPTP;

--------------

|image66| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.KinematicPTP2
---------------------------------------------------------------------------------------------------------

**Move as fast as possible from start to end position within given
kinematic constraints with output signals q, qd=der(q), qdd=der(qd)**

.. figure:: Modelica.Blocks.Sources.KinematicPTP2D.png
   :align: center
   :alt: Modelica.Blocks.Sources.KinematicPTP2

   Modelica.Blocks.Sources.KinematicPTP2

Information
~~~~~~~~~~~

::

The goal is to move as **fast** as possible from start position
**q\_begin** to end position **q\_end** under given **kinematical
constraints**. The positions can be translational or rotational
definitions (i.e., q\_begin/q\_end is given). In robotics such a
movement is called **PTP** (Point-To-Point). This source block generates
the **position** q(t), the **speed** qd(t) = der(q), and the
**acceleration** qdd = der(qd) as output. The signals are constructed in
such a way that it is not possible to move faster, given the
**maximally** allowed **velocity** qd\_max and the **maximally** allowed
**acceleration** qdd\_max:

.. figure:: ../Resources/Images/Blocks/Sources/KinematicPTP2.png
   :align: center
   :alt: 

If vectors q\_begin/q\_end have more than 1 element, the output vectors
are constructed such that all signals are in the same periods in the
acceleration, constant velocity and deceleration phase. This means that
only one of the signals is at its limits whereas the others are
sychnronized in such a way that the end point is reached at the same
time instant.

This element is useful to generate a reference signal for a controller
which controls, e.g., a drive train, or to drive a flange according to a
given acceleration.

::

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+---------------+-----------+---------------------------------------------+
| Type                                                    | Name          | Default   | Description                                 |
+=========================================================+===============+===========+=============================================+
| Real                                                    | q\_begin[:]   | {0}       | Start position                              |
+---------------------------------------------------------+---------------+-----------+---------------------------------------------+
| Real                                                    | q\_end[:]     |           | End position                                |
+---------------------------------------------------------+---------------+-----------+---------------------------------------------+
| Real                                                    | qd\_max[:]    |           | Maximum velocities der(q)                   |
+---------------------------------------------------------+---------------+-----------+---------------------------------------------+
| Real                                                    | qdd\_max[:]   |           | Maximum accelerations der(qd)               |
+---------------------------------------------------------+---------------+-----------+---------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime     | 0         | Time instant at which movement starts [s]   |
+---------------------------------------------------------+---------------+-----------+---------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------------------------------------------------------------+
| Type                                                                                                 | Name           | Description                                                                                               |
+======================================================================================================+================+===========================================================================================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_         | q[nout]        | Reference position of path planning                                                                       |
+------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_         | qd[nout]       | Reference speed of path planning                                                                          |
+------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_         | qdd[nout]      | Reference acceleration of path planning                                                                   |
+------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------------------------------------------------------------+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | moving[nout]   | = true, if end position not yet reached; = false, if end position reached or axis is completely at rest   |
+------------------------------------------------------------------------------------------------------+----------------+-----------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block KinematicPTP2 
      "Move as fast as possible from start to end position within given kinematic constraints with output signals q, qd=der(q), qdd=der(qd)"
      import SI = Modelica.SIunits;
      parameter Real q_begin[:] = {0} "Start position";
      parameter Real q_end[:] "End position";
      parameter Real qd_max[:](each final min=Modelica.Constants.small) 
        "Maximum velocities der(q)";
      parameter Real qdd_max[:](each final min=Modelica.Constants.small) 
        "Maximum accelerations der(qd)";
      parameter Modelica.SIunits.Time startTime=0 
        "Time instant at which movement starts";

      extends Modelica.Blocks.Interfaces.BlockIcon;
      final parameter Integer nout=max([size(q_begin, 1); size(q_end, 1); size(
          qd_max, 1); size(qdd_max, 1)]) 
        "Number of output signals (= dimension of q, qd, qdd, moving)";
      output Modelica.SIunits.Time endTime "Time instant at which movement stops";

      Modelica.Blocks.Interfaces.RealOutput q[nout] 
        "Reference position of path planning";
      Modelica.Blocks.Interfaces.RealOutput qd[nout] 
        "Reference speed of path planning";
      Modelica.Blocks.Interfaces.RealOutput qdd[nout] 
        "Reference acceleration of path planning";
      Modelica.Blocks.Interfaces.BooleanOutput moving[nout] 
        "= true, if end position not yet reached; = false, if end position reached or axis is completely at rest";
        

    protected 
      parameter Real p_q_begin[nout]=(if size(q_begin, 1) == 1 then ones(nout)*
          q_begin[1] else q_begin);
      parameter Real p_q_end[nout]=(if size(q_end, 1) == 1 then ones(nout)*
          q_end[1] else q_end);
      parameter Real p_qd_max[nout]=(if size(qd_max, 1) == 1 then ones(nout)*
          qd_max[1] else qd_max);
      parameter Real p_qdd_max[nout]=(if size(qdd_max, 1) == 1 then ones(nout)*
          qdd_max[1] else qdd_max);
      parameter Real p_deltaq[nout]=p_q_end - p_q_begin;
      constant Real eps=10*Modelica.Constants.eps;
      Boolean motion_ref;
      Real sd_max_inv;
      Real sdd_max_inv;
      Real sd_max;
      Real sdd_max;
      Real sdd;
      Real aux1[nout];
      Real aux2[nout];
      SI.Time Ta1;
      SI.Time Ta2;
      SI.Time Tv;
      SI.Time Te;
      Boolean noWphase;
      SI.Time Ta1s;
      SI.Time Ta2s;
      SI.Time Tvs;
      SI.Time Tes;
      Real sd_max2;
      Real s1;
      Real s2;
      Real s3;
      Real s;
      Real sd;
      Real r_s;
      Real r_sd;
      Real r_sdd;

      function position
      annotation(derivative=position_der);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         output Real q;
      algorithm 
        q :=q_qd_qdd[1];
      end position;

      function position_der
      annotation(derivative=position_der2);
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         output Real qd;
      algorithm 
        qd :=q_qd_qdd[2];
      end position_der;

      function position_der2
         input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
         input Real dummy 
          "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
         input Real dummy_der;
         input Real dummy_der2;
         output Real qdd;
      algorithm 
        qdd :=q_qd_qdd[3];
      end position_der2;
    equation 
      for i in 1:nout loop
        aux1[i] = p_deltaq[i]/p_qd_max[i];
        aux2[i] = p_deltaq[i]/p_qdd_max[i];
      end for;

      sd_max_inv = max(abs(aux1));
      sdd_max_inv = max(abs(aux2));

      if sd_max_inv <= eps or sdd_max_inv <= eps then
        sd_max = 0;
        sdd_max = 0;
        Ta1 = 0;
        Ta2 = 0;
        noWphase = false;
        Tv = 0;
        Te = 0;
        Ta1s = 0;
        Ta2s = 0;
        Tvs = 0;
        Tes = 0;
        sd_max2 = 0;
        s1 = 0;
        s2 = 0;
        s3 = 0;
        r_sdd = 0;
        r_sd = 0;
        r_s = 0;
      else
        sd_max = 1/max(abs(aux1));
        sdd_max = 1/max(abs(aux2));
        Ta1 = sqrt(1/sdd_max);
        Ta2 = sd_max/sdd_max;
        noWphase = Ta2 >= Ta1;
        Tv = if noWphase then Ta1 else 1/sd_max;
        Te = if noWphase then Ta1 + Ta1 else Tv + Ta2;
        Ta1s = Ta1 + startTime;
        Ta2s = Ta2 + startTime;
        Tvs = Tv + startTime;
        Tes = Te + startTime;
        sd_max2 = sdd_max*Ta1;
        s1 = sdd_max*(if noWphase then Ta1*Ta1 else Ta2*Ta2)/2;
        s2 = s1 + (if noWphase then sd_max2*(Te - Ta1) - (sdd_max/2)*(Te - Ta1)
          ^2 else sd_max*(Tv - Ta2));
        s3 = s2 + sd_max*(Te - Tv) - (sdd_max/2)*(Te - Tv)*(Te - Tv);

        if time < startTime then
          r_sdd = 0;
          r_sd = 0;
          r_s = 0;
        elseif noWphase then
          if time < Ta1s then
            r_sdd = sdd_max;
            r_sd = sdd_max*(time - startTime);
            r_s = (sdd_max/2)*(time - startTime)*(time - startTime);
          elseif time < Tes then
            r_sdd = -sdd_max;
            r_sd = sd_max2 - sdd_max*(time - Ta1s);
            r_s = s1 + sd_max2*(time - Ta1s) - (sdd_max/2)*(time - Ta1s)*(time
               - Ta1s);
          else
            r_sdd = 0;
            r_sd = 0;
            r_s = s2;
          end if;
        elseif time < Ta2s then
          r_sdd = sdd_max;
          r_sd = sdd_max*(time - startTime);
          r_s = (sdd_max/2)*(time - startTime)*(time - startTime);
        elseif time < Tvs then
          r_sdd = 0;
          r_sd = sd_max;
          r_s = s1 + sd_max*(time - Ta2s);
        elseif time < Tes then
          r_sdd = -sdd_max;
          r_sd = sd_max - sdd_max*(time - Tvs);
          r_s = s2 + sd_max*(time - Tvs) - (sdd_max/2)*(time - Tvs)*(time - Tvs);
        else
          r_sdd = 0;
          r_sd = 0;
          r_s = s3;
        end if;

      end if;

      // acceleration
      qdd = p_deltaq*sdd;
      qd = p_deltaq*sd;
      q = p_q_begin + p_deltaq*s;
      endTime = Tes;

      s = position({r_s, r_sd, r_sdd}, time);
      sd = der(s);
      sdd = der(sd);

      // report when axis is moving
      motion_ref = time <= endTime;
      for i in 1:nout loop
        moving[i] = if abs(q_begin[i] - q_end[i]) > eps then motion_ref else false;
      end for;

    end KinematicPTP2;

--------------

|image67| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.TimeTable
-----------------------------------------------------------------------------------------------------

**Generate a (possibly discontinuous) signal by linear interpolation in
a table**

.. figure:: Modelica.Blocks.Sources.TimeTableD.png
   :align: center
   :alt: Modelica.Blocks.Sources.TimeTable

   Modelica.Blocks.Sources.TimeTable

Information
~~~~~~~~~~~

::

This block generates an output signal by **linear interpolation** in a
table. The time points and function values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the second column contains the data to be interpolated. The
table interpolation has the following proporties:

-  The time points need to be **monotonically increasing**.
-  **Discontinuities** are allowed, by providing the same time point
   twice in the table.
-  Values **outside** of the table range, are computed by
   **extrapolation** through the last or first two points of the table.
-  If the table has only **one row**, no interpolation is performed and
   the function value is just returned independantly of the actual time
   instant.
-  Via parameters **startTime** and **offset** the curve defined by the
   table can be shifted both in time and in the ordinate value.
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
    If, e.g., time = 1.0, the output y =  0.0 (before event), 1.0 (after event)
        e.g., time = 1.5, the output y =  2.5,
        e.g., time = 2.0, the output y =  4.0,
        e.g., time = 5.0, the output y = 23.0 (i.e., extrapolation).

.. figure:: ../Resources/Images/Blocks/Sources/TimeTable.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.SO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.SO>`_
(Single Output continuous control block).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------+
| Type                                                    | Name          | Default   | Description                                                          |
+=========================================================+===============+===========+======================================================================+
| Real                                                    | table[:, 2]   |           | Table matrix (time = first column; e.g., table=[0, 0; 1, 1; 2, 4])   |
+---------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------+
| Real                                                    | offset        | 0         | Offset of output signal                                              |
+---------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime     | 0         | Output = offset for time < startTime [s]                             |
+---------------------------------------------------------+---------------+-----------+----------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+--------+-----------------------------------+
| Type                                                                                           | Name   | Description                       |
+================================================================================================+========+===================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y      | Connector of Real output signal   |
+------------------------------------------------------------------------------------------------+--------+-----------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block TimeTable 
      "Generate a (possibly discontinuous) signal by linear interpolation in a table"

      parameter Real table[:, 2] 
        "Table matrix (time = first column; e.g., table=[0, 0; 1, 1; 2, 4])";
      parameter Real offset=0 "Offset of output signal";
      parameter SIunits.Time startTime=0 "Output = offset for time < startTime";
      extends Interfaces.SO;
    protected 
      Real a "Interpolation coefficients a of actual interval (y=a*x+b)";
      Real b "Interpolation coefficients b of actual interval (y=a*x+b)";
      Integer last(start=1) "Last used lower grid index";
      SIunits.Time nextEvent(start=0, fixed=true) "Next event instant";

      function getInterpolationCoefficients 
        "Determine interpolation coefficients and next time event"
        input Real table[:, 2] "Table for interpolation";
        input Real offset "y-offset";
        input Real startTime "time-offset";
        input Real t "Actual time instant";
        input Integer last "Last used lower grid index";
        input Real TimeEps "Relative epsilon to check for identical time instants";
        output Real a "Interpolation coefficients a (y=a*x + b)";
        output Real b "Interpolation coefficients b (y=a*x + b)";
        output Real nextEvent "Next event instant";
        output Integer next "New lower grid index";
      protected 
        Integer columns=2 "Column to be interpolated";
        Integer ncol=2 "Number of columns to be interpolated";
        Integer nrow=size(table, 1) "Number of table rows";
        Integer next0;
        Real tp;
        Real dt;
      algorithm 
        next := last;
        nextEvent := t - TimeEps*abs(t);
        // in case there are no more time events
        tp := t + TimeEps*abs(t) - startTime;

        if tp < 0.0 then
          // First event not yet reached
          nextEvent := startTime;
          a := 0;
          b := offset;
        elseif nrow < 2 then
          // Special action if table has only one row
          a := 0;
          b := offset + table[1, columns];
        else

            // Find next time event instant. Note, that two consecutive time instants
          // in the table may be identical due to a discontinuous point.
          while next < nrow and tp >= table[next, 1] loop
            next := next + 1;
          end while;

          // Define next time event, if last table entry not reached
          if next < nrow then
            nextEvent := startTime + table[next, 1];
          end if;

          // Determine interpolation coefficients
          next0 := next - 1;
          dt := table[next, 1] - table[next0, 1];
          if dt <= TimeEps*abs(table[next, 1]) then
            // Interpolation interval is not big enough, use "next" value
            a := 0;
            b := offset + table[next, columns];
          else
            a := (table[next, columns] - table[next0, columns])/dt;
            b := offset + table[next0, columns] - a*table[next0, 1];
          end if;
        end if;
        // Take into account startTime "a*(time - startTime) + b"
        b := b - a*startTime;
      end getInterpolationCoefficients;
    algorithm 
      when {time >= pre(nextEvent),initial()} then
        (a,b,nextEvent,last) := getInterpolationCoefficients(table, offset,
          startTime, time, last, 100*Modelica.Constants.eps);
      end when;
    equation 
      y = a*time + b;
    end TimeTable;

--------------

|image68| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.CombiTimeTable
----------------------------------------------------------------------------------------------------------

**Table look-up with respect to time and linear/perodic extrapolation
methods (data from matrix/file)**

.. figure:: Modelica.Blocks.Sources.CombiTimeTableD.png
   :align: center
   :alt: Modelica.Blocks.Sources.CombiTimeTable

   Modelica.Blocks.Sources.CombiTimeTable

Information
~~~~~~~~~~~

::

This block generates an output signal y[:] by **linear interpolation**
in a table. The time points and function values are stored in a matrix
**table[i,j]**, where the first column table[:,1] contains the time
points and the other columns contain the data to be interpolated.

.. figure:: ../Resources/Images/Blocks/Sources/CombiTimeTable.png
   :align: center
   :alt: 

Via parameter **columns** it can be defined which columns of the table
are interpolated. If, e.g., columns={2,4}, it is assumed that 2 output
signals are present and that the first output is computed by
interpolation of column 2 and the second output is computed by
interpolation of column 4 of the table matrix. The table interpolation
has the following properties:

-  The time points need to be **monotonically increasing**.
-  **Discontinuities** are allowed, by providing the same time point
   twice in the table.
-  Values **outside** of the table range, are computed by extrapolation
   according to the setting of parameter **extrapolation**:

   ::

         extrapolation = 0: hold the first or last value of the table,
                            if outside of the range.
                       = 1: extrapolate through the last or first two
                            points of the table.
                       = 2: periodically repeat the table data
                            (periodical function).

-  Via parameter **smoothness** it is defined how the data is
   interpolated:

   ::

         smoothness = 0: linear interpolation
                    = 1: smooth interpolation with Akima Splines such
                         that der(y) is continuous.

-  If the table has only **one row**, no interpolation is performed and
   the table values of this row are just returned.
-  Via parameters **startTime** and **offset** the curve defined by the
   table can be shifted both in time and in the ordinate value. The time
   instants stored in the table are therefore **relative** to
   **startTime**. If time < startTime, no interpolation is performed and
   the offset is used as ordinate value for all outputs.
-  The table is implemented in a numerically sound way by generating
   **time events** at interval boundaries, in order to not integrate
   over a discontinuous or not differentiable points.
-  For special applications it is sometimes needed to know the minimum
   and maximum time instant defined in the table as a parameter. For
   this reason parameters **t\_min** and **t\_max** are provided and can
   be access from the outside of the table object.

Example:

::

       table = [0  0
                1  0
                1  1
                2  4
                3  9
                4 16]; extrapolation = 1 (default)
    If, e.g., time = 1.0, the output y =  0.0 (before event), 1.0 (after event)
        e.g., time = 1.5, the output y =  2.5,
        e.g., time = 2.0, the output y =  4.0,
        e.g., time = 5.0, the output y = 23.0 (i.e., extrapolation via last 2 points).

The table matrix can be defined in the following ways:

#. Explicitly supplied as **parameter matrix** "table", and the other
   parameters have the following values:

   ::

          tableName is "NoName" or has only blanks,
          fileName  is "NoName" or has only blanks.

#. **Read** from a **file** "fileName" where the matrix is stored as
   "tableName". Both ASCII and binary file format is possible. (the
   ASCII format is described below). It is most convenient to generate
   the binary file from Matlab (Matlab 4 storage format), e.g., by
   command

   ::

          save tables.mat tab1 tab2 tab3 -V4

   when the three tables tab1, tab2, tab3 should be used from the model.

#. Statically stored in function "usertab" in file "usertab.c". The
   matrix is identified by "tableName". Parameter fileName = "NoName" or
   has only blanks.

Table definition methods (1) and (3) do **not** allocate dynamic memory,
and do not access files, whereas method (2) does. Therefore (1) and (3)
are suited for hardware-in-the-loop simulation (e.g., with dSpace
hardware). When the constant "NO\_FILE" is defined in "usertab.c", all
parts of the source code of method (2) are removed by the
C-preprocessor, such that no dynamic memory allocation and no access to
files takes place.

If tables are read from an ASCII-file, the file need to have the
following structure ("-----" is not part of the file content):

::

    -----------------------------------------------------
    #1
    double tab1(6,2)   # comment line
      0   0
      1   0
      1   1
      2   4
      3   9
      4  16
    double tab2(6,2)   # another comment line
      0   0
      2   0
      2   2
      4   8
      6  18
      8  32
    -----------------------------------------------------

Note, that the first two characters in the file need to be "#1".
Afterwards, the corresponding matrix has to be declared with type, name
and actual dimensions. Finally, in successive rows of the file, the
elements of the matrix have to be given. Several matrices may be defined
one after another.

::

Extends from
`Modelica.Blocks.Interfaces.MO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.MO>`_
(Multiple Output continuous control block).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| Type                                                                                | Name            | Default                           | Description                                                  |
+=====================================================================================+=================+===================================+==============================================================+
| Integer                                                                             | nout            | max([size(columns, 1); size(...   | Number of outputs                                            |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| table data definition                                                               |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| Boolean                                                                             | tableOnFile     | false                             | = true, if table is defined on file or in function usertab   |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| Real                                                                                | table[:, :]     | fill(0.0, 0, 2)                   | Table matrix (time = first column; e.g., table=[0,2])        |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| String                                                                              | tableName       | "NoName"                          | Table name on file or in function usertab (see docu)         |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| String                                                                              | fileName        | "NoName"                          | File where matrix is stored                                  |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| table data interpretation                                                           |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| Integer                                                                             | columns[:]      | 2:size(table, 2)                  | Columns of table to be interpolated                          |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| `Smoothness <Modelica_Blocks_Types.html#Modelica.Blocks.Types.Smoothness>`_         | smoothness      | Modelica.Blocks.Types.Smooth...   | Smoothness of table interpolation                            |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| `Extrapolation <Modelica_Blocks_Types.html#Modelica.Blocks.Types.Extrapolation>`_   | extrapolation   | Modelica.Blocks.Types.Extrap...   | Extrapolation of data outside the definition range           |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| Real                                                                                | offset[:]       | {0}                               | Offsets of output signals                                    |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_                               | startTime       | 0                                 | Output = offset for time < startTime [s]                     |
+-------------------------------------------------------------------------------------+-----------------+-----------------------------------+--------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------+-----------+------------------------------------+
| Type                                                                                           | Name      | Description                        |
+================================================================================================+===========+====================================+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_   | y[nout]   | Connector of Real output signals   |
+------------------------------------------------------------------------------------------------+-----------+------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model CombiTimeTable 
      "Table look-up with respect to time and linear/perodic extrapolation methods (data from matrix/file)"

      parameter Boolean tableOnFile=false 
        "= true, if table is defined on file or in function usertab";
      parameter Real table[:, :] = fill(0.0,0,2) 
        "Table matrix (time = first column; e.g., table=[0,2])";
      parameter String tableName="NoName" 
        "Table name on file or in function usertab (see docu)";
      parameter String fileName="NoName" "File where matrix is stored";
      parameter Integer columns[:]=2:size(table, 2) 
        "Columns of table to be interpolated";
      parameter Modelica.Blocks.Types.Smoothness smoothness=Modelica.Blocks.Types.Smoothness.LinearSegments 
        "Smoothness of table interpolation";
      parameter Modelica.Blocks.Types.Extrapolation extrapolation=Modelica.Blocks.Types.Extrapolation.LastTwoPoints 
        "Extrapolation of data outside the definition range";
      parameter Real offset[:]={0} "Offsets of output signals";
      parameter Modelica.SIunits.Time startTime=0 
        "Output = offset for time < startTime";
      extends Modelica.Blocks.Interfaces.MO(final nout=max([size(columns, 1); size(offset, 1)]));
      final parameter Real t_min(fixed=false) 
        "Minimum abscissa value defined in table";
      final parameter Real t_max(fixed=false) 
        "Maximum abscissa value defined in table";

    protected 
      final parameter Real p_offset[nout]=(if size(offset, 1) == 1 then ones(nout)
           *offset[1] else offset);

      Integer tableID;

      function tableTimeInit 
        "Initialize 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input String tableName;
        input String fileName;
        input Real table[ :, :];
        input Real startTime;
        input Modelica.Blocks.Types.Smoothness smoothness;
        input Modelica.Blocks.Types.Extrapolation extrapolation;
        output Integer tableID;
      external "C" tableID=  ModelicaTables_CombiTimeTable_init(
                     tableName, fileName, table, size(table, 1), size(table, 2),
                     startTime, smoothness, extrapolation);
      end tableTimeInit;

      function tableTimeIpo 
        "Interpolate 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        input Integer icol;
        input Real timeIn;
        output Real value;
      external "C" value =
                         ModelicaTables_CombiTimeTable_interpolate(tableID, icol, timeIn);
      end tableTimeIpo;

      function tableTimeTmin 
        "Return minimum time value of 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        output Real Tmin "minimum time value in table";
      external "C" Tmin =
                        ModelicaTables_CombiTimeTable_minimumTime(tableID);
      end tableTimeTmin;

      function tableTimeTmax 
        "Return maximum time value of 1-dim. table where first column is time (for details see: Modelica/Resources/C-Sources/ModelicaTables.h)"
        input Integer tableID;
        output Real Tmax "maximum time value in table";
      external "C" Tmax =
                        ModelicaTables_CombiTimeTable_maximumTime(tableID);
      end tableTimeTmax;

    equation 
      if tableOnFile then
        assert(tableName<>"NoName", "tableOnFile = true and no table name given");
      end if;
      if not tableOnFile then
        assert(size(table,1) > 0 and size(table,2) > 0, "tableOnFile = false and parameter table is an empty matrix");
      end if;
      for i in 1:nout loop
        y[i] = p_offset[i] + tableTimeIpo(tableID, columns[i], time);
      end for;
      when initial() then
        tableID=tableTimeInit((if not tableOnFile then "NoName" else tableName),
                              (if not tableOnFile then "NoName" else fileName), table,
                              startTime, smoothness, extrapolation);
      end when;
    initial equation 
        t_min=tableTimeTmin(tableID);
        t_max=tableTimeTmax(tableID);
    end CombiTimeTable;

--------------

|image69| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.BooleanConstant
-----------------------------------------------------------------------------------------------------------

**Generate constant signal of type Boolean**

.. figure:: Modelica.Blocks.Sources.BooleanConstantD.png
   :align: center
   :alt: Modelica.Blocks.Sources.BooleanConstant

   Modelica.Blocks.Sources.BooleanConstant

Information
~~~~~~~~~~~

::

The Boolean output y is a constant signal:

.. figure:: ../Resources/Images/Blocks/Sources/BooleanConstant.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.partialBooleanSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource>`_
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+-------------------------+
| Type      | Name   | Default   | Description             |
+===========+========+===========+=========================+
| Boolean   | k      | true      | Constant output value   |
+-----------+--------+-----------+-------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanConstant "Generate constant signal of type Boolean"
      parameter Boolean k=true "Constant output value";
      extends Interfaces.partialBooleanSource;

    equation 
      y = k;
    end BooleanConstant;

--------------

|image70| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.BooleanStep
-------------------------------------------------------------------------------------------------------

**Generate step signal of type Boolean**

.. figure:: Modelica.Blocks.Sources.BooleanStepD.png
   :align: center
   :alt: Modelica.Blocks.Sources.BooleanStep

   Modelica.Blocks.Sources.BooleanStep

Information
~~~~~~~~~~~

::

The Boolean output y is a step signal:

.. figure:: ../Resources/Images/Blocks/Sources/BooleanStep.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.partialBooleanSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource>`_
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+--------------+-----------+----------------------------------+
| Type                                                    | Name         | Default   | Description                      |
+=========================================================+==============+===========+==================================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime    | 0         | Time instant of step start [s]   |
+---------------------------------------------------------+--------------+-----------+----------------------------------+
| Boolean                                                 | startValue   | false     | Output before startTime          |
+---------------------------------------------------------+--------------+-----------+----------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanStep "Generate step signal of type Boolean"
      parameter Modelica.SIunits.Time startTime=0 "Time instant of step start";
      parameter Boolean startValue = false "Output before startTime";

      extends Interfaces.partialBooleanSource;
    equation 
     y = if time >= startTime then not startValue else startValue;
    end BooleanStep;

--------------

|image71| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.BooleanPulse
--------------------------------------------------------------------------------------------------------

**Generate pulse signal of type Boolean**

.. figure:: Modelica.Blocks.Sources.BooleanPulseD.png
   :align: center
   :alt: Modelica.Blocks.Sources.BooleanPulse

   Modelica.Blocks.Sources.BooleanPulse

Information
~~~~~~~~~~~

::

The Boolean output y is a pulse signal:

.. figure:: ../Resources/Images/Blocks/Sources/Pulse.png
   :align: center
   :alt: 

::

Extends from
`Modelica.Blocks.Interfaces.partialBooleanSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource>`_
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+-----------------------------------+
| Type                                                    | Name        | Default   | Description                       |
+=========================================================+=============+===========+===================================+
| Real                                                    | width       | 50        | Width of pulse in % of period     |
+---------------------------------------------------------+-------------+-----------+-----------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | period      |           | Time for one period [s]           |
+---------------------------------------------------------+-------------+-----------+-----------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Time instant of first pulse [s]   |
+---------------------------------------------------------+-------------+-----------+-----------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanPulse "Generate pulse signal of type Boolean"

      parameter Real width(
        final min=Modelica.Constants.small,
        final max=100) = 50 "Width of pulse in % of period";
      parameter Modelica.SIunits.Time period(final min=Modelica.Constants.small,start=1) 
        "Time for one period";
      parameter Modelica.SIunits.Time startTime=0 "Time instant of first pulse";
      extends Modelica.Blocks.Interfaces.partialBooleanSource;

    protected 
      parameter Modelica.SIunits.Time Twidth=period*width/100 "width of one pulse";
      discrete Modelica.SIunits.Time pulsStart "Start time of pulse";
    initial equation 
      pulsStart = startTime;
    equation 
        when sample(startTime, period) then
          pulsStart = time;
        end when;
        y = time >= pulsStart and time < pulsStart + Twidth;
    end BooleanPulse;

--------------

|image72| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.SampleTrigger
---------------------------------------------------------------------------------------------------------

**Generate sample trigger signal**

.. figure:: Modelica.Blocks.Sources.SampleTriggerD.png
   :align: center
   :alt: Modelica.Blocks.Sources.SampleTrigger

   Modelica.Blocks.Sources.SampleTrigger

Information
~~~~~~~~~~~

::

The Boolean output y is a trigger signal where the output y is only
**true** at sample times (defined by parameter **period**) and is
otherwise **false**.

.. figure:: ../Resources/Images/Blocks/Sources/SampleTrigger.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.partialBooleanSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource>`_
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| Type                                                    | Name        | Default   | Description                                |
+=========================================================+=============+===========+============================================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | period      |           | Sample period [s]                          |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Time instant of first sample trigger [s]   |
+---------------------------------------------------------+-------------+-----------+--------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block SampleTrigger "Generate sample trigger signal"
      parameter Modelica.SIunits.Time period(final min=Modelica.Constants.small,start=0.01) 
        "Sample period";
      parameter Modelica.SIunits.Time startTime=0 
        "Time instant of first sample trigger";
      extends Interfaces.partialBooleanSource;

    equation 
      y = sample(startTime, period);
    end SampleTrigger;

--------------

|image73| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.BooleanTable
--------------------------------------------------------------------------------------------------------

**Generate a Boolean output signal based on a vector of time instants**

.. figure:: Modelica.Blocks.Sources.BooleanTableD.png
   :align: center
   :alt: Modelica.Blocks.Sources.BooleanTable

   Modelica.Blocks.Sources.BooleanTable

Information
~~~~~~~~~~~

::

The Boolean output y is a signal defined by parameter vector **table**.
In the vector time points are stored. At every time point, the output y
changes its value to the negated value of the previous one.

.. figure:: ../Resources/Images/Blocks/Sources/BooleanTable.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.partialBooleanSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.partialBooleanSource>`_
(Partial source block (has 1 output Boolean signal and an appropriate
default icon)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+--------------+-----------+------------------------------------------------------------------------------------------------------------+
| Type                                                    | Name         | Default   | Description                                                                                                |
+=========================================================+==============+===========+============================================================================================================+
| Boolean                                                 | startValue   | false     | Start value of y. At time = table[1], y changes to 'not startValue'                                        |
+---------------------------------------------------------+--------------+-----------+------------------------------------------------------------------------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | table[:]     |           | Vector of time points. At every time point, the output y gets its opposite value (e.g., table={0,1}) [s]   |
+---------------------------------------------------------+--------------+-----------+------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | y      | Connector of Boolean output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block BooleanTable 
      "Generate a Boolean output signal based on a vector of time instants"

      parameter Boolean startValue = false 
        "Start value of y. At time = table[1], y changes to 'not startValue'";
      parameter Modelica.SIunits.Time table[:] 
        "Vector of time points. At every time point, the output y gets its opposite value (e.g., table={0,1})";
      extends Interfaces.partialBooleanSource;

    protected 
      function getFirstIndex "Get first index of table and check table"
        input Real table[:] "Vector of time instants";
        input Modelica.SIunits.Time simulationStartTime "Simulation start time";
        input Boolean startValue "Value of y for y < table[1]";
        output Integer index "First index to be used";
        output Modelica.SIunits.Time nextTime "Time instant of first event";
        output Boolean y "Value of y at simulationStartTime";
      protected 
        Modelica.SIunits.Time t_last;
        Integer j;
        Integer n=size(table,1) "Number of table points";
      algorithm 
        if size(table,1) == 0 then
           index :=0;
           nextTime :=-Modelica.Constants.inf;
           y :=startValue;
        elseif size(table,1) == 1 then
           index :=1;
           if table[1] > simulationStartTime then
              nextTime :=table[1];
              y        :=startValue;
           else
              nextTime :=simulationStartTime;
              y        :=startValue;
           end if;
        else

        // Check whether time values are strict monotonically increasing
          t_last :=table[1];
          for i in 2:n loop
             assert(table[i] > t_last,
               "Time values of table not strict monotonically increasing: table[" +
               String(i-1) + "] = " + String(table[i-1]) + "table[" + String(i)   +
               "] = " + String(table[i]));
          end for;

          // Determine first index in table
          j := 1;
          y := startValue;
          while j < n and table[j] <= simulationStartTime loop
            y :=not  y;
            j := j + 1;
          end while;

          if j == 1 then
             nextTime := table[1];
             y        := startValue;
          elseif j == n and table[n] <= simulationStartTime then
             nextTime := simulationStartTime - 1;
             y        :=not  y;
          else
             nextTime := table[j];
          end if;

          index := j;
        end if;
      end getFirstIndex;

      parameter Integer n = size(table,1) "Number of table points";
      Modelica.SIunits.Time nextTime;
      Integer index "Index of actual table entry";
    initial algorithm 
      (index, nextTime, y) :=getFirstIndex(table, time, startValue);
    algorithm 
      when time >= pre(nextTime) and n > 0 then
         if index < n then
            index    := index + 1;
            nextTime := table[index];
            y        :=not  y;
         elseif index == n then
            index := index + 1;
            y     :=not  y;
         end if;
      end when;
    end BooleanTable;

--------------

|image74| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.RadioButtonSource
-------------------------------------------------------------------------------------------------------------

**Boolean signal source that mimis a radio button**

.. figure:: Modelica.Blocks.Sources.RadioButtonSourceD.png
   :align: center
   :alt: Modelica.Blocks.Sources.RadioButtonSource

   Modelica.Blocks.Sources.RadioButtonSource

Information
~~~~~~~~~~~

::

Boolean signal source that mimics a radio button: Via a table, a radio
button is pressed (i.e., the output 'on' is set to true) and is reset
when an element of the Boolean vector 'reset' becomes true. If both
appear at the same time instant, setting the button according to the
table has a higher priority as reseting the button. Example:

::

      RadioButtonSource start(buttonTimeTable={1,3}, reset={stop.on});
      RadioButtonSource stop (buttonTimeTable={2,4}, reset={start.on});

The "start" button is pressed at time=1 s and time=3 s, whereas the
"stop" button is pressed at time=2 s and time=4 s. This gives the
following result:

    |image75|

This example is also available in
`Modelica.Blocks.Examples.Interaction1 <Modelica_Blocks_Examples.html#Modelica.Blocks.Examples.Interaction1>`_

::

Parameters
~~~~~~~~~~

+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+
| Type                                                    | Name                 | Default   | Description                                                  |
+=========================================================+======================+===========+==============================================================+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | buttonTimeTable[:]   |           | Time instants where button is pressed [s]                    |
+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+
| Time varying expressions                                |
+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+
| Boolean                                                 | reset[:]             | {false}   | Reset button to false, if an element of reset becomes true   |
+---------------------------------------------------------+----------------------+-----------+--------------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+---------------+
| Type                                                                                                 | Name   | Description   |
+======================================================================================================+========+===============+
| output `BooleanOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BooleanOutput>`_   | on     |               |
+------------------------------------------------------------------------------------------------------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block RadioButtonSource 
      "Boolean signal source that mimis a radio button"

      parameter Modelica.SIunits.Time buttonTimeTable[:] 
        "Time instants where button is pressed";
      input Boolean reset[:]={false} 
        "Reset button to false, if an element of reset becomes true";

      Modelica.Blocks.Interfaces.BooleanOutput on(start=false,fixed=true);
    protected 
      Modelica.Blocks.Sources.BooleanTable table(table=buttonTimeTable);
      parameter Integer nReset = size(reset,1);
      Boolean pre_reset[nReset];
    initial equation 
      pre(pre_reset)=fill(false,nReset);
      pre(reset) = fill(false,nReset);
    algorithm 
      pre_reset :=pre(reset);
      when pre_reset then
         on := false;
      end when;

      when change(table.y) then
         on := true;
      end when;

    end RadioButtonSource;

--------------

|image76| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.IntegerConstant
-----------------------------------------------------------------------------------------------------------

**Generate constant signal of type Integer**

.. figure:: Modelica.Blocks.Sources.IntegerConstantD.png
   :align: center
   :alt: Modelica.Blocks.Sources.IntegerConstant

   Modelica.Blocks.Sources.IntegerConstant

Information
~~~~~~~~~~~

::

The Integer output y is a constant signal:

.. figure:: ../Resources/Images/Blocks/Sources/IntegerConstant.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.IntegerSO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSO>`_
(Single Integer Output continuous control block).

Parameters
~~~~~~~~~~

+-----------+--------+-----------+-------------------------+
| Type      | Name   | Default   | Description             |
+===========+========+===========+=========================+
| Integer   | k      |           | Constant output value   |
+-----------+--------+-----------+-------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | Connector of Integer output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block IntegerConstant "Generate constant signal of type Integer"
      parameter Integer k(start=1) "Constant output value";
      extends Interfaces.IntegerSO;

    equation 
      y = k;
    end IntegerConstant;

--------------

|image77| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.IntegerStep
-------------------------------------------------------------------------------------------------------

**Generate step signal of type Integer**

.. figure:: Modelica.Blocks.Sources.IntegerStepD.png
   :align: center
   :alt: Modelica.Blocks.Sources.IntegerStep

   Modelica.Blocks.Sources.IntegerStep

Information
~~~~~~~~~~~

::

The Integer output y is a step signal:

.. figure:: ../Resources/Images/Blocks/Sources/IntegerStep.png
   :align: center
   :alt: 

::

Extends from
`Interfaces.IntegerSignalSource <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSignalSource>`_
(Base class for continuous Integer signal source).

Parameters
~~~~~~~~~~

+---------------------------------------------------------+-------------+-----------+----------------------------------------------+
| Type                                                    | Name        | Default   | Description                                  |
+=========================================================+=============+===========+==============================================+
| Integer                                                 | height      | 1         | Height of step                               |
+---------------------------------------------------------+-------------+-----------+----------------------------------------------+
| Integer                                                 | offset      | 0         | Offset of output signal y                    |
+---------------------------------------------------------+-------------+-----------+----------------------------------------------+
| `Time <Modelica_SIunits.html#Modelica.SIunits.Time>`_   | startTime   | 0         | Output y = offset for time < startTime [s]   |
+---------------------------------------------------------+-------------+-----------+----------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | Connector of Integer output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block IntegerStep "Generate step signal of type Integer"
      parameter Integer height=1 "Height of step";
      extends Interfaces.IntegerSignalSource;
    equation 
      y = offset + (if time < startTime then 0 else height);
    end IntegerStep;

--------------

|image78| `Modelica.Blocks.Sources <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources>`_.IntegerTable
--------------------------------------------------------------------------------------------------------

**Generate an Integer output signal based on a table matrix with [time,
yi] values**

.. figure:: Modelica.Blocks.Sources.IntegerTableD.png
   :align: center
   :alt: Modelica.Blocks.Sources.IntegerTable

   Modelica.Blocks.Sources.IntegerTable

Information
~~~~~~~~~~~

::

This block generates an Integer output signal by using a table. The time
points and y-values are stored in a matrix **table[i,j]**, where the
first column table[:,1] contains the Real time points and the second
column contains the Integer value of the output y at this time point.

An assert is triggered, if no table values are provided, if the time
points are not strict monotonically increasing, or if the second column
of the table matrix does not contain Integer values.

If the simulation time is less than the first table time instant, then
the output y = table[1,2].
 If the simulation time is greater than the last table time instant,
then the output y = table[end,2].

Example:

::

       table = [  0, 1;
                  1, 4;
                1.5, 5;
                  2, 6];

results in the following output:

    .. figure:: ../Resources/Images/Blocks/Sources/IntegerTable.png
       :align: center
       :alt: 

::

Extends from
`Interfaces.IntegerSO <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerSO>`_
(Single Integer Output continuous control block).

Parameters
~~~~~~~~~~

+--------+---------------+-----------------+-------------------------------------------------------+
| Type   | Name          | Default         | Description                                           |
+========+===============+=================+=======================================================+
| Real   | table[:, 2]   | fill(0, 0, 2)   | Table matrix (first column: time; second column: y)   |
+--------+---------------+-----------------+-------------------------------------------------------+

Connectors
~~~~~~~~~~

+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+
| Type                                                                                                 | Name   | Description                          |
+======================================================================================================+========+======================================+
| output `IntegerOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.IntegerOutput>`_   | y      | Connector of Integer output signal   |
+------------------------------------------------------------------------------------------------------+--------+--------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    block IntegerTable 
      "Generate an Integer output signal based on a table matrix with [time, yi] values"

      parameter Real table[:, 2] = fill(0, 0, 2) 
        "Table matrix (first column: time; second column: y)";

      extends Interfaces.IntegerSO;

    protected 
      function getFirstIndex "Get first index of table and check table"
        input Real table[:,2] "Table matrix";
        input Modelica.SIunits.Time simulationStartTime "Simulation start time";
        output Integer index "First index to be used";
        output Modelica.SIunits.Time nextTime "Time instant of first event";
        output Integer y "Value of y at simulationStartTime";
      protected 
        Modelica.SIunits.Time t_last;
        Integer j;
        Integer n=size(table,1) "Number of table points";
      algorithm 
        if size(table,1) == 0 then
           index :=0;
           nextTime := simulationStartTime - 1;
           y :=0;
        else
           // Check whether time values are strict monotonically increasing
           t_last :=table[1,1];
           for i in 2:n loop
              assert(table[i,1] > t_last,
                "Time values of table not strict monotonically increasing: table[" +
                String(i-1) + ",1] = " + String(table[i-1,1]) + "table[" + String(i)   +
                ",1] = " + String(table[i,1]));
           end for;

           // Check that all values in the second column are Integer values
           for i in 1:n loop
              assert(rem(table[i,2],1) == 0.0, "Table value is not an Integer: table[" +
                String(i) + ",2] = " + String(table[i,2]));
           end for;

           // Determine index in table for "nextTime"
           j := 1;
           y := integer(table[1,2]);
           while j < n and table[j,1] <= simulationStartTime loop
             j := j + 1;
           end while;

           if j == 1 then
              nextTime := table[1,1];
              y        := integer(table[1,2]);
           elseif j == n and table[n,1] <= simulationStartTime then
              nextTime := simulationStartTime - 1;
              y        := integer(table[n,2]);
           else
              nextTime := table[j,1];
              y        := integer(table[j-1,2]);
           end if;

           index := j;
        end if;
      end getFirstIndex;

      parameter Integer n = size(table,1) "Number of table points";
      Modelica.SIunits.Time nextTime;
      Integer index "Index of actual table entry";
    initial algorithm 
      (index, nextTime, y) :=getFirstIndex(table, time);
    equation 
      assert(size(table,1) > 0, "No table values defined.");
      when time >= pre(nextTime) then
         y        = integer(table[pre(index),2]);
         index    = pre(index) + 1;
         nextTime = if index <= n then table[index,1] else pre(nextTime) - 1;
      end when;
    end IntegerTable;

--------------

`Modelica.Blocks.Sources.KinematicPTP2 <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.KinematicPTP2>`_.position\_der
---------------------------------------------------------------------------------------------------------------------------

Inputs
~~~~~~

+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Type   | Name            | Default   | Description                                                                                                                 |
+========+=================+===========+=============================================================================================================================+
| Real   | q\_qd\_qdd[3]   |           | Required values for position, speed, acceleration                                                                           |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy           |           | Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)   |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy\_der      |           |                                                                                                                             |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | qd     |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function position_der
      annotation(derivative=position_der2);
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       output Real qd;
    algorithm 
      qd :=q_qd_qdd[2];
    end position_der;

--------------

`Modelica.Blocks.Sources.KinematicPTP2 <Modelica_Blocks_Sources.html#Modelica.Blocks.Sources.KinematicPTP2>`_.position\_der2
----------------------------------------------------------------------------------------------------------------------------

Inputs
~~~~~~

+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Type   | Name            | Default   | Description                                                                                                                 |
+========+=================+===========+=============================================================================================================================+
| Real   | q\_qd\_qdd[3]   |           | Required values for position, speed, acceleration                                                                           |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy           |           | Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)   |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy\_der      |           |                                                                                                                             |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+
| Real   | dummy\_der2     |           |                                                                                                                             |
+--------+-----------------+-----------+-----------------------------------------------------------------------------------------------------------------------------+

Outputs
~~~~~~~

+--------+--------+---------------+
| Type   | Name   | Description   |
+========+========+===============+
| Real   | qdd    |               |
+--------+--------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    function position_der2
       input Real q_qd_qdd[3] "Required values for position, speed, acceleration";
       input Real dummy 
        "Just to have one input signal that should be differentiated to avoid possible problems in the Modelica tool (is not used)";
       input Real dummy_der;
       input Real dummy_der2;
       output Real qdd;
    algorithm 
      qdd :=q_qd_qdd[3];
    end position_der2;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:27:40
2010.

.. |Modelica.Blocks.Sources.RealExpression| image:: Modelica.Blocks.Sources.RealExpressionS.png
.. |Modelica.Blocks.Sources.IntegerExpression| image:: Modelica.Blocks.Sources.IntegerExpressionS.png
.. |Modelica.Blocks.Sources.BooleanExpression| image:: Modelica.Blocks.Sources.BooleanExpressionS.png
.. |Modelica.Blocks.Sources.Clock| image:: Modelica.Blocks.Sources.ClockS.png
.. |Modelica.Blocks.Sources.Constant| image:: Modelica.Blocks.Sources.ConstantS.png
.. |Modelica.Blocks.Sources.Step| image:: Modelica.Blocks.Sources.StepS.png
.. |Modelica.Blocks.Sources.Ramp| image:: Modelica.Blocks.Sources.RampS.png
.. |Modelica.Blocks.Sources.Sine| image:: Modelica.Blocks.Sources.SineS.png
.. |Modelica.Blocks.Sources.ExpSine| image:: Modelica.Blocks.Sources.ExpSineS.png
.. |Modelica.Blocks.Sources.Exponentials| image:: Modelica.Blocks.Sources.ExponentialsS.png
.. |Modelica.Blocks.Sources.Pulse| image:: Modelica.Blocks.Sources.PulseS.png
.. |Modelica.Blocks.Sources.SawTooth| image:: Modelica.Blocks.Sources.SawToothS.png
.. |Modelica.Blocks.Sources.Trapezoid| image:: Modelica.Blocks.Sources.TrapezoidS.png
.. |Modelica.Blocks.Sources.KinematicPTP| image:: Modelica.Blocks.Sources.KinematicPTPS.png
.. |Modelica.Blocks.Sources.KinematicPTP2| image:: Modelica.Blocks.Sources.KinematicPTP2S.png
.. |Modelica.Blocks.Sources.TimeTable| image:: Modelica.Blocks.Sources.TimeTableS.png
.. |Modelica.Blocks.Sources.CombiTimeTable| image:: Modelica.Blocks.Sources.CombiTimeTableS.png
.. |Modelica.Blocks.Sources.BooleanConstant| image:: Modelica.Blocks.Sources.BooleanConstantS.png
.. |Modelica.Blocks.Sources.BooleanStep| image:: Modelica.Blocks.Sources.BooleanStepS.png
.. |Modelica.Blocks.Sources.BooleanPulse| image:: Modelica.Blocks.Sources.BooleanPulseS.png
.. |Modelica.Blocks.Sources.SampleTrigger| image:: Modelica.Blocks.Sources.SampleTriggerS.png
.. |Modelica.Blocks.Sources.BooleanTable| image:: Modelica.Blocks.Sources.BooleanTableS.png
.. |Modelica.Blocks.Sources.RadioButtonSource| image:: Modelica.Blocks.Sources.RadioButtonSourceS.png
.. |Modelica.Blocks.Sources.IntegerConstant| image:: Modelica.Blocks.Sources.IntegerConstantS.png
.. |Modelica.Blocks.Sources.IntegerStep| image:: Modelica.Blocks.Sources.IntegerStepS.png
.. |Modelica.Blocks.Sources.IntegerTable| image:: Modelica.Blocks.Sources.IntegerTableS.png
.. |image26| image:: Modelica.Blocks.Sources.RealExpressionS.png
.. |image27| image:: Modelica.Blocks.Sources.IntegerExpressionS.png
.. |image28| image:: Modelica.Blocks.Sources.BooleanExpressionS.png
.. |image29| image:: Modelica.Blocks.Sources.ClockS.png
.. |image30| image:: Modelica.Blocks.Sources.ConstantS.png
.. |image31| image:: Modelica.Blocks.Sources.StepS.png
.. |image32| image:: Modelica.Blocks.Sources.RampS.png
.. |image33| image:: Modelica.Blocks.Sources.SineS.png
.. |image34| image:: Modelica.Blocks.Sources.ExpSineS.png
.. |image35| image:: Modelica.Blocks.Sources.ExponentialsS.png
.. |image36| image:: Modelica.Blocks.Sources.PulseS.png
.. |image37| image:: Modelica.Blocks.Sources.SawToothS.png
.. |image38| image:: Modelica.Blocks.Sources.TrapezoidS.png
.. |image39| image:: Modelica.Blocks.Sources.KinematicPTPS.png
.. |image40| image:: Modelica.Blocks.Sources.KinematicPTP2S.png
.. |image41| image:: Modelica.Blocks.Sources.TimeTableS.png
.. |image42| image:: Modelica.Blocks.Sources.CombiTimeTableS.png
.. |image43| image:: Modelica.Blocks.Sources.BooleanConstantS.png
.. |image44| image:: Modelica.Blocks.Sources.BooleanStepS.png
.. |image45| image:: Modelica.Blocks.Sources.BooleanPulseS.png
.. |image46| image:: Modelica.Blocks.Sources.SampleTriggerS.png
.. |image47| image:: Modelica.Blocks.Sources.BooleanTableS.png
.. |image48| image:: Modelica.Blocks.Sources.RadioButtonSourceS.png
.. |image49| image:: Modelica.Blocks.Sources.IntegerConstantS.png
.. |image50| image:: Modelica.Blocks.Sources.IntegerStepS.png
.. |image51| image:: Modelica.Blocks.Sources.IntegerTableS.png
.. |image52| image:: Modelica.Blocks.Sources.RealExpressionI.png
.. |image53| image:: Modelica.Blocks.Sources.IntegerExpressionI.png
.. |image54| image:: Modelica.Blocks.Sources.BooleanExpressionI.png
.. |image55| image:: Modelica.Blocks.Sources.ClockI.png
.. |image56| image:: Modelica.Blocks.Sources.ConstantI.png
.. |image57| image:: Modelica.Blocks.Sources.StepI.png
.. |image58| image:: Modelica.Blocks.Sources.RampI.png
.. |image59| image:: Modelica.Blocks.Sources.SineI.png
.. |image60| image:: Modelica.Blocks.Sources.ExpSineI.png
.. |image61| image:: Modelica.Blocks.Sources.ExponentialsI.png
.. |image62| image:: Modelica.Blocks.Sources.PulseI.png
.. |image63| image:: Modelica.Blocks.Sources.SawToothI.png
.. |image64| image:: Modelica.Blocks.Sources.TrapezoidI.png
.. |image65| image:: Modelica.Blocks.Sources.KinematicPTPI.png
.. |image66| image:: Modelica.Blocks.Sources.KinematicPTP2I.png
.. |image67| image:: Modelica.Blocks.Sources.TimeTableI.png
.. |image68| image:: Modelica.Blocks.Sources.CombiTimeTableI.png
.. |image69| image:: Modelica.Blocks.Sources.BooleanConstantI.png
.. |image70| image:: Modelica.Blocks.Sources.BooleanStepI.png
.. |image71| image:: Modelica.Blocks.Sources.BooleanPulseI.png
.. |image72| image:: Modelica.Blocks.Sources.SampleTriggerI.png
.. |image73| image:: Modelica.Blocks.Sources.BooleanTableI.png
.. |image74| image:: Modelica.Blocks.Sources.RadioButtonSourceI.png
.. |image75| image:: ../Resources/Images/Blocks/Sources/RadioButtonSource.png
.. |image76| image:: Modelica.Blocks.Sources.IntegerConstantI.png
.. |image77| image:: Modelica.Blocks.Sources.IntegerStepI.png
.. |image78| image:: Modelica.Blocks.Sources.IntegerTableI.png
