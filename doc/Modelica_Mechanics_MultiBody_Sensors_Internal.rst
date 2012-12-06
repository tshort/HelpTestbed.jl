=============================================
Modelica.Mechanics.MultiBody.Sensors.Internal
=============================================

`Modelica.Mechanics.MultiBody.Sensors <Modelica_Mechanics_MultiBody_Sensors.html#Modelica.Mechanics.MultiBody.Sensors>`_.Internal
---------------------------------------------------------------------------------------------------------------------------------

**Internal package, should not be used by user**

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.Package <Modelica_Icons_Package.html#Modelica.Icons.Package>`_
(Icon for standard packages).

Package Content
~~~~~~~~~~~~~~~

+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| Name                                                                                                                                                                                                                                           | Description                                                                                                                                  |
+================================================================================================================================================================================================================================================+==============================================================================================================================================+
| |image15| `PartialAbsoluteSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensor>`_                                                                                    | Partial absolute sensor model for sensors defined by components                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image16| `PartialAbsoluteBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor>`_                                                                            | Partial absolute sensor models for sensors defined by equations (frame\_resolve must be connected exactly once)                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image17| `PartialRelativeSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensor>`_                                                                                    | Partial relative sensor model for sensors defined by components                                                                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image18| `PartialRelativeBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor>`_                                                                            | Partial relative sensor models for sensors defined by equations (frame\_resolve must be connected exactly once)                              |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image19| `BasicAbsolutePosition <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePosition>`_                                                                                    | Measure absolute position vector (same as Sensors.AbsolutePosition, but frame\_resolve is not conditional and must be connected)             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image20| `BasicAbsoluteAngularVelocity <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocity>`_                                                                      | Measure absolute angular velocity                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image21| `BasicRelativePosition <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePosition>`_                                                                                    | Measure relative position vector (same as Sensors.RelativePosition, but frame\_resolve is not conditional and must be connected)             |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image22| `BasicRelativeAngularVelocity <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativeAngularVelocity>`_                                                                      | Measure relative angular velocity                                                                                                            |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image23| `BasicTransformAbsoluteVector <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVector>`_                                                                      | Transform absolute vector in to another frame                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image24| `BasicTransformRelativeVector <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVector>`_                                                                      | Transform relative vector in to another frame                                                                                                |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image25| `ZeroForceAndTorque <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorque>`_                                                                                          | Set force and torque to zero                                                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image26| `PartialCutForceSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensor>`_                                                                                    | Base model to measure the cut force and/or torque between two frames, defined by components                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image27| `PartialCutForceBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor>`_                                                                            | Base model to measure the cut force and/or torque between two frames, defined by equations (frame\_resolve must be connected exactly once)   |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image28| `BasicCutForce <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForce>`_                                                                                                    | Measure cut force vector (frame\_resolve must be connected)                                                                                  |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+
| |image29| `BasicCutTorque <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutTorque>`_                                                                                                  | Measure cut torque vector (frame\_resolve must be connected)                                                                                 |
+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+----------------------------------------------------------------------------------------------------------------------------------------------+

--------------

|image30| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.PartialAbsoluteSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial absolute sensor model for sensors defined by components**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensor

   Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensor

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------+
| Type                                                                                                         | Name       | Description                                                        |
+==============================================================================================================+============+====================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system at which the kinematic quantities are measured   |
+--------------------------------------------------------------------------------------------------------------+------------+--------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialAbsoluteSensor 
      "Partial absolute sensor model for sensors defined by components"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system at which the kinematic quantities are measured";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
    end PartialAbsoluteSensor;

--------------

|image31| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.PartialAbsoluteBaseSensor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial absolute sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor

   Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                      |
+==========================================================================================================================+==================+==================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system from which kinematic quantities are measured   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved         |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PartialAbsoluteBaseSensor 
      "Partial absolute sensor models for sensors defined by equations (frame_resolve must be connected exactly once)"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system from which kinematic quantities are measured";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "Coordinate system in which vector is optionally resolved";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_resolve) == 1, "Connector frame_resolve must be connected exactly once");
       frame_a.f = zeros(3);
       frame_a.t = zeros(3);
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);
    end PartialAbsoluteBaseSensor;

--------------

|image32| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.PartialRelativeSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial relative sensor model for sensors defined by components**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensor

   Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensor

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+-----------------------+
| Type                                                                                                         | Name       | Description           |
+==============================================================================================================+============+=======================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   | Coordinate system a   |
+--------------------------------------------------------------------------------------------------------------+------------+-----------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_   | frame\_b   | Coordinate system b   |
+--------------------------------------------------------------------------------------------------------------+------------+-----------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialRelativeSensor 
      "Partial relative sensor model for sensors defined by components"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_b) > 0, "Connector frame_b must be connected at least once");
    end PartialRelativeSensor;

--------------

|image33| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.PartialRelativeBaseSensor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor

   Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                          |
+==========================================================================================================================+==================+======================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a (measurement is between frame\_a and frame\_b)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b (measurement is between frame\_a and frame\_b)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model PartialRelativeBaseSensor 
      "Partial relative sensor models for sensors defined by equations (frame_resolve must be connected exactly once)"
      extends Modelica.Icons.RotationalSensor;

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system a (measurement is between frame_a and frame_b)";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b 
        "Coordinate system b (measurement is between frame_a and frame_b)";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "Coordinate system in which vector is optionally resolved";

    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_b) > 0, "Connector frame_b must be connected at least once");
       assert(cardinality(frame_resolve) == 1, "Connector frame_resolve must be connected exactly once");
       frame_a.f = zeros(3);
       frame_a.t = zeros(3);
       frame_b.f = zeros(3);
       frame_b.t = zeros(3);
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);
    end PartialRelativeBaseSensor;

--------------

|image34| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicAbsolutePosition
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Measure absolute position vector (same as Sensors.AbsolutePosition,
but frame\_resolve is not conditional and must be connected)**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePositionD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePosition

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePosition

Information
~~~~~~~~~~~

Extends from
`Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor>`_
(Partial absolute sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Type                                                                                                              | Name             | Default                           | Description                                                                             |
+===================================================================================================================+==================+===================================+=========================================================================================+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector r is resolved (1: world, 2: frame\_a, 3: frame\_resolve)   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                              |
+==========================================================================================================================+==================+==========================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system from which kinematic quantities are measured                           |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved                                 |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | r[3]             | Absolute position vector frame\_a.r\_0 resolved in frame defined by resolveInFrame [m]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicAbsolutePosition 
      "Measure absolute position vector (same as Sensors.AbsolutePosition, but frame_resolve is not conditional and must be connected)"
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;
      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput r[3](each final quantity="Position", each final 
                unit = "m") 
        "Absolute position vector frame_a.r_0 resolved in frame defined by resolveInFrame";

      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector r is resolved (1: world, 2: frame_a, 3: frame_resolve)";

    equation 
       if resolveInFrame == ResolveInFrameA.world then
          r = frame_a.r_0;
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          r = Frames.resolve2(frame_a.R, frame_a.r_0);
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          r = Frames.resolve2(frame_resolve.R, frame_a.r_0);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          r = zeros(3);
       end if;
    end BasicAbsolutePosition;

--------------

|image35| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicAbsoluteAngularVelocity
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Measure absolute angular velocity**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocityD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocity

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocity

Information
~~~~~~~~~~~

Extends from
`Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor>`_
(Partial absolute sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------+
| Type                                                                                                              | Name             | Default                           | Description                                                                             |
+===================================================================================================================+==================+===================================+=========================================================================================+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector w is resolved (1: world, 2: frame\_a, 3: frame\_resolve)   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                      |
+==========================================================================================================================+==================+==================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system from which kinematic quantities are measured   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved         |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | w[3]             | Absolute angular velocity vector [rad/s]                         |
+--------------------------------------------------------------------------------------------------------------------------+------------------+------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicAbsoluteAngularVelocity 
      "Measure absolute angular velocity"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput w[3](final quantity="AngularVelocity",final unit = "rad/s") 
        "Absolute angular velocity vector";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector w is resolved (1: world, 2: frame_a, 3: frame_resolve)";

    equation 
       if resolveInFrame == ResolveInFrameA.world then
          w = Frames.angularVelocity1(frame_a.R);
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          w = Frames.angularVelocity2(frame_a.R);
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          w = Frames.resolveRelative(Frames.angularVelocity1(frame_a.R), frame_a.R, frame_resolve.R);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          w = zeros(3);
       end if;
    end BasicAbsoluteAngularVelocity;

--------------

|image36| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicRelativePosition
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Measure relative position vector (same as Sensors.RelativePosition,
but frame\_resolve is not conditional and must be connected)**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePositionD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePosition

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePosition

Information
~~~~~~~~~~~

Extends from
`Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor>`_
(Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------------------------+
| Type                                                                                                                | Name             | Default                           | Description                                                                                               |
+=====================================================================================================================+==================+===================================+===========================================================================================================+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector r\_rel is resolved (1: world, 2: frame\_a, 3: frame\_b, 4: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                                              |
+==========================================================================================================================+==================+==========================================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a (measurement is between frame\_a and frame\_b)                                       |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b (measurement is between frame\_a and frame\_b)                                       |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved                                                 |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | r\_rel[3]        | Relative position vector frame\_b.r\_0 - frame\_a.r\_0 resolved in frame defined by resolveInFrame [m]   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicRelativePosition 
      "Measure relative position vector (same as Sensors.RelativePosition, but frame_resolve is not conditional and must be connected)"
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput r_rel[3](each final quantity="Position", each final 
                unit = "m") 
        "Relative position vector frame_b.r_0 - frame_a.r_0 resolved in frame defined by resolveInFrame";
        

      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a 
        "Frame in which output vector r_rel is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

    equation 
       if resolveInFrame == ResolveInFrameAB.frame_a then
          r_rel = Frames.resolve2(frame_a.R, frame_b.r_0 - frame_a.r_0);
       elseif resolveInFrame == ResolveInFrameAB.frame_b then
          r_rel = Frames.resolve2(frame_b.R, frame_b.r_0 - frame_a.r_0);
       elseif resolveInFrame == ResolveInFrameAB.world then
          r_rel = frame_b.r_0 - frame_a.r_0;
       elseif resolveInFrame == ResolveInFrameAB.frame_resolve then
          r_rel = Frames.resolve2(frame_resolve.R, frame_b.r_0 - frame_a.r_0);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          r_rel = zeros(3);
       end if;
    end BasicRelativePosition;

--------------

|image37| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicRelativeAngularVelocity
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Measure relative angular velocity**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativeAngularVelocityD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativeAngularVelocity

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativeAngularVelocity

Information
~~~~~~~~~~~

Extends from
`Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor>`_
(Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------------------------+
| Type                                                                                                                | Name             | Default                           | Description                                                                                               |
+=====================================================================================================================+==================+===================================+===========================================================================================================+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector w\_rel is resolved (1: world, 2: frame\_a, 3: frame\_b, 4: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+-----------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                          |
+==========================================================================================================================+==================+======================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a (measurement is between frame\_a and frame\_b)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b (measurement is between frame\_a and frame\_b)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | w\_rel[3]        | Relative angular velocity vector [rad/s]                             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicRelativeAngularVelocity 
      "Measure relative angular velocity"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput w_rel[3](final quantity="AngularVelocity",final unit = "rad/s") 
        "Relative angular velocity vector";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a 
        "Frame in which output vector w_rel is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

    protected 
      Modelica.Mechanics.MultiBody.Frames.Orientation R_rel 
        "Relative orientation object from frame_a to frame_b";
    equation 
       R_rel = Frames.relativeRotation(frame_a.R, frame_b.R);
       if resolveInFrame == ResolveInFrameAB.frame_a then
          w_rel = Frames.angularVelocity1(R_rel);
       elseif resolveInFrame == ResolveInFrameAB.frame_b then
          w_rel = Frames.angularVelocity2(R_rel);
       elseif resolveInFrame == ResolveInFrameAB.world then
          w_rel = Frames.resolve1(frame_a.R, Frames.angularVelocity1(R_rel));
       elseif resolveInFrame == ResolveInFrameAB.frame_resolve then
          w_rel = Frames.resolveRelative(Frames.angularVelocity1(R_rel), frame_a.R, frame_resolve.R);
       else
          assert(false, "Wrong value for parameter resolveInFrame");
          w_rel = zeros(3);
       end if;
    end BasicRelativeAngularVelocity;

--------------

|image38| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicTransformAbsoluteVector
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform absolute vector in to another frame**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVectorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVector

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVector

Information
~~~~~~~~~~~

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+-----------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------+
| Type                                                                                                              | Name            | Default                           | Description                                                                                                    |
+===================================================================================================================+=================+===================================+================================================================================================================+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | frame\_r\_in    | Modelica.Mechanics.MultiBody...   | Frame in which vector r\_in is resolved (1: world, 2: frame\_a, 3: frame\_resolve)                             |
+-------------------------------------------------------------------------------------------------------------------+-----------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | frame\_r\_out   | frame\_r\_in                      | Frame in which vector r\_out (= r\_in in other frame) is resolved (1: world, 2: frame\_a, 3: frame\_resolve)   |
+-------------------------------------------------------------------------------------------------------------------+-----------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                               |
+==========================================================================================================================+==================+===========================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system from which absolute kinematic quantities are measured   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved                  |
+--------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | r\_in[3]         | Input vector resolved in frame defined by frame\_r\_in                    |
+--------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | r\_out[3]        | Input vector r\_in resolved in frame defined by frame\_r\_out             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+---------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicTransformAbsoluteVector 
      "Transform absolute vector in to another frame"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;

      extends Modelica.Icons.RotationalSensor;

      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA frame_r_in=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which vector r_in is resolved (1: world, 2: frame_a, 3: frame_resolve)";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA frame_r_out=
                      frame_r_in 
        "Frame in which vector r_out (= r_in in other frame) is resolved (1: world, 2: frame_a, 3: frame_resolve)";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a 
        "Coordinate system from which absolute kinematic quantities are measured";

      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "Coordinate system in which vector is optionally resolved";

      Blocks.Interfaces.RealInput r_in[3] 
        "Input vector resolved in frame defined by frame_r_in";
      Blocks.Interfaces.RealOutput r_out[3] 
        "Input vector r_in resolved in frame defined by frame_r_out";

    protected 
      Modelica.Mechanics.MultiBody.Frames.Orientation R1 
        "Orientation object from world frame to frame in which r_in is resolved";
    equation 
       assert(cardinality(frame_a) > 0, "Connector frame_a must be connected at least once");
       assert(cardinality(frame_resolve) == 1, "Connector frame_resolve must be connected exactly once");
       frame_a.f = zeros(3);
       frame_a.t = zeros(3);
       frame_resolve.f = zeros(3);
       frame_resolve.t = zeros(3);

       if frame_r_out == frame_r_in then
          r_out = r_in;
          R1 = Frames.nullRotation();
       else
          if frame_r_in == ResolveInFrameA.world then
             R1 = Frames.nullRotation();
          elseif frame_r_in == ResolveInFrameA.frame_a then
             R1 = frame_a.R;
          elseif frame_r_in == ResolveInFrameA.frame_resolve then
             R1 = frame_resolve.R;
          else
             assert(false, "Wrong value for parameter frame_r_in");
             R1 = Frames.nullRotation();
          end if;

          if frame_r_out == ResolveInFrameA.world then
             r_out = Frames.resolve1(R1, r_in);
          elseif frame_r_out == ResolveInFrameA.frame_a then
             r_out = Frames.resolveRelative(r_in, R1, frame_a.R);
          elseif frame_r_out == ResolveInFrameA.frame_resolve then
             r_out = Frames.resolveRelative(r_in, R1, frame_resolve.R);
          else
             assert(false, "Wrong value for parameter frame_r_out");
             r_out = zeros(3);
          end if;
       end if;
    end BasicTransformAbsoluteVector;

--------------

|image39| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicTransformRelativeVector
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Transform relative vector in to another frame**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVectorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVector

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVector

Information
~~~~~~~~~~~

Extends from
`Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor>`_
(Partial relative sensor models for sensors defined by equations
(frame\_resolve must be connected exactly once)).

Parameters
~~~~~~~~~~

+---------------------------------------------------------------------------------------------------------------------+-----------------+-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| Type                                                                                                                | Name            | Default                           | Description                                                                                                                 |
+=====================================================================================================================+=================+===================================+=============================================================================================================================+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_   | frame\_r\_in    | Modelica.Mechanics.MultiBody...   | Frame in which vector r\_in is resolved (1: world, 2: frame\_a, 3: frame\_b, 4: frame\_resolve)                             |
+---------------------------------------------------------------------------------------------------------------------+-----------------+-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+
| `ResolveInFrameAB <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB>`_   | frame\_r\_out   | frame\_r\_in                      | Frame in which vector r\_out (= r\_in in other frame) is resolved (1: world, 2: frame\_a, 3: frame\_b, 4: frame\_resolve)   |
+---------------------------------------------------------------------------------------------------------------------+-----------------+-----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                          |
+==========================================================================================================================+==================+======================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a (measurement is between frame\_a and frame\_b)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b (measurement is between frame\_a and frame\_b)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Coordinate system in which vector is optionally resolved             |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| input `RealInput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealInput>`_                                | r\_in[3]         | Input vector resolved in frame defined by frame\_r\_in               |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | r\_out[3]        | Input vector r\_in resolved in frame defined by frame\_r\_out        |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicTransformRelativeVector 
      "Transform relative vector in to another frame"
      import Modelica.Mechanics.MultiBody.Frames;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB;
      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor;
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_in=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB.frame_a 
        "Frame in which vector r_in is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";
      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameAB frame_r_out=
                      frame_r_in 
        "Frame in which vector r_out (= r_in in other frame) is resolved (1: world, 2: frame_a, 3: frame_b, 4: frame_resolve)";

      Blocks.Interfaces.RealInput r_in[3] 
        "Input vector resolved in frame defined by frame_r_in";
      Blocks.Interfaces.RealOutput r_out[3] 
        "Input vector r_in resolved in frame defined by frame_r_out";

    protected 
      Modelica.Mechanics.MultiBody.Frames.Orientation R1 
        "Orientation object from world frame to frame in which r_in is resolved";
    equation 
       if frame_r_out == frame_r_in then
          r_out = r_in;
          R1 = Frames.nullRotation();
       else
          if frame_r_in == ResolveInFrameAB.world then
             R1 = Frames.nullRotation();
          elseif frame_r_in == ResolveInFrameAB.frame_a then
             R1 = frame_a.R;
          elseif frame_r_in == ResolveInFrameAB.frame_b then
             R1 = frame_b.R;
          else
             R1 = frame_resolve.R;
          end if;

          if frame_r_out == ResolveInFrameAB.world then
             r_out = Frames.resolve1(R1, r_in);
          elseif frame_r_out == ResolveInFrameAB.frame_a then
             r_out = Frames.resolveRelative(r_in, R1, frame_a.R);
          elseif frame_r_out == ResolveInFrameAB.frame_b then
             r_out = Frames.resolveRelative(r_in, R1, frame_b.R);
          else
             r_out = Frames.resolveRelative(r_in, R1, frame_resolve.R);
          end if;
       end if;
    end BasicTransformRelativeVector;

--------------

|image40| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.ZeroForceAndTorque
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Set force and torque to zero**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorque

   Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorque

Information
~~~~~~~~~~~

Extends from
`Modelica.Blocks.Interfaces.BlockIcon <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.BlockIcon>`_
(Basic graphical layout of input/output block).

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------+------------+---------------+
| Type                                                                                                         | Name       | Description   |
+==============================================================================================================+============+===============+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_   | frame\_a   |               |
+--------------------------------------------------------------------------------------------------------------+------------+---------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model ZeroForceAndTorque "Set force and torque to zero"
       extends Modelica.Blocks.Interfaces.BlockIcon;
      Interfaces.Frame_a frame_a;
    equation 
      frame_a.f = zeros(3);
      frame_a.t = zeros(3);
    end ZeroForceAndTorque;

--------------

|image41| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.PartialCutForceSensor
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model to measure the cut force and/or torque between two frames,
defined by components**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensor

   Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensor

Information
~~~~~~~~~~~

::

This is a base class for 3-dim. mechanical components with two frames
and one output port in order to measure the cut-force and/or cut-torque
acting between the two frames and to provide the measured signals as
output for further processing with the blocks of package
Modelica.Blocks.

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+----------------------------------------------------------------------------------------------+
| Type                                                                                                              | Name             | Default                           | Description                                                                                  |
+===================================================================================================================+==================+===================================+==============================================================================================+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector(s) is/are resolved (1: world, 2: frame\_a, 3: frame\_resolve)   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+----------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                                |
+==========================================================================================================================+==================+============================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a                                                                        |
+--------------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b                                                                        |
+--------------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | Output vectors are optionally resolved in this frame (cut-force/-torque are set to zero)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+--------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialCutForceSensor 
      "Base model to measure the cut force and/or torque between two frames, defined by components"

      extends Modelica.Icons.RotationalSensor;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve if 
             resolveInFrame==Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_resolve 
        "Output vectors are optionally resolved in this frame (cut-force/-torque are set to zero)";
        

      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector(s) is/are resolved (1: world, 2: frame_a, 3: frame_resolve)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of cut-force/-torque sensor object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of cut-force/-torque sensor object is not connected");

    end PartialCutForceSensor;

--------------

|image42| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.PartialCutForceBaseSensor
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Base model to measure the cut force and/or torque between two frames,
defined by equations (frame\_resolve must be connected exactly once)**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor

   Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor

Information
~~~~~~~~~~~

::

This is a base class for 3-dim. mechanical components with two frames
and one output port in order to measure the cut-force and/or cut-torque
acting between the two frames and to provide the measured signals as
output for further processing with the blocks of package
Modelica.Blocks.

::

Extends from
`Modelica.Icons.RotationalSensor <Modelica_Icons.html#Modelica.Icons.RotationalSensor>`_
(Icon representing a round measurement device).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+---------------------------------------------------------------------------------------+
| Type                                                                                                              | Name             | Default                           | Description                                                                           |
+===================================================================================================================+==================+===================================+=======================================================================================+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector is resolved (1: world, 2: frame\_a, 3: frame\_resolve)   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+---------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                                  |
+==========================================================================================================================+==================+==============================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a                                                                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b                                                                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The output vector is optionally resolved in this frame (cut-force/-torque are set to zero)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    partial model PartialCutForceBaseSensor 
      "Base model to measure the cut force and/or torque between two frames, defined by equations (frame_resolve must be connected exactly once)"

      extends Modelica.Icons.RotationalSensor;
      Modelica.Mechanics.MultiBody.Interfaces.Frame_a frame_a "Coordinate system a";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_b frame_b "Coordinate system b";
      Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve frame_resolve 
        "The output vector is optionally resolved in this frame (cut-force/-torque are set to zero)";
        

      parameter Modelica.Mechanics.MultiBody.Types.ResolveInFrameA
        resolveInFrame=
      Modelica.Mechanics.MultiBody.Types.ResolveInFrameA.frame_a 
        "Frame in which output vector is resolved (1: world, 2: frame_a, 3: frame_resolve)";

    protected 
      outer Modelica.Mechanics.MultiBody.World world;
    equation 
      Connections.branch(frame_a.R, frame_b.R);
      assert(cardinality(frame_a) > 0,
        "Connector frame_a of cut-force/-torque sensor object is not connected");
      assert(cardinality(frame_b) > 0,
        "Connector frame_b of cut-force/-torque sensor object is not connected");

      // frame_a and frame_b are identical
      frame_a.r_0 = frame_b.r_0;
      frame_a.R = frame_b.R;

      // force and torque balance
      zeros(3) = frame_a.f + frame_b.f;
      zeros(3) = frame_a.t + frame_b.t;
      frame_resolve.f = zeros(3);
      frame_resolve.t = zeros(3);
    end PartialCutForceBaseSensor;

--------------

|image43| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicCutForce
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Measure cut force vector (frame\_resolve must be connected)**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForceD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForce

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForce

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor>`_
(Base model to measure the cut force and/or torque between two frames,
defined by equations (frame\_resolve must be connected exactly once)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Type                                                                                                              | Name             | Default                           | Description                                                                                                   |
+===================================================================================================================+==================+===================================+===============================================================================================================+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector is resolved (1: world, 2: frame\_a, 3: frame\_resolve)                           |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                           | positiveSign     | true                              | = true, if force with positive sign is returned (= frame\_a.f), otherwise with negative sign (= frame\_b.f)   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+---------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                                  |
+==========================================================================================================================+==================+==============================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a                                                                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b                                                                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The output vector is optionally resolved in this frame (cut-force/-torque are set to zero)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | force[3]         | Cut force resolved in frame defined by resolveInFrame [N]                                    |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicCutForce 
      "Measure cut force vector (frame_resolve must be connected)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;
      import Modelica.Mechanics.MultiBody.Frames;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput force[3](final quantity="Force", final unit="N") 
        "Cut force resolved in frame defined by resolveInFrame";
        parameter Boolean positiveSign=true 
        "= true, if force with positive sign is returned (= frame_a.f), otherwise with negative sign (= frame_b.f)";
    protected 
      parameter Integer csign=if positiveSign then +1 else -1;
    equation 
       if resolveInFrame == ResolveInFrameA.world then
          force = Frames.resolve1(frame_a.R, frame_a.f)*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          force = frame_a.f*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          force = Frames.resolveRelative(frame_a.f, frame_a.R, frame_resolve.R)*csign;
       else
          assert(false,"Wrong value for parameter resolveInFrame");
          force = zeros(3);
       end if;
    end BasicCutForce;

--------------

|image44| `Modelica.Mechanics.MultiBody.Sensors.Internal <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal>`_.BasicCutTorque
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

**Measure cut torque vector (frame\_resolve must be connected)**

.. figure:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutTorqueD.png
   :align: center
   :alt: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutTorque

   Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutTorque

Information
~~~~~~~~~~~

::

::

Extends from
`Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor <Modelica_Mechanics_MultiBody_Sensors_Internal.html#Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor>`_
(Base model to measure the cut force and/or torque between two frames,
defined by equations (frame\_resolve must be connected exactly once)).

Parameters
~~~~~~~~~~

+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------+
| Type                                                                                                              | Name             | Default                           | Description                                                                                                    |
+===================================================================================================================+==================+===================================+================================================================================================================+
| `ResolveInFrameA <Modelica_Mechanics_MultiBody_Types.html#Modelica.Mechanics.MultiBody.Types.ResolveInFrameA>`_   | resolveInFrame   | Modelica.Mechanics.MultiBody...   | Frame in which output vector is resolved (1: world, 2: frame\_a, 3: frame\_resolve)                            |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------+
| Boolean                                                                                                           | positiveSign     | true                              | = true, if torque with positive sign is returned (= frame\_a.t), otherwise with negative sign (= frame\_b.t)   |
+-------------------------------------------------------------------------------------------------------------------+------------------+-----------------------------------+----------------------------------------------------------------------------------------------------------------+

Connectors
~~~~~~~~~~

+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| Type                                                                                                                     | Name             | Description                                                                                  |
+==========================================================================================================================+==================+==============================================================================================+
| `Frame\_a <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_a>`_               | frame\_a         | Coordinate system a                                                                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| `Frame\_b <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_b>`_               | frame\_b         | Coordinate system b                                                                          |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| `Frame\_resolve <Modelica_Mechanics_MultiBody_Interfaces.html#Modelica.Mechanics.MultiBody.Interfaces.Frame_resolve>`_   | frame\_resolve   | The output vector is optionally resolved in this frame (cut-force/-torque are set to zero)   |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+
| output `RealOutput <Modelica_Blocks_Interfaces.html#Modelica.Blocks.Interfaces.RealOutput>`_                             | torque[3]        | Cut torque resolved in frame defined by resolveInFrame [N.m]                                 |
+--------------------------------------------------------------------------------------------------------------------------+------------------+----------------------------------------------------------------------------------------------+

Modelica definition
~~~~~~~~~~~~~~~~~~~

::

    model BasicCutTorque 
      "Measure cut torque vector (frame_resolve must be connected)"

      import SI = Modelica.SIunits;
      import Modelica.Mechanics.MultiBody.Types.ResolveInFrameA;
      import Modelica.Mechanics.MultiBody.Frames;

      extends Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor;
      Modelica.Blocks.Interfaces.RealOutput torque[3](final quantity="Torque", final unit=
            "N.m") "Cut torque resolved in frame defined by resolveInFrame";

      parameter Boolean positiveSign=true 
        "= true, if torque with positive sign is returned (= frame_a.t), otherwise with negative sign (= frame_b.t)";

    protected 
      parameter Integer csign=if positiveSign then +1 else -1;
    equation 
       if resolveInFrame == ResolveInFrameA.world then
          torque = Frames.resolve1(frame_a.R, frame_a.t)*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_a then
          torque = frame_a.t*csign;
       elseif resolveInFrame == ResolveInFrameA.frame_resolve then
          torque = Frames.resolveRelative(frame_a.t, frame_a.R, frame_resolve.R)*csign;
       else
          assert(false,"Wrong value for parameter resolveInFrame");
          torque = zeros(3);
       end if;
    end BasicCutTorque;

--------------

`Automatically generated <http://www.3ds.com/>`_ Fri Nov 12 16:30:40
2010.

.. |Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensor| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensor| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensor| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensor| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePosition| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePositionS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocity| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocityS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePosition| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePositionS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativeAngularVelocity| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePositionS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVector| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVectorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVector| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVectorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorque| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorqueS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensor| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceBaseSensor| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForce| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForceS.png
.. |Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutTorque| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForceS.png
.. |image15| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensorS.png
.. |image16| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensorS.png
.. |image17| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensorS.png
.. |image18| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensorS.png
.. |image19| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePositionS.png
.. |image20| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocityS.png
.. |image21| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePositionS.png
.. |image22| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePositionS.png
.. |image23| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVectorS.png
.. |image24| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVectorS.png
.. |image25| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorqueS.png
.. |image26| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorS.png
.. |image27| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorS.png
.. |image28| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForceS.png
.. |image29| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForceS.png
.. |image30| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteSensorI.png
.. |image31| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialAbsoluteBaseSensorI.png
.. |image32| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeSensorI.png
.. |image33| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialRelativeBaseSensorI.png
.. |image34| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsolutePositionI.png
.. |image35| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicAbsoluteAngularVelocityI.png
.. |image36| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativePositionI.png
.. |image37| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicRelativeAngularVelocityI.png
.. |image38| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformAbsoluteVectorI.png
.. |image39| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicTransformRelativeVectorI.png
.. |image40| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.ZeroForceAndTorqueI.png
.. |image41| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorI.png
.. |image42| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.PartialCutForceSensorI.png
.. |image43| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutForceI.png
.. |image44| image:: Modelica.Mechanics.MultiBody.Sensors.Internal.BasicCutTorqueI.png
